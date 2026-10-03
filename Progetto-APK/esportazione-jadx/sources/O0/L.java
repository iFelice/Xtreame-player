package O0;

import B0.C0044d0;
import B0.I0;
import android.net.Uri;
import android.os.Handler;
import com.google.android.gms.internal.measurement.H1;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import p039f.RunnableC3004t;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.g0;
import p117p0.C3171i;
import p141s0.C3185j;
import p141s0.InterfaceC3184i;

/* JADX INFO: loaded from: classes.dex */
public final class L implements InterfaceC0298w, W0.u, S0.h, S0.k, S {

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final Map f5058x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static final C3136t f5059y0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Uri f5060G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC3184i f5061H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final G0.r f5062I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final U4.b f5063J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final D f5064K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final G0.o f5065L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final N f5066M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final S0.d f5067N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final String f5068O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final long f5069P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f5070Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final C3136t f5071R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final long f5072S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final S0.m f5073T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final p096m2.u f5074U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final C3171i f5075V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final F f5076W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final F f5077X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final Handler f5078Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public InterfaceC0297v f5079Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public p057h1.b f5080a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public T[] f5081b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public J[] f5082c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f5083d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f5084e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f5085f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f5086g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public K f5087h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public W0.F f5088i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public long f5089j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f5090k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f5091l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f5092m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f5093n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f5094o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f5095p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f5096q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public long f5097r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public long f5098s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public boolean f5099t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f5100u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public boolean f5101v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f5102w0;

    static {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        f5058x0 = Collections.unmodifiableMap(map);
        C3135s c3135s = new C3135s();
        c3135s.f26983a = "icy";
        c3135s.f26996n = p094m0.O.p("application/x-icy");
        f5059y0 = c3135s.a();
    }

    public L(Uri uri, InterfaceC3184i interfaceC3184i, p096m2.u uVar, G0.r rVar, G0.o oVar, U4.b bVar, D d6, N n7, S0.d dVar, String str, int i8, int i9, C3136t c3136t, long j8, T0.a aVar) {
        this.f5060G = uri;
        this.f5061H = interfaceC3184i;
        this.f5062I = rVar;
        this.f5065L = oVar;
        this.f5063J = bVar;
        this.f5064K = d6;
        this.f5066M = n7;
        this.f5067N = dVar;
        this.f5068O = str;
        this.f5069P = i8;
        this.f5070Q = i9;
        this.f5071R = c3136t;
        this.f5073T = aVar != null ? new S0.m(aVar) : new S0.m("ProgressiveMediaPeriod");
        this.f5074U = uVar;
        this.f5072S = j8;
        this.f5075V = new C3171i();
        this.f5076W = new F(this, 0);
        this.f5077X = new F(this, 1);
        this.f5078Y = p117p0.M.n(null);
        this.f5082c0 = new J[0];
        this.f5081b0 = new T[0];
        this.f5098s0 = -9223372036854775807L;
        this.f5091l0 = 1;
    }

