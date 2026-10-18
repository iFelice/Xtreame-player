package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1502jA extends AbstractMap implements Serializable {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final Object f19434P = new Object();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public transient Object f19435G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient int[] f19436H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public transient Object[] f19437I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public transient Object[] f19438J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public transient int f19439K = Math.min(Math.max(8, 1), 1073741823);

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public transient int f19440L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public transient C1348gA f19441M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public transient C1348gA f19442N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public transient C1141cA f19443O;

    public final int[] a() {
        int[] iArr = this.f19436H;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] b() {
        Object[] objArr = this.f19437I;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final Object[] c() {
        Object[] objArr = this.f19438J;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (f()) {
            return;
        }
        this.f19439K += 32;
        Map mapD = d();
        if (mapD != null) {
            this.f19439K = Math.min(Math.max(size(), 3), 1073741823);
            mapD.clear();
            this.f19435G = null;
            this.f19440L = 0;
            return;
        }
        Arrays.fill(b(), 0, this.f19440L, (Object) null);
        Arrays.fill(c(), 0, this.f19440L, (Object) null);
        Object obj = this.f19435G;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(a(), 0, this.f19440L, 0);
        this.f19440L = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map mapD = d();
        if (mapD != null) {
            return mapD.containsKey(obj);
        }
        return h(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map mapD = d();
        if (mapD != null) {
            return mapD.containsValue(obj);
        }
        for (int i8 = 0; i8 < this.f19440L; i8++) {
            if (com.google.android.gms.internal.measurement.H1.E(obj, c()[i8])) {
                return true;
            }
        }
        return false;
    }

    public final Map d() {
        Object obj = this.f19435G;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final void e(int i8, int i9) {
        Object obj = this.f19435G;
        Objects.requireNonNull(obj);
        int[] iArrA = a();
        Object[] objArrB = b();
        Object[] objArrC = c();
        int size = size();
        int i10 = size - 1;
        if (i8 >= i10) {
            objArrB[i8] = null;
            objArrC[i8] = null;
            iArrA[i8] = 0;
            return;
        }
        int i11 = i8 + 1;
        Object obj2 = objArrB[i10];
        objArrB[i8] = obj2;
        objArrC[i8] = objArrC[i10];
        objArrB[i10] = null;
        objArrC[i10] = null;
        iArrA[i8] = iArrA[i10];
        iArrA[i10] = 0;
        int iT = p113o3.r.t(obj2) & i9;
        int iV0 = Cw.V0(obj, iT);
        if (iV0 == size) {
            Cw.A1(iT, obj, i11);
            return;
        }
        while (true) {
            int i12 = iV0 - 1;
            int i13 = iArrA[i12];
            int i14 = i13 & i9;
            if (i14 == size) {
                iArrA[i12] = (i13 & (~i9)) | (i9 & i11);
                return;
            }
            iV0 = i14;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        C1348gA c1348gA = this.f19442N;
        if (c1348gA != null) {
            return c1348gA;
        }
        C1348gA c1348gA2 = new C1348gA(this, 0);
        this.f19442N = c1348gA2;
        return c1348gA2;
    }

    public final boolean f() {
        return this.f19435G == null;
    }

    public final int g() {
        return (1 << (this.f19439K & 31)) - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map mapD = d();
        if (mapD != null) {
            return mapD.get(obj);
        }
        int iH = h(obj);
        if (iH == -1) {
            return null;
        }
        return c()[iH];
    }

    public final int h(Object obj) {
        if (f()) {
            return -1;
        }
        int iT = p113o3.r.t(obj);
        int iG = g();
        Object obj2 = this.f19435G;
        Objects.requireNonNull(obj2);
        int iV0 = Cw.V0(obj2, iT & iG);
        if (iV0 != 0) {
            int i8 = ~iG;
            int i9 = iT & i8;
            do {
                int i10 = iV0 - 1;
                int i11 = a()[i10];
                if ((i11 & i8) == i9 && com.google.android.gms.internal.measurement.H1.E(obj, b()[i10])) {
                    return i10;
                }
                iV0 = i11 & iG;
            } while (iV0 != 0);
        }
        return -1;
    }

    public final int i(int i8, int i9, int i10, int i11) {
        int i12 = i9 - 1;
        Object objN1 = Cw.n1(i9);
        if (i11 != 0) {
            Cw.A1(i10 & i12, objN1, i11 + 1);
        }
        Object obj = this.f19435G;
        Objects.requireNonNull(obj);
        int[] iArrA = a();
        for (int i13 = 0; i13 <= i8; i13++) {
            int iV0 = Cw.V0(obj, i13);
            while (iV0 != 0) {
                int i14 = iV0 - 1;
                int i15 = iArrA[i14];
                int i16 = ((~i8) & i15) | i13;
                int i17 = i16 & i12;
                int iV1 = Cw.V0(objN1, i17);
                Cw.A1(i17, objN1, iV0);
                iArrA[i14] = ((~i12) & i16) | (iV1 & i12);
                iV0 = i15 & i8;
            }
        }
        this.f19435G = objN1;
        this.f19439K = ((32 - Integer.numberOfLeadingZeros(i12)) & 31) | (this.f19439K & (-32));
        return i12;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    public final Object j(Object obj) {
        if (!f()) {
            int iG = g();
            Object obj2 = this.f19435G;
            Objects.requireNonNull(obj2);
            int iX0 = Cw.x0(obj, null, iG, obj2, a(), b(), null);
            if (iX0 != -1) {
                Object obj3 = c()[iX0];
                e(iX0, iG);
                this.f19440L--;
                this.f19439K += 32;
                return obj3;
            }
        }
        return f19434P;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        C1348gA c1348gA = this.f19441M;
        if (c1348gA != null) {
            return c1348gA;
        }
        C1348gA c1348gA2 = new C1348gA(this, 1);
        this.f19441M = c1348gA2;
        return c1348gA2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        int iMin;
        int i8 = -1;
        if (f()) {
            AbstractC2987b.E0("Arrays already allocated", f());
            int i9 = this.f19439K;
            int iMax = Math.max(i9 + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > iHighestOneBit && (iHighestOneBit = iHighestOneBit + iHighestOneBit) <= 0) {
                iHighestOneBit = 1073741824;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            this.f19435G = Cw.n1(iMax2);
            this.f19439K = ((32 - Integer.numberOfLeadingZeros(iMax2 - 1)) & 31) | (this.f19439K & (-32));
            this.f19436H = new int[i9];
            this.f19437I = new Object[i9];
            this.f19438J = new Object[i9];
        }
        Map mapD = d();
        if (mapD != null) {
            return mapD.put(obj, obj2);
        }
        int[] iArrA = a();
        Object[] objArrB = b();
        Object[] objArrC = c();
        int i10 = this.f19440L;
        int i11 = i10 + 1;
        int iT = p113o3.r.t(obj);
        int iG = g();
        int i12 = iT & iG;
        Object obj3 = this.f19435G;
        Objects.requireNonNull(obj3);
        int iV0 = Cw.V0(obj3, i12);
        if (iV0 != 0) {
            int i13 = ~iG;
            int i14 = iT & i13;
            int i15 = 0;
            while (true) {
                int i16 = iV0 + i8;
                int i17 = iArrA[i16];
                int i18 = i17 & i13;
                if (i18 == i14 && com.google.android.gms.internal.measurement.H1.E(obj, objArrB[i16])) {
                    Object obj4 = objArrC[i16];
                    objArrC[i16] = obj2;
                    return obj4;
                }
                int i19 = i17 & iG;
                int i20 = i14;
                int i21 = i15 + 1;
                if (i19 == 0) {
                    if (i21 < 9) {
                        if (i11 <= iG) {
                            iArrA[i16] = (i11 & iG) | i18;
                            break;
                        }
                        iG = i(iG, (iG + 1) * (iG < 32 ? 4 : 2), iT, i10);
                        break;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(g() + 1, 1.0f);
                    int i22 = isEmpty() ? -1 : 0;
                    while (i22 >= 0) {
                        linkedHashMap.put(b()[i22], c()[i22]);
                        int i23 = i22 + 1;
                        i22 = i23 < this.f19440L ? i23 : -1;
                    }
                    this.f19435G = linkedHashMap;
                    this.f19436H = null;
                    this.f19437I = null;
                    this.f19438J = null;
                    this.f19439K += 32;
                    return linkedHashMap.put(obj, obj2);
                }
                iV0 = i19;
                i15 = i21;
                i14 = i20;
                i8 = -1;
            }
        } else if (i11 > iG) {
            iG = i(iG, (iG + 1) * (iG < 32 ? 4 : 2), iT, i10);
        } else {
            Object obj5 = this.f19435G;
            Objects.requireNonNull(obj5);
            Cw.A1(i12, obj5, i11);
        }
        int length = a().length;
        if (i11 > length && (iMin = Math.min(1073741823, 1 | (Math.max(1, length >>> 1) + length))) != length) {
            this.f19436H = Arrays.copyOf(a(), iMin);
            this.f19437I = Arrays.copyOf(b(), iMin);
            this.f19438J = Arrays.copyOf(c(), iMin);
        }
        a()[i10] = (~iG) & iT;
        b()[i10] = obj;
        c()[i10] = obj2;
        this.f19440L = i11;
        this.f19439K += 32;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map mapD = d();
        if (mapD != null) {
            return mapD.remove(obj);
        }
        Object objJ = j(obj);
        if (objJ == f19434P) {
            return null;
        }
        return objJ;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map mapD = d();
        return mapD != null ? mapD.size() : this.f19440L;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        C1141cA c1141cA = this.f19443O;
        if (c1141cA != null) {
            return c1141cA;
        }
        C1141cA c1141cA2 = new C1141cA(this, 1);
        this.f19443O = c1141cA2;
        return c1141cA2;
    }
}
