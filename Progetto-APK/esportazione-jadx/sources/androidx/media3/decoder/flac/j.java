package androidx.media3.decoder.flac;

import p094m0.J;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p179x0.b f9431a;

    static {
        J.a("media3.decoder.flac");
        f9431a = new p179x0.b(2, new String[]{"flacJNI"});
    }

    public static boolean isAvailable() {
        return f9431a.isAvailable();
    }
}