    public final void A() {
        long j8;
        int i8;
        if (this.f5102w0 || this.f5084e0 || !this.f5083d0 || this.f5088i0 == null) {
            return;
        }
        for (T t7 : this.f5081b0) {
            if (t7.w() == null) {
                return;
            }
        }
        this.f5075V.e();
        int length = this.f5081b0.length;
        g0[] g0VarArr = new g0[length];
        boolean[] zArr = new boolean[length];
        int i9 = 0;
        while (true) {
            j8 = this.f5072S;
            if (i9 >= length) {
                break;
            }
            C3136t c3136tW = this.f5081b0[i9].w();
            c3136tW.getClass();
            String str = c3136tW.f27041o;
            boolean zK = p094m0.O.k(str);
            boolean z7 = zK || p094m0.O.o(str);
            zArr[i9] = z7;
            this.f5085f0 = z7 | this.f5085f0;
            this.f5086g0 = j8 != -9223372036854775807L && length == 1 && p094m0.O.m(str);
            p057h1.b bVar = this.f5080a0;
            if (bVar != null) {
                if (zK || this.f5082c0[i9].f5053b) {
                    p094m0.N n7 = c3136tW.f27038l;
                    p094m0.N n8 = n7 == null ? new p094m0.N(bVar) : n7.a(bVar);
                    C3135s c3135sA = c3136tW.a();
                    c3135sA.f26993k = n8;
                    c3136tW = new C3136t(c3135sA);
                }
                if (zK && c3136tW.f27034h == -1 && c3136tW.f27035i == -1 && (i8 = bVar.f25386a) != -1) {
                    C3135s c3135sA2 = c3136tW.a();
                    c3135sA2.f26990h = i8;
                    c3136tW = new C3136t(c3135sA2);
                }
            }
            int iM = this.f5062I.m(c3136tW);
            C3135s c3135sA3 = c3136tW.a();
            c3135sA3.f26982O = iM;
            C3136t c3136tA = c3135sA3.a();
            g0VarArr[i9] = new g0(Integer.toString(i9), c3136tA);
            this.f5094o0 = c3136tA.f27047u | this.f5094o0;
            i9++;
        }
        this.f5087h0 = new K(new Z(g0VarArr), zArr);
        if (this.f5086g0 && this.f5089j0 == -9223372036854775807L) {
            this.f5089j0 = j8;
            this.f5088i0 = new G(this, this.f5088i0);
        }
        this.f5066M.u(this.f5089j0, this.f5088i0, this.f5090k0);
        this.f5084e0 = true;
        InterfaceC0297v interfaceC0297v = this.f5079Z;
        interfaceC0297v.getClass();
        interfaceC0297v.t(this);
    }

    public final void B(int i8) {
        f();
        K k8 = this.f5087h0;
        boolean[] zArr = k8.f5057d;
        if (zArr[i8]) {
            return;
        }
        C3136t c3136t = k8.f5054a.a(i8).f26860d[0];
        this.f5064K.b(p094m0.O.i(c3136t.f27041o), c3136t, 0, null, this.f5097r0);
        zArr[i8] = true;
    }

    public final void C(int i8) {
        f();
        if (this.f5099t0) {
            if ((!this.f5085f0 || this.f5087h0.f5055b[i8]) && !this.f5081b0[i8].y(false)) {
                this.f5098s0 = 0L;
                this.f5099t0 = false;
                this.f5093n0 = true;
                this.f5097r0 = 0L;
                this.f5100u0 = 0;
                for (T t7 : this.f5081b0) {
                    t7.E(false);
                }
                InterfaceC0297v interfaceC0297v = this.f5079Z;
                interfaceC0297v.getClass();
                interfaceC0297v.r(this);
            }
        }
    }

    public final W0.L D(J j8) {
        int length = this.f5081b0.length;
        for (int i8 = 0; i8 < length; i8++) {
            if (j8.equals(this.f5082c0[i8])) {
                return this.f5081b0[i8];
            }
        }
        if (this.f5083d0) {
            p117p0.x.f("ProgressiveMediaPeriod", "Extractor added new track (id=" + j8.f5052a + ") after finishing tracks.");
            return new W0.q();
        }
        G0.r rVar = this.f5062I;
        rVar.getClass();
        G0.o oVar = this.f5065L;
        oVar.getClass();
        T t7 = new T(this.f5067N, rVar, oVar);
        t7.f5144f = this;
        int i9 = length + 1;
        J[] jArr = (J[]) Arrays.copyOf(this.f5082c0, i9);
        jArr[length] = j8;
        String str = p117p0.M.f28050a;
        this.f5082c0 = jArr;
        T[] tArr = (T[]) Arrays.copyOf(this.f5081b0, i9);
        tArr[length] = t7;
        this.f5081b0 = tArr;
        return t7;
    }

