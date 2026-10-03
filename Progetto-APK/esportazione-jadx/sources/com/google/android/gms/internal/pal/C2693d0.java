package com.google.android.gms.internal.pal;

import A0.C0022w;
import com.google.android.gms.internal.ads.AbstractC2090uc;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2693d0 implements InterfaceC2749k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC2740j f23767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2789p0 f23768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C2859y f23769c;

    public C2693d0(C2789p0 c2789p0, C2859y c2859y, AbstractC2740j abstractC2740j) {
        this.f23768b = c2789p0;
        this.f23769c = c2859y;
        this.f23767a = abstractC2740j;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final void a(Object obj, byte[] bArr, int i8, int i9, C0022w c0022w) {
        D d6 = (D) obj;
        if (d6.zzc == C2781o0.f23969f) {
            d6.zzc = C2781o0.b();
        }
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final void b(Object obj, C2843w c2843w) {
        this.f23769c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final void c(Object obj, C2827u c2827u, C2851x c2851x) {
        this.f23768b.getClass();
        D d6 = (D) obj;
        if (d6.zzc == C2781o0.f23969f) {
            d6.zzc = C2781o0.b();
        }
        this.f23769c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final int zza(Object obj) {
        this.f23768b.getClass();
        C2781o0 c2781o0 = ((D) obj).zzc;
        int i8 = c2781o0.f23973d;
        if (i8 != -1) {
            return i8;
        }
        int iI0 = 0;
        for (int i9 = 0; i9 < c2781o0.f23970a; i9++) {
            int i10 = c2781o0.f23971b[i9];
            r rVar = (r) c2781o0.f23972c[i9];
            int iI1 = C2835v.I0(8);
            int i11 = rVar.i();
            int i12 = i10 >>> 3;
            iI0 += C2835v.I0(i11) + i11 + C2835v.I0(24) + AbstractC2090uc.A(i12, C2835v.I0(16), iI1 + iI1);
        }
        c2781o0.f23973d = iI0;
        return iI0;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final int zzb(Object obj) {
        this.f23768b.getClass();
        return ((D) obj).zzc.hashCode();
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final Object zze() {
        return ((C) ((D) this.f23767a).l(5)).e();
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final void zzf(Object obj) {
        this.f23768b.getClass();
        ((D) obj).zzc.f23974e = false;
        this.f23769c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final void zzg(Object obj, Object obj2) {
        AbstractC2757l0.c(this.f23768b, obj, obj2);
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final boolean zzk(Object obj, Object obj2) {
        C2789p0 c2789p0 = this.f23768b;
        c2789p0.getClass();
        C2781o0 c2781o0 = ((D) obj).zzc;
        c2789p0.getClass();
        return c2781o0.equals(((D) obj2).zzc);
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2749k0
    public final boolean zzl(Object obj) {
        this.f23769c.getClass();
        A0.O.I(obj);
        throw null;
    }
}
