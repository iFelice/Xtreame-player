package androidx.media3.decoder.opus;

import p094m0.J;
import p179x0.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class OpusLibrary {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f9440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f9441b;

    static {
        J.a("media3.decoder.opus");
        f9440a = new b(3, new String[]{"opusV2JNI"});
        f9441b = 1;
    }

    public static native String opusGetVersion();

    public static native boolean opusIsSecureDecodeSupported();
}
