package androidx.media3.decoder.vp9;

import p094m0.J;
import p179x0.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class VpxLibrary {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f9446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f9447b;

    static {
        J.a("media3.decoder.vpx");
        f9446a = new b(4, new String[]{"vpx", "vpxV2JNI"});
        f9447b = 1;
    }

    public static String a() {
        if (f9446a.isAvailable()) {
            return vpxGetVersion();
        }
        return null;
    }

    private static native String vpxGetVersion();

    public static native boolean vpxIsSecureDecodeSupported();
}
