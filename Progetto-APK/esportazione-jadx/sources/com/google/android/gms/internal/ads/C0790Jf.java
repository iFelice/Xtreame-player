package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Jf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0790Jf implements InterfaceC1162cg, InterfaceC1214dg {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14176G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1862q6 f14177H;

    public /* synthetic */ C0790Jf(C1862q6 c1862q6, int i8) {
        this.f14176G = i8;
        this.f14177H = c1862q6;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1162cg
    public final void g(String str, int i8, String str2, boolean z7) {
        int i9 = this.f14176G;
        C1862q6 c1862q6 = this.f14177H;
        switch (i9) {
            case 0:
                c1862q6.d();
                break;
            case 1:
                if (!z7) {
                    c1862q6.c(new C1898qr(1, "Image Web View failed to load. Error code: " + i8 + ", Description: " + str + ", Failing URL: " + str2));
                } else {
                    c1862q6.d();
                }
                break;
            default:
                c1862q6.d();
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1214dg
    /* JADX INFO: renamed from: zza */
    public final void mo7zza() {
        this.f14177H.d();
    }
}
