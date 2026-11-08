package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class KN implements InterfaceC2138vN, N, FO, HO, SN {

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final Map f14334s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final C1804p0 f14335t0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Uri f14336G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC1556kC f14337H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final InterfaceC2241xM f14338I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C1294f8 f14339J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C2137vM f14340K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final ON f14341L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final long f14342M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final long f14343N;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final C1093bD f14345P;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Handler f14349T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public InterfaceC2086uN f14350U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public I0 f14351V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public TN[] f14352W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public IN[] f14353X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f14354Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public boolean f14355Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f14356a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f14357b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public JN f14358c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Y f14359d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public long f14360e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f14361f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f14362g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f14363h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f14364i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f14365j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f14366k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public long f14367l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public long f14368m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f14369n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f14370o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f14371p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f14372q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final CO f14373r0;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final JO f14344O = new JO();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final G.c f14346Q = new G.c(0);

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final EN f14347R = new EN(this, 1);

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final EN f14348S = new EN(this, 2);

    static {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        f14334s0 = Collections.unmodifiableMap(map);
        K k8 = new K();
        k8.f14260a = "icy";
        k8.f("application/x-icy");
        f14335t0 = new C1804p0(k8);
    }

    public KN(Uri uri, InterfaceC1556kC interfaceC1556kC, C1093bD c1093bD, InterfaceC2241xM interfaceC2241xM, C2137vM c2137vM, C1294f8 c1294f8, ON on, CO co, int i8, long j8) {
        this.f14336G = uri;
        this.f14337H = interfaceC1556kC;
        this.f14338I = interfaceC2241xM;
        this.f14340K = c2137vM;
        this.f14339J = c1294f8;
        this.f14341L = on;
        this.f14373r0 = co;
        this.f14342M = i8;
        this.f14345P = c1093bD;
        this.f14343N = j8;
        Looper looperMyLooper = Looper.myLooper();
        p113o3.r.x(looperMyLooper);
        this.f14349T = new Handler(looperMyLooper, null);
        this.f14353X = new IN[0];
        this.f14352W = new TN[0];
        this.f14368m0 = -9223372036854775807L;
        this.f14362g0 = 1;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x007a  */
    /* JADX WARN: Code duplicated, block: B:47:0x0080 A[LOOP:1: B:46:0x007e->B:47:0x0080, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:49:0x0093  */
    /* JADX WARN: Code duplicated, block: B:51:0x009c A[LOOP:2: B:50:0x009a->B:51:0x009c, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x007a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x0093, please report this as an issue */
    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long a(long j8) {
        JO jo;
        int i8;
        int i9;
        p();
        boolean[] zArr = this.f14358c0.f14147b;
        if (true != this.f14359d0.zzh()) {
            j8 = 0;
        }
        this.f14364i0 = false;
        this.f14367l0 = j8;
        if (u()) {
            this.f14368m0 = j8;
            return j8;
        }
        if (this.f14362g0 == 7 || (!this.f14371p0 && this.f14344O.f14154c == null)) {
            this.f14369n0 = false;
            this.f14368m0 = j8;
            this.f14371p0 = false;
            jo = this.f14344O;
            if (jo.f14154c == null) {
                jo.f14155d = null;
                for (TN tn : this.f14352W) {
                    tn.o(false);
                }
                break;
            }
            for (TN tn2 : this.f14352W) {
                tn2.n();
            }
            GO go = this.f14344O.f14154c;
            p113o3.r.x(go);
            go.a(false);
            break;
        }
        int length = this.f14352W.length;
        for (int i10 = 0; i10 < length; i10++) {
            TN tn3 = this.f14352W[i10];
            if (this.f14357b0) {
                int i11 = tn3.f16646o;
                synchronized (tn3) {
                    tn3.k();
                    int i12 = tn3.f16646o;
                    if (i11 < i12 || i11 > tn3.f16645n + i12) {
                        if (!zArr[i10] || !this.f14356a0) {
                            this.f14369n0 = false;
                            this.f14368m0 = j8;
                            this.f14371p0 = false;
                            jo = this.f14344O;
                            if (jo.f14154c == null) {
                                jo.f14155d = null;
                                while (i8 < r2) {
                                    tn.o(false);
                                }
                                break;
                                break;
                            }
                            while (i9 < r2) {
                                tn2.n();
                            }
                            GO go2 = this.f14344O.f14154c;
                            p113o3.r.x(go2);
                            go2.a(false);
                            break;
                        }
                    } else {
                        tn3.f16649r = Long.MIN_VALUE;
                        tn3.f16648q = i11 - i12;
                    }
                }
            } else {
                if (!tn3.r(j8, false)) {
                    if (!zArr[i10]) {
                    }
                    this.f14369n0 = false;
                    this.f14368m0 = j8;
                    this.f14371p0 = false;
                    jo = this.f14344O;
                    if (jo.f14154c == null) {
                        jo.f14155d = null;
                        while (i8 < r2) {
                            tn.o(false);
                        }
                        break;
                        break;
                    }
                    while (i9 < r2) {
                        tn2.n();
                    }
                    GO go3 = this.f14344O.f14154c;
                    p113o3.r.x(go3);
                    go3.a(false);
                    break;
                }
                continue;
            }
        }
        return j8;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final void b(long j8) {
    }

    public final void c(GN gn, boolean z7) {
        Uri uri = gn.f13538b.f16235b;
        this.f14339J.k(new C1827pN(), new C1721nL(-1, (C1804p0) null, Et.w(gn.f13545i), Et.w(this.f14360e0)));
        if (z7) {
            return;
        }
        for (TN tn : this.f14352W) {
            tn.o(false);
        }
        if (this.f14365j0 > 0) {
            InterfaceC2086uN interfaceC2086uN = this.f14350U;
            interfaceC2086uN.getClass();
            interfaceC2086uN.c(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void d(InterfaceC2086uN interfaceC2086uN, long j8) {
        this.f14350U = interfaceC2086uN;
        this.f14346Q.e();
        t();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void e(long j8) {
        long jI;
        int i8;
        if (this.f14357b0) {
            return;
        }
        p();
        if (u()) {
            return;
        }
        boolean[] zArr = this.f14358c0.f14148c;
        int length = this.f14352W.length;
        for (int i9 = 0; i9 < length; i9++) {
            TN tn = this.f14352W[i9];
            boolean z7 = zArr[i9];
            QN qn = tn.f16632a;
            synchronized (tn) {
                try {
                    int i10 = tn.f16645n;
                    if (i10 != 0) {
                        long[] jArr = tn.f16643l;
                        int i11 = tn.f16647p;
                        if (j8 >= jArr[i11]) {
                            int iG = tn.g(i11, (!z7 || (i8 = tn.f16648q) == i10) ? i10 : i8 + 1, j8, false);
                            jI = iG != -1 ? tn.i(iG) : -1L;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            qn.a(jI);
        }
    }

    @Override // com.google.android.gms.internal.ads.N
    public final void f() {
        this.f14354Y = true;
        this.f14349T.post(this.f14347R);
    }

    @Override // com.google.android.gms.internal.ads.N
    public final void g(Y y7) {
        this.f14349T.post(new RunnableC1170co(22, this, y7));
    }

    @Override // com.google.android.gms.internal.ads.N
    public final InterfaceC1234e0 h(int i8, int i9) {
        return o(new IN(i8, false));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long i(long j8, ZK zk) {
        p();
        if (!this.f14359d0.zzh()) {
            return 0L;
        }
        X xB = this.f14359d0.b(j8);
        Z z7 = xB.f17356a;
        long j9 = zk.f17761a;
        long j10 = zk.f17762b;
        if (j9 == 0) {
            if (j10 == 0) {
                return j8;
            }
            j9 = 0;
        }
        long j11 = z7.f17701a;
        int i8 = Et.f13234a;
        long j12 = j8 - j9;
        long j13 = j8 + j10;
        long j14 = j8 ^ j13;
        long j15 = j10 ^ j13;
        if (((j8 ^ j9) & (j8 ^ j12)) < 0) {
            j12 = Long.MIN_VALUE;
        }
        if ((j14 & j15) < 0) {
            j13 = Long.MAX_VALUE;
        }
        boolean z8 = j12 <= j11 && j11 <= j13;
        long j16 = xB.f17357b.f17701a;
        boolean z9 = j12 <= j16 && j16 <= j13;
        if (z8 && z9) {
            return Math.abs(j11 - j8) <= Math.abs(j16 - j8) ? j11 : j16;
        }
        if (z8) {
            return j11;
        }
        return z9 ? j16 : j12;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean j(EK ek) {
        if (this.f14371p0) {
            return false;
        }
        JO jo = this.f14344O;
        if (jo.f14155d != null || this.f14369n0) {
            return false;
        }
        if (this.f14355Z && this.f14365j0 == 0) {
            return false;
        }
        boolean zE = this.f14346Q.e();
        if (jo.f14154c != null) {
            return zE;
        }
        t();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long k(InterfaceC2087uO[] interfaceC2087uOArr, boolean[] zArr, UN[] unArr, boolean[] zArr2, long j8) {
        boolean[] zArr3;
        InterfaceC2087uO interfaceC2087uO;
        p();
        JN jn = this.f14358c0;
        C1104bO c1104bO = jn.f14146a;
        int i8 = this.f14365j0;
        int i9 = 0;
        while (true) {
            int length = interfaceC2087uOArr.length;
            zArr3 = jn.f14148c;
            if (i9 >= length) {
                break;
            }
            UN un = unArr[i9];
            if (un != null && (interfaceC2087uOArr[i9] == null || !zArr[i9])) {
                int i10 = ((HN) un).f13753a;
                p113o3.r.M(zArr3[i10]);
                this.f14365j0--;
                zArr3[i10] = false;
                unArr[i9] = null;
            }
            i9++;
        }
        boolean z7 = !this.f14363h0 ? j8 == 0 || this.f14357b0 : i8 != 0;
        for (int i11 = 0; i11 < interfaceC2087uOArr.length; i11++) {
            if (unArr[i11] == null && (interfaceC2087uO = interfaceC2087uOArr[i11]) != null) {
                p113o3.r.M(interfaceC2087uO.zzc() == 1);
                p113o3.r.M(interfaceC2087uO.zza(0) == 0);
                int iIndexOf = c1104bO.f18043b.indexOf(interfaceC2087uO.zze());
                if (iIndexOf < 0) {
                    iIndexOf = -1;
                }
                p113o3.r.M(!zArr3[iIndexOf]);
                this.f14365j0++;
                zArr3[iIndexOf] = true;
                unArr[i11] = new HN(this, iIndexOf);
                zArr2[i11] = true;
                if (!z7) {
                    TN tn = this.f14352W[iIndexOf];
                    z7 = (tn.f16646o + tn.f16648q == 0 || tn.r(j8, true)) ? false : true;
                }
            }
        }
        if (this.f14365j0 == 0) {
            this.f14369n0 = false;
            this.f14364i0 = false;
            JO jo = this.f14344O;
            if (jo.f14154c != null) {
                for (TN tn2 : this.f14352W) {
                    tn2.n();
                }
                GO go = jo.f14154c;
                p113o3.r.x(go);
                go.a(false);
            } else {
                this.f14371p0 = false;
                for (TN tn3 : this.f14352W) {
                    tn3.o(false);
                }
            }
        } else if (z7) {
            j8 = a(j8);
            for (int i12 = 0; i12 < unArr.length; i12++) {
                if (unArr[i12] != null) {
                    zArr2[i12] = true;
                }
            }
        }
        this.f14363h0 = true;
        return j8;
    }

    public final void l(GN gn) {
        Y y7;
        if (this.f14360e0 == -9223372036854775807L && (y7 = this.f14359d0) != null) {
            boolean zZzh = y7.zzh();
            long jN = n(true);
            long j8 = jN == Long.MIN_VALUE ? 0L : jN + 10000;
            this.f14360e0 = j8;
            this.f14341L.s(j8, zZzh, this.f14361f0);
        }
        Uri uri = gn.f13538b.f16235b;
        this.f14339J.m(new C1827pN(), new C1721nL(-1, (C1804p0) null, Et.w(gn.f13545i), Et.w(this.f14360e0)));
        this.f14371p0 = true;
        InterfaceC2086uN interfaceC2086uN = this.f14350U;
        interfaceC2086uN.getClass();
        interfaceC2086uN.c(this);
    }

    public final int m() {
        int i8 = 0;
        for (TN tn : this.f14352W) {
            i8 += tn.f16646o + tn.f16645n;
        }
        return i8;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0015  */
    public final long n(boolean z7) {
        int i8 = 0;
        long jMax = Long.MIN_VALUE;
        while (true) {
            TN[] tnArr = this.f14352W;
            if (i8 >= tnArr.length) {
                return jMax;
            }
            if (z7) {
                jMax = Math.max(jMax, tnArr[i8].l());
            } else {
                JN jn = this.f14358c0;
                jn.getClass();
                if (jn.f14148c[i8]) {
                    jMax = Math.max(jMax, tnArr[i8].l());
                }
            }
            i8++;
        }
    }

    public final InterfaceC1234e0 o(IN in) {
        int length = this.f14352W.length;
        for (int i8 = 0; i8 < length; i8++) {
            if (in.equals(this.f14353X[i8])) {
                return this.f14352W[i8];
            }
        }
        if (this.f14354Y) {
            Zo.f("ProgressiveMediaPeriod", "Extractor added new track (id=" + in.f13879a + ") after finishing tracks.");
            return new I();
        }
        TN tn = new TN(this.f14373r0, this.f14338I, this.f14340K);
        tn.f16636e = this;
        int i9 = length + 1;
        IN[] inArr = (IN[]) Arrays.copyOf(this.f14353X, i9);
        inArr[length] = in;
        int i10 = Et.f13234a;
        this.f14353X = inArr;
        TN[] tnArr = (TN[]) Arrays.copyOf(this.f14352W, i9);
        tnArr[length] = tn;
        this.f14352W = tnArr;
        return tn;
    }

    public final void p() {
        p113o3.r.M(this.f14355Z);
        this.f14358c0.getClass();
        this.f14359d0.getClass();
    }

    public final void q() {
        long j8;
        int i8;
        C1804p0 c1804p0;
        if (this.f14372q0 || this.f14355Z || !this.f14354Y || this.f14359d0 == null) {
            return;
        }
        for (TN tn : this.f14352W) {
            synchronized (tn) {
                c1804p0 = tn.f16654w ? null : tn.f16655x;
            }
            if (c1804p0 == null) {
                return;
            }
        }
        this.f14346Q.d();
        int length = this.f14352W.length;
        C0961Ve[] c0961VeArr = new C0961Ve[length];
        boolean[] zArr = new boolean[length];
        int i9 = 0;
        while (true) {
            j8 = this.f14343N;
            if (i9 >= length) {
                break;
            }
            C1804p0 c1804p0M = this.f14352W[i9].m();
            c1804p0M.getClass();
            String str = c1804p0M.f20383m;
            boolean zEquals = "audio".equals(AbstractC2140va.h(str));
            boolean z7 = zEquals || AbstractC2140va.g(str);
            zArr[i9] = z7;
            this.f14356a0 = z7 | this.f14356a0;
            this.f14357b0 = j8 != -9223372036854775807L && length == 1 && ("image".equals(AbstractC2140va.h(str)) || "application/x-image-uri".equals(str));
            I0 i10 = this.f14351V;
            if (i10 != null) {
                if (zEquals || this.f14353X[i9].f13880b) {
                    Q9 q9 = c1804p0M.f20381k;
                    Q9 q10 = q9 == null ? new Q9(-9223372036854775807L, i10) : q9.d(i10);
                    K k8 = new K(c1804p0M);
                    k8.f14269j = q10;
                    c1804p0M = new C1804p0(k8);
                }
                if (zEquals && c1804p0M.f20377g == -1 && c1804p0M.f20378h == -1 && (i8 = i10.f13828G) != -1) {
                    K k9 = new K(c1804p0M);
                    k9.f14266g = i8;
                    c1804p0M = new C1804p0(k9);
                }
            }
            ((C2272y1) this.f14338I).getClass();
            int i11 = c1804p0M.f20387q != null ? 1 : 0;
            K k10 = new K(c1804p0M);
            k10.f14259G = i11;
            c0961VeArr[i9] = new C0961Ve(Integer.toString(i9), new C1804p0(k10));
            i9++;
        }
        this.f14358c0 = new JN(new C1104bO(c0961VeArr), zArr);
        if (this.f14357b0 && this.f14360e0 == -9223372036854775807L) {
            this.f14360e0 = j8;
            this.f14359d0 = new FN(this, this.f14359d0);
        }
        this.f14341L.s(this.f14360e0, this.f14359d0.zzh(), this.f14361f0);
        this.f14355Z = true;
        InterfaceC2086uN interfaceC2086uN = this.f14350U;
        interfaceC2086uN.getClass();
        interfaceC2086uN.f(this);
    }

    public final void r(int i8) {
        p();
        JN jn = this.f14358c0;
        boolean[] zArr = jn.f14149d;
        if (zArr[i8]) {
            return;
        }
        C1804p0 c1804p0 = jn.f14146a.a(i8).f17072d[0];
        this.f14339J.i(new C1721nL(AbstractC2140va.b(c1804p0.f20383m), c1804p0, Et.w(this.f14367l0), -9223372036854775807L));
        zArr[i8] = true;
    }

    public final void s(int i8) {
        p();
        boolean[] zArr = this.f14358c0.f14147b;
        if (this.f14369n0 && zArr[i8] && !this.f14352W[i8].q(false)) {
            this.f14368m0 = 0L;
            this.f14369n0 = false;
            this.f14364i0 = true;
            this.f14367l0 = 0L;
            this.f14370o0 = 0;
            for (TN tn : this.f14352W) {
                tn.o(false);
            }
            InterfaceC2086uN interfaceC2086uN = this.f14350U;
            interfaceC2086uN.getClass();
            interfaceC2086uN.c(this);
        }
    }

    public final void t() {
        GN gn = new GN(this, this.f14336G, this.f14337H, this.f14345P, this, this.f14346Q);
        if (this.f14355Z) {
            p113o3.r.M(u());
            long j8 = this.f14360e0;
            if (j8 != -9223372036854775807L && this.f14368m0 > j8) {
                this.f14371p0 = true;
                this.f14368m0 = -9223372036854775807L;
                return;
            }
            Y y7 = this.f14359d0;
            y7.getClass();
            Z z7 = y7.b(this.f14368m0).f17356a;
            long j9 = this.f14368m0;
            gn.f13542f.f7458a = z7.f17702b;
            gn.f13545i = j9;
            gn.f13544h = true;
            gn.f13548l = false;
            for (TN tn : this.f14352W) {
                tn.f16649r = this.f14368m0;
            }
            this.f14368m0 = -9223372036854775807L;
        }
        this.f14370o0 = m();
        JO jo = this.f14344O;
        jo.getClass();
        Looper looperMyLooper = Looper.myLooper();
        p113o3.r.x(looperMyLooper);
        jo.f14155d = null;
        GO go = new GO(jo, looperMyLooper, gn, this, SystemClock.elapsedRealtime());
        p113o3.r.M(jo.f14154c == null);
        jo.f14154c = go;
        go.f13552I = null;
        jo.f14152a.execute(go);
        Uri uri = gn.f13546j.f12592a;
        Collections.emptyMap();
        this.f14339J.o(new C1827pN(), new C1721nL(-1, (C1804p0) null, Et.w(gn.f13545i), Et.w(this.f14360e0)));
    }

    public final boolean u() {
        return this.f14368m0 != -9223372036854775807L;
    }

    public final boolean v() {
        return this.f14364i0 || u();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final void x() throws IOException {
        IOException iOException;
        int i8 = this.f14362g0 == 7 ? 6 : 3;
        JO jo = this.f14344O;
        IOException iOException2 = jo.f14155d;
        if (iOException2 != null) {
            throw iOException2;
        }
        GO go = jo.f14154c;
        if (go != null && (iOException = go.f13552I) != null && go.f13553J > i8) {
            throw iOException;
        }
        if (this.f14371p0 && !this.f14355Z) {
            throw C0800Ka.a("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzb() {
        long jN;
        boolean z7;
        p();
        if (this.f14371p0 || this.f14365j0 == 0) {
            return Long.MIN_VALUE;
        }
        if (u()) {
            return this.f14368m0;
        }
        if (this.f14356a0) {
            int length = this.f14352W.length;
            jN = Long.MAX_VALUE;
            for (int i8 = 0; i8 < length; i8++) {
                JN jn = this.f14358c0;
                if (jn.f14147b[i8] && jn.f14148c[i8]) {
                    TN tn = this.f14352W[i8];
                    synchronized (tn) {
                        z7 = tn.f16652u;
                    }
                    if (!z7) {
                        jN = Math.min(jN, this.f14352W[i8].l());
                    }
                }
            }
        } else {
            jN = Long.MAX_VALUE;
        }
        if (jN == Long.MAX_VALUE) {
            jN = n(false);
        }
        return jN == Long.MIN_VALUE ? this.f14367l0 : jN;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzc() {
        return zzb();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final long zzd() {
        if (!this.f14364i0) {
            return -9223372036854775807L;
        }
        if (!this.f14371p0 && m() <= this.f14370o0) {
            return -9223372036854775807L;
        }
        this.f14364i0 = false;
        return this.f14367l0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2138vN
    public final C1104bO zzi() {
        p();
        return this.f14358c0.f14146a;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean zzp() {
        boolean z7;
        if (this.f14344O.f14154c == null) {
            return false;
        }
        G.c cVar = this.f14346Q;
        synchronized (cVar) {
            z7 = cVar.f3280H;
        }
        return z7;
    }
}
