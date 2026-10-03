package pe.hf.black20.util;

import java.net.CookieManager;
import java.net.CookiePolicy;

/* JADX INFO: loaded from: classes2.dex */
public class Config {
    public static String SERVER_API;
    public static final String SERVER_API1;
    public static final String SERVER_API2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f29413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f29414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f29415c;

    static {
        System.loadLibrary("native-lib");
        f29413a = lkfj();
        f29414b = askfj();
        SERVER_API = pri();
        SERVER_API1 = pri();
        SERVER_API2 = sec();
        f29415c = xkfj();
        new CookieManager().setCookiePolicy(CookiePolicy.ACCEPT_ORIGINAL_SERVER);
    }

    public static native String askfj();

    public static native String lkfj();

    public static native String pri();

    public static native String sec();

    public static native String xkfj();
}
