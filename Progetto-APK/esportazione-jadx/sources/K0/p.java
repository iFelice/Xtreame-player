package K0;

import okhttp3.HttpUrl;
import p094m0.C3136t;

/* JADX INFO: loaded from: classes.dex */
public final class p extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f4369G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f4370H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final o f4371I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f4372J;

    public p(v vVar, C3136t c3136t, boolean z7, int i8) {
        this("Decoder init failed: [" + i8 + "], " + c3136t, vVar, c3136t.f27041o, z7, null, "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_" + (i8 < 0 ? "neg_" : HttpUrl.FRAGMENT_ENCODE_SET) + Math.abs(i8));
    }

    public p(String str, Throwable th, String str2, boolean z7, o oVar, String str3) {
        super(str, th);
        this.f4369G = str2;
        this.f4370H = z7;
        this.f4371I = oVar;
        this.f4372J = str3;
    }
}
