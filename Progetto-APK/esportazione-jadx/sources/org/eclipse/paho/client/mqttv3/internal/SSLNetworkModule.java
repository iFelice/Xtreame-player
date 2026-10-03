package org.eclipse.paho.client.mqttv3.internal;

import java.io.IOException;
import java.util.ArrayList;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.logging.Logger;
import org.eclipse.paho.client.mqttv3.logging.LoggerFactory;
import p058h2.a;

/* JADX INFO: loaded from: classes2.dex */
public class SSLNetworkModule extends TCPNetworkModule {
    private static final String CLASS_NAME = "org.eclipse.paho.client.mqttv3.internal.SSLNetworkModule";
    private String[] enabledCiphers;
    private int handshakeTimeoutSecs;
    private String host;
    private HostnameVerifier hostnameVerifier;
    private boolean httpsHostnameVerificationEnabled;
    private Logger log;
    private int port;

    public SSLNetworkModule(SSLSocketFactory sSLSocketFactory, String str, int i8, String str2) {
        super(sSLSocketFactory, str, i8, str2);
        Logger logger = LoggerFactory.getLogger(LoggerFactory.MQTT_CLIENT_MSG_CAT, CLASS_NAME);
        this.log = logger;
        this.httpsHostnameVerificationEnabled = false;
        this.host = str;
        this.port = i8;
        logger.setResourceName(str2);
    }

    public String[] getEnabledCiphers() {
        return this.enabledCiphers;
    }

    public HostnameVerifier getSSLHostnameVerifier() {
        return this.hostnameVerifier;
    }

    @Override // org.eclipse.paho.client.mqttv3.internal.TCPNetworkModule, org.eclipse.paho.client.mqttv3.internal.NetworkModule
    public String getServerURI() {
        return "ssl://" + this.host + ":" + this.port;
    }

    public boolean isHttpsHostnameVerificationEnabled() {
        return this.httpsHostnameVerificationEnabled;
    }

    public void setEnabledCiphers(String[] strArr) {
        if (strArr != null) {
            this.enabledCiphers = (String[]) strArr.clone();
        }
        if (this.socket == null || this.enabledCiphers == null) {
            return;
        }
        if (this.log.isLoggable(5)) {
            String strConcat = HttpUrl.FRAGMENT_ENCODE_SET;
            for (int i8 = 0; i8 < this.enabledCiphers.length; i8++) {
                if (i8 > 0) {
                    strConcat = String.valueOf(strConcat).concat(",");
                }
                strConcat = String.valueOf(strConcat) + this.enabledCiphers[i8];
            }
            this.log.fine(CLASS_NAME, "setEnabledCiphers", "260", new Object[]{strConcat});
        }
        ((SSLSocket) this.socket).setEnabledCipherSuites(this.enabledCiphers);
    }

    public void setHttpsHostnameVerificationEnabled(boolean z7) {
        this.httpsHostnameVerificationEnabled = z7;
    }

    public void setSSLHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.hostnameVerifier = hostnameVerifier;
    }

    public void setSSLhandshakeTimeout(int i8) {
        super.setConnectTimeout(i8);
        this.handshakeTimeoutSecs = i8;
    }

    @Override // org.eclipse.paho.client.mqttv3.internal.TCPNetworkModule, org.eclipse.paho.client.mqttv3.internal.NetworkModule
    public void start() throws MqttException, IOException {
        super.start();
        setEnabledCiphers(this.enabledCiphers);
        int soTimeout = this.socket.getSoTimeout();
        this.socket.setSoTimeout(this.handshakeTimeoutSecs * 1000);
        try {
            SSLParameters sSLParameters = new SSLParameters();
            ArrayList arrayList = new ArrayList(1);
            a.f();
            arrayList.add(a.e(this.host));
            sSLParameters.setServerNames(arrayList);
            ((SSLSocket) this.socket).setSSLParameters(sSLParameters);
        } catch (NoClassDefFoundError unused) {
        }
        if (this.httpsHostnameVerificationEnabled) {
            try {
                SSLParameters sSLParameters2 = new SSLParameters();
                sSLParameters2.setEndpointIdentificationAlgorithm("HTTPS");
                ((SSLSocket) this.socket).setSSLParameters(sSLParameters2);
            } catch (NoSuchMethodError unused2) {
            }
        }
        ((SSLSocket) this.socket).startHandshake();
        if (this.hostnameVerifier != null && !this.httpsHostnameVerificationEnabled) {
            SSLSession session = ((SSLSocket) this.socket).getSession();
            if (!this.hostnameVerifier.verify(this.host, session)) {
                session.invalidate();
                this.socket.close();
                throw new SSLPeerUnverifiedException("Host: " + this.host + ", Peer Host: " + session.getPeerHost());
            }
        }
        this.socket.setSoTimeout(soTimeout);
    }
}
