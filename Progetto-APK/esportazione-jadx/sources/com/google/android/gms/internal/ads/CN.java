package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class CN implements InterfaceC2138vN, InterfaceC2086uN {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC2138vN[] f12620G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final IdentityHashMap f12621H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f12622I = new ArrayList();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final HashMap f12623J = new HashMap();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public InterfaceC2086uN f12624K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public C1104bO f12625L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public InterfaceC2138vN[] f12626M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public C1671mN f12627N;

    public CN(long[] jArr, InterfaceC2138vN... interfaceC2138vNArr) {
        this.f12620G = interfaceC2138vNArr;
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        PA pa = PA.f15340K;
        this.f12627N = new C1671mN(pa, pa);
        this.f12621H = new IdentityHashMap();
        this.f12626M = new InterfaceC2138vN[0];
        for (int i8 = 0; i8 < interfaceC2138vNArr.length; i8++) {
            long j8 = jArr[i8];
            if (j8 != 0) {
                this.f12620G[i8] = new C1052aO(interfaceC2138vNArr[i8], j8);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long a(long j8) {
        long jA = this.f12626M[0].a(j8);
        int i8 = 1;
        while (true) {
            InterfaceC2138vN[] interfaceC2138vNArr = this.f12626M;
            if (i8 >= interfaceC2138vNArr.length) {
                return jA;
            }
            if (interfaceC2138vNArr[i8].a(jA) != jA) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i8++;
        }
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final void b(long j8) {
        this.f12627N.b(j8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2086uN
    public final /* bridge */ /* synthetic */ void c(VN vn) {
        InterfaceC2086uN interfaceC2086uN = this.f12624K;
        interfaceC2086uN.getClass();
        interfaceC2086uN.c(this);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void d(InterfaceC2086uN interfaceC2086uN, long j8) {
        this.f12624K = interfaceC2086uN;
        ArrayList arrayList = this.f12622I;
        InterfaceC2138vN[] interfaceC2138vNArr = this.f12620G;
        Collections.addAll(arrayList, interfaceC2138vNArr);
        for (InterfaceC2138vN interfaceC2138vN : interfaceC2138vNArr) {
            interfaceC2138vN.d(this, j8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void e(long j8) {
        for (InterfaceC2138vN interfaceC2138vN : this.f12626M) {
            interfaceC2138vN.e(j8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2086uN
    public final void f(InterfaceC2138vN interfaceC2138vN) {
        InterfaceC2138vN[] interfaceC2138vNArr;
        ArrayList arrayList = this.f12622I;
        arrayList.remove(interfaceC2138vN);
        if (arrayList.isEmpty()) {
            int i8 = 0;
            int i9 = 0;
            while (true) {
                interfaceC2138vNArr = this.f12620G;
                if (i8 >= interfaceC2138vNArr.length) {
                    break;
                }
                i9 += interfaceC2138vNArr[i8].zzi().f18042a;
                i8++;
            }
            C0961Ve[] c0961VeArr = new C0961Ve[i9];
            int i10 = 0;
            for (int i11 = 0; i11 < interfaceC2138vNArr.length; i11++) {
                C1104bO c1104bOZzi = interfaceC2138vNArr[i11].zzi();
                int i12 = c1104bOZzi.f18042a;
                int i13 = 0;
                while (i13 < i12) {
                    C0961Ve c0961VeA = c1104bOZzi.a(i13);
                    C1804p0[] c1804p0Arr = new C1804p0[c0961VeA.f17069a];
                    for (int i14 = 0; i14 < c0961VeA.f17069a; i14++) {
                        C1804p0 c1804p0 = c0961VeA.f17072d[i14];
                        K kB = c1804p0.b();
                        String str = c1804p0.f20371a;
                        if (str == null) {
                            str = HttpUrl.FRAGMENT_ENCODE_SET;
                        }
                        kB.f14260a = i11 + ":" + str;
                        c1804p0Arr[i14] = new C1804p0(kB);
                    }
                    C0961Ve c0961Ve = new C0961Ve(i11 + ":" + c0961VeA.f17070b, c1804p0Arr);
                    this.f12623J.put(c0961Ve, c0961VeA);
                    c0961VeArr[i10] = c0961Ve;
                    i13++;
                    i10++;
                }
            }
            this.f12625L = new C1104bO(c0961VeArr);
            InterfaceC2086uN interfaceC2086uN = this.f12624K;
            interfaceC2086uN.getClass();
            interfaceC2086uN.f(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long i(long j8, ZK zk) {
        InterfaceC2138vN[] interfaceC2138vNArr = this.f12626M;
        return (interfaceC2138vNArr.length > 0 ? interfaceC2138vNArr[0] : this.f12620G[0]).i(j8, zk);
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean j(EK ek) {
        ArrayList arrayList = this.f12622I;
        if (arrayList.isEmpty()) {
            return this.f12627N.j(ek);
        }
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((InterfaceC2138vN) arrayList.get(i8)).j(ek);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long k(InterfaceC2087uO[] interfaceC2087uOArr, boolean[] zArr, UN[] unArr, boolean[] zArr2, long j8) {
        int length;
        IdentityHashMap identityHashMap;
        int length2 = interfaceC2087uOArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i8 = 0;
        while (true) {
            length = interfaceC2087uOArr.length;
            identityHashMap = this.f12621H;
            if (i8 >= length) {
                break;
            }
            UN un = unArr[i8];
            Integer num = un == null ? null : (Integer) identityHashMap.get(un);
            iArr[i8] = num == null ? -1 : num.intValue();
            InterfaceC2087uO interfaceC2087uO = interfaceC2087uOArr[i8];
            if (interfaceC2087uO != null) {
                String str = interfaceC2087uO.zze().f17070b;
                iArr2[i8] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr2[i8] = -1;
            }
            i8++;
        }
        identityHashMap.clear();
        UN[] unArr2 = new UN[length];
        UN[] unArr3 = new UN[length];
        InterfaceC2087uO[] interfaceC2087uOArr2 = new InterfaceC2087uO[length];
        InterfaceC2138vN[] interfaceC2138vNArr = this.f12620G;
        ArrayList arrayList = new ArrayList(interfaceC2138vNArr.length);
        long j9 = j8;
        int i9 = 0;
        while (i9 < interfaceC2138vNArr.length) {
            int i10 = 0;
            while (i10 < interfaceC2087uOArr.length) {
                unArr3[i10] = iArr[i10] == i9 ? unArr[i10] : null;
                if (iArr2[i10] == i9) {
                    InterfaceC2087uO interfaceC2087uO2 = interfaceC2087uOArr[i10];
                    interfaceC2087uO2.getClass();
                    C0961Ve c0961Ve = (C0961Ve) this.f12623J.get(interfaceC2087uO2.zze());
                    c0961Ve.getClass();
                    interfaceC2087uOArr2[i10] = new BN(interfaceC2087uO2, c0961Ve);
                } else {
                    interfaceC2087uOArr2[i10] = null;
                }
                i10++;
                arrayList = arrayList;
            }
            ArrayList arrayList2 = arrayList;
            int i11 = i9;
            InterfaceC2138vN[] interfaceC2138vNArr2 = interfaceC2138vNArr;
            InterfaceC2087uO[] interfaceC2087uOArr3 = interfaceC2087uOArr2;
            UN[] unArr4 = unArr3;
            long jK = interfaceC2138vNArr[i9].k(interfaceC2087uOArr2, zArr, unArr3, zArr2, j9);
            if (i11 == 0) {
                j9 = jK;
            } else if (jK != j9) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z7 = false;
            for (int i12 = 0; i12 < interfaceC2087uOArr.length; i12++) {
                if (iArr2[i12] == i11) {
                    UN un2 = unArr4[i12];
                    un2.getClass();
                    unArr2[i12] = un2;
                    identityHashMap.put(un2, Integer.valueOf(i11));
                    z7 = true;
                } else if (iArr[i12] == i11) {
                    p113o3.r.M(unArr4[i12] == null);
                }
            }
            if (z7) {
                arrayList2.add(interfaceC2138vNArr2[i11]);
            }
            i9 = i11 + 1;
            arrayList = arrayList2;
            interfaceC2138vNArr = interfaceC2138vNArr2;
            interfaceC2087uOArr2 = interfaceC2087uOArr3;
            unArr3 = unArr4;
        }
        ArrayList arrayList3 = arrayList;
        System.arraycopy(unArr2, 0, unArr, 0, length);
        this.f12626M = (InterfaceC2138vN[]) arrayList3.toArray(new InterfaceC2138vN[0]);
        this.f12627N = new C1671mN(arrayList3, Cw.F0(arrayList3, new C2064u1(24)));
        return j9;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void x() {
        int i8 = 0;
        while (true) {
            InterfaceC2138vN[] interfaceC2138vNArr = this.f12620G;
            if (i8 >= interfaceC2138vNArr.length) {
                return;
            }
            interfaceC2138vNArr[i8].x();
            i8++;
        }
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzb() {
        return this.f12627N.zzb();
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzc() {
        return this.f12627N.zzc();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long zzd() {
        long j8 = -9223372036854775807L;
        for (InterfaceC2138vN interfaceC2138vN : this.f12626M) {
            long jZzd = interfaceC2138vN.zzd();
            if (jZzd == -9223372036854775807L) {
                if (j8 != -9223372036854775807L && interfaceC2138vN.a(j8) != j8) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j8 == -9223372036854775807L) {
                for (InterfaceC2138vN interfaceC2138vN2 : this.f12626M) {
                    if (interfaceC2138vN2 == interfaceC2138vN) {
                        break;
                    }
                    if (interfaceC2138vN2.a(jZzd) != jZzd) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j8 = jZzd;
            } else if (jZzd != j8) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final C1104bO zzi() {
        C1104bO c1104bO = this.f12625L;
        c1104bO.getClass();
        return c1104bO;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean zzp() {
        return this.f12627N.zzp();
    }
}
