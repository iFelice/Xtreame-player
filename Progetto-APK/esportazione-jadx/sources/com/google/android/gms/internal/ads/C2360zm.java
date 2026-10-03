package com.google.android.gms.internal.ads;

import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2360zm implements InterfaceC1162cg {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22186G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0707Dm f22187H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0715Ef f22188I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C1862q6 f22189J;

    public /* synthetic */ C2360zm(C0707Dm c0707Dm, InterfaceC0715Ef interfaceC0715Ef, C1862q6 c1862q6, int i8) {
        this.f22186G = i8;
        this.f22187H = c0707Dm;
        this.f22188I = interfaceC0715Ef;
        this.f22189J = c1862q6;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1162cg
    public final void g(String str, int i8, String str2, boolean z7) {
        int i9 = this.f22186G;
        InterfaceC0715Ef interfaceC0715Ef = this.f22188I;
        C1862q6 c1862q6 = this.f22189J;
        C0707Dm c0707Dm = this.f22187H;
        switch (i9) {
            case 0:
                c0707Dm.getClass();
                boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15625G3)).booleanValue();
                Yv yv = c0707Dm.f12869a;
                if (!zBooleanValue) {
                    if (yv.f17674a != null && interfaceC0715Ef.zzq() != null) {
                        interfaceC0715Ef.zzq().B3(yv.f17674a);
                    }
                    c1862q6.d();
                } else if (!z7) {
                    c1862q6.c(new C1898qr(1, "Native Video WebView failed to load. Error code: " + i8 + ", Description: " + str + ", Failing URL: " + str2));
                } else {
                    if (yv.f17674a != null && interfaceC0715Ef.zzq() != null) {
                        interfaceC0715Ef.zzq().B3(yv.f17674a);
                    }
                    c1862q6.d();
                }
                break;
            default:
                if (!z7) {
                    c0707Dm.getClass();
                    c1862q6.c(new C1898qr(1, "Html video Web View failed to load. Error code: " + i8 + ", Description: " + str + ", Failing URL: " + str2));
                } else {
                    Yv yv2 = c0707Dm.f12869a;
                    if (yv2.f17674a != null && interfaceC0715Ef.zzq() != null) {
                        interfaceC0715Ef.zzq().B3(yv2.f17674a);
                    }
                    c1862q6.d();
                }
                break;
        }
    }
}
