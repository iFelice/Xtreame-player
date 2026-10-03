package O0;

import N.C0260i;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import java.io.EOFException;
import java.util.Objects;
import p094m0.C3131n;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.InterfaceC3127j;
import p117p0.InterfaceC3172j;

/* JADX INFO: loaded from: classes.dex */
public class T implements W0.L {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public C3136t f5132A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public C3136t f5133B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public long f5134C;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f5136E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public long f5137F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f5138G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final P f5139a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final G0.r f5142d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final G0.o f5143e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public S f5144f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C3136t f5145g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public G0.l f5146h;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5154p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5155q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5156r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5157s;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f5161w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f5164z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p149t0.d f5140b = new p149t0.d(1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5147i = 1000;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long[] f5148j = new long[1000];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long[] f5149k = new long[1000];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long[] f5152n = new long[1000];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f5151m = new int[1000];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[] f5150l = new int[1000];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public W0.K[] f5153o = new W0.K[1000];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final F.d f5141c = new F.d(new C0260i(18));

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f5158t = Long.MIN_VALUE;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f5159u = Long.MIN_VALUE;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f5160v = Long.MIN_VALUE;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f5163y = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f5162x = true;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f5135D = true;

    public T(S0.d dVar, G0.r rVar, G0.o oVar) {
        this.f5142d = rVar;
        this.f5143e = oVar;
        this.f5139a = new P(dVar);
    }

    public final void A() throws G0.k {
        G0.l lVar = this.f5146h;
        if (lVar == null || lVar.getState() != 1) {
            return;
        }
        G0.k error = this.f5146h.getError();
        error.getClass();
        throw error;
    }

    public final void B(C3136t c3136t, B0.Z z7) {
        C3136t c3136tA;
        C3136t c3136t2 = this.f5145g;
        boolean z8 = c3136t2 == null;
        C3131n c3131n = c3136t2 == null ? null : c3136t2.f27045s;
        this.f5145g = c3136t;
        C3131n c3131n2 = c3136t.f27045s;
        G0.r rVar = this.f5142d;
        if (rVar != null) {
            int iM = rVar.m(c3136t);
            C3135s c3135sA = c3136t.a();
            c3135sA.f26982O = iM;
            c3136tA = c3135sA.a();
        } else {
            c3136tA = c3136t;
        }
        z7.f904b = c3136tA;
        z7.f903a = this.f5146h;
        if (rVar == null) {
            return;
        }
        if (z8 || !Objects.equals(c3131n, c3131n2)) {
            G0.l lVar = this.f5146h;
            G0.o oVar = this.f5143e;
            G0.l lVarL = rVar.l(oVar, c3136t);
            this.f5146h = lVarL;
            z7.f903a = lVarL;
            if (lVar != null) {
                lVar.c(oVar);
            }
        }
    }

    public final synchronized long C() {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return x() ? this.f5148j[u(this.f5157s)] : this.f5134C;
    }

    public final int D(B0.Z z7, p171w0.g gVar, int i8, boolean z8) {
        int i9;
        boolean z9 = (i8 & 2) != 0;
        p149t0.d dVar = this.f5140b;
        synchronized (this) {
            try {
                gVar.f30905J = false;
                i9 = -3;
                if (x()) {
                    C3136t c3136t = ((Q) this.f5141c.f(t())).f5130a;
                    if (z9 || c3136t != this.f5145g) {
                        B(c3136t, z7);
                        i9 = -5;
                    } else {
                        int iU = u(this.f5157s);
                        if (z(iU)) {
                            gVar.setFlags(this.f5151m[iU]);
                            if (this.f5157s == this.f5154p - 1 && (z8 || this.f5161w)) {
                                gVar.addFlag(536870912);
                            }
                            gVar.f30906K = this.f5152n[iU];
                            dVar.f30167H = this.f5150l[iU];
                            dVar.f30168I = this.f5149k[iU];
                            dVar.f30169J = this.f5153o[iU];
                            i9 = -4;
                        } else {
                            gVar.f30905J = true;
                        }
                    }
                } else if (z8 || this.f5161w) {
                    gVar.setFlags(4);
                    gVar.f30906K = Long.MIN_VALUE;
                    i9 = -4;
                } else {
                    C3136t c3136t2 = this.f5133B;
                    if (c3136t2 != null && (z9 || c3136t2 != this.f5145g)) {
                        B(c3136t2, z7);
                        i9 = -5;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i9 == -4 && !gVar.isEndOfStream()) {
            boolean z10 = (i8 & 1) != 0;
            if ((i8 & 4) == 0) {
                if (z10) {
                    P p7 = this.f5139a;
                    P.f(p7.f5127e, gVar, this.f5140b, p7.f5125c);
                } else {
                    P p8 = this.f5139a;
                    p8.f5127e = P.f(p8.f5127e, gVar, this.f5140b, p8.f5125c);
                }
            }
            if (!z10) {
                this.f5157s++;
            }
        }
        return i9;
    }

    public final void E(boolean z7) {
        F.d dVar;
        P p7 = this.f5139a;
        p7.a(p7.f5126d);
        O o4 = p7.f5126d;
        int i8 = 0;
        H1.i(o4.f5121c == null);
        o4.f5119a = 0L;
        o4.f5120b = p7.f5124b;
        O o7 = p7.f5126d;
        p7.f5127e = o7;
        p7.f5128f = o7;
        p7.f5129g = 0L;
        p7.f5123a.b();
        this.f5154p = 0;
        this.f5155q = 0;
        this.f5156r = 0;
        this.f5157s = 0;
        this.f5162x = true;
        this.f5158t = Long.MIN_VALUE;
        this.f5159u = Long.MIN_VALUE;
        this.f5160v = Long.MIN_VALUE;
        this.f5161w = false;
        while (true) {
            dVar = this.f5141c;
            if (i8 >= ((SparseArray) dVar.f2962I).size()) {
                break;
            }
            ((InterfaceC3172j) dVar.f2963J).accept(((SparseArray) dVar.f2962I).valueAt(i8));
            i8++;
        }
        dVar.f2961H = -1;
        ((SparseArray) dVar.f2962I).clear();
        if (z7) {
            this.f5132A = null;
            this.f5133B = null;
            this.f5163y = true;
            this.f5135D = true;
        }
    }

    public final synchronized void F() {
        this.f5157s = 0;
        P p7 = this.f5139a;
        p7.f5127e = p7.f5126d;
    }

    public final synchronized boolean G(int i8) {
        F();
        int i9 = this.f5155q;
        if (i8 >= i9 && i8 <= this.f5154p + i9) {
            this.f5158t = Long.MIN_VALUE;
            this.f5157s = i8 - i9;
            return true;
        }
        return false;
    }

    public final synchronized boolean H(long j8, boolean z7) {
        int iO;
        try {
            F();
            int iU = u(this.f5157s);
            if (x() && j8 >= this.f5152n[iU] && (j8 <= this.f5160v || z7)) {
                if (this.f5135D) {
                    int i8 = this.f5154p - this.f5157s;
                    iO = 0;
                    while (true) {
                        if (iO >= i8) {
                            if (!z7) {
                                i8 = -1;
                            }
                            iO = i8;
                            break;
                        }
                        if (this.f5152n[iU] >= j8) {
                            break;
                        }
                        iU++;
                        if (iU == this.f5147i) {
                            iU = 0;
                        }
                        iO++;
                    }
                } else {
                    iO = o(iU, this.f5154p - this.f5157s, j8, true);
                }
                if (iO == -1) {
                    return false;
                }
                this.f5158t = j8;
                this.f5157s += iO;
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void I(int i8) {
        boolean z7;
        if (i8 >= 0) {
            try {
                if (this.f5157s + i8 <= this.f5154p) {
                    z7 = true;
                } else {
                    z7 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            z7 = false;
        }
        H1.d(z7);
        this.f5157s += i8;
    }

    @Override // W0.L
    public final void a(int i8, int i9, p117p0.E e8) {
        while (true) {
            P p7 = this.f5139a;
            if (i8 <= 0) {
                p7.getClass();
                return;
            }
            int iC = p7.c(i8);
            O o4 = p7.f5128f;
            S0.a aVar = o4.f5121c;
            e8.j(((int) (p7.f5129g - o4.f5119a)) + aVar.f6318b, aVar.f6317a, iC);
            i8 -= iC;
            long j8 = p7.f5129g + ((long) iC);
            p7.f5129g = j8;
            O o7 = p7.f5128f;
            if (j8 == o7.f5120b) {
                p7.f5128f = o7.f5122d;
            }
        }
    }

    @Override // W0.L
    public final void b(C3136t c3136t) {
        C3136t c3136tP = p(c3136t);
        boolean z7 = false;
        this.f5164z = false;
        this.f5132A = c3136t;
        synchronized (this) {
            try {
                this.f5163y = false;
                if (!Objects.equals(c3136tP, this.f5133B)) {
                    if (((SparseArray) this.f5141c.f2962I).size() != 0) {
                        Object obj = this.f5141c.f2962I;
                        if (((Q) ((SparseArray) obj).valueAt(((SparseArray) obj).size() - 1)).f5130a.equals(c3136tP)) {
                            Object obj2 = this.f5141c.f2962I;
                            this.f5133B = ((Q) ((SparseArray) obj2).valueAt(((SparseArray) obj2).size() - 1)).f5130a;
                        }
                        boolean z8 = this.f5135D;
                        C3136t c3136t2 = this.f5133B;
                        this.f5135D = z8 & p094m0.O.a(c3136t2.f27041o, c3136t2.f27037k);
                        this.f5136E = false;
                        z7 = true;
                    }
                    this.f5133B = c3136tP;
                    boolean z9 = this.f5135D;
                    C3136t c3136t3 = this.f5133B;
                    this.f5135D = z9 & p094m0.O.a(c3136t3.f27041o, c3136t3.f27037k);
                    this.f5136E = false;
                    z7 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        S s7 = this.f5144f;
        if (s7 == null || !z7) {
            return;
        }
        s7.b();
    }

    @Override // W0.L
    public final int c(InterfaceC3127j interfaceC3127j, int i8, boolean z7) throws EOFException {
        P p7 = this.f5139a;
        int iC = p7.c(i8);
        O o4 = p7.f5128f;
        S0.a aVar = o4.f5121c;
        int iQ = interfaceC3127j.q(aVar.f6317a, ((int) (p7.f5129g - o4.f5119a)) + aVar.f6318b, iC);
        if (iQ == -1) {
            if (z7) {
                return -1;
            }
            throw new EOFException();
        }
        long j8 = p7.f5129g + ((long) iQ);
        p7.f5129g = j8;
        O o7 = p7.f5128f;
        if (j8 != o7.f5120b) {
            return iQ;
        }
        p7.f5128f = o7.f5122d;
        return iQ;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004d  */
    @Override // W0.L
    public void d(long j8, int i8, int i9, int i10, W0.K k8) {
        int i11;
        if (this.f5164z) {
            C3136t c3136t = this.f5132A;
            H1.j(c3136t);
            b(c3136t);
        }
        int i12 = i8 & 1;
        boolean z7 = i12 != 0;
        if (this.f5162x) {
            if (!z7) {
                return;
            } else {
                this.f5162x = false;
            }
        }
        long j9 = this.f5137F + j8;
        if (!this.f5135D) {
            i11 = i8;
        } else {
            if (j9 < this.f5158t) {
                return;
            }
            if (i12 == 0) {
                if (!this.f5136E) {
                    p117p0.x.f("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.f5133B);
                    this.f5136E = true;
                }
                i11 = i8 | 1;
            } else {
                i11 = i8;
            }
        }
        if (this.f5138G) {
            if (!z7) {
                return;
            }
            synchronized (this) {
                if (this.f5154p == 0) {
                    boolean z8 = j9 > this.f5159u;
                    if (!z8) {
                        return;
                    }
                } else if (r() >= j9) {
                    return;
                } else {
                    m(this.f5155q + h(j9));
                }
                this.f5138G = false;
            }
        }
        g(j9, i11, (this.f5139a.f5129g - ((long) i9)) - ((long) i10), i9, k8);
    }

    @Override // W0.L
    public final /* synthetic */ void e(int i8, p117p0.E e8) {
        A0.O.b(this, e8, i8);
    }

    @Override // W0.L
    public final int f(InterfaceC3127j interfaceC3127j, int i8, boolean z7) {
        return c(interfaceC3127j, i8, z7);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00ab A[Catch: all -> 0x0021, TRY_LEAVE, TryCatch #0 {all -> 0x0021, blocks: (B:3:0x0001, B:5:0x0007, B:9:0x001d, B:12:0x0024, B:16:0x002c, B:21:0x0081, B:23:0x008a, B:25:0x0093, B:26:0x00a2, B:28:0x00ab, B:24:0x0091, B:19:0x0063), top: B:33:0x0001 }] */
    public final synchronized void g(long j8, int i8, long j9, int i9, W0.K k8) {
        int i10;
        int i11;
        try {
            int i12 = this.f5154p;
            if (i12 > 0) {
                int iU = u(i12 - 1);
                H1.d(this.f5149k[iU] + ((long) this.f5150l[iU]) <= j9);
            }
            this.f5161w = (536870912 & i8) != 0;
            this.f5160v = Math.max(this.f5160v, j8);
            int iU2 = u(this.f5154p);
            this.f5152n[iU2] = j8;
            this.f5149k[iU2] = j9;
            this.f5150l[iU2] = i9;
            this.f5151m[iU2] = i8;
            this.f5153o[iU2] = k8;
            this.f5148j[iU2] = this.f5134C;
            if (((SparseArray) this.f5141c.f2962I).size() != 0) {
                Object obj = this.f5141c.f2962I;
                if (!((Q) ((SparseArray) obj).valueAt(((SparseArray) obj).size() - 1)).f5130a.equals(this.f5133B)) {
                }
                i10 = this.f5154p + 1;
                this.f5154p = i10;
                i11 = this.f5147i;
                if (i10 == i11) {
                    int i13 = i11 + 1000;
                    long[] jArr = new long[i13];
                    long[] jArr2 = new long[i13];
                    long[] jArr3 = new long[i13];
                    int[] iArr = new int[i13];
                    int[] iArr2 = new int[i13];
                    W0.K[] kArr = new W0.K[i13];
                    int i14 = this.f5156r;
                    int i15 = i11 - i14;
                    System.arraycopy(this.f5149k, i14, jArr2, 0, i15);
                    System.arraycopy(this.f5152n, this.f5156r, jArr3, 0, i15);
                    System.arraycopy(this.f5151m, this.f5156r, iArr, 0, i15);
                    System.arraycopy(this.f5150l, this.f5156r, iArr2, 0, i15);
                    System.arraycopy(this.f5153o, this.f5156r, kArr, 0, i15);
                    System.arraycopy(this.f5148j, this.f5156r, jArr, 0, i15);
                    int i16 = this.f5156r;
                    System.arraycopy(this.f5149k, 0, jArr2, i15, i16);
                    System.arraycopy(this.f5152n, 0, jArr3, i15, i16);
                    System.arraycopy(this.f5151m, 0, iArr, i15, i16);
                    System.arraycopy(this.f5150l, 0, iArr2, i15, i16);
                    System.arraycopy(this.f5153o, 0, kArr, i15, i16);
                    System.arraycopy(this.f5148j, 0, jArr, i15, i16);
                    this.f5149k = jArr2;
                    this.f5152n = jArr3;
                    this.f5151m = iArr;
                    this.f5150l = iArr2;
                    this.f5153o = kArr;
                    this.f5148j = jArr;
                    this.f5156r = 0;
                    this.f5147i = i13;
                }
            }
            C3136t c3136t = this.f5133B;
            c3136t.getClass();
            G0.r rVar = this.f5142d;
            this.f5141c.b(this.f5155q + this.f5154p, new Q(c3136t, rVar != null ? rVar.n(this.f5143e, c3136t) : G0.q.f3377c));
            i10 = this.f5154p + 1;
            this.f5154p = i10;
            i11 = this.f5147i;
            if (i10 == i11) {
                int i17 = i11 + 1000;
                long[] jArr4 = new long[i17];
                long[] jArr5 = new long[i17];
                long[] jArr6 = new long[i17];
                int[] iArr3 = new int[i17];
                int[] iArr4 = new int[i17];
                W0.K[] kArr2 = new W0.K[i17];
                int i18 = this.f5156r;
                int i19 = i11 - i18;
                System.arraycopy(this.f5149k, i18, jArr5, 0, i19);
                System.arraycopy(this.f5152n, this.f5156r, jArr6, 0, i19);
                System.arraycopy(this.f5151m, this.f5156r, iArr3, 0, i19);
                System.arraycopy(this.f5150l, this.f5156r, iArr4, 0, i19);
                System.arraycopy(this.f5153o, this.f5156r, kArr2, 0, i19);
                System.arraycopy(this.f5148j, this.f5156r, jArr4, 0, i19);
                int i110 = this.f5156r;
                System.arraycopy(this.f5149k, 0, jArr5, i19, i110);
                System.arraycopy(this.f5152n, 0, jArr6, i19, i110);
                System.arraycopy(this.f5151m, 0, iArr3, i19, i110);
                System.arraycopy(this.f5150l, 0, iArr4, i19, i110);
                System.arraycopy(this.f5153o, 0, kArr2, i19, i110);
                System.arraycopy(this.f5148j, 0, jArr4, i19, i110);
                this.f5149k = jArr5;
                this.f5152n = jArr6;
                this.f5151m = iArr3;
                this.f5150l = iArr4;
                this.f5153o = kArr2;
                this.f5148j = jArr4;
                this.f5156r = 0;
                this.f5147i = i17;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final int h(long j8) {
        int i8 = this.f5154p;
        int iU = u(i8 - 1);
        while (i8 > this.f5157s && this.f5152n[iU] >= j8) {
            i8--;
            iU--;
            if (iU == -1) {
                iU = this.f5147i - 1;
            }
        }
        return i8;
    }

    public final long i(int i8) {
        this.f5159u = Math.max(this.f5159u, s(i8));
        this.f5154p -= i8;
        int i9 = this.f5155q + i8;
        this.f5155q = i9;
        int i10 = this.f5156r + i8;
        this.f5156r = i10;
        int i11 = this.f5147i;
        if (i10 >= i11) {
            this.f5156r = i10 - i11;
        }
        int i12 = this.f5157s - i8;
        this.f5157s = i12;
        int i13 = 0;
        if (i12 < 0) {
            this.f5157s = 0;
        }
        while (true) {
            F.d dVar = this.f5141c;
            if (i13 >= ((SparseArray) dVar.f2962I).size() - 1) {
                break;
            }
            int i14 = i13 + 1;
            if (i9 < ((SparseArray) dVar.f2962I).keyAt(i14)) {
                break;
            }
            ((InterfaceC3172j) dVar.f2963J).accept(((SparseArray) dVar.f2962I).valueAt(i13));
            ((SparseArray) dVar.f2962I).removeAt(i13);
            int i15 = dVar.f2961H;
            if (i15 > 0) {
                dVar.f2961H = i15 - 1;
            }
            i13 = i14;
        }
        if (this.f5154p != 0) {
            return this.f5149k[this.f5156r];
        }
        int i16 = this.f5156r;
        if (i16 == 0) {
            i16 = this.f5147i;
        }
        int i17 = i16 - 1;
        return this.f5149k[i17] + ((long) this.f5150l[i17]);
    }

    public final void j(long j8, boolean z7, boolean z8) {
        long jI;
        int i8;
        P p7 = this.f5139a;
        synchronized (this) {
            try {
                int i9 = this.f5154p;
                jI = -1;
                if (i9 != 0) {
                    long[] jArr = this.f5152n;
                    int i10 = this.f5156r;
                    if (j8 >= jArr[i10]) {
                        if (z8 && (i8 = this.f5157s) != i9) {
                            i9 = i8 + 1;
                        }
                        int iO = o(i10, i9, j8, z7);
                        if (iO != -1) {
                            jI = i(iO);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p7.b(jI);
    }

    public final void k() {
        long jI;
        P p7 = this.f5139a;
        synchronized (this) {
            int i8 = this.f5154p;
            jI = i8 == 0 ? -1L : i(i8);
        }
        p7.b(jI);
    }

    public final void l(long j8) {
        if (this.f5154p == 0) {
            return;
        }
        H1.d(j8 > r());
        n(this.f5155q + h(j8));
    }

    public final long m(int i8) {
        int i9 = this.f5155q;
        int i10 = this.f5154p;
        int i11 = (i9 + i10) - i8;
        boolean z7 = false;
        H1.d(i11 >= 0 && i11 <= i10 - this.f5157s);
        int i12 = this.f5154p - i11;
        this.f5154p = i12;
        this.f5160v = Math.max(this.f5159u, s(i12));
        if (i11 == 0 && this.f5161w) {
            z7 = true;
        }
        this.f5161w = z7;
        F.d dVar = this.f5141c;
        for (int size = ((SparseArray) dVar.f2962I).size() - 1; size >= 0 && i8 < ((SparseArray) dVar.f2962I).keyAt(size); size--) {
            ((InterfaceC3172j) dVar.f2963J).accept(((SparseArray) dVar.f2962I).valueAt(size));
            ((SparseArray) dVar.f2962I).removeAt(size);
        }
        dVar.f2961H = ((SparseArray) dVar.f2962I).size() > 0 ? Math.min(dVar.f2961H, ((SparseArray) dVar.f2962I).size() - 1) : -1;
        int i13 = this.f5154p;
        if (i13 == 0) {
            return 0L;
        }
        int iU = u(i13 - 1);
        return this.f5149k[iU] + ((long) this.f5150l[iU]);
    }

    public final void n(int i8) {
        long jM = m(i8);
        P p7 = this.f5139a;
        H1.d(jM <= p7.f5129g);
        p7.f5129g = jM;
        int i9 = p7.f5124b;
        if (jM != 0) {
            O o4 = p7.f5126d;
            if (jM != o4.f5119a) {
                while (p7.f5129g > o4.f5120b) {
                    o4 = o4.f5122d;
                }
                O o7 = o4.f5122d;
                o7.getClass();
                p7.a(o7);
                O o8 = new O(i9, o4.f5120b);
                o4.f5122d = o8;
                if (p7.f5129g == o4.f5120b) {
                    o4 = o8;
                }
                p7.f5128f = o4;
                if (p7.f5127e == o7) {
                    p7.f5127e = o8;
                    return;
                }
                return;
            }
        }
        p7.a(p7.f5126d);
        O o9 = new O(i9, p7.f5129g);
        p7.f5126d = o9;
        p7.f5127e = o9;
        p7.f5128f = o9;
    }

    public final int o(int i8, int i9, long j8, boolean z7) {
        int i10 = -1;
        for (int i11 = 0; i11 < i9; i11++) {
            long j9 = this.f5152n[i8];
            if (j9 > j8) {
                return i10;
            }
            if (!z7 || (this.f5151m[i8] & 1) != 0) {
                if (j9 == j8) {
                    return i11;
                }
                i10 = i11;
            }
            i8++;
            if (i8 == this.f5147i) {
                i8 = 0;
            }
        }
        return i10;
    }

    public C3136t p(C3136t c3136t) {
        if (this.f5137F == 0 || c3136t.f27046t == Long.MAX_VALUE) {
            return c3136t;
        }
        C3135s c3135sA = c3136t.a();
        c3135sA.f27001s = c3136t.f27046t + this.f5137F;
        return c3135sA.a();
    }

    public final synchronized long q() {
        return this.f5160v;
    }

    public final synchronized long r() {
        return Math.max(this.f5159u, s(this.f5157s));
    }

    public final long s(int i8) {
        long jMax = Long.MIN_VALUE;
        if (i8 == 0) {
            return Long.MIN_VALUE;
        }
        int iU = u(i8 - 1);
        for (int i9 = 0; i9 < i8; i9++) {
            jMax = Math.max(jMax, this.f5152n[iU]);
            if ((this.f5151m[iU] & 1) != 0) {
                break;
            }
            iU--;
            if (iU == -1) {
                iU = this.f5147i - 1;
            }
        }
        return jMax;
    }

    public final int t() {
        return this.f5155q + this.f5157s;
    }

    public final int u(int i8) {
        int i9 = this.f5156r + i8;
        int i10 = this.f5147i;
        return i9 < i10 ? i9 : i9 - i10;
    }

    public final synchronized int v(long j8, boolean z7) {
        int iU = u(this.f5157s);
        if (x() && j8 >= this.f5152n[iU]) {
            if (j8 > this.f5160v && z7) {
                return this.f5154p - this.f5157s;
            }
            int iO = o(iU, this.f5154p - this.f5157s, j8, true);
            if (iO == -1) {
                return 0;
            }
            return iO;
        }
        return 0;
    }

    public final synchronized C3136t w() {
        return this.f5163y ? null : this.f5133B;
    }

    public final boolean x() {
        return this.f5157s != this.f5154p;
    }

    public final synchronized boolean y(boolean z7) {
        C3136t c3136t;
        boolean z8 = true;
        if (x()) {
            if (((Q) this.f5141c.f(t())).f5130a != this.f5145g) {
                return true;
            }
            return z(u(this.f5157s));
        }
        if (!z7 && !this.f5161w && ((c3136t = this.f5133B) == null || c3136t == this.f5145g)) {
            z8 = false;
        }
        return z8;
    }

    public final boolean z(int i8) {
        G0.l lVar = this.f5146h;
        return lVar == null || lVar.getState() == 4 || ((this.f5151m[i8] & 1073741824) == 0 && this.f5146h.b());
    }
}
