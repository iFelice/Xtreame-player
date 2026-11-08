package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import java.io.EOFException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class TN implements InterfaceC1234e0 {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public C2293yM f16631A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QN f16632a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC2241xM f16635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SN f16636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C1804p0 f16637f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16645n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f16646o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f16647p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f16648q;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f16652u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public C1804p0 f16655x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f16657z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p149t0.d f16633b = new p149t0.d(5);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f16638g = 1000;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long[] f16639h = new long[1000];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long[] f16640i = new long[1000];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long[] f16643l = new long[1000];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[] f16642k = new int[1000];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f16641j = new int[1000];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C1183d0[] f16644m = new C1183d0[1000];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final YN f16634c = new YN(new GH());

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f16649r = Long.MIN_VALUE;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f16650s = Long.MIN_VALUE;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f16651t = Long.MIN_VALUE;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f16654w = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f16653v = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f16656y = true;

    public TN(CO co, InterfaceC2241xM interfaceC2241xM, C2137vM c2137vM) {
        this.f16635d = interfaceC2241xM;
        this.f16632a = new QN(co);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void a(C1534jr c1534jr, int i8, int i9) {
        while (true) {
            QN qn = this.f16632a;
            if (i8 <= 0) {
                qn.getClass();
                return;
            }
            int iB = qn.b(i8);
            PN pn = qn.f16024d;
            c1534jr.f(pn.a(qn.f16025e), ((C2347zO) pn.f15386c).f22160a, iB);
            i8 -= iB;
            long j8 = qn.f16025e + ((long) iB);
            qn.f16025e = j8;
            PN pn2 = qn.f16024d;
            if (j8 == pn2.f15385b) {
                qn.f16024d = (PN) pn2.f15387d;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0114 A[Catch: all -> 0x005e, TRY_LEAVE, TryCatch #0 {all -> 0x005e, blocks: (B:21:0x003f, B:23:0x0044, B:27:0x005a, B:30:0x0061, B:34:0x0069, B:39:0x00b7, B:41:0x00bc, B:43:0x00d3, B:47:0x00dc, B:48:0x00e1, B:50:0x00e7, B:54:0x00f5, B:56:0x00fa, B:57:0x0108, B:58:0x010b, B:60:0x0114, B:37:0x009e), top: B:65:0x003f }] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void b(long j8, int i8, int i9, int i10, C1183d0 c1183d0) {
        int i11;
        int i12;
        if (this.f16653v) {
            if ((i8 & 1) == 0) {
                return;
            } else {
                this.f16653v = false;
            }
        }
        if (this.f16656y) {
            if (j8 < this.f16649r) {
                return;
            }
            if ((i8 & 1) == 0) {
                if (!this.f16657z) {
                    Zo.f("SampleQueue", "Overriding unexpected non-sync sample for format: ".concat(String.valueOf(this.f16655x)));
                    this.f16657z = true;
                }
                i8 |= 1;
            }
        }
        long j9 = (this.f16632a.f16025e - ((long) i9)) - ((long) i10);
        synchronized (this) {
            try {
                int i13 = this.f16645n;
                if (i13 > 0) {
                    int iH = h(i13 - 1);
                    p113o3.r.J(this.f16640i[iH] + ((long) this.f16641j[iH]) <= j9);
                }
                this.f16652u = (536870912 & i8) != 0;
                this.f16651t = Math.max(this.f16651t, j8);
                int iH2 = h(this.f16645n);
                this.f16643l[iH2] = j8;
                this.f16640i[iH2] = j9;
                this.f16641j[iH2] = i9;
                this.f16642k[iH2] = i8;
                this.f16644m[iH2] = c1183d0;
                this.f16639h[iH2] = 0;
                if (this.f16634c.f17604b.size() != 0) {
                    SparseArray sparseArray = this.f16634c.f17604b;
                    if (!((RN) sparseArray.valueAt(sparseArray.size() - 1)).f16260a.equals(this.f16655x)) {
                    }
                    i11 = this.f16645n + 1;
                    this.f16645n = i11;
                    i12 = this.f16638g;
                    if (i11 == i12) {
                        int i14 = i12 + 1000;
                        long[] jArr = new long[i14];
                        long[] jArr2 = new long[i14];
                        long[] jArr3 = new long[i14];
                        int[] iArr = new int[i14];
                        int[] iArr2 = new int[i14];
                        C1183d0[] c1183d0Arr = new C1183d0[i14];
                        int i15 = this.f16647p;
                        int i16 = i12 - i15;
                        System.arraycopy(this.f16640i, i15, jArr2, 0, i16);
                        System.arraycopy(this.f16643l, this.f16647p, jArr3, 0, i16);
                        System.arraycopy(this.f16642k, this.f16647p, iArr, 0, i16);
                        System.arraycopy(this.f16641j, this.f16647p, iArr2, 0, i16);
                        System.arraycopy(this.f16644m, this.f16647p, c1183d0Arr, 0, i16);
                        System.arraycopy(this.f16639h, this.f16647p, jArr, 0, i16);
                        int i17 = this.f16647p;
                        System.arraycopy(this.f16640i, 0, jArr2, i16, i17);
                        System.arraycopy(this.f16643l, 0, jArr3, i16, i17);
                        System.arraycopy(this.f16642k, 0, iArr, i16, i17);
                        System.arraycopy(this.f16641j, 0, iArr2, i16, i17);
                        System.arraycopy(this.f16644m, 0, c1183d0Arr, i16, i17);
                        System.arraycopy(this.f16639h, 0, jArr, i16, i17);
                        this.f16640i = jArr2;
                        this.f16643l = jArr3;
                        this.f16642k = iArr;
                        this.f16641j = iArr2;
                        this.f16644m = c1183d0Arr;
                        this.f16639h = jArr;
                        this.f16647p = 0;
                        this.f16638g = i14;
                    }
                }
                C1804p0 c1804p0 = this.f16655x;
                c1804p0.getClass();
                this.f16635d.getClass();
                YN yn = this.f16634c;
                int i18 = this.f16646o + this.f16645n;
                RN rn = new RN(c1804p0);
                int i19 = yn.f17603a;
                SparseArray sparseArray2 = yn.f17604b;
                if (i19 == -1) {
                    p113o3.r.M(sparseArray2.size() == 0);
                    yn.f17603a = 0;
                }
                if (sparseArray2.size() > 0) {
                    int iKeyAt = sparseArray2.keyAt(sparseArray2.size() - 1);
                    p113o3.r.J(i18 >= iKeyAt);
                    if (iKeyAt == i18) {
                        yn.f17605c.mo4zza(sparseArray2.valueAt(sparseArray2.size() - 1));
                    }
                }
                sparseArray2.append(i18, rn);
                i11 = this.f16645n + 1;
                this.f16645n = i11;
                i12 = this.f16638g;
                if (i11 == i12) {
                    int i110 = i12 + 1000;
                    long[] jArr4 = new long[i110];
                    long[] jArr5 = new long[i110];
                    long[] jArr6 = new long[i110];
                    int[] iArr3 = new int[i110];
                    int[] iArr4 = new int[i110];
                    C1183d0[] c1183d0Arr2 = new C1183d0[i110];
                    int i111 = this.f16647p;
                    int i112 = i12 - i111;
                    System.arraycopy(this.f16640i, i111, jArr5, 0, i112);
                    System.arraycopy(this.f16643l, this.f16647p, jArr6, 0, i112);
                    System.arraycopy(this.f16642k, this.f16647p, iArr3, 0, i112);
                    System.arraycopy(this.f16641j, this.f16647p, iArr4, 0, i112);
                    System.arraycopy(this.f16644m, this.f16647p, c1183d0Arr2, 0, i112);
                    System.arraycopy(this.f16639h, this.f16647p, jArr4, 0, i112);
                    int i113 = this.f16647p;
                    System.arraycopy(this.f16640i, 0, jArr5, i112, i113);
                    System.arraycopy(this.f16643l, 0, jArr6, i112, i113);
                    System.arraycopy(this.f16642k, 0, iArr3, i112, i113);
                    System.arraycopy(this.f16641j, 0, iArr4, i112, i113);
                    System.arraycopy(this.f16644m, 0, c1183d0Arr2, i112, i113);
                    System.arraycopy(this.f16639h, 0, jArr4, i112, i113);
                    this.f16640i = jArr5;
                    this.f16643l = jArr6;
                    this.f16642k = iArr3;
                    this.f16641j = iArr4;
                    this.f16644m = c1183d0Arr2;
                    this.f16639h = jArr4;
                    this.f16647p = 0;
                    this.f16638g = i110;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final int c(HL hl, int i8, boolean z7) throws EOFException {
        QN qn = this.f16632a;
        int iB = qn.b(i8);
        PN pn = qn.f16024d;
        int iE = hl.e(((C2347zO) pn.f15386c).f22160a, pn.a(qn.f16025e), iB);
        if (iE == -1) {
            if (z7) {
                return -1;
            }
            throw new EOFException();
        }
        long j8 = qn.f16025e + ((long) iE);
        qn.f16025e = j8;
        PN pn2 = qn.f16024d;
        if (j8 != pn2.f15385b) {
            return iE;
        }
        qn.f16024d = (PN) pn2.f15387d;
        return iE;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void d(C1804p0 c1804p0) {
        boolean z7;
        synchronized (this) {
            z7 = false;
            try {
                this.f16654w = false;
                if (!Objects.equals(c1804p0, this.f16655x)) {
                    if (this.f16634c.f17604b.size() != 0) {
                        SparseArray sparseArray = this.f16634c.f17604b;
                        if (((RN) sparseArray.valueAt(sparseArray.size() - 1)).f16260a.equals(c1804p0)) {
                            SparseArray sparseArray2 = this.f16634c.f17604b;
                            this.f16655x = ((RN) sparseArray2.valueAt(sparseArray2.size() - 1)).f16260a;
                        }
                        boolean z8 = this.f16656y;
                        C1804p0 c1804p1 = this.f16655x;
                        this.f16656y = z8 & AbstractC2140va.f(c1804p1.f20383m, c1804p1.f20380j);
                        this.f16657z = false;
                        z7 = true;
                    }
                    this.f16655x = c1804p0;
                    boolean z9 = this.f16656y;
                    C1804p0 c1804p2 = this.f16655x;
                    this.f16656y = z9 & AbstractC2140va.f(c1804p2.f20383m, c1804p2.f20380j);
                    this.f16657z = false;
                    z7 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        SN sn = this.f16636e;
        if (sn == null || !z7) {
            return;
        }
        KN kn = (KN) sn;
        kn.f14349T.post(kn.f14347R);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final int e(HL hl, int i8, boolean z7) {
        return c(hl, i8, z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1234e0
    public final void f(int i8, C1534jr c1534jr) {
        a(c1534jr, i8, 0);
    }

    public final int g(int i8, int i9, long j8, boolean z7) {
        int i10 = -1;
        for (int i11 = 0; i11 < i9; i11++) {
            long j9 = this.f16643l[i8];
            if (j9 > j8) {
                break;
            }
            if (!z7 || (this.f16642k[i8] & 1) != 0) {
                i10 = i11;
                if (j9 == j8) {
                    break;
                }
            }
            i8++;
            if (i8 == this.f16638g) {
                i8 = 0;
            }
        }
        return i10;
    }

    public final int h(int i8) {
        int i9 = this.f16647p + i8;
        int i10 = this.f16638g;
        return i9 < i10 ? i9 : i9 - i10;
    }

    public final long i(int i8) {
        long j8 = this.f16650s;
        long jMax = Long.MIN_VALUE;
        int i9 = 0;
        if (i8 != 0) {
            int iH = h(i8 - 1);
            for (int i10 = 0; i10 < i8; i10++) {
                jMax = Math.max(jMax, this.f16643l[iH]);
                if ((this.f16642k[iH] & 1) != 0) {
                    break;
                }
                iH--;
                if (iH == -1) {
                    iH = this.f16638g - 1;
                }
            }
        }
        this.f16650s = Math.max(j8, jMax);
        this.f16645n -= i8;
        int i11 = this.f16646o + i8;
        this.f16646o = i11;
        int i12 = this.f16647p + i8;
        this.f16647p = i12;
        int i13 = this.f16638g;
        if (i12 >= i13) {
            this.f16647p = i12 - i13;
        }
        int i14 = this.f16648q - i8;
        this.f16648q = i14;
        if (i14 < 0) {
            this.f16648q = 0;
        }
        while (true) {
            YN yn = this.f16634c;
            SparseArray sparseArray = yn.f17604b;
            if (i9 >= sparseArray.size() - 1) {
                break;
            }
            int i15 = i9 + 1;
            if (i11 < sparseArray.keyAt(i15)) {
                break;
            }
            yn.f17605c.mo4zza(sparseArray.valueAt(i9));
            sparseArray.removeAt(i9);
            int i16 = yn.f17603a;
            if (i16 > 0) {
                yn.f17603a = i16 - 1;
            }
            i9 = i15;
        }
        if (this.f16645n != 0) {
            return this.f16640i[this.f16647p];
        }
        int i17 = this.f16647p;
        if (i17 == 0) {
            i17 = this.f16638g;
        }
        int i18 = i17 - 1;
        return this.f16640i[i18] + ((long) this.f16641j[i18]);
    }

    public final void j(C1804p0 c1804p0, C0871Om c0871Om) {
        C1804p0 c1804p1 = this.f16637f;
        C1672mO c1672mO = c1804p1 == null ? null : c1804p1.f20387q;
        this.f16637f = c1804p0;
        C1672mO c1672mO2 = c1804p0.f20387q;
        C2272y1 c2272y1 = (C2272y1) this.f16635d;
        c2272y1.getClass();
        C1672mO c1672mO3 = c1804p0.f20387q;
        int i8 = c1672mO3 != null ? 1 : 0;
        K k8 = new K(c1804p0);
        k8.f14259G = i8;
        c0871Om.f15196H = new C1804p0(k8);
        c0871Om.f15197I = this.f16631A;
        if (c1804p1 == null || !Objects.equals(c1672mO, c1672mO2)) {
            c2272y1.getClass();
            C2293yM c2293yM = c1672mO3 != null ? new C2293yM(new C2033tM(new AM())) : null;
            this.f16631A = c2293yM;
            c0871Om.f15197I = c2293yM;
        }
    }

    public final synchronized void k() {
        this.f16648q = 0;
        QN qn = this.f16632a;
        qn.f16023c = qn.f16022b;
    }

    public final synchronized long l() {
        return this.f16651t;
    }

    public final synchronized C1804p0 m() {
        if (this.f16654w) {
            return null;
        }
        return this.f16655x;
    }

    public final void n() {
        long jI;
        QN qn = this.f16632a;
        synchronized (this) {
            int i8 = this.f16645n;
            jI = i8 == 0 ? -1L : i(i8);
        }
        qn.a(jI);
    }

    public final void o(boolean z7) {
        SparseArray sparseArray;
        QN qn = this.f16632a;
        PN pn = qn.f16022b;
        if (((C2347zO) pn.f15386c) != null) {
            CO co = qn.f16026f;
            synchronized (co) {
                PN pn2 = pn;
                while (pn2 != null) {
                    try {
                        C2347zO[] c2347zOArr = (C2347zO[]) co.f12631d;
                        int i8 = co.f12630c;
                        co.f12630c = i8 + 1;
                        C2347zO c2347zO = (C2347zO) pn2.f15386c;
                        c2347zO.getClass();
                        c2347zOArr[i8] = c2347zO;
                        co.f12629b--;
                        pn2 = (PN) pn2.f15387d;
                        if (pn2 == null || ((C2347zO) pn2.f15386c) == null) {
                            pn2 = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                co.notifyAll();
            }
            pn.f15386c = null;
            pn.f15387d = null;
        }
        PN pn3 = qn.f16022b;
        int i9 = 0;
        p113o3.r.M(((C2347zO) pn3.f15386c) == null);
        pn3.f15384a = 0L;
        pn3.f15385b = PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
        PN pn4 = qn.f16022b;
        qn.f16023c = pn4;
        qn.f16024d = pn4;
        qn.f16025e = 0L;
        qn.f16026f.N();
        this.f16645n = 0;
        this.f16646o = 0;
        this.f16647p = 0;
        this.f16648q = 0;
        this.f16653v = true;
        this.f16649r = Long.MIN_VALUE;
        this.f16650s = Long.MIN_VALUE;
        this.f16651t = Long.MIN_VALUE;
        this.f16652u = false;
        YN yn = this.f16634c;
        while (true) {
            sparseArray = yn.f17604b;
            if (i9 >= sparseArray.size()) {
                break;
            }
            yn.f17605c.mo4zza(sparseArray.valueAt(i9));
            i9++;
        }
        yn.f17603a = -1;
        sparseArray.clear();
        if (z7) {
            this.f16655x = null;
            this.f16654w = true;
            this.f16656y = true;
        }
    }

    public final synchronized void p(int i8) {
        boolean z7 = false;
        if (i8 >= 0) {
            try {
                if (this.f16648q + i8 <= this.f16645n) {
                    z7 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p113o3.r.J(z7);
        this.f16648q += i8;
    }

    public final synchronized boolean q(boolean z7) {
        int i8 = this.f16648q;
        boolean z8 = false;
        if (i8 != this.f16645n) {
            if (((RN) this.f16634c.a(this.f16646o + i8)).f16260a != this.f16637f) {
                return true;
            }
            int iH = h(this.f16648q);
            if (this.f16631A != null) {
                int i9 = this.f16642k[iH] & 1073741824;
            } else {
                z8 = true;
            }
            return z8;
        }
        if (z7 || this.f16652u) {
            z8 = true;
        } else {
            C1804p0 c1804p0 = this.f16655x;
            if (c1804p0 != null) {
                if (c1804p0 == this.f16637f) {
                    return false;
                }
                z8 = true;
            }
        }
        return z8;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002d A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0001, B:8:0x0017, B:10:0x001f, B:14:0x0028, B:16:0x002d, B:18:0x0031, B:20:0x0039, B:23:0x0040, B:33:0x0057, B:30:0x004c), top: B:40:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0031 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0001, B:8:0x0017, B:10:0x001f, B:14:0x0028, B:16:0x002d, B:18:0x0031, B:20:0x0039, B:23:0x0040, B:33:0x0057, B:30:0x004c), top: B:40:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0039 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0001, B:8:0x0017, B:10:0x001f, B:14:0x0028, B:16:0x002d, B:18:0x0031, B:20:0x0039, B:23:0x0040, B:33:0x0057, B:30:0x004c), top: B:40:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x003f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0049 A[EDGE_INSN: B:28:0x0049->B:31:0x0054 BREAK  A[LOOP:0: B:17:0x002f->B:23:0x0040]] */
    /* JADX WARN: Code duplicated, block: B:29:0x004a A[EDGE_INSN: B:29:0x004a->B:31:0x0054 BREAK  A[LOOP:0: B:17:0x002f->B:23:0x0040]] */
    /* JADX WARN: Code duplicated, block: B:30:0x004c A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0001, B:8:0x0017, B:10:0x001f, B:14:0x0028, B:16:0x002d, B:18:0x0031, B:20:0x0039, B:23:0x0040, B:33:0x0057, B:30:0x004c), top: B:40:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0056  */
    /* JADX WARN: Code duplicated, block: B:33:0x0057 A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0001, B:8:0x0017, B:10:0x001f, B:14:0x0028, B:16:0x002d, B:18:0x0031, B:20:0x0039, B:23:0x0040, B:33:0x0057, B:30:0x004c), top: B:40:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0045 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0040 A[SYNTHETIC] */
    public final synchronized boolean r(long j8, boolean z7) {
        int iG;
        int i8;
        try {
            k();
            int i9 = this.f16648q;
            int iH = h(i9);
            int i10 = this.f16648q;
            int i11 = this.f16645n;
            if ((i10 != i11) && j8 >= this.f16643l[iH]) {
                if (j8 <= this.f16651t) {
                    if (this.f16656y) {
                        iG = i11 - i9;
                        i8 = 0;
                        while (true) {
                            if (i8 < iG) {
                                if (z7) {
                                    iG = -1;
                                    break;
                                }
                                break;
                            }
                            if (this.f16643l[iH] < j8) {
                                iG = i8;
                                break;
                            }
                            iH++;
                            if (iH == this.f16638g) {
                                iH = 0;
                            }
                            i8++;
                        }
                    } else {
                        iG = g(iH, i11 - i9, j8, true);
                    }
                    if (iG == -1) {
                        this.f16649r = j8;
                        this.f16648q += iG;
                        return true;
                    }
                } else if (z7) {
                    z7 = true;
                    if (this.f16656y) {
                        iG = i11 - i9;
                        i8 = 0;
                        while (true) {
                            if (i8 < iG) {
                                if (z7) {
                                    iG = -1;
                                    break;
                                }
                                break;
                                break;
                            }
                            if (this.f16643l[iH] < j8) {
                                iG = i8;
                                break;
                            }
                            iH++;
                            if (iH == this.f16638g) {
                                iH = 0;
                            }
                            i8++;
                        }
                    } else {
                        iG = g(iH, i11 - i9, j8, true);
                    }
                    if (iG == -1) {
                        this.f16649r = j8;
                        this.f16648q += iG;
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }
}
