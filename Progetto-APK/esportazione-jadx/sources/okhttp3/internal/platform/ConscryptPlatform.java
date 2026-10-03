package okhttp3.internal.platform;

import D6.e;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;
import org.conscrypt.Conscrypt;
import org.conscrypt.ConscryptHostnameVerifier;
import org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class ConscryptPlatform extends Platform {
    public static final Companion Companion;
    private static final boolean isSupported;
    private final Provider provider;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public static /* synthetic */ boolean atLeastVersion$default(Companion companion, int i8, int i9, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i9 = 0;
            }
            if ((i11 & 4) != 0) {
                i10 = 0;
            }
            return companion.atLeastVersion(i8, i9, i10);
        }

        public final boolean atLeastVersion(int i8, int i9, int i10) {
            Conscrypt.Version version = Conscrypt.version();
            if (version.major() != i8) {
                return version.major() > i8;
            }
            if (version.minor() != i9) {
                return version.minor() > i9;
            }
            return version.patch() >= i10;
        }

        public final ConscryptPlatform buildIfSupported() {
            e eVar = null;
            if (isSupported()) {
                return new ConscryptPlatform(eVar);
            }
            return null;
        }

        public final boolean isSupported() {
            return ConscryptPlatform.isSupported;
        }
    }

    public static final class DisabledHostnameVerifier implements ConscryptHostnameVerifier {
        public static final DisabledHostnameVerifier INSTANCE = new DisabledHostnameVerifier();

        private DisabledHostnameVerifier() {
        }

        public final boolean verify(String str, SSLSession sSLSession) {
            return true;
        }

        public boolean verify(X509Certificate[] x509CertificateArr, String str, SSLSession sSLSession) {
            return true;
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        boolean z7 = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version", false, companion.getClass().getClassLoader());
            if (Conscrypt.isAvailable() && companion.atLeastVersion(2, 1, 0)) {
                z7 = true;
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        isSupported = z7;
    }

    public /* synthetic */ ConscryptPlatform(e eVar) {
        this();
    }

    @Override // okhttp3.internal.platform.Platform
    public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
        q0.h(sSLSocket, "sslSocket");
        q0.h(list, "protocols");
        if (!Conscrypt.isConscrypt(sSLSocket)) {
            super.configureTlsExtensions(sSLSocket, str, list);
        } else {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) Platform.Companion.alpnProtocolNames(list).toArray(new String[0]));
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public String getSelectedProtocol(SSLSocket sSLSocket) {
        q0.h(sSLSocket, "sslSocket");
        return Conscrypt.isConscrypt(sSLSocket) ? Conscrypt.getApplicationProtocol(sSLSocket) : super.getSelectedProtocol(sSLSocket);
    }

    @Override // okhttp3.internal.platform.Platform
    public SSLContext newSSLContext() throws NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance(SSLSocketFactoryFactory.DEFAULT_PROTOCOL, this.provider);
        q0.g(sSLContext, "getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // okhttp3.internal.platform.Platform
    public SSLSocketFactory newSslSocketFactory(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyManagementException {
        q0.h(x509TrustManager, "trustManager");
        SSLContext sSLContextNewSSLContext = newSSLContext();
        sSLContextNewSSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
        SSLSocketFactory socketFactory = sSLContextNewSSLContext.getSocketFactory();
        q0.g(socketFactory, "newSSLContext().apply {\n…null)\n    }.socketFactory");
        return socketFactory;
    }

    @Override // okhttp3.internal.platform.Platform
    public X509TrustManager platformTrustManager() throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        q0.e(trustManagers);
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                q0.f(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                Conscrypt.setHostnameVerifier(x509TrustManager, DisabledHostnameVerifier.INSTANCE);
                return x509TrustManager;
            }
        }
        String string = Arrays.toString(trustManagers);
        q0.g(string, "toString(this)");
        throw new IllegalStateException("Unexpected default trust managers: ".concat(string).toString());
    }

    @Override // okhttp3.internal.platform.Platform
    public X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory) {
        q0.h(sSLSocketFactory, "sslSocketFactory");
        return null;
    }

    private ConscryptPlatform() {
        Provider providerNewProvider = Conscrypt.newProvider();
        q0.g(providerNewProvider, "newProvider()");
        this.provider = providerNewProvider;
    }
}
