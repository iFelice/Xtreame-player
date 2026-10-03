package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import com.google.android.gms.internal.ads.SG;

/* JADX INFO: loaded from: classes.dex */
public final class S2 implements Y2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final P2 f23002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2622q2 f23003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final S3.g f23004c;

    public S2(C2622q2 c2622q2, P2 p7) {
        S3.g gVar = AbstractC2606n2.f23221a;
        this.f23003b = c2622q2;
        this.f23004c = gVar;
        this.f23002a = p7;
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final boolean a(Object obj) {
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final void b(Object obj, C2594l2 c2594l2) {
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final void c(Object obj, byte[] bArr, int i8, int i9, SG sg) {
        AbstractC2631s2 abstractC2631s2 = (AbstractC2631s2) obj;
        if (abstractC2631s2.zzc == C2535b3.f23099f) {
            abstractC2631s2.zzc = C2535b3.b();
        }
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final boolean d(Object obj, Object obj2) {
        return ((AbstractC2631s2) obj).zzc.equals(((AbstractC2631s2) obj2).zzc);
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final int zza(Object obj) {
        C2535b3 c2535b3 = ((AbstractC2631s2) obj).zzc;
        int i8 = c2535b3.f23103d;
        if (i8 != -1) {
            return i8;
        }
        int iZ = 0;
        for (int i9 = 0; i9 < c2535b3.f23100a; i9++) {
            int i10 = c2535b3.f23101b[i9] >>> 3;
            AbstractC2576i2 abstractC2576i2 = (AbstractC2576i2) c2535b3.f23102c[i9];
            int iG = C2588k2.G(8);
            int iG2 = C2588k2.G(i10) + C2588k2.G(16);
            int iG3 = C2588k2.G(24);
            int iN = abstractC2576i2.n();
            iZ += iG + iG + iG2 + AbstractC2090uc.z(iN, iN, iG3);
        }
        c2535b3.f23103d = iZ;
        return iZ;
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final int zzb(Object obj) {
        return ((AbstractC2631s2) obj).zzc.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final AbstractC2631s2 zze() {
        P2 p7 = this.f23002a;
        return p7 instanceof AbstractC2631s2 ? (AbstractC2631s2) ((AbstractC2631s2) p7).p(4) : ((AbstractC2626r2) ((AbstractC2631s2) p7).p(5)).f();
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final void zzf(Object obj) {
        this.f23003b.getClass();
        C2622q2.a(obj);
        this.f23004c.getClass();
        A0.O.I(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.Y2
    public final void zzg(Object obj, Object obj2) {
        Z2.s(obj, obj2);
    }
}
