package it.felixvision.tv.vpn

/**
 * Vettore condiviso con la pagina `/vpn` del relay: chiave 01..20, IV a0..ab,
 * codice 123456. Il file cifrato contiene solo chiavi WireGuard a zero e
 * indirizzi di esempio, mai dati reali.
 */
internal object VpnTestVectors {
    const val KEY_B64U = "AQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyA"
    const val IV_B64U = "oKGio6Slpqeoqaqr"
    const val CODE = "123456"
    const val CIPHERTEXT_B64U =
        "4phTEpjHPGUca_9hofdJ8jaj1VI9EUC5BxqUvBMPmXRwkNiJrpPxdWw3gdjndw9mWPcxhY3av5QJpcKxg3dGKe0D4qWTIQ2Vvu" +
            "Ijh3H6xv_8rzh5VsZ8RObB9DCjiQaBOf4zbW_TdpmKuER8KDaZo5OPU1TxnpD8grMN88l2OIWP7yqWUo6OimFI1wZTY67npDL" +
            "MM5GDEiUhT4VPfTcaFGKQ25oa2GJaBKl8XCU9zQUh2kbUUkLjaXrtJ08BlckeUWnflsDhyf8KxgjW9NN_VV0JVGFvmb9V4DSiTl" +
            "yqq1vbvHPIJOuhAY1CeNmrZkOf162OF15PLk5mPamHJg"

    /** Chiave WireGuard a zero, l'unica ammessa nei test. */
    const val ZERO_KEY = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="

    const val SERVER_NAME = "NL-FREE#1"

    /** Testo in chiaro del vettore: un file `.conf` come quelli di Proton VPN. */
    const val CONFIG_TEXT =
        "[Interface]\n" +
            "PrivateKey = $ZERO_KEY\n" +
            "Address = 10.2.0.2/32\n" +
            "DNS = 10.2.0.1\n" +
            "\n" +
            "[Peer]\n" +
            "# $SERVER_NAME\n" +
            "PublicKey = $ZERO_KEY\n" +
            "AllowedIPs = 0.0.0.0/0\n" +
            "Endpoint = 192.168.1.10:51820\n"
}
