package D5;

import C5.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;
import p027d2.v;
import p130q5.i;
import p130q5.m;
import p130q5.o;
import p130q5.p;
import p190y4.k;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f2413i = {1, 10, 34, 70, WebSocketProtocol.PAYLOAD_SHORT};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f2414j = {4, 20, 48, 81};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f2415k = {0, 161, 961, 2015, 2715};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f2416l = {0, 336, 1036, 1516};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f2417m = {8, 6, 4, 3, 1};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f2418n = {2, 4, 6, 8};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[][] f2419o = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f2420g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f2421h = new ArrayList();

    public static void l(ArrayList arrayList, d dVar) {
        if (dVar == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            d dVar2 = (d) it.next();
            if (dVar2.f2406a == dVar.f2406a) {
                dVar2.f2412d++;
                return;
            }
        }
        arrayList.add(dVar);
    }

    @Override // C5.j, p130q5.k
    public final void a() {
        this.f2420g.clear();
        this.f2421h.clear();
    }

    @Override // C5.j
    public final m d(int i8, p176w5.a aVar, Map map) throws i {
        d dVarN = n(aVar, false, i8, map);
        ArrayList<d> arrayList = this.f2420g;
        l(arrayList, dVarN);
        aVar.i();
        d dVarN2 = n(aVar, true, i8, map);
        ArrayList<d> arrayList2 = this.f2421h;
        l(arrayList2, dVarN2);
        aVar.i();
        for (d dVar : arrayList) {
            if (dVar.f2412d > 1) {
                for (d dVar2 : arrayList2) {
                    if (dVar2.f2412d > 1) {
                        int i9 = ((dVar2.f2407b * 16) + dVar.f2407b) % 79;
                        c cVar = dVar.f2411c;
                        int i10 = cVar.f2408a * 9;
                        c cVar2 = dVar2.f2411c;
                        int i11 = i10 + cVar2.f2408a;
                        if (i11 > 72) {
                            i11--;
                        }
                        if (i11 > 8) {
                            i11--;
                        }
                        if (i9 == i11) {
                            String strValueOf = String.valueOf((((long) dVar.f2406a) * 4537077) + ((long) dVar2.f2406a));
                            StringBuilder sb = new StringBuilder(14);
                            for (int length = 13 - strValueOf.length(); length > 0; length--) {
                                sb.append('0');
                            }
                            sb.append(strValueOf);
                            int i12 = 0;
                            for (int i13 = 0; i13 < 13; i13++) {
                                int iCharAt = sb.charAt(i13) - '0';
                                if ((i13 & 1) == 0) {
                                    iCharAt *= 3;
                                }
                                i12 += iCharAt;
                            }
                            int i14 = 10 - (i12 % 10);
                            if (i14 == 10) {
                                i14 = 0;
                            }
                            sb.append(i14);
                            String string = sb.toString();
                            o[] oVarArr = cVar.f2410c;
                            o oVar = oVarArr[0];
                            o oVar2 = oVarArr[1];
                            o[] oVarArr2 = cVar2.f2410c;
                            return new m(string, null, new o[]{oVar, oVar2, oVarArr2[0], oVarArr2[1]}, p130q5.a.f29590S);
                        }
                    }
                }
            }
        }
        throw i.f29623I;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x008f A[PHI: r14 r15
      0x008f: PHI (r14v15 boolean) = (r14v5 boolean), (r14v19 boolean) binds: [B:47:0x00ad, B:33:0x008d] A[DONT_GENERATE, DONT_INLINE]
      0x008f: PHI (r15v11 boolean) = (r15v1 boolean), (r15v13 boolean) binds: [B:47:0x00ad, B:33:0x008d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x0096 A[PHI: r14 r15
      0x0096: PHI (r14v9 boolean) = (r14v5 boolean), (r14v19 boolean) binds: [B:49:0x00b0, B:35:0x0094] A[DONT_GENERATE, DONT_INLINE]
      0x0096: PHI (r15v5 boolean) = (r15v1 boolean), (r15v13 boolean) binds: [B:49:0x00b0, B:35:0x0094] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:38:0x009b A[PHI: r14 r15
      0x009b: PHI (r14v7 boolean) = (r14v5 boolean), (r14v19 boolean) binds: [B:49:0x00b0, B:35:0x0094] A[DONT_GENERATE, DONT_INLINE]
      0x009b: PHI (r15v3 boolean) = (r15v1 boolean), (r15v13 boolean) binds: [B:49:0x00b0, B:35:0x0094] A[DONT_GENERATE, DONT_INLINE]] */
    public final b m(p176w5.a aVar, c cVar, boolean z7) throws i {
        float[] fArr;
        float[] fArr2;
        int[] iArr;
        int[] iArr2;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        int[] iArr3 = this.f2401b;
        Arrays.fill(iArr3, 0);
        int[] iArr4 = cVar.f2409b;
        if (z7) {
            j.h(iArr4[0], aVar, iArr3);
        } else {
            j.g(iArr4[1], aVar, iArr3);
            int i8 = 0;
            for (int length = iArr3.length - 1; i8 < length; length--) {
                int i9 = iArr3[i8];
                iArr3[i8] = iArr3[length];
                iArr3[length] = i9;
                i8++;
            }
        }
        int i10 = z7 ? 16 : 15;
        float fT = v.t(iArr3) / i10;
        int i11 = 0;
        while (true) {
            int length2 = iArr3.length;
            fArr = this.f2403d;
            fArr2 = this.f2402c;
            iArr = this.f2405f;
            iArr2 = this.f2404e;
            if (i11 >= length2) {
                break;
            }
            float f8 = iArr3[i11] / fT;
            int i12 = (int) (0.5f + f8);
            if (i12 <= 0) {
                i12 = 1;
            } else if (i12 > 8) {
                i12 = 8;
            }
            int i13 = i11 / 2;
            if ((i11 & 1) == 0) {
                iArr2[i13] = i12;
                fArr2[i13] = f8 - i12;
            } else {
                iArr[i13] = i12;
                fArr[i13] = f8 - i12;
            }
            i11++;
        }
        int iT = v.t(iArr2);
        int iT2 = v.t(iArr);
        if (z7) {
            if (iT > 12) {
                z8 = false;
                z9 = true;
            } else {
                z8 = iT < 4;
                z9 = false;
            }
            if (iT2 > 12) {
                z10 = false;
                z11 = true;
            } else {
                if (iT2 < 4) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = false;
            }
        } else {
            if (iT > 11) {
                z8 = false;
                z9 = true;
            } else {
                z8 = iT < 5;
                z9 = false;
            }
            if (iT2 > 10) {
                z10 = false;
                z11 = true;
            } else {
                if (iT2 < 4) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = false;
            }
        }
        int i14 = (iT + iT2) - i10;
        boolean z12 = (iT & 1) == z7;
        boolean z13 = (iT2 & 1) == 1;
        if (i14 != -1) {
            if (i14 != 0) {
                if (i14 != 1) {
                    throw i.f29623I;
                }
                if (!z12) {
                    if (!z13) {
                        throw i.f29623I;
                    }
                    z11 = true;
                } else {
                    if (z13) {
                        throw i.f29623I;
                    }
                    z9 = true;
                }
            } else if (z12) {
                if (!z13) {
                    throw i.f29623I;
                }
                if (iT < iT2) {
                    z8 = true;
                    z11 = true;
                } else {
                    z9 = true;
                    z10 = true;
                }
            } else if (z13) {
                throw i.f29623I;
            }
        } else if (!z12) {
            if (!z13) {
                throw i.f29623I;
            }
            z10 = true;
        } else {
            if (z13) {
                throw i.f29623I;
            }
            z8 = true;
        }
        if (z8) {
            if (z9) {
                throw i.f29623I;
            }
            a.j(iArr2, fArr2);
        }
        if (z9) {
            a.i(iArr2, fArr2);
        }
        if (z10) {
            if (z11) {
                throw i.f29623I;
            }
            a.j(iArr, fArr2);
        }
        if (z11) {
            a.i(iArr, fArr);
        }
        int i15 = 0;
        int i16 = 0;
        for (int length3 = iArr2.length - 1; length3 >= 0; length3--) {
            int i17 = iArr2[length3];
            i15 = (i15 * 9) + i17;
            i16 += i17;
        }
        int i18 = 0;
        int i19 = 0;
        for (int length4 = iArr.length - 1; length4 >= 0; length4--) {
            int i20 = iArr[length4];
            i18 = (i18 * 9) + i20;
            i19 += i20;
        }
        int i21 = (i18 * 3) + i15;
        if (!z7) {
            if ((i19 & 1) != 0 || i19 > 10 || i19 < 4) {
                throw i.f29623I;
            }
            int i22 = (10 - i19) / 2;
            int i23 = f2418n[i22];
            return new b((k.J(iArr, 9 - i23, false) * f2414j[i22]) + k.J(iArr2, i23, true) + f2416l[i22], i21);
        }
        if ((i16 & 1) != 0 || i16 > 12 || i16 < 4) {
            throw i.f29623I;
        }
        int i24 = (12 - i16) / 2;
        int i25 = f2417m[i24];
        return new b((k.J(iArr2, i25, false) * f2413i[i24]) + k.J(iArr, 9 - i25, true) + f2415k[i24], i21);
    }

    public final d n(p176w5.a aVar, boolean z7, int i8, Map map) {
        try {
            c cVarP = p(aVar, i8, z7, o(aVar, z7));
            p pVar = map == null ? null : (p) map.get(p130q5.c.f29605P);
            if (pVar != null) {
                int[] iArr = cVarP.f2409b;
                float f8 = ((iArr[0] + iArr[1]) - 1) / 2.0f;
                if (z7) {
                    f8 = (aVar.f31090H - 1) - f8;
                }
                pVar.a(new o(f8, i8));
            }
            b bVarM = m(aVar, cVarP, true);
            b bVarM2 = m(aVar, cVarP, false);
            return new d((bVarM.f2406a * 1597) + bVarM2.f2406a, (bVarM2.f2407b * 4) + bVarM.f2407b, cVarP);
        } catch (i unused) {
            return null;
        }
    }

    public final int[] o(p176w5.a aVar, boolean z7) throws i {
        int[] iArr = this.f2400a;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        int i8 = aVar.f31090H;
        int i9 = 0;
        boolean z8 = false;
        while (i9 < i8) {
            z8 = !aVar.d(i9);
            if (z7 == z8) {
                break;
            }
            i9++;
        }
        int i10 = i9;
        int i11 = 0;
        while (i9 < i8) {
            if (aVar.d(i9) != z8) {
                iArr[i11] = iArr[i11] + 1;
            } else {
                if (i11 != 3) {
                    i11++;
                } else {
                    if (a.k(iArr)) {
                        return new int[]{i10, i9};
                    }
                    i10 += iArr[0] + iArr[1];
                    iArr[0] = iArr[2];
                    iArr[1] = iArr[3];
                    iArr[2] = 0;
                    iArr[3] = 0;
                    i11--;
                }
                iArr[i11] = 1;
                z8 = !z8;
            }
            i9++;
        }
        throw i.f29623I;
    }

    public final c p(p176w5.a aVar, int i8, boolean z7, int[] iArr) throws i {
        int i9;
        int i10;
        boolean zD = aVar.d(iArr[0]);
        int i11 = iArr[0] - 1;
        while (i11 >= 0 && zD != aVar.d(i11)) {
            i11--;
        }
        int i12 = i11 + 1;
        int i13 = iArr[0] - i12;
        int[] iArr2 = this.f2400a;
        System.arraycopy(iArr2, 0, iArr2, 1, iArr2.length - 1);
        iArr2[0] = i13;
        int[][] iArr3 = f2419o;
        for (int i14 = 0; i14 < 9; i14++) {
            if (j.f(iArr2, iArr3[i14], 0.45f) < 0.2f) {
                int i15 = iArr[1];
                if (z7) {
                    int i16 = aVar.f31090H - 1;
                    i9 = i16 - i15;
                    i10 = i16 - i12;
                } else {
                    i9 = i15;
                    i10 = i12;
                }
                return new c(i14, i10, i9, i8, new int[]{i12, i15});
            }
        }
        throw i.f29623I;
    }
}
