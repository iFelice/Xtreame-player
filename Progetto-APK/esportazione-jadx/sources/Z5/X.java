package Z5;

import java.net.InetSocketAddress;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class X implements Y5.w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f8442a = Logger.getLogger(X.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final U4.b f8443b = new U4.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final U1.f f8444c = new U1.f(1);

    public X() {
        String str = System.getenv("GRPC_PROXY_EXP");
        f8444c.getClass();
        f8443b.getClass();
        if (str != null) {
            String[] strArrSplit = str.split(":", 2);
            int i8 = strArrSplit.length > 1 ? Integer.parseInt(strArrSplit[1]) : 80;
            f8442a.warning("Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM.");
            new InetSocketAddress(strArrSplit[0], i8);
        }
    }
}
