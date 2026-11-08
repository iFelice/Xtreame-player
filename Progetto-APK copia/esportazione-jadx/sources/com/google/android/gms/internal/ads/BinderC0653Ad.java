package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.measurement.AbstractC2617p2;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ad, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0653Ad extends AbstractBinderC2195wd {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12010G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AbstractC2617p2 f12011H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f12012I;

    public /* synthetic */ BinderC0653Ad(AbstractC2617p2 abstractC2617p2, Object obj, int i8) {
        this.f12010G = i8;
        this.f12011H = abstractC2617p2;
        this.f12012I = obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void c(C3117z0 c3117z0) {
        int i8 = this.f12010G;
        AbstractC2617p2 abstractC2617p2 = this.f12011H;
        switch (i8) {
            case 0:
                C2050to c2050to = (C2050to) abstractC2617p2;
                if (c2050to != null) {
                    c2050to.h(c3117z0.l());
                }
                break;
            default:
                C2050to c2050to2 = (C2050to) abstractC2617p2;
                if (c2050to2 != null) {
                    c2050to2.h(c3117z0.l());
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void d(int i8) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void zzg() {
        C0713Ed c0713Ed;
        int i8 = this.f12010G;
        Object obj = this.f12012I;
        AbstractC2617p2 abstractC2617p2 = this.f12011H;
        switch (i8) {
            case 0:
                C2050to c2050to = (C2050to) abstractC2617p2;
                if (c2050to != null) {
                    c2050to.i((C2351zd) obj);
                }
                break;
            default:
                C2050to c2050to2 = (C2050to) abstractC2617p2;
                if (c2050to2 != null && (c0713Ed = (C0713Ed) obj) != null) {
                    c2050to2.i(c0713Ed);
                    break;
                }
                break;
        }
    }
}
