package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2141vb extends AbstractBinderC1726nb {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f21526G;

    public BinderC2141vb(com.google.ads.mediation.a aVar) {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
        this.f21526G = aVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String e() {
        return ((com.google.ads.mediation.a) this.f21526G).f11618i;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final void f() {
        ((com.google.ads.mediation.a) this.f21526G).getClass();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final void f2(R3.a aVar) {
        ((com.google.ads.mediation.a) this.f21526G).getClass();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final List g() {
        List<U8> list = ((com.google.ads.mediation.a) this.f21526G).f11611b;
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (U8 u8 : list) {
                arrayList.add(new K8(u8.f16790b, u8.f16791c, u8.f16792d, u8.f16793e, u8.f16794f));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final void j1(R3.a aVar, R3.a aVar2, R3.a aVar3) {
        View view = (View) R3.b.v0(aVar);
        ((com.google.ads.mediation.a) this.f21526G).getClass();
        A0.O.I(p067i3.f.f25573a.get(view));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final void l0(R3.a aVar) {
        ((com.google.ads.mediation.a) this.f21526G).getClass();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final boolean t() {
        return ((com.google.ads.mediation.a) this.f21526G).f11622m;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String u() {
        return ((com.google.ads.mediation.a) this.f21526G).f11617h;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final boolean v() {
        return ((com.google.ads.mediation.a) this.f21526G).f11623n;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final double zze() {
        Double d6 = ((com.google.ads.mediation.a) this.f21526G).f11616g;
        if (d6 != null) {
            return d6.doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final float zzf() {
        ((com.google.ads.mediation.a) this.f21526G).getClass();
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final float zzg() {
        ((com.google.ads.mediation.a) this.f21526G).getClass();
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final float zzh() {
        ((com.google.ads.mediation.a) this.f21526G).getClass();
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final Bundle zzi() {
        return ((com.google.ads.mediation.a) this.f21526G).f11621l;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final p090l3.B0 zzj() {
        p090l3.B0 b8;
        p004a3.b bVar = ((com.google.ads.mediation.a) this.f21526G).f11619j;
        if (bVar == null) {
            return null;
        }
        synchronized (bVar.f8650H) {
            b8 = (p090l3.B0) bVar.f8651I;
        }
        return b8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final P8 zzk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final T8 zzl() {
        U8 u8 = ((com.google.ads.mediation.a) this.f21526G).f11613d;
        if (u8 == null) {
            return null;
        }
        return new K8(u8.f16790b, u8.f16791c, u8.f16792d, u8.f16793e, u8.f16794f);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final R3.a zzm() {
        ((com.google.ads.mediation.a) this.f21526G).getClass();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final R3.a zzn() {
        ((com.google.ads.mediation.a) this.f21526G).getClass();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final R3.a zzo() {
        Object obj = ((com.google.ads.mediation.a) this.f21526G).f11620k;
        if (obj == null) {
            return null;
        }
        return new R3.b(obj);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String zzp() {
        return ((com.google.ads.mediation.a) this.f21526G).f11615f;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String zzq() {
        return ((com.google.ads.mediation.a) this.f21526G).f11612c;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String zzr() {
        return ((com.google.ads.mediation.a) this.f21526G).f11614e;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String zzs() {
        return ((com.google.ads.mediation.a) this.f21526G).f11610a;
    }
}
