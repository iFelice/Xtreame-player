package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ua, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2088ua implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21226G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2244xa f21227H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ String f21228I;

    public /* synthetic */ RunnableC2088ua(C2244xa c2244xa, String str, int i8) {
        this.f21226G = i8;
        this.f21227H = c2244xa;
        this.f21228I = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f21226G;
        String str = this.f21228I;
        C2244xa c2244xa = this.f21227H;
        switch (i8) {
            case 0:
                c2244xa.f21879G.loadUrl(str);
                break;
            case 1:
                c2244xa.f21879G.c(str);
                break;
            case 2:
                c2244xa.f21879G.loadData(str, "text/html", "UTF-8");
                break;
            default:
                c2244xa.f21879G.loadData(str, "text/html", "UTF-8");
                break;
        }
    }
}
