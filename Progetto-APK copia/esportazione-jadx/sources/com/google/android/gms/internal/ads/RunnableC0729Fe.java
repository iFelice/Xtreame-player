package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Fe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0729Fe implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f13380G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f13381H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0744Ge f13382I;

    public RunnableC0729Fe(C0744Ge c0744Ge) {
        this.f13380G = 2;
        this.f13381H = false;
        this.f13382I = c0744Ge;
    }

    public final void a() {
        this.f13381H = true;
        this.f13382I.l();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f13380G;
        C0744Ge c0744Ge = this.f13382I;
        switch (i8) {
            case 0:
                boolean z7 = this.f13381H;
                c0744Ge.getClass();
                c0744Ge.c("windowFocusChanged", "hasWindowFocus", String.valueOf(z7));
                break;
            case 1:
                c0744Ge.c("windowVisibilityChanged", "isVisible", String.valueOf(this.f13381H));
                break;
            default:
                if (!this.f13381H) {
                    c0744Ge.l();
                    p113o3.J j8 = p113o3.O.f27924l;
                    j8.removeCallbacks(this);
                    j8.postDelayed(this, 250L);
                }
                break;
        }
    }

    public /* synthetic */ RunnableC0729Fe(C0744Ge c0744Ge, boolean z7, int i8) {
        this.f13380G = i8;
        this.f13382I = c0744Ge;
        this.f13381H = z7;
    }
}
