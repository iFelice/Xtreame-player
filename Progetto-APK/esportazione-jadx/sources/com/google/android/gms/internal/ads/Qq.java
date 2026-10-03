package com.google.android.gms.internal.ads;

import android.content.Context;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Qq implements InterfaceC1374gl {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Ov f16139G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC0771Ib f16140H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p043f3.a f16141I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C2357zj f16142J = null;

    public Qq(Ov ov, InterfaceC0771Ib interfaceC0771Ib, p043f3.a aVar) {
        this.f16139G = ov;
        this.f16140H = interfaceC0771Ib;
        this.f16141I = aVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1374gl
    public final void c(boolean z7, Context context, C2201wj c2201wj) throws C1322fl {
        boolean zH;
        try {
            int iOrdinal = this.f16141I.ordinal();
            InterfaceC0771Ib interfaceC0771Ib = this.f16140H;
            if (iOrdinal == 1) {
                zH = interfaceC0771Ib.H(new R3.b(context));
            } else {
                if (iOrdinal != 2) {
                    if (iOrdinal == 5) {
                        zH = interfaceC0771Ib.K(new R3.b(context));
                    }
                    throw new C1322fl("Adapter failed to show.");
                }
                zH = interfaceC0771Ib.V2(new R3.b(context));
            }
            if (zH) {
                if (this.f16142J == null) {
                    return;
                }
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15901o1)).booleanValue() || this.f16139G.f15244Y != 2) {
                    return;
                }
                this.f16142J.zza();
                return;
            }
            throw new C1322fl("Adapter failed to show.");
        } catch (Throwable th) {
            throw new C1322fl(th);
        }
    }
}