    public final void E(W0.F f8) {
        this.f5088i0 = this.f5080a0 == null ? f8 : new W0.x(-9223372036854775807L);
        this.f5089j0 = f8.m();
        boolean z7 = !this.f5096q0 && f8.m() == -9223372036854775807L;
        this.f5090k0 = z7;
        this.f5091l0 = z7 ? 7 : 1;
        if (this.f5084e0) {
            this.f5066M.u(this.f5089j0, f8, z7);
        } else {
            A();
        }
    }

    public final void F() {
        H h8 = new H(this, this.f5060G, this.f5061H, this.f5074U, this, this.f5075V);
        if (this.f5084e0) {
            H1.i(z());
            long j8 = this.f5089j0;
            if (j8 != -9223372036854775807L && this.f5098s0 > j8) {
                this.f5101v0 = true;
                this.f5098s0 = -9223372036854775807L;
                return;
            }
            W0.F f8 = this.f5088i0;
            f8.getClass();
            long j9 = f8.k(this.f5098s0).f7324a.f7328b;
            long j10 = this.f5098s0;
            h8.f5042M.f7458a = j9;
            h8.f5045P = j10;
            h8.f5044O = true;
            h8.f5048S = false;
            for (T t7 : this.f5081b0) {
                t7.f5158t = this.f5098s0;
            }
            this.f5098s0 = -9223372036854775807L;
        }
        this.f5100u0 = x();
        this.f5073T.g(h8, this, this.f5063J.Y(this.f5091l0));
    }

    public final boolean G() {
        return this.f5093n0 || z();
    }

    @Override // O0.InterfaceC0298w
    public final long a(long j8, I0 i8) {
        f();
        if (!this.f5088i0.f()) {
            return 0L;
        }
        W0.E eK = this.f5088i0.k(j8);
        return i8.a(j8, eK.f7324a.f7327a, eK.f7325b.f7327a);
    }

    @Override // O0.S
    public final void b() {
        this.f5078Y.post(this.f5076W);
    }

    @Override // S0.h
    public final void c(S0.j jVar, long j8, long j9, boolean z7) {
        H h8 = (H) jVar;
        p141s0.M m7 = h8.f5038I;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        this.f5063J.getClass();
        this.f5064K.c(c0292p, 1, -1, null, 0, null, h8.f5045P, this.f5089j0);
        if (z7) {
            return;
        }
        for (T t7 : this.f5081b0) {
            t7.E(false);
        }
        if (this.f5095p0 > 0) {
            InterfaceC0297v interfaceC0297v = this.f5079Z;
            interfaceC0297v.getClass();
            interfaceC0297v.r(this);
        }
    }

    @Override // S0.k
    public final void d() {
        for (T t7 : this.f5081b0) {
            t7.E(true);
            G0.l lVar = t7.f5146h;
            if (lVar != null) {
                lVar.c(t7.f5143e);
                t7.f5146h = null;
                t7.f5145g = null;
            }
        }
        this.f5074U.Q();
    }

    @Override // O0.W
    public final long e() {
        return u();
    }

    public final void f() {
        H1.i(this.f5084e0);
        this.f5087h0.getClass();
        this.f5088i0.getClass();
    }

    @Override // O0.W
    public final boolean g(C0044d0 c0044d0) {
        if (this.f5101v0) {
            return false;
        }
        S0.m mVar = this.f5073T;
        if (mVar.d() || this.f5099t0) {
            return false;
        }
        if ((this.f5084e0 || this.f5071R != null) && this.f5095p0 == 0) {
            return false;
        }
        boolean zF = this.f5075V.f();
        if (mVar.e()) {
            return zF;
        }
        F();
        return true;
    }

