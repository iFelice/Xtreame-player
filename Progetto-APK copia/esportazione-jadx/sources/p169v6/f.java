package p169v6;

import E6.a;
import Z5.C0456m;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements Map, Serializable, a {

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final f f30743T;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Object[] f30744G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object[] f30745H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int[] f30746I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int[] f30747J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f30748K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f30749L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f30750M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f30751N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f30752O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public g f30753P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public h f30754Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public g f30755R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f30756S;

    static {
        f fVar = new f(0);
        fVar.f30756S = true;
        f30743T = fVar;
    }

    public f() {
        this(8);
    }

    public final int a(Object obj) {
        c();
        while (true) {
            int iJ = j(obj);
            int i8 = this.f30748K * 2;
            int length = this.f30747J.length / 2;
            if (i8 > length) {
                i8 = length;
            }
            int i9 = 0;
            while (true) {
                int[] iArr = this.f30747J;
                int i10 = iArr[iJ];
                if (i10 <= 0) {
                    int i11 = this.f30749L;
                    Object[] objArr = this.f30744G;
                    if (i11 >= objArr.length) {
                        g(1);
                        break;
                    }
                    int i12 = i11 + 1;
                    this.f30749L = i12;
                    objArr[i11] = obj;
                    this.f30746I[i11] = iJ;
                    iArr[iJ] = i12;
                    this.f30752O++;
                    this.f30751N++;
                    if (i9 > this.f30748K) {
                        this.f30748K = i9;
                    }
                    return i11;
                }
                if (q0.c(this.f30744G[i10 - 1], obj)) {
                    return -i10;
                }
                i9++;
                if (i9 > i8) {
                    k(this.f30747J.length * 2);
                    break;
                }
                iJ = iJ == 0 ? this.f30747J.length - 1 : iJ - 1;
            }
        }
    }

    public final f b() {
        c();
        this.f30756S = true;
        if (this.f30752O > 0) {
            return this;
        }
        f fVar = f30743T;
        q0.f(fVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return fVar;
    }

    public final void c() {
        if (this.f30756S) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final void clear() {
        c();
        int i8 = this.f30749L - 1;
        if (i8 >= 0) {
            int i9 = 0;
            while (true) {
                int[] iArr = this.f30746I;
                int i10 = iArr[i9];
                if (i10 >= 0) {
                    this.f30747J[i10] = 0;
                    iArr[i9] = -1;
                }
                if (i9 == i8) {
                    break;
                } else {
                    i9++;
                }
            }
        }
        q0.E(0, this.f30749L, this.f30744G);
        Object[] objArr = this.f30745H;
        if (objArr != null) {
            q0.E(0, this.f30749L, objArr);
        }
        this.f30752O = 0;
        this.f30749L = 0;
        this.f30751N++;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return h(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return i(obj) >= 0;
    }

    public final void d(boolean z7) {
        int i8;
        Object[] objArr = this.f30745H;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            i8 = this.f30749L;
            if (i9 >= i8) {
                break;
            }
            int[] iArr = this.f30746I;
            int i11 = iArr[i9];
            if (i11 >= 0) {
                Object[] objArr2 = this.f30744G;
                objArr2[i10] = objArr2[i9];
                if (objArr != null) {
                    objArr[i10] = objArr[i9];
                }
                if (z7) {
                    iArr[i10] = i11;
                    this.f30747J[i11] = i10 + 1;
                }
                i10++;
            }
            i9++;
        }
        q0.E(i10, i8, this.f30744G);
        if (objArr != null) {
            q0.E(i10, this.f30749L, objArr);
        }
        this.f30749L = i10;
    }

    public final boolean e(Collection collection) {
        q0.h(collection, "m");
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    if (!f((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        g gVar = this.f30755R;
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g(this, 0);
        this.f30755R = gVar2;
        return gVar2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (this.f30752O != map.size() || !e(map.entrySet())) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean f(Map.Entry entry) {
        q0.h(entry, "entry");
        int iH = h(entry.getKey());
        if (iH < 0) {
            return false;
        }
        Object[] objArr = this.f30745H;
        q0.e(objArr);
        return q0.c(objArr[iH], entry.getValue());
    }

    public final void g(int i8) {
        Object[] objArrCopyOf;
        Object[] objArr = this.f30744G;
        int length = objArr.length;
        int i9 = this.f30749L;
        int i10 = length - i9;
        int i11 = i9 - this.f30752O;
        if (i10 < i8 && i10 + i11 >= i8 && i11 >= objArr.length / 4) {
            d(true);
            return;
        }
        int i12 = i9 + i8;
        if (i12 < 0) {
            throw new OutOfMemoryError();
        }
        if (i12 > objArr.length) {
            int iD = C0456m.d(objArr.length, i12);
            Object[] objArr2 = this.f30744G;
            q0.h(objArr2, "<this>");
            Object[] objArrCopyOf2 = Arrays.copyOf(objArr2, iD);
            q0.g(objArrCopyOf2, "copyOf(...)");
            this.f30744G = objArrCopyOf2;
            Object[] objArr3 = this.f30745H;
            if (objArr3 != null) {
                objArrCopyOf = Arrays.copyOf(objArr3, iD);
                q0.g(objArrCopyOf, "copyOf(...)");
            } else {
                objArrCopyOf = null;
            }
            this.f30745H = objArrCopyOf;
            int[] iArrCopyOf = Arrays.copyOf(this.f30746I, iD);
            q0.g(iArrCopyOf, "copyOf(...)");
            this.f30746I = iArrCopyOf;
            int iHighestOneBit = Integer.highestOneBit((iD >= 1 ? iD : 1) * 3);
            if (iHighestOneBit > this.f30747J.length) {
                k(iHighestOneBit);
            }
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int iH = h(obj);
        if (iH < 0) {
            return null;
        }
        Object[] objArr = this.f30745H;
        q0.e(objArr);
        return objArr[iH];
    }

    public final int h(Object obj) {
        int iJ = j(obj);
        int i8 = this.f30748K;
        while (true) {
            int i9 = this.f30747J[iJ];
            if (i9 == 0) {
                return -1;
            }
            if (i9 > 0) {
                int i10 = i9 - 1;
                if (q0.c(this.f30744G[i10], obj)) {
                    return i10;
                }
            }
            i8--;
            if (i8 < 0) {
                return -1;
            }
            iJ = iJ == 0 ? this.f30747J.length - 1 : iJ - 1;
        }
    }

    @Override // java.util.Map
    public final int hashCode() {
        d dVar = new d(this, 0);
        int i8 = 0;
        while (dVar.hasNext()) {
            int i9 = dVar.f4832G;
            f fVar = (f) dVar.f4835J;
            if (i9 >= fVar.f30749L) {
                throw new NoSuchElementException();
            }
            dVar.f4832G = i9 + 1;
            dVar.f4833H = i9;
            Object obj = fVar.f30744G[i9];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = fVar.f30745H;
            q0.e(objArr);
            Object obj2 = objArr[dVar.f4833H];
            int iHashCode2 = obj2 != null ? obj2.hashCode() : 0;
            dVar.e();
            i8 += iHashCode ^ iHashCode2;
        }
        return i8;
    }

    public final int i(Object obj) {
        int i8 = this.f30749L;
        while (true) {
            i8--;
            if (i8 < 0) {
                return -1;
            }
            if (this.f30746I[i8] >= 0) {
                Object[] objArr = this.f30745H;
                q0.e(objArr);
                if (q0.c(objArr[i8], obj)) {
                    return i8;
                }
            }
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f30752O == 0;
    }

    public final int j(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.f30750M;
    }

    public final void k(int i8) {
        int[] iArr;
        this.f30751N++;
        int i9 = 0;
        if (this.f30749L > this.f30752O) {
            d(false);
        }
        this.f30747J = new int[i8];
        this.f30750M = Integer.numberOfLeadingZeros(i8) + 1;
        while (i9 < this.f30749L) {
            int i10 = i9 + 1;
            int iJ = j(this.f30744G[i9]);
            int i11 = this.f30748K;
            while (true) {
                iArr = this.f30747J;
                if (iArr[iJ] == 0) {
                    break;
                }
                i11--;
                if (i11 < 0) {
                    throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
                }
                iJ = iJ == 0 ? iArr.length - 1 : iJ - 1;
            }
            iArr[iJ] = i10;
            this.f30746I[i9] = iJ;
            i9 = i10;
        }
    }

    @Override // java.util.Map
    public final Set keySet() {
        g gVar = this.f30753P;
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g(this, 1);
        this.f30753P = gVar2;
        return gVar2;
    }

    public final void l(int i8) {
        Object[] objArr = this.f30744G;
        q0.h(objArr, "<this>");
        objArr[i8] = null;
        Object[] objArr2 = this.f30745H;
        if (objArr2 != null) {
            objArr2[i8] = null;
        }
        int length = this.f30746I[i8];
        int i9 = this.f30748K * 2;
        int length2 = this.f30747J.length / 2;
        if (i9 > length2) {
            i9 = length2;
        }
        int i10 = i9;
        int i11 = 0;
        int i12 = length;
        do {
            length = length == 0 ? this.f30747J.length - 1 : length - 1;
            i11++;
            if (i11 > this.f30748K) {
                this.f30747J[i12] = 0;
            } else {
                int[] iArr = this.f30747J;
                int i13 = iArr[length];
                if (i13 == 0) {
                    iArr[i12] = 0;
                } else {
                    if (i13 < 0) {
                        iArr[i12] = -1;
                    } else {
                        int i14 = i13 - 1;
                        int iJ = j(this.f30744G[i14]) - length;
                        int[] iArr2 = this.f30747J;
                        if ((iJ & (iArr2.length - 1)) >= i11) {
                            iArr2[i12] = i13;
                            this.f30746I[i14] = i12;
                        }
                        i10--;
                    }
                    i12 = length;
                    i11 = 0;
                    i10--;
                }
            }
            this.f30746I[i8] = -1;
            this.f30752O--;
            this.f30751N++;
        } while (i10 >= 0);
        this.f30747J[i12] = -1;
        this.f30746I[i8] = -1;
        this.f30752O--;
        this.f30751N++;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        c();
        int iA = a(obj);
        Object[] objArr = this.f30745H;
        if (objArr == null) {
            int length = this.f30744G.length;
            if (length < 0) {
                throw new IllegalArgumentException("capacity must be non-negative.".toString());
            }
            objArr = new Object[length];
            this.f30745H = objArr;
        }
        if (iA >= 0) {
            objArr[iA] = obj2;
            return null;
        }
        int i8 = (-iA) - 1;
        Object obj3 = objArr[i8];
        objArr[i8] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        q0.h(map, "from");
        c();
        Set<Map.Entry> setEntrySet = map.entrySet();
        if (setEntrySet.isEmpty()) {
            return;
        }
        g(setEntrySet.size());
        for (Map.Entry entry : setEntrySet) {
            int iA = a(entry.getKey());
            Object[] objArr = this.f30745H;
            if (objArr == null) {
                int length = this.f30744G.length;
                if (length < 0) {
                    throw new IllegalArgumentException("capacity must be non-negative.".toString());
                }
                objArr = new Object[length];
                this.f30745H = objArr;
            }
            if (iA >= 0) {
                objArr[iA] = entry.getValue();
            } else {
                int i8 = (-iA) - 1;
                if (!q0.c(entry.getValue(), objArr[i8])) {
                    objArr[i8] = entry.getValue();
                }
            }
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        c();
        int iH = h(obj);
        if (iH < 0) {
            return null;
        }
        Object[] objArr = this.f30745H;
        q0.e(objArr);
        Object obj2 = objArr[iH];
        l(iH);
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f30752O;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.f30752O * 3) + 2);
        sb.append("{");
        int i8 = 0;
        d dVar = new d(this, 0);
        while (dVar.hasNext()) {
            if (i8 > 0) {
                sb.append(", ");
            }
            int i9 = dVar.f4832G;
            f fVar = (f) dVar.f4835J;
            if (i9 >= fVar.f30749L) {
                throw new NoSuchElementException();
            }
            dVar.f4832G = i9 + 1;
            dVar.f4833H = i9;
            Object obj = fVar.f30744G[i9];
            if (obj == fVar) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = fVar.f30745H;
            q0.e(objArr);
            Object obj2 = objArr[dVar.f4833H];
            if (obj2 == fVar) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            dVar.e();
            i8++;
        }
        sb.append("}");
        String string = sb.toString();
        q0.g(string, "toString(...)");
        return string;
    }

    @Override // java.util.Map
    public final Collection values() {
        h hVar = this.f30754Q;
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h(this);
        this.f30754Q = hVar2;
        return hVar2;
    }

    public f(int i8) {
        if (i8 >= 0) {
            Object[] objArr = new Object[i8];
            int[] iArr = new int[i8];
            int iHighestOneBit = Integer.highestOneBit((i8 < 1 ? 1 : i8) * 3);
            this.f30744G = objArr;
            this.f30745H = null;
            this.f30746I = iArr;
            this.f30747J = new int[iHighestOneBit];
            this.f30748K = 2;
            this.f30749L = 0;
            this.f30750M = Integer.numberOfLeadingZeros(iHighestOneBit) + 1;
            return;
        }
        throw new IllegalArgumentException("capacity must be non-negative.".toString());
    }
}
