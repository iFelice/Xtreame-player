package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2294yN implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22024G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1294f8 f22025H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AN f22026I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C1827pN f22027J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ C1721nL f22028K;

    public /* synthetic */ RunnableC2294yN(C1294f8 c1294f8, AN an, C1827pN c1827pN, C1721nL c1721nL, int i8) {
        this.f22024G = i8;
        this.f22025H = c1294f8;
        this.f22026I = an;
        this.f22027J = c1827pN;
        this.f22028K = c1721nL;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f22024G;
        C1827pN c1827pN = this.f22027J;
        AN an = this.f22026I;
        C1721nL c1721nL = this.f22028K;
        C1294f8 c1294f8 = this.f22025H;
        switch (i8) {
            case 0:
                an.e(0, (C2190wN) c1294f8.f18727I, c1827pN, c1721nL);
                break;
            case 1:
                an.h(0, (C2190wN) c1294f8.f18727I, c1827pN, c1721nL);
                break;
            default:
                an.f(0, (C2190wN) c1294f8.f18727I, c1827pN, c1721nL);
                break;
        }
    }
}
