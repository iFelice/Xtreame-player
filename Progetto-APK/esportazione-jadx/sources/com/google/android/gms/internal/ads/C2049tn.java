package com.google.android.gms.internal.ads;

import com.google.api.Endpoint;
import p090l3.C3117z0;
import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2049tn implements InterfaceC1022Zj, InterfaceC0779Ij, InterfaceC1993sj, InterfaceC0659Aj, InterfaceC3067a, InterfaceC1787ok {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C2173w6 f21137G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f21138H = false;

    public C2049tn(C2173w6 c2173w6, C2369zv c2369zv) {
        this.f21137G = c2173w6;
        c2173w6.b(2);
        if (c2369zv != null) {
            c2173w6.b(1101);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void C(Tv tv) {
        this.f21137G.a(new C0980Wj(tv));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void E(C1397h7 c1397h7) {
        C2173w6 c2173w6 = this.f21137G;
        synchronized (c2173w6) {
            if (c2173w6.f21642c) {
                try {
                    c2173w6.f21641b.e(c1397h7);
                } catch (NullPointerException e8) {
                    p083k3.l.f25980A.f25987g.i("AdMobClearcutLogger.modify", e8);
                }
            }
        }
        this.f21137G.b(1104);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void m(boolean z7) {
        this.f21137G.b(true != z7 ? 1108 : 1107);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final void n() {
        this.f21137G.b(3);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void p(boolean z7) {
        this.f21137G.b(true != z7 ? 1106 : 1105);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void t(C1397h7 c1397h7) {
        C2173w6 c2173w6 = this.f21137G;
        synchronized (c2173w6) {
            if (c2173w6.f21642c) {
                try {
                    c2173w6.f21641b.e(c1397h7);
                } catch (NullPointerException e8) {
                    p083k3.l.f25980A.f25987g.i("AdMobClearcutLogger.modify", e8);
                }
            }
        }
        this.f21137G.b(1103);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void w(C1397h7 c1397h7) {
        C2173w6 c2173w6 = this.f21137G;
        synchronized (c2173w6) {
            if (c2173w6.f21642c) {
                try {
                    c2173w6.f21641b.e(c1397h7);
                } catch (NullPointerException e8) {
                    p083k3.l.f25980A.f25987g.i("AdMobClearcutLogger.modify", e8);
                }
            }
        }
        this.f21137G.b(1102);
    }

    @Override // p090l3.InterfaceC3067a
    public final synchronized void x() {
        if (this.f21138H) {
            this.f21137G.b(8);
        } else {
            this.f21137G.b(7);
            this.f21138H = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1993sj
    public final void y(C3117z0 c3117z0) {
        int i8 = c3117z0.f26629G;
        C2173w6 c2173w6 = this.f21137G;
        switch (i8) {
            case 1:
                c2173w6.b(Endpoint.TARGET_FIELD_NUMBER);
                break;
            case 2:
                c2173w6.b(102);
                break;
            case 3:
                c2173w6.b(5);
                break;
            case 4:
                c2173w6.b(103);
                break;
            case 5:
                c2173w6.b(104);
                break;
            case 6:
                c2173w6.b(105);
                break;
            case 7:
                c2173w6.b(106);
                break;
            default:
                c2173w6.b(4);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void z(C0973Wc c0973Wc) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void zzh() {
        this.f21137G.b(1109);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final synchronized void zzr() {
        this.f21137G.b(6);
    }
}
