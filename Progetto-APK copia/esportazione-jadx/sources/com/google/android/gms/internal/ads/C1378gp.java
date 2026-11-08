package com.google.android.gms.internal.ads;

import android.os.Binder;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1378gp implements InterfaceC1430hp {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19005G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1481ip f19006H;

    public /* synthetic */ C1378gp(C1481ip c1481ip, int i8) {
        this.f19005G = i8;
        this.f19006H = c1481ip;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1430hp
    public final D4.b b(C0973Wc c0973Wc) {
        D4.b bVarH1;
        switch (this.f19005G) {
            case 0:
                Wo wo = this.f19006H.f19352b;
                String str = c0973Wc.f17257N;
                synchronized (wo.f16527b) {
                    try {
                        int i8 = wo.f17322h;
                        if (i8 != 1 && i8 != 3) {
                            bVarH1 = Cw.H1(new C1274ep(2));
                        } else if (wo.f16528c) {
                            bVarH1 = wo.f16526a;
                        } else {
                            wo.f17322h = 3;
                            wo.f16528c = true;
                            wo.f17321g = str;
                            wo.f16531f.checkAvailabilityAndConnect();
                            wo.f16526a.a(new Vo(wo, 1), AbstractC1988se.f20911f);
                            bVarH1 = wo.f16526a;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return bVarH1;
            case 1:
                return ((Gp) this.f19006H.f19353c.zzb()).C3(c0973Wc.f17257N);
            default:
                return ((Gp) this.f19006H.f19353c.zzb()).z3(c0973Wc, Binder.getCallingUid());
        }
    }
}