    @Override // O0.InterfaceC0298w
    public final void h() throws IOException {
        int iY = this.f5063J.Y(this.f5091l0);
        S0.m mVar = this.f5073T;
        IOException iOException = mVar.f6368I;
        if (iOException != null) {
            throw iOException;
        }
        S0.i iVar = mVar.f6367H;
        if (iVar != null) {
            if (iY == Integer.MIN_VALUE) {
                iY = iVar.f6353G;
            }
            IOException iOException2 = iVar.f6357K;
            if (iOException2 != null && iVar.f6358L > iY) {
                throw iOException2;
            }
        }
        if (this.f5101v0 && !this.f5084e0) {
            throw p094m0.P.a("Loading finished before preparation is complete.", null);
        }
    }

    @Override // O0.InterfaceC0298w
    public final long i(long j8) {
        f();
        boolean[] zArr = this.f5087h0.f5055b;
        if (!this.f5088i0.f()) {
            j8 = 0;
        }
        this.f5093n0 = false;
        boolean z7 = this.f5097r0 == j8;
        this.f5097r0 = j8;
        if (z()) {
            this.f5098s0 = j8;
            return j8;
        }
        int i8 = this.f5091l0;
        S0.m mVar = this.f5073T;
        if (i8 != 7 && (this.f5101v0 || mVar.e())) {
            int length = this.f5081b0.length;
            for (int i9 = 0; i9 < length; i9++) {
                T t7 = this.f5081b0[i9];
                if (t7.t() != 0 || !z7) {
                    if ((this.f5086g0 ? t7.G(t7.f5155q) : t7.H(j8, this.f5101v0)) || (!zArr[i9] && this.f5085f0)) {
                    }
                }
            }
            return j8;
        }
        this.f5099t0 = false;
        this.f5098s0 = j8;
        this.f5101v0 = false;
        this.f5094o0 = false;
        if (mVar.e()) {
            for (T t8 : this.f5081b0) {
                t8.k();
            }
            mVar.a();
        } else {
            mVar.f6368I = null;
            for (T t9 : this.f5081b0) {
                t9.E(false);
            }
        }
        return j8;
    }

    @Override // W0.u
    public final void j() {
        this.f5083d0 = true;
        this.f5078Y.post(this.f5076W);
    }

    @Override // O0.W
    public final boolean k() {
        boolean z7;
        if (this.f5073T.e()) {
            C3171i c3171i = this.f5075V;
            synchronized (c3171i) {
                z7 = c3171i.f28089b;
            }
            if (z7) {
                return true;
            }
        }
        return false;
    }

