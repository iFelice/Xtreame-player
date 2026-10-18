package D0;

import p094m0.C3136t;

/* JADX INFO: renamed from: D0.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0130u extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f1973G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f1974H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C3136t f1975I;

    public C0130u(int i8, C3136t c3136t, boolean z7) {
        super(p000a.r.f("AudioTrack write failed: ", i8));
        this.f1974H = z7;
        this.f1973G = i8;
        this.f1975I = c3136t;
    }
}
