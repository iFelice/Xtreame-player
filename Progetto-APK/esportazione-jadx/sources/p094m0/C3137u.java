package p094m0;

import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: renamed from: m0.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3137u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C3136t f27053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27054b;

    public C3137u(C3136t c3136t, long j8) {
        H1.c("format colorInfo must be set", c3136t.f27014E != null);
        int i8 = c3136t.f27048v;
        H1.c("format width must be positive, but is: " + i8, i8 > 0);
        int i9 = c3136t.f27049w;
        H1.c("format height must be positive, but is: " + i9, i9 > 0);
        this.f27053a = c3136t;
        this.f27054b = j8;
    }
}
