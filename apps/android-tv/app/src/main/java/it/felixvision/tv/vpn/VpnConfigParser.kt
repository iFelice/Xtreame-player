package it.felixvision.tv.vpn

import com.wireguard.config.BadConfigException
import com.wireguard.config.Config
import com.wireguard.config.Interface
import java.io.BufferedReader
import java.io.IOException
import java.io.StringReader
import java.util.Locale

/** Esito della lettura di un file `.conf` WireGuard. */
sealed interface VpnConfigParseResult {

    /**
     * Configurazione pronta per il tunnel: ammette solo FelixVP. [toString]
     * non riporta la configurazione, che contiene la chiave privata.
     */
    data class Valid(val config: Config, val serverName: String) : VpnConfigParseResult {
        override fun toString(): String = "Valid(serverName=$serverName)"
    }

    /** File non utilizzabile: [message] non contiene mai parti del file. */
    data class Invalid(val message: String) : VpnConfigParseResult
}

/**
 * Lettura del file `.conf` WireGuard (per esempio quello scaricato da Proton
 * VPN), senza Android e senza rete.
 *
 * Il file viene letto dalla libreria WireGuard e la sezione `[Interface]`
 * viene ricostruita con le sole chiavi, indirizzi, DNS, porta e MTU del file:
 * le eventuali `IncludedApplications` ed `ExcludedApplications` si scartano e
 * si ammette soltanto [packageName]. Così nel tunnel passa solo il traffico di
 * FelixVP, qualunque cosa dica il file.
 */
object VpnConfigParser {

    const val INVALID_MESSAGE = "Configurazione WireGuard non valida"

    /** Nome di ripiego quando il file non indica né un commento né un Endpoint. */
    const val DEFAULT_SERVER_NAME = "WireGuard"

    /** Lunghezza massima del nome del server mostrato nelle Impostazioni. */
    const val MAX_SERVER_NAME_LENGTH = 48

    private val APPLICATION_FILTER_KEYS = setOf("includedapplications", "excludedapplications")

    fun parse(text: String, packageName: String): VpnConfigParseResult {
        val parsed = try {
            Config.parse(BufferedReader(StringReader(withoutApplicationFilters(text))))
        } catch (error: IOException) {
            return VpnConfigParseResult.Invalid(INVALID_MESSAGE)
        } catch (error: BadConfigException) {
            return VpnConfigParseResult.Invalid(INVALID_MESSAGE)
        } catch (error: RuntimeException) {
            return VpnConfigParseResult.Invalid(INVALID_MESSAGE)
        }

        val peers = parsed.peers
        // La libreria accetta anche un file senza [Peer]: per il tunnel non basta.
        if (peers.isEmpty()) return VpnConfigParseResult.Invalid(INVALID_MESSAGE)

        val config = try {
            val source = parsed.getInterface()
            val builder = Interface.Builder()
                .setKeyPair(source.keyPair)
                .addAddresses(source.addresses)
                .addDnsServers(source.dnsServers)
                .addDnsSearchDomains(source.dnsSearchDomains)
                .includeApplication(packageName)
            val listenPort = source.listenPort
            if (listenPort.isPresent) builder.setListenPort(listenPort.get())
            val mtu = source.mtu
            if (mtu.isPresent) builder.setMtu(mtu.get())
            Config.Builder()
                .setInterface(builder.build())
                .addPeers(peers)
                .build()
        } catch (error: BadConfigException) {
            return VpnConfigParseResult.Invalid(INVALID_MESSAGE)
        } catch (error: RuntimeException) {
            return VpnConfigParseResult.Invalid(INVALID_MESSAGE)
        }

        val serverName = peerComment(text)
            ?: firstEndpointHost(config)
            ?: DEFAULT_SERVER_NAME
        return VpnConfigParseResult.Valid(config = config, serverName = serverName)
    }

    /**
     * Il file con le righe `IncludedApplications`/`ExcludedApplications` della
     * sezione `[Interface]` tolte: la libreria rifiuta un'interfaccia che le ha
     * entrambe, e in ogni caso vengono sostituite dal solo pacchetto dell'app.
     */
    private fun withoutApplicationFilters(text: String): String {
        val kept = StringBuilder(text.length)
        var inInterface = false
        for (rawLine in text.lines()) {
            val line = rawLine.substringBefore('#').trim()
            if (line.startsWith("[")) {
                inInterface = line.equals("[Interface]", ignoreCase = true)
            } else if (inInterface && isApplicationFilter(line)) {
                continue
            }
            kept.append(rawLine).append('\n')
        }
        return kept.toString()
    }

    private fun isApplicationFilter(line: String): Boolean {
        if (!line.contains('=')) return false
        val key = line.substringBefore('=').trim().lowercase(Locale.ROOT)
        return key in APPLICATION_FILTER_KEYS
    }

    /**
     * Primo commento a riga intera dentro una sezione `[Peer]` (Proton VPN vi
     * scrive il nome del server, per esempio `# NL-FREE#1`): il testo dopo il
     * primo `#`, senza spazi ai lati e senza caratteri di controllo.
     */
    private fun peerComment(text: String): String? {
        var inPeer = false
        for (rawLine in text.lines()) {
            val line = rawLine.trim()
            if (line.startsWith("[")) {
                inPeer = line.substringBefore('#').trim().equals("[Peer]", ignoreCase = true)
            } else if (inPeer && line.startsWith("#")) {
                val name = line.substring(1).filterNot { it.isISOControl() }.trim()
                if (name.isNotEmpty()) return name.take(MAX_SERVER_NAME_LENGTH)
            }
        }
        return null
    }

    private fun firstEndpointHost(config: Config): String? {
        val endpoint = config.peers.firstOrNull()?.endpoint ?: return null
        if (!endpoint.isPresent) return null
        return endpoint.get().host.trim().takeIf { it.isNotEmpty() }?.take(MAX_SERVER_NAME_LENGTH)
    }
}