    @Override // O0.InterfaceC0298w
    public final long l(R0.t[] tVarArr, boolean[] zArr, U[] uArr, boolean[] zArr2, long j8) {
        boolean[] zArr3;
        R0.t tVar;
        f();
        K k8 = this.f5087h0;
        Z z7 = k8.f5054a;
        int i8 = this.f5095p0;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int length = tVarArr.length;
            zArr3 = k8.f5056c;
            if (i10 >= length) {
                break;
            }
            U u7 = uArr[i10];
            if (u7 != null && (tVarArr[i10] == null || !zArr[i10])) {
                int i11 = ((I) u7).f5050G;
                H1.i(zArr3[i11]);
                this.f5095p0--;
                zArr3[i11] = false;
                uArr[i10] = null;
            }
            i10++;
        }
        boolean z8 = !this.f5092m0 ? j8 == 0 || this.f5086g0 : i8 != 0;
        for (int i12 = 0; i12 < tVarArr.length; i12++) {
            if (uArr[i12] == null && (tVar = tVarArr[i12]) != null) {
                R0.c cVar = (R0.c) tVar;
                int[] iArr = cVar.f6127c;
                H1.i(iArr.length == 1);
                H1.i(iArr[0] == 0);
                int iB = z7.b(cVar.f6125a);
                H1.i(!zArr3[iB]);
                this.f5095p0++;
                zArr3[iB] = true;
                this.f5094o0 = cVar.l().f27047u | this.f5094o0;
                uArr[i12] = new I(this, iB);
                zArr2[i12] = true;
                if (!z8) {
                    T t7 = this.f5081b0[iB];
                    z8 = (t7.t() == 0 || t7.H(j8, true)) ? false : true;
                }
            }
        }
        if (this.f5095p0 == 0) {
            this.f5099t0 = false;
            this.f5093n0 = false;
            this.f5094o0 = false;
            S0.m mVar = this.f5073T;
            if (mVar.e()) {
                T[] tArr = this.f5081b0;
                int length2 = tArr.length;
                while (i9 < length2) {
                    tArr[i9].k();
                    i9++;
                }
                mVar.a();
            } else {
                this.f5101v0 = false;
                for (T t8 : this.f5081b0) {
                    t8.E(false);
                }
            }
        } else if (z8) {
            j8 = i(j8);
            while (i9 < uArr.length) {
                if (uArr[i9] != null) {
                    zArr2[i9] = true;
                }
                i9++;
            }
        }
        this.f5092m0 = true;
        return j8;
    }

    @Override // O0.InterfaceC0298w
    public final void m(InterfaceC0297v interfaceC0297v, long j8) {
        this.f5079Z = interfaceC0297v;
        C3136t c3136t = this.f5071R;
        if (c3136t == null) {
            this.f5075V.f();
            F();
        } else {
            t(this.f5070Q, 3).b(c3136t);
            E(new W0.D(-9223372036854775807L, new long[]{0}, new long[]{0}));
            j();
            this.f5098s0 = j8;
        }
    }

    @Override // S0.h
    public final S0.g n(S0.j jVar, long j8, long j9, IOException iOException, int i8) {
        long jMin;
        S0.g gVarC;
        W0.F f8;
        H h8 = (H) jVar;
        p141s0.M m7 = h8.f5038I;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        String str = p117p0.M.f28050a;
        this.f5063J.getClass();
        if ((iOException instanceof p094m0.P) || (iOException instanceof FileNotFoundException) || (iOException instanceof p141s0.w) || (iOException instanceof S0.l)) {
            jMin = -9223372036854775807L;
            break;
        }
        int i9 = C3185j.f29946H;
        Throwable cause = iOException;
        while (true) {
            if (cause == null) {
                jMin = Math.min((i8 - 1) * 1000, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
                break;
            }
            if ((cause instanceof C3185j) && ((C3185j) cause).f29947G == 2008) {
                jMin = -9223372036854775807L;
                break;
            }
            cause = cause.getCause();
        }
        if (jMin == -9223372036854775807L) {
            gVarC = S0.m.f6365L;
        } else {
            int iX = x();
            boolean z7 = iX > this.f5100u0;
            if (this.f5096q0 || !((f8 = this.f5088i0) == null || f8.m() == -9223372036854775807L)) {
                this.f5100u0 = iX;
            } else if (!this.f5084e0 || G()) {
                this.f5093n0 = this.f5084e0;
                this.f5097r0 = 0L;
                this.f5100u0 = 0;
                for (T t7 : this.f5081b0) {
                    t7.E(false);
                }
                h8.f5042M.f7458a = 0L;
                h8.f5045P = 0L;
                h8.f5044O = true;
                h8.f5048S = false;
            } else {
                this.f5099t0 = true;
                gVarC = S0.m.f6364K;
            }
            gVarC = S0.m.c(jMin, z7);
        }
        S0.g gVar = gVarC;
        this.f5064K.e(c0292p, 1, -1, null, 0, null, h8.f5045P, this.f5089j0, iOException, !gVar.a());
        return gVar;
    }

    @Override // S0.h
    public final void o(S0.j jVar, long j8, long j9) {
        H h8 = (H) jVar;
        if (this.f5089j0 == -9223372036854775807L && this.f5088i0 != null) {
            long jY = y(true);
            long j10 = jY == Long.MIN_VALUE ? 0L : jY + 10000;
            this.f5089j0 = j10;
            this.f5066M.u(j10, this.f5088i0, this.f5090k0);
        }
        p141s0.M m7 = h8.f5038I;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        this.f5063J.getClass();
        this.f5064K.d(c0292p, 1, -1, null, 0, null, h8.f5045P, this.f5089j0);
        this.f5101v0 = true;
        InterfaceC0297v interfaceC0297v = this.f5079Z;
        interfaceC0297v.getClass();
        interfaceC0297v.r(this);
    }

    @Override // S0.h
    public final void p(S0.j jVar, long j8, long j9, int i8) {
        C0292p c0292p;
        H h8 = (H) jVar;
        p141s0.M m7 = h8.f5038I;
        if (i8 == 0) {
            c0292p = new C0292p(h8.f5036G, h8.f5046Q, j8);
        } else {
            Uri uri = m7.f29910c;
            c0292p = new C0292p(m7.f29911d, j9);
        }
        this.f5064K.g(c0292p, 1, -1, null, 0, null, h8.f5045P, this.f5089j0, i8);
    }

    @Override // O0.InterfaceC0298w
    public final long q() {
        if (this.f5094o0) {
            this.f5094o0 = false;
            return this.f5097r0;
        }
        if (!this.f5093n0) {
            return -9223372036854775807L;
        }
        if (!this.f5101v0 && x() <= this.f5100u0) {
            return -9223372036854775807L;
        }
        this.f5093n0 = false;
        return this.f5097r0;
    }

    @Override // W0.u
    public final void r(W0.F f8) {
        this.f5078Y.post(new RunnableC3004t(28, this, f8));
    }

    @Override // O0.InterfaceC0298w
    public final Z s() {
        f();
        return this.f5087h0.f5054a;
    }

    @Override // W0.u
    public final W0.L t(int i8, int i9) {
        return D(new J(i8, false));
    }

    @Override // O0.W
    public final long u() {
        long jY;
        boolean z7;
        f();
        if (this.f5101v0 || this.f5095p0 == 0) {
            return Long.MIN_VALUE;
        }
        if (z()) {
            return this.f5098s0;
        }
        if (this.f5085f0) {
            int length = this.f5081b0.length;
            jY = Long.MAX_VALUE;
            for (int i8 = 0; i8 < length; i8++) {
                K k8 = this.f5087h0;
                if (k8.f5055b[i8] && k8.f5056c[i8]) {
                    T t7 = this.f5081b0[i8];
                    synchronized (t7) {
                        z7 = t7.f5161w;
                    }
                    if (!z7) {
                        jY = Math.min(jY, this.f5081b0[i8].q());
                    }
                }
            }
        } else {
            jY = Long.MAX_VALUE;
        }
        if (jY == Long.MAX_VALUE) {
            jY = y(false);
        }
        return jY == Long.MIN_VALUE ? this.f5097r0 : jY;
    }

    @Override // O0.InterfaceC0298w
    public final void v(long j8, boolean z7) {
        if (this.f5086g0) {
            return;
        }
        f();
        if (z()) {
            return;
        }
        boolean[] zArr = this.f5087h0.f5056c;
        int length = this.f5081b0.length;
        for (int i8 = 0; i8 < length; i8++) {
            this.f5081b0[i8].j(j8, z7, zArr[i8]);
        }
    }

    public final int x() {
        int i8 = 0;
        for (T t7 : this.f5081b0) {
            i8 += t7.f5155q + t7.f5154p;
        }
        return i8;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0015  */
    public final long y(boolean z7) {
        long jMax = Long.MIN_VALUE;
        for (int i8 = 0; i8 < this.f5081b0.length; i8++) {
            if (z7) {
                jMax = Math.max(jMax, this.f5081b0[i8].q());
            } else {
                K k8 = this.f5087h0;
                k8.getClass();
                if (k8.f5056c[i8]) {
                    jMax = Math.max(jMax, this.f5081b0[i8].q());
                }
            }
        }
        return jMax;
    }

    public final boolean z() {
        return this.f5098s0 != -9223372036854775807L;
    }

    @Override // O0.W
    public final void w(long j8) {
    }
}
