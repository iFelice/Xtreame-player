package D0;

import okhttp3.HttpUrl;
import p094m0.C3136t;

/* JADX INFO: loaded from: classes.dex */
public final class r extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f1970G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f1971H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C3136t f1972I;

    /* JADX WARN: Illegal instructions before constructor call */
    public r(int i8, int i9, int i10, int i11, int i12, C3136t c3136t, boolean z7, RuntimeException runtimeException) {
        StringBuilder sbD = A0.O.D("AudioTrack init failed ", i8, " Config(", i9, ", ");
        A0.O.J(sbD, i10, ", ", i11, ", ");
        sbD.append(i12);
        sbD.append(") ");
        sbD.append(c3136t);
        sbD.append(z7 ? " (recoverable)" : HttpUrl.FRAGMENT_ENCODE_SET);
        super(sbD.toString(), runtimeException);
        this.f1970G = i8;
        this.f1971H = z7;
        this.f1972I = c3136t;
    }
}
