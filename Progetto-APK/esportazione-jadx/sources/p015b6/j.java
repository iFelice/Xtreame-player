package p015b6;

import Z5.C0447d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.security.AccessController;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivilegedActionException;
import java.security.Provider;
import java.security.Security;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f9921a = Logger.getLogger(j.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f9922b = {"com.google.android.gms.org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLProvider", "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider", "com.google.android.libraries.stitch.sslguard.SslGuardProvider"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final j f9923c;

    static {
        Logger logger;
        Provider provider;
        j jVar;
        int i8;
        Provider[] providers = Security.getProviders();
        int length = providers.length;
        int i9 = 0;
        loop0: while (true) {
            logger = f9921a;
            if (i9 >= length) {
                logger.log(Level.WARNING, "Unable to find Conscrypt");
                provider = null;
                break;
            }
            Provider provider2 = providers[i9];
            for (String str : f9922b) {
                if (str.equals(provider2.getClass().getName())) {
                    logger.log(Level.FINE, "Found registered provider {0}", str);
                    provider = provider2;
                    break loop0;
                }
            }
            i9++;
        }
        if (provider != null) {
            C0447d c0447d = new C0447d(null, "setUseSessionTickets", new Class[]{Boolean.TYPE});
            C0447d c0447d2 = new C0447d(null, "setHostname", new Class[]{String.class});
            C0447d c0447d3 = new C0447d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
            C0447d c0447d4 = new C0447d(null, "setAlpnProtocols", new Class[]{byte[].class});
            try {
                Class<?> cls = Class.forName("android.net.TrafficStats");
                cls.getMethod("tagSocket", Socket.class);
                cls.getMethod("untagSocket", Socket.class);
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
            }
            if (!provider.getName().equals("GmsCore_OpenSSL") && !provider.getName().equals("Conscrypt") && !provider.getName().equals("Ssl_Guard")) {
                try {
                    j.class.getClassLoader().loadClass("android.net.Network");
                } catch (ClassNotFoundException e8) {
                    logger.log(Level.FINE, "Can't find class", (Throwable) e8);
                    try {
                        j.class.getClassLoader().loadClass("android.app.ActivityOptions");
                        i8 = 2;
                    } catch (ClassNotFoundException e9) {
                        logger.log(Level.FINE, "Can't find class", (Throwable) e9);
                        i8 = 3;
                    }
                }
            }
            i8 = 1;
            jVar = new f(c0447d, c0447d2, c0447d3, c0447d4, provider, i8);
        } else {
            try {
                Provider provider3 = SSLContext.getDefault().getProvider();
                try {
                    SSLContext sSLContext = SSLContext.getInstance(SSLSocketFactoryFactory.DEFAULT_PROTOCOL, provider3);
                    sSLContext.init(null, null, null);
                    ((Method) AccessController.doPrivileged(new e(0))).invoke(sSLContext.createSSLEngine(), new Object[0]);
                    jVar = new g(provider3, (Method) AccessController.doPrivileged(new e(1)), (Method) AccessController.doPrivileged(new e(2)));
                } catch (IllegalAccessException | InvocationTargetException | KeyManagementException | NoSuchAlgorithmException | PrivilegedActionException unused2) {
                    try {
                        Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN");
                        jVar = new h(cls2.getMethod("put", SSLSocket.class, Class.forName("org.eclipse.jetty.alpn.ALPN$Provider")), cls2.getMethod("get", SSLSocket.class), cls2.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"), provider3);
                    } catch (ClassNotFoundException | NoSuchMethodException unused3) {
                        jVar = new j(provider3);
                    }
                }
            } catch (NoSuchAlgorithmException e10) {
                throw new RuntimeException(e10);
            }
        }
        f9923c = jVar;
    }

    public j(Provider provider) {
    }

    public static byte[] b(List list) {
        Q6.j jVar = new Q6.j();
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            k kVar = (k) list.get(i8);
            if (kVar != k.HTTP_1_0) {
                jVar.o0(kVar.f9929G.length());
                jVar.w0(kVar.f9929G);
            }
        }
        return jVar.f0(jVar.f6064H);
    }

    public String d(SSLSocket sSLSocket) {
        return null;
    }

    public int e() {
        return 3;
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void c(SSLSocket sSLSocket, String str, List list) {
    }
}
