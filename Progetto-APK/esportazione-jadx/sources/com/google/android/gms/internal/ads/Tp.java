package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Collections;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: loaded from: classes.dex */
public final class Tp implements InterfaceC0779Ij, InterfaceC1993sj {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final Object f16743I = new Object();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static int f16744J;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p113o3.K f16745G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Wp f16746H;

    public Tp(Wp wp, p113o3.L l4) {
        this.f16746H = wp;
        this.f16745G = l4;
    }

    public final void a(boolean z7) {
        int i8;
        int iIntValue;
        J7 j8 = Q7.f15651J5;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && !((p113o3.L) this.f16745G).r()) {
            Object obj = f16743I;
            synchronized (obj) {
                i8 = f16744J;
                iIntValue = ((Integer) c3099q.f26627c.a(Q7.f15658K5)).intValue();
            }
            if (i8 < iIntValue) {
                Wp wp = this.f16746H;
                wp.getClass();
                Bundle bundle = new Bundle();
                C1062aj c1062aj = wp.f17325d;
                c1062aj.f17920l.zza();
                Cw.h2(new C1950rs(c1062aj.f17909a, Iw.SIGNALS, null, Gw.f13664d, Collections.emptyList(), c1062aj.f17917i.a(bundle, new Bundle())).c(), new P0.j(wp, z7), AbstractC1988se.f20911f);
                synchronized (obj) {
                    f16744J++;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final void n() {
        a(true);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1993sj
    public final void y(C3117z0 c3117z0) {
        a(false);
    }
}
