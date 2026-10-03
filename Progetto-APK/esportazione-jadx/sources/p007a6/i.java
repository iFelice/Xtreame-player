package p007a6;

import Z5.AbstractC0466x;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import p015b6.j;
import p190y4.k;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f8723b = Logger.getLogger(i.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i f8724c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f8725a;

    static {
        i iVar;
        j jVar = j.f9923c;
        ClassLoader classLoader = i.class.getClassLoader();
        try {
            classLoader.loadClass("com.android.org.conscrypt.OpenSSLSocketImpl");
        } catch (ClassNotFoundException e8) {
            Level level = Level.FINE;
            Logger logger = f8723b;
            logger.log(level, "Unable to find Conscrypt. Skipping", (Throwable) e8);
            try {
                classLoader.loadClass("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e9) {
                logger.log(Level.FINE, "Unable to find any OpenSSLSocketImpl. Skipping", (Throwable) e9);
                iVar = new i(jVar);
            }
        }
        iVar = new h(jVar);
        f8724c = iVar;
    }

    public i(j jVar) {
        k.s(jVar, "platform");
        this.f8725a = jVar;
    }

    public static boolean c(String str) {
        if (str.contains("_")) {
            return false;
        }
        try {
            k.q(AbstractC0466x.a(str).getAuthority().indexOf(64) == -1, "Userinfo must not be present on authority: '%s'", str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public void a(SSLSocket sSLSocket, String str, List list) {
        this.f8725a.c(sSLSocket, str, list);
    }

    public String b(SSLSocket sSLSocket) {
        return this.f8725a.d(sSLSocket);
    }

    public String d(SSLSocket sSLSocket, String str, List list) {
        j jVar = this.f8725a;
        if (list != null) {
            a(sSLSocket, str, list);
        }
        try {
            sSLSocket.startHandshake();
            String strB = b(sSLSocket);
            if (strB != null) {
                jVar.a(sSLSocket);
                return strB;
            }
            throw new RuntimeException("TLS ALPN negotiation failed with protocols: " + list);
        } catch (Throwable th) {
            jVar.a(sSLSocket);
            throw th;
        }
    }
}
