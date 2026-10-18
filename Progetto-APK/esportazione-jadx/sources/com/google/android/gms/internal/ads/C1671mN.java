package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1671mN implements VN {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final PA f19951G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f19952H;

    public C1671mN(List list, List list2) {
        p113o3.r.q(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i8 = 0;
        p113o3.r.J(list.size() == list2.size());
        int i9 = 0;
        while (i8 < list.size()) {
            C1619lN c1619lN = new C1619lN((VN) list.get(i8), (List) list2.get(i8));
            int i10 = i9 + 1;
            int length = objArrCopyOf.length;
            if (length < i10) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, AbstractC1762oA.e(length, i10));
            }
            objArrCopyOf[i9] = c1619lN;
            i8++;
            i9 = i10;
        }
        this.f19951G = AbstractC2073uA.s(i9, objArrCopyOf);
        this.f19952H = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final void b(long j8) {
        int i8 = 0;
        while (true) {
            PA pa = this.f19951G;
            if (i8 >= pa.size()) {
                return;
            }
            ((C1619lN) pa.get(i8)).b(j8);
            i8++;
        }
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean j(EK ek) {
        boolean zJ;
        boolean z7 = false;
        do {
            long jZzc = zzc();
            if (jZzc == Long.MIN_VALUE) {
                break;
            }
            int i8 = 0;
            zJ = false;
            while (true) {
                PA pa = this.f19951G;
                if (i8 >= pa.size()) {
                    break;
                }
                long jZzc2 = ((C1619lN) pa.get(i8)).zzc();
                boolean z8 = jZzc2 != Long.MIN_VALUE && jZzc2 <= ek.f12961a;
                if (jZzc2 == jZzc || z8) {
                    zJ |= ((C1619lN) pa.get(i8)).j(ek);
                }
                i8++;
            }
            z7 |= zJ;
        } while (zJ);
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzb() {
        int i8 = 0;
        long jMin = Long.MAX_VALUE;
        long jMin2 = Long.MAX_VALUE;
        while (true) {
            PA pa = this.f19951G;
            if (i8 >= pa.size()) {
                break;
            }
            C1619lN c1619lN = (C1619lN) pa.get(i8);
            long jZzb = c1619lN.zzb();
            if ((c1619lN.c().contains(1) || c1619lN.c().contains(2) || c1619lN.c().contains(4)) && jZzb != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzb);
            }
            if (jZzb != Long.MIN_VALUE) {
                jMin2 = Math.min(jMin2, jZzb);
            }
            i8++;
        }
        if (jMin != Long.MAX_VALUE) {
            this.f19952H = jMin;
            return jMin;
        }
        if (jMin2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j8 = this.f19952H;
        return j8 != -9223372036854775807L ? j8 : jMin2;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzc() {
        int i8 = 0;
        long jMin = Long.MAX_VALUE;
        while (true) {
            PA pa = this.f19951G;
            if (i8 >= pa.size()) {
                break;
            }
            long jZzc = ((C1619lN) pa.get(i8)).zzc();
            if (jZzc != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzc);
            }
            i8++;
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean zzp() {
        int i8 = 0;
        while (true) {
            PA pa = this.f19951G;
            if (i8 >= pa.size()) {
                return false;
            }
            if (((C1619lN) pa.get(i8)).zzp()) {
                return true;
            }
            i8++;
        }
    }
}
