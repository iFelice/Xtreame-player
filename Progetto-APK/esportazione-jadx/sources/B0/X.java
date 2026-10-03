package B0;

import C0.C0077b;
import C0.C0082g;
import C0.InterfaceC0076a;
import O0.AbstractC0277a;
import O0.C0278b;
import O0.C0300y;
import O0.InterfaceC0297v;
import O0.InterfaceC0298w;
import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.android.gms.internal.measurement.H1;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import p039f.RunnableC3004t;
import p094m0.C3121d;
import p094m0.C3136t;
import p117p0.C3171i;
import p117p0.InterfaceC3168f;
import p141s0.C3185j;

/* JADX INFO: loaded from: classes.dex */
public final class X implements Handler.Callback, InterfaceC0297v, R0.x, t0, InterfaceC0063n, x0, InterfaceC0047f, U0.B {

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public static final long f844L0 = p117p0.M.e0(10000);

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public static final /* synthetic */ int f845M0 = 0;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public W f846A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public long f847B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public long f848C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public int f849D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public boolean f850E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public C0072w f851F0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final F0[] f852G;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public long f853G0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final D0[] f854H;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public A f855H0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean[] f856I;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public long f857I0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final R0.w f858J;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public boolean f859J0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final R0.y f860K;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public float f861K0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final InterfaceC0040b0 f862L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final S0.c f863M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final p117p0.I f864N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final w0 f865O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Looper f866P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final p094m0.e0 f867Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final p094m0.d0 f868R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final long f869S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f870T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final C0065o f871U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final ArrayList f872V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final InterfaceC3168f f873W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final H f874X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final C0054i0 f875Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final u0 f876Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final C0057k f877a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final long f878b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final C0.I f879c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final InterfaceC0076a f880d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final p117p0.I f881e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final boolean f882f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final C0049g f883g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public I0 f884h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public H0 f885i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f886j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f887k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public W f888l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public v0 f889m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public U f890n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f891o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f892p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f893q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f894r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public long f895s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public boolean f896t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f897u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public boolean f898v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f899w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean f900x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public boolean f901y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f902z0;

    public X(Context context, AbstractC0051h[] abstractC0051hArr, AbstractC0051h[] abstractC0051hArr2, R0.w wVar, R0.y yVar, InterfaceC0040b0 interfaceC0040b0, S0.c cVar, int i8, boolean z7, InterfaceC0076a interfaceC0076a, I0 i9, C0057k c0057k, long j8, Looper looper, p117p0.G g8, H h8, C0.I i10, final M m7) {
        Looper looper2;
        A a8 = A.f679a;
        this.f857I0 = -9223372036854775807L;
        this.f874X = h8;
        this.f858J = wVar;
        this.f860K = yVar;
        this.f862L = interfaceC0040b0;
        this.f863M = cVar;
        this.f897u0 = i8;
        this.f898v0 = z7;
        this.f884h0 = i9;
        this.f877a0 = c0057k;
        this.f878b0 = j8;
        boolean z8 = false;
        this.f892p0 = false;
        this.f873W = g8;
        this.f879c0 = i10;
        this.f855H0 = a8;
        this.f880d0 = interfaceC0076a;
        this.f861K0 = 1.0f;
        this.f885i0 = H0.f720f;
        this.f853G0 = -9223372036854775807L;
        this.f895s0 = -9223372036854775807L;
        C0061m c0061m = (C0061m) interfaceC0040b0;
        this.f869S = c0061m.f1027h;
        this.f870T = c0061m.f1028i;
        p094m0.c0 c0Var = p094m0.f0.f26851a;
        v0 v0VarK = v0.k(yVar);
        this.f889m0 = v0VarK;
        this.f890n0 = new U(v0VarK, 0);
        this.f854H = new D0[abstractC0051hArr.length];
        this.f856I = new boolean[abstractC0051hArr.length];
        R0.q qVar = (R0.q) wVar;
        qVar.getClass();
        this.f852G = new F0[abstractC0051hArr.length];
        boolean z9 = false;
        for (int i11 = 0; i11 < abstractC0051hArr.length; i11++) {
            abstractC0051hArr[i11].init(i11, i10, g8);
            this.f854H[i11] = abstractC0051hArr[i11].getCapabilities();
            this.f854H[i11].setListener(qVar);
            AbstractC0051h abstractC0051h = abstractC0051hArr2[i11];
            if (abstractC0051h != null) {
                abstractC0051h.init(i11, i10, g8);
                z9 = true;
            }
            this.f852G[i11] = new F0(abstractC0051hArr[i11], abstractC0051hArr2[i11], i11);
        }
        this.f882f0 = z9;
        this.f871U = new C0065o(this, g8);
        this.f872V = new ArrayList();
        this.f867Q = new p094m0.e0();
        this.f868R = new p094m0.d0();
        H1.i(wVar.f6250a == null);
        wVar.f6250a = this;
        wVar.f6251b = cVar;
        this.f850E0 = true;
        p117p0.I iA = g8.a(looper, null);
        this.f881e0 = iA;
        this.f875Y = new C0054i0(interfaceC0076a, iA, new C0073x(this, 15));
        this.f876Z = new u0(this, interfaceC0076a, iA, i10);
        w0 w0Var = new w0(0);
        this.f865O = w0Var;
        synchronized (w0Var.f1121I) {
            try {
                if (((Looper) w0Var.f1122J) == null) {
                    if (w0Var.f1120H == 0 && ((HandlerThread) w0Var.f1123K) == null) {
                        z8 = true;
                    }
                    H1.i(z8);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    w0Var.f1123K = handlerThread;
                    handlerThread.start();
                    w0Var.f1122J = ((HandlerThread) w0Var.f1123K).getLooper();
                }
                w0Var.f1120H++;
                looper2 = (Looper) w0Var.f1122J;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f866P = looper2;
        p117p0.I iA2 = g8.a(looper2, this);
        this.f864N = iA2;
        this.f883g0 = new C0049g(context, looper2, this);
        iA2.a(35, new U0.B() { // from class: B0.Q
            @Override // U0.B
            public final void b(long j9, long j10, C3136t c3136t, MediaFormat mediaFormat) {
                X x7 = this.f822G;
                x7.getClass();
                m7.b(j9, j10, c3136t, mediaFormat);
                x7.b(j9, j10, c3136t, mediaFormat);
            }
        }).b();
    }

    public static Pair R(p094m0.f0 f0Var, W w7, boolean z7, int i8, boolean z8, p094m0.e0 e0Var, p094m0.d0 d0Var) {
        int iS;
        p094m0.f0 f0Var2 = w7.f841a;
        if (f0Var.q()) {
            return null;
        }
        p094m0.f0 f0Var3 = f0Var2.q() ? f0Var : f0Var2;
        try {
            Pair pairJ = f0Var3.j(e0Var, d0Var, w7.f842b, w7.f843c);
            if (f0Var.equals(f0Var3)) {
                return pairJ;
            }
            if (f0Var.b(pairJ.first) != -1) {
                return (f0Var3.h(pairJ.first, d0Var).f26830f && f0Var3.n(d0Var.f26827c, e0Var, 0L).f26847n == f0Var3.b(pairJ.first)) ? f0Var.j(e0Var, d0Var, f0Var.h(pairJ.first, d0Var).f26827c, w7.f843c) : pairJ;
            }
            if (z7 && (iS = S(e0Var, d0Var, i8, z8, pairJ.first, f0Var3, f0Var)) != -1) {
                return f0Var.j(e0Var, d0Var, iS, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public static int S(p094m0.e0 e0Var, p094m0.d0 d0Var, int i8, boolean z7, Object obj, p094m0.f0 f0Var, p094m0.f0 f0Var2) {
        Object obj2 = f0Var.n(f0Var.h(obj, d0Var).f26827c, e0Var, 0L).f26834a;
        for (int i9 = 0; i9 < f0Var2.p(); i9++) {
            if (f0Var2.n(i9, e0Var, 0L).f26834a.equals(obj2)) {
                return i9;
            }
        }
        int iB = f0Var.b(obj);
        int i10 = f0Var.i();
        int iD = iB;
        int iB2 = -1;
        for (int i11 = 0; i11 < i10 && iB2 == -1; i11++) {
            iD = f0Var.d(iD, d0Var, e0Var, i8, z7);
            if (iD == -1) {
                break;
            }
            iB2 = f0Var2.b(f0Var.m(iD));
        }
        if (iB2 == -1) {
            return -1;
        }
        return f0Var2.g(iB2, d0Var, false).f26827c;
    }

    public static boolean z(C0048f0 c0048f0) {
        if (c0048f0 == null) {
            return false;
        }
        try {
            InterfaceC0298w interfaceC0298w = c0048f0.f926a;
            if (c0048f0.f930e) {
                for (O0.U u7 : c0048f0.f928c) {
                    if (u7 != null) {
                        u7.b();
                    }
                }
            } else {
                interfaceC0298w.h();
            }
            return (!c0048f0.f930e ? 0L : interfaceC0298w.e()) != Long.MIN_VALUE;
        } catch (IOException unused) {
            return false;
        }
    }

    public final boolean A(int i8, C0300y c0300y) {
        C0054i0 c0054i0 = this.f875Y;
        C0048f0 c0048f0 = c0054i0.f986k;
        if (c0048f0 == null || !c0048f0.f932g.f950a.equals(c0300y)) {
            return false;
        }
        F0 f8 = this.f852G[i8];
        C0048f0 c0048f1 = c0054i0.f986k;
        int i9 = f8.f709d;
        return ((i9 == 2 || i9 == 4) && f8.d(c0048f1) == f8.f706a) || (f8.f709d == 3 && f8.d(c0048f1) == f8.f708c);
    }

    public final void A0(boolean z7, boolean z8) {
        long jElapsedRealtime;
        this.f894r0 = z7;
        if (!z7 || z8) {
            jElapsedRealtime = -9223372036854775807L;
        } else {
            ((p117p0.G) this.f873W).getClass();
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        this.f895s0 = jElapsedRealtime;
    }

    public final boolean B() {
        C0048f0 c0048f0 = this.f875Y.f984i;
        long j8 = c0048f0.f932g.f954e;
        return c0048f0.f930e && (j8 == -9223372036854775807L || this.f889m0.f1110s < j8 || !p0());
    }

    public final void C() {
        boolean zC;
        if (z(this.f875Y.f987l)) {
            C0048f0 c0048f0 = this.f875Y.f987l;
            long jN = n(!c0048f0.f930e ? 0L : c0048f0.f926a.e());
            if (c0048f0 != this.f875Y.f984i) {
                long j8 = c0048f0.f932g.f951b;
            }
            long j9 = q0(this.f889m0.f1092a, c0048f0.f932g.f950a) ? this.f877a0.f1006i : -9223372036854775807L;
            C0.I i8 = this.f879c0;
            p094m0.f0 f0Var = this.f889m0.f1092a;
            C0300y c0300y = c0048f0.f932g.f950a;
            float f8 = this.f871U.getPlaybackParameters().f26786a;
            boolean z7 = this.f889m0.f1103l;
            C0038a0 c0038a0 = new C0038a0(i8, jN, f8, this.f894r0, j9);
            zC = ((C0061m) this.f862L).c(c0038a0);
            C0048f0 c0048f1 = this.f875Y.f984i;
            if (!zC && c0048f1.f930e && jN < 500000 && (this.f869S > 0 || this.f870T)) {
                c0048f1.f926a.v(this.f889m0.f1110s, false);
                zC = ((C0061m) this.f862L).c(c0038a0);
            }
        } else {
            zC = false;
        }
        this.f896t0 = zC;
        if (zC) {
            C0048f0 c0048f2 = this.f875Y.f987l;
            c0048f2.getClass();
            C0042c0 c0042c0 = new C0042c0();
            c0042c0.f917a = this.f847B0 - c0048f2.f941p;
            float f9 = this.f871U.getPlaybackParameters().f26786a;
            H1.d(f9 > 0.0f || f9 == -3.4028235E38f);
            c0042c0.f918b = f9;
            long j10 = this.f895s0;
            H1.d(j10 >= 0 || j10 == -9223372036854775807L);
            c0042c0.f919c = j10;
            C0044d0 c0044d0 = new C0044d0(c0042c0);
            H1.i(c0048f2.f938m == null);
            c0048f2.f926a.g(c0044d0);
        }
        u0();
    }

    public final void D() {
        C0054i0 c0054i0 = this.f875Y;
        c0054i0.k();
        C0048f0 c0048f0 = c0054i0.f988m;
        if (c0048f0 != null) {
            if (!c0048f0.f929d || c0048f0.f930e) {
                InterfaceC0298w interfaceC0298w = c0048f0.f926a;
                if (interfaceC0298w.k()) {
                    return;
                }
                p094m0.f0 f0Var = this.f889m0.f1092a;
                C0300y c0300y = c0048f0.f932g.f950a;
                if (c0048f0.f930e) {
                    interfaceC0298w.u();
                }
                Iterator it = ((C0061m) this.f862L).f1029j.values().iterator();
                while (it.hasNext()) {
                    if (((C0059l) it.next()).f1014a) {
                        return;
                    }
                }
                if (!c0048f0.f929d) {
                    long j8 = c0048f0.f932g.f951b;
                    c0048f0.f929d = true;
                    interfaceC0298w.m(this, j8);
                    return;
                }
                C0042c0 c0042c0 = new C0042c0();
                c0042c0.f917a = this.f847B0 - c0048f0.f941p;
                float f8 = this.f871U.getPlaybackParameters().f26786a;
                H1.d(f8 > 0.0f || f8 == -3.4028235E38f);
                c0042c0.f918b = f8;
                long j9 = this.f895s0;
                H1.d(j9 >= 0 || j9 == -9223372036854775807L);
                c0042c0.f919c = j9;
                C0044d0 c0044d0 = new C0044d0(c0042c0);
                H1.i(c0048f0.f938m == null);
                interfaceC0298w.g(c0044d0);
            }
        }
    }

    public final void E() {
        U u7 = this.f890n0;
        v0 v0Var = this.f889m0;
        boolean z7 = u7.f832d | (((v0) u7.f834f) != v0Var);
        u7.f832d = z7;
        u7.f834f = v0Var;
        if (z7) {
            O o4 = this.f874X.f719G;
            o4.f781P.c(new RunnableC3004t(16, o4, u7));
            this.f890n0 = new U(this.f889m0, 0);
        }
    }

    public final void F(int i8) {
        F0 f8 = this.f852G[i8];
        try {
            C0048f0 c0048f0 = this.f875Y.f984i;
            c0048f0.getClass();
            AbstractC0051h abstractC0051hD = f8.d(c0048f0);
            abstractC0051hD.getClass();
            abstractC0051hD.maybeThrowStreamError();
        } catch (IOException | RuntimeException e8) {
            int trackType = f8.f706a.getTrackType();
            if (trackType != 3 && trackType != 5) {
                throw e8;
            }
            R0.y yVar = this.f875Y.f984i.f940o;
            p117p0.x.d("ExoPlayerImplInternal", "Disabling track due to error: " + C3136t.d(((R0.c) yVar.f6254c[i8]).l()), e8);
            R0.y yVar2 = new R0.y((E0[]) yVar.f6253b.clone(), (R0.t[]) yVar.f6254c.clone(), yVar.f6255d, yVar.f6256e);
            yVar2.f6253b[i8] = null;
            yVar2.f6254c[i8] = null;
            g(i8);
            C0048f0 c0048f1 = this.f875Y.f984i;
            c0048f1.a(yVar2, this.f889m0.f1110s, false, new boolean[c0048f1.f935j.length]);
        }
    }

    public final void G(final int i8, final boolean z7) {
        boolean[] zArr = this.f856I;
        if (zArr[i8] != z7) {
            zArr[i8] = z7;
            this.f881e0.c(new Runnable() { // from class: B0.P
                @Override // java.lang.Runnable
                public final void run() {
                    X x7 = this.f819G;
                    F0[] f0Arr = x7.f852G;
                    int i9 = i8;
                    int trackType = f0Arr[i9].f706a.getTrackType();
                    C0.A a8 = (C0.A) x7.f880d0;
                    C0077b c0077bT = a8.T();
                    a8.U(c0077bT, 1033, new C0082g(i9, trackType, c0077bT, z7));
                }
            });
        }
    }

    public final void H() {
        v(this.f876Z.b(), true);
    }

    public final void I() {
        this.f890n0.d(1);
        throw null;
    }

    public final void J() {
        this.f890n0.d(1);
        int i8 = 0;
        N(false, false, false, true);
        C0061m c0061m = (C0061m) this.f862L;
        c0061m.getClass();
        long id = Thread.currentThread().getId();
        long j8 = c0061m.f1030k;
        H1.h("Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).", j8 == -1 || j8 == id);
        c0061m.f1030k = id;
        HashMap map = c0061m.f1029j;
        C0.I i9 = this.f879c0;
        if (!map.containsKey(i9)) {
            map.put(i9, new C0059l());
        }
        C0059l c0059l = (C0059l) map.get(i9);
        c0059l.getClass();
        int i10 = c0061m.f1025f;
        if (i10 == -1) {
            i10 = 13107200;
        }
        c0059l.f1015b = i10;
        c0059l.f1014a = false;
        l0(this.f889m0.f1092a.q() ? 4 : 2);
        v0 v0Var = this.f889m0;
        boolean z7 = v0Var.f1103l;
        x0(this.f883g0.d(v0Var.f1096e, z7), v0Var.f1105n, v0Var.f1104m, z7);
        S0.f fVar = (S0.f) this.f863M;
        fVar.getClass();
        u0 u0Var = this.f876Z;
        H1.i(!u0Var.f1088k);
        u0Var.f1089l = fVar;
        while (true) {
            ArrayList arrayList = u0Var.f1079b;
            if (i8 >= arrayList.size()) {
                u0Var.f1088k = true;
                this.f864N.e(2);
                return;
            } else {
                s0 s0Var = (s0) arrayList.get(i8);
                u0Var.e(s0Var);
                u0Var.f1084g.add(s0Var);
                i8++;
            }
        }
    }

    public final void K(C3171i c3171i) {
        w0 w0Var = this.f865O;
        p117p0.I i8 = this.f864N;
        try {
            N(true, false, true, false);
            int i9 = 0;
            while (true) {
                F0[] f0Arr = this.f852G;
                if (i9 >= f0Arr.length) {
                    break;
                }
                this.f854H[i9].clearListener();
                F0 f8 = f0Arr[i9];
                f8.f706a.release();
                f8.f710e = false;
                AbstractC0051h abstractC0051h = f8.f708c;
                if (abstractC0051h != null) {
                    abstractC0051h.release();
                    f8.f711f = false;
                }
                i9++;
            }
            InterfaceC0040b0 interfaceC0040b0 = this.f862L;
            C0061m c0061m = (C0061m) interfaceC0040b0;
            if (c0061m.f1029j.remove(this.f879c0) != null) {
                c0061m.d();
            }
            if (c0061m.f1029j.isEmpty()) {
                c0061m.f1030k = -1L;
            }
            C0049g c0049g = this.f883g0;
            c0049g.f944c = null;
            c0049g.a();
            c0049g.c(0);
            this.f858J.a();
            l0(1);
        } finally {
            i8.f28043a.removeCallbacksAndMessages(null);
            w0Var.e();
            c3171i.f();
        }
    }

    public final void L(int i8, int i9, O0.X x7) {
        this.f890n0.d(1);
        u0 u0Var = this.f876Z;
        u0Var.getClass();
        H1.d(i8 >= 0 && i8 <= i9 && i9 <= u0Var.f1079b.size());
        u0Var.f1087j = x7;
        u0Var.g(i8, i9);
        v(u0Var.b(), false);
    }

    public final void M() {
        boolean z7;
        float f8 = this.f871U.getPlaybackParameters().f26786a;
        C0054i0 c0054i0 = this.f875Y;
        C0048f0 c0048f0 = c0054i0.f984i;
        C0048f0 c0048f1 = c0054i0.f985j;
        R0.y yVar = null;
        C0048f0 c0048f2 = c0048f0;
        boolean z8 = true;
        while (c0048f2 != null && c0048f2.f930e) {
            R0.y yVarJ = c0048f2.j(f8, this.f889m0.f1092a);
            R0.y yVar2 = c0048f2 == this.f875Y.f984i ? yVarJ : yVar;
            R0.y yVar3 = c0048f2.f940o;
            if (yVar3 != null) {
                int length = yVar3.f6254c.length;
                R0.t[] tVarArr = yVarJ.f6254c;
                if (length == tVarArr.length) {
                    int i8 = 0;
                    while (true) {
                        if (i8 >= tVarArr.length) {
                            if (c0048f2 == c0048f1) {
                                z8 = false;
                            }
                            c0048f2 = c0048f2.f938m;
                            yVar = yVar2;
                        } else if (yVarJ.a(yVar3, i8)) {
                            i8++;
                        }
                    }
                }
            }
            if (z8) {
                C0054i0 c0054i1 = this.f875Y;
                C0048f0 c0048f3 = c0054i1.f984i;
                boolean z9 = (c0054i1.n(c0048f3) & 1) != 0;
                boolean[] zArr = new boolean[this.f852G.length];
                yVar2.getClass();
                long jA = c0048f3.a(yVar2, this.f889m0.f1110s, z9, zArr);
                v0 v0Var = this.f889m0;
                boolean z10 = (v0Var.f1096e == 4 || jA == v0Var.f1110s) ? false : true;
                v0 v0Var2 = this.f889m0;
                this.f889m0 = y(v0Var2.f1093b, jA, v0Var2.f1094c, v0Var2.f1095d, z10, 5);
                if (z10) {
                    P(jA);
                }
                f();
                boolean[] zArr2 = new boolean[this.f852G.length];
                int i9 = 0;
                while (true) {
                    F0[] f0Arr = this.f852G;
                    if (i9 >= f0Arr.length) {
                        break;
                    }
                    int iB = f0Arr[i9].b();
                    zArr2[i9] = this.f852G[i9].g();
                    F0 f9 = this.f852G[i9];
                    O0.U u7 = c0048f3.f928c[i9];
                    C0065o c0065o = this.f871U;
                    long j8 = this.f847B0;
                    boolean z11 = zArr[i9];
                    AbstractC0051h abstractC0051h = f9.f706a;
                    if (F0.h(abstractC0051h)) {
                        if (u7 != abstractC0051h.getStream()) {
                            f9.a(abstractC0051h, c0065o);
                        } else if (z11) {
                            abstractC0051h.resetPosition(j8);
                        }
                    }
                    AbstractC0051h abstractC0051h2 = f9.f708c;
                    if (abstractC0051h2 != null && F0.h(abstractC0051h2)) {
                        if (u7 != abstractC0051h2.getStream()) {
                            f9.a(abstractC0051h2, c0065o);
                        } else if (z11) {
                            abstractC0051h2.resetPosition(j8);
                        }
                    }
                    if (iB - this.f852G[i9].b() > 0) {
                        G(i9, false);
                    }
                    this.f902z0 -= iB - this.f852G[i9].b();
                    i9++;
                }
                j(zArr2, this.f847B0);
                z7 = true;
                c0048f3.f933h = true;
            } else {
                this.f875Y.n(c0048f2);
                if (c0048f2.f930e) {
                    long jMax = Math.max(c0048f2.f932g.f951b, this.f847B0 - c0048f2.f941p);
                    if (this.f882f0 && d() && this.f875Y.f986k == c0048f2) {
                        f();
                    }
                    c0048f2.a(yVarJ, jMax, false, new boolean[c0048f2.f935j.length]);
                }
                z7 = true;
            }
            u(z7);
            if (this.f889m0.f1096e != 4) {
                C();
                y0();
                this.f864N.e(2);
                return;
            }
            return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0094  */
    /* JADX WARN: Code duplicated, block: B:57:0x012d  */
    /* JADX WARN: Code duplicated, block: B:58:0x012f  */
    /* JADX WARN: Code duplicated, block: B:60:0x0134  */
    /* JADX WARN: Code duplicated, block: B:62:0x0139  */
    /* JADX WARN: Code duplicated, block: B:64:0x013e  */
    /* JADX WARN: Code duplicated, block: B:66:0x0143  */
    /* JADX WARN: Code duplicated, block: B:68:0x0148  */
    /* JADX WARN: Code duplicated, block: B:70:0x014f  */
    /* JADX WARN: Code duplicated, block: B:73:0x0177  */
    /* JADX WARN: Code duplicated, block: B:75:0x0181  */
    /* JADX WARN: Code duplicated, block: B:78:0x018f A[LOOP:3: B:76:0x0187->B:78:0x018f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x01b6  */
    public final void N(boolean z7, boolean z8, boolean z9, boolean z10) {
        long j8;
        long jLongValue;
        long j9;
        boolean z11;
        p094m0.f0 b8;
        C0300y c0300y;
        v0 v0Var;
        C0072w c0072w;
        O0.Z z12;
        R0.y yVar;
        List list;
        C0054i0 c0054i0;
        int i8;
        this.f864N.d(2);
        this.f887k0 = false;
        this.f888l0 = null;
        this.f851F0 = null;
        A0(false, true);
        C0065o c0065o = this.f871U;
        c0065o.f1044L = false;
        J0 j10 = c0065o.f1039G;
        if (j10.f736H) {
            j10.a(j10.getPositionUs());
            j10.f736H = false;
        }
        this.f847B0 = 1000000000000L;
        for (int i9 = 0; i9 < this.f852G.length; i9++) {
            try {
                g(i9);
            } catch (C0072w | RuntimeException e8) {
                p117p0.x.d("ExoPlayerImplInternal", "Disable failed.", e8);
            }
        }
        this.f857I0 = -9223372036854775807L;
        if (z7) {
            for (F0 f8 : this.f852G) {
                try {
                    f8.k();
                } catch (RuntimeException e9) {
                    p117p0.x.d("ExoPlayerImplInternal", "Reset failed.", e9);
                }
            }
        }
        this.f902z0 = 0;
        v0 v0Var2 = this.f889m0;
        C0300y c0300y2 = v0Var2.f1093b;
        long j11 = v0Var2.f1110s;
        if (this.f889m0.f1093b.b()) {
            j8 = this.f889m0.f1094c;
        } else {
            v0 v0Var3 = this.f889m0;
            p094m0.d0 d0Var = this.f868R;
            C0300y c0300y3 = v0Var3.f1093b;
            p094m0.f0 f0Var = v0Var3.f1092a;
            if (f0Var.q() || f0Var.h(c0300y3.f5257a, d0Var).f26830f) {
                j8 = this.f889m0.f1094c;
            } else {
                j8 = this.f889m0.f1110s;
            }
        }
        if (z8) {
            this.f846A0 = null;
            Pair pairM = m(this.f889m0.f1092a);
            c0300y2 = (C0300y) pairM.first;
            jLongValue = ((Long) pairM.second).longValue();
            z11 = c0300y2.equals(this.f889m0.f1093b) ? false : true;
            j9 = -9223372036854775807L;
        } else {
            jLongValue = j11;
            j9 = j8;
            z11 = false;
        }
        this.f875Y.b();
        this.f896t0 = false;
        p094m0.f0 f0Var2 = this.f889m0.f1092a;
        if (z9 && (f0Var2 instanceof B0)) {
            B0 b9 = (B0) f0Var2;
            O0.X x7 = this.f876Z.f1087j;
            p094m0.f0[] f0VarArr = b9.f691h;
            p094m0.f0[] f0VarArr2 = new p094m0.f0[f0VarArr.length];
            for (int i10 = 0; i10 < f0VarArr.length; i10++) {
                f0VarArr2[i10] = new A0(f0VarArr[i10]);
            }
            b8 = new B0(f0VarArr2, b9.f692i, x7);
            if (c0300y2.f5258b != -1) {
                b8.h(c0300y2.f5257a, this.f868R);
                int i11 = this.f868R.f26827c;
                p094m0.e0 e0Var = this.f867Q;
                b8.n(i11, e0Var, 0L);
                if (e0Var.a()) {
                    c0300y = new C0300y(c0300y2.f5257a, c0300y2.f5260d);
                }
            }
            v0Var = this.f889m0;
            int i12 = v0Var.f1096e;
            if (z10) {
                c0072w = null;
            } else {
                c0072w = v0Var.f1097f;
            }
            if (z11) {
                z12 = O0.Z.f5181d;
            } else {
                z12 = v0Var.f1099h;
            }
            O0.Z z13 = z12;
            if (z11) {
                yVar = this.f860K;
            } else {
                yVar = v0Var.f1100i;
            }
            R0.y yVar2 = yVar;
            if (z11) {
                z4.F f9 = z4.H.f31804H;
                list = z4.d0.f31844K;
            } else {
                list = v0Var.f1101j;
            }
            this.f889m0 = new v0(b8, c0300y, j9, jLongValue, i12, c0072w, false, z13, yVar2, list, c0300y, v0Var.f1103l, v0Var.f1104m, v0Var.f1105n, v0Var.f1106o, jLongValue, 0L, jLongValue, 0L, false);
            if (z9) {
                c0054i0 = this.f875Y;
                if (!c0054i0.f992q.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (i8 = 0; i8 < c0054i0.f992q.size(); i8++) {
                        ((C0048f0) c0054i0.f992q.get(i8)).i();
                    }
                    c0054i0.f992q = arrayList;
                    c0054i0.f988m = null;
                    c0054i0.k();
                }
                u0 u0Var = this.f876Z;
                HashMap map = u0Var.f1083f;
                for (r0 r0Var : map.values()) {
                    try {
                        r0Var.f1066a.o(r0Var.f1067b);
                    } catch (RuntimeException e10) {
                        p117p0.x.d("MediaSourceList", "Failed to release child source.", e10);
                    }
                    AbstractC0277a abstractC0277a = r0Var.f1066a;
                    q0 q0Var = r0Var.f1068c;
                    abstractC0277a.r(q0Var);
                    r0Var.f1066a.q(q0Var);
                }
                map.clear();
                u0Var.f1084g.clear();
                u0Var.f1088k = false;
            }
        }
        b8 = f0Var2;
        c0300y = c0300y2;
        v0Var = this.f889m0;
        int i13 = v0Var.f1096e;
        if (z10) {
            c0072w = null;
        } else {
            c0072w = v0Var.f1097f;
        }
        if (z11) {
            z12 = O0.Z.f5181d;
        } else {
            z12 = v0Var.f1099h;
        }
        O0.Z z14 = z12;
        if (z11) {
            yVar = this.f860K;
        } else {
            yVar = v0Var.f1100i;
        }
        R0.y yVar3 = yVar;
        if (z11) {
            z4.F f10 = z4.H.f31804H;
            list = z4.d0.f31844K;
        } else {
            list = v0Var.f1101j;
        }
        this.f889m0 = new v0(b8, c0300y, j9, jLongValue, i13, c0072w, false, z14, yVar3, list, c0300y, v0Var.f1103l, v0Var.f1104m, v0Var.f1105n, v0Var.f1106o, jLongValue, 0L, jLongValue, 0L, false);
        if (z9) {
            c0054i0 = this.f875Y;
            if (!c0054i0.f992q.isEmpty()) {
                ArrayList arrayList2 = new ArrayList();
                while (i8 < c0054i0.f992q.size()) {
                    ((C0048f0) c0054i0.f992q.get(i8)).i();
                }
                c0054i0.f992q = arrayList2;
                c0054i0.f988m = null;
                c0054i0.k();
            }
            u0 u0Var2 = this.f876Z;
            HashMap map2 = u0Var2.f1083f;
            while (r5.hasNext()) {
                r0Var.f1066a.o(r0Var.f1067b);
                AbstractC0277a abstractC0277a2 = r0Var.f1066a;
                q0 q0Var2 = r0Var.f1068c;
                abstractC0277a2.r(q0Var2);
                r0Var.f1066a.q(q0Var2);
            }
            map2.clear();
            u0Var2.f1084g.clear();
            u0Var2.f1088k = false;
        }
    }

    public final void O() {
        C0048f0 c0048f0 = this.f875Y.f984i;
        this.f893q0 = c0048f0 != null && c0048f0.f932g.f958i && this.f892p0;
    }

    public final void P(long j8) {
        C0048f0 c0048f0 = this.f875Y.f984i;
        long j9 = j8 + (c0048f0 == null ? 1000000000000L : c0048f0.f941p);
        this.f847B0 = j9;
        this.f871U.f1039G.a(j9);
        for (F0 f8 : this.f852G) {
            long j10 = this.f847B0;
            AbstractC0051h abstractC0051hD = f8.d(c0048f0);
            if (abstractC0051hD != null) {
                abstractC0051hD.resetPosition(j10);
            }
        }
        for (C0048f0 c0048f1 = r0.f984i; c0048f1 != null; c0048f1 = c0048f1.f938m) {
            for (R0.t tVar : c0048f1.f940o.f6254c) {
            }
        }
    }

    public final void Q(p094m0.f0 f0Var, p094m0.f0 f0Var2) {
        if (f0Var.q() && f0Var2.q()) {
            return;
        }
        ArrayList arrayList = this.f872V;
        int size = arrayList.size() - 1;
        if (size < 0) {
            Collections.sort(arrayList);
        } else {
            A0.O.I(arrayList.get(size));
            throw null;
        }
    }

    public final void T(long j8) {
        boolean z7 = this.f886j0 && this.f885i0.f724d;
        long jMin = 1000;
        long j9 = f844L0;
        if (z7) {
            jMin = this.f889m0.f1096e != 3 ? j9 : 1000L;
            for (F0 f8 : this.f852G) {
                long j10 = this.f847B0;
                long j11 = this.f848C0;
                AbstractC0051h abstractC0051h = f8.f706a;
                long durationToProgressUs = F0.h(abstractC0051h) ? abstractC0051h.getDurationToProgressUs(j10, j11) : Long.MAX_VALUE;
                AbstractC0051h abstractC0051h2 = f8.f708c;
                if (abstractC0051h2 != null && abstractC0051h2.getState() != 0) {
                    durationToProgressUs = Math.min(durationToProgressUs, abstractC0051h2.getDurationToProgressUs(j10, j11));
                }
                jMin = Math.min(jMin, p117p0.M.e0(durationToProgressUs));
            }
            if (this.f889m0.m()) {
                C0048f0 c0048f0 = this.f875Y.f984i;
                C0048f0 c0048f1 = c0048f0 != null ? c0048f0.f938m : null;
                if (c0048f1 != null) {
                    if ((p117p0.M.R(jMin) * this.f889m0.f1106o.f26786a) + this.f847B0 >= c0048f1.e()) {
                        jMin = Math.min(jMin, j9);
                    }
                }
            }
        } else if (this.f889m0.f1096e != 3 || p0()) {
            jMin = j9;
        }
        this.f864N.f28043a.sendEmptyMessageAtTime(2, j8 + jMin);
    }

    public final void U(boolean z7) {
        C0300y c0300y = this.f875Y.f984i.f932g.f950a;
        long jW = W(c0300y, this.f889m0.f1110s, true, false);
        if (jW != this.f889m0.f1110s) {
            v0 v0Var = this.f889m0;
            this.f889m0 = y(c0300y, jW, v0Var.f1094c, v0Var.f1095d, z7, 5);
        }
    }

    public final void V(W w7, boolean z7) throws Throwable {
        long j8;
        boolean z8;
        long j9;
        C0300y c0300y;
        long j10;
        long j11;
        long j12;
        long j13;
        long jA;
        v0 v0Var;
        int i8;
        this.f890n0.d(z7 ? 1 : 0);
        if (this.f887k0) {
            this.f888l0 = w7;
            return;
        }
        Pair pairR = R(this.f889m0.f1092a, w7, true, this.f897u0, this.f898v0, this.f867Q, this.f868R);
        if (pairR == null) {
            Pair pairM = m(this.f889m0.f1092a);
            c0300y = (C0300y) pairM.first;
            long jLongValue = ((Long) pairM.second).longValue();
            z8 = !this.f889m0.f1092a.q();
            j9 = jLongValue;
            j8 = -9223372036854775807L;
        } else {
            Object obj = pairR.first;
            long jLongValue2 = ((Long) pairR.second).longValue();
            j8 = w7.f843c == -9223372036854775807L ? -9223372036854775807L : jLongValue2;
            C0300y c0300yP = this.f875Y.p(this.f889m0.f1092a, obj, jLongValue2);
            if (c0300yP.b()) {
                this.f889m0.f1092a.h(c0300yP.f5257a, this.f868R);
                if (this.f868R.f(c0300yP.f5258b) == c0300yP.f5259c) {
                    this.f868R.f26831g.getClass();
                }
                j9 = 0;
                z8 = true;
            } else {
                z8 = w7.f843c == -9223372036854775807L;
                j9 = jLongValue2;
            }
            c0300y = c0300yP;
        }
        try {
            try {
                if (!this.f889m0.f1092a.q()) {
                    if (pairR == null) {
                        if (this.f889m0.f1096e != 1) {
                            l0(4);
                        }
                        N(false, true, false, true);
                    } else {
                        if (c0300y.equals(this.f889m0.f1093b)) {
                            C0048f0 c0048f0 = this.f875Y.f984i;
                            if (c0048f0 == null || !c0048f0.f930e || j9 == 0) {
                                jA = j9;
                            } else {
                                InterfaceC0298w interfaceC0298w = c0048f0.f926a;
                                long j14 = this.f867Q.f26846m;
                                if (this.f886j0 && j14 != -9223372036854775807L) {
                                    this.f885i0.getClass();
                                }
                                jA = interfaceC0298w.a(j9, this.f884h0);
                            }
                            if (p117p0.M.e0(jA) == p117p0.M.e0(this.f889m0.f1110s) && ((i8 = (v0Var = this.f889m0).f1096e) == 2 || i8 == 3)) {
                                long j15 = v0Var.f1110s;
                                this.f889m0 = y(c0300y, j15, j8, j15, z8, 2);
                                return;
                            }
                            j12 = jA;
                        } else {
                            j12 = j9;
                        }
                        this.f887k0 = this.f886j0;
                        boolean z9 = this.f889m0.f1096e == 4;
                        C0054i0 c0054i0 = this.f875Y;
                        j10 = j9;
                        try {
                            long jW = W(c0300y, j12, c0054i0.f984i != c0054i0.f985j, z9);
                            boolean z10 = z8 | (j10 != jW);
                            try {
                                v0 v0Var2 = this.f889m0;
                                p094m0.f0 f0Var = v0Var2.f1092a;
                                z0(f0Var, c0300y, f0Var, v0Var2.f1093b, j8, true);
                                z8 = z10;
                                j13 = jW;
                            } catch (Throwable th) {
                                th = th;
                                z8 = z10;
                                j11 = jW;
                                this.f889m0 = y(c0300y, j11, j8, j11, z8, 2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            j11 = j10;
                            this.f889m0 = y(c0300y, j11, j8, j11, z8, 2);
                            throw th;
                        }
                    }
                    this.f889m0 = y(c0300y, j13, j8, j13, z8, 2);
                }
                this.f846A0 = w7;
                j13 = j9;
                this.f889m0 = y(c0300y, j13, j8, j13, z8, 2);
            } catch (Throwable th3) {
                th = th3;
                j11 = j9;
            }
        } catch (Throwable th4) {
            th = th4;
            j10 = j9;
        }
    }

    public final long W(C0300y c0300y, long j8, boolean z7, boolean z8) {
        F0[] f0Arr;
        t0();
        A0(false, true);
        if (z8 || this.f889m0.f1096e == 3) {
            l0(2);
        }
        C0054i0 c0054i0 = this.f875Y;
        C0048f0 c0048f0 = c0054i0.f984i;
        C0048f0 c0048f1 = c0048f0;
        while (c0048f1 != null && !c0300y.equals(c0048f1.f932g.f950a)) {
            c0048f1 = c0048f1.f938m;
        }
        if (z7 || c0048f0 != c0048f1 || (c0048f1 != null && c0048f1.f941p + j8 < 0)) {
            int i8 = 0;
            while (true) {
                f0Arr = this.f852G;
                if (i8 >= f0Arr.length) {
                    break;
                }
                g(i8);
                i8++;
            }
            this.f857I0 = -9223372036854775807L;
            if (c0048f1 != null) {
                while (c0054i0.f984i != c0048f1) {
                    c0054i0.a();
                }
                c0054i0.n(c0048f1);
                c0048f1.f941p = 1000000000000L;
                j(new boolean[f0Arr.length], c0054i0.f985j.e());
                c0048f1.f933h = true;
            }
        }
        f();
        if (c0048f1 != null) {
            c0054i0.n(c0048f1);
            if (!c0048f1.f930e) {
                c0048f1.f932g = c0048f1.f932g.b(j8);
            } else if (c0048f1.f931f) {
                InterfaceC0298w interfaceC0298w = c0048f1.f926a;
                j8 = interfaceC0298w.i(j8);
                interfaceC0298w.v(j8 - this.f869S, this.f870T);
            }
            P(j8);
            C();
        } else {
            c0054i0.b();
            P(j8);
        }
        u(false);
        this.f864N.e(2);
        return j8;
    }

    public final void X(z0 z0Var) {
        z0Var.getClass();
        Looper looper = z0Var.f1155e;
        Looper looper2 = this.f866P;
        p117p0.I i8 = this.f864N;
        if (looper != looper2) {
            i8.a(15, z0Var).b();
            return;
        }
        synchronized (z0Var) {
        }
        try {
            z0Var.f1151a.handleMessage(z0Var.f1153c, z0Var.f1154d);
            z0Var.a(true);
            int i9 = this.f889m0.f1096e;
            if (i9 == 3 || i9 == 2) {
                i8.e(2);
            }
        } catch (Throwable th) {
            z0Var.a(true);
            throw th;
        }
    }

    public final void Y(z0 z0Var) {
        Looper looper = z0Var.f1155e;
        if (looper.getThread().isAlive()) {
            ((p117p0.G) this.f873W).a(looper, null).c(new RunnableC3004t(17, this, z0Var));
        } else {
            p117p0.x.f("TAG", "Trying to send message on a dead thread.");
            z0Var.a(false);
        }
    }

    public final void Z(C3121d c3121d, boolean z7) {
        R0.q qVar = (R0.q) this.f858J;
        if (!qVar.f6239i.equals(c3121d)) {
            qVar.f6239i = c3121d;
            qVar.i();
        }
        if (!z7) {
            c3121d = null;
        }
        C0049g c0049g = this.f883g0;
        if (!Objects.equals(c0049g.f945d, c3121d)) {
            c0049g.f945d = c3121d;
            int i8 = c3121d == null ? 0 : 1;
            c0049g.f947f = i8;
            H1.c("Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.", i8 == 1 || i8 == 0);
        }
        v0 v0Var = this.f889m0;
        boolean z8 = v0Var.f1103l;
        x0(c0049g.d(v0Var.f1096e, z8), v0Var.f1105n, v0Var.f1104m, z8);
    }

    public final void a(T t7, int i8) {
        this.f890n0.d(1);
        u0 u0Var = this.f876Z;
        if (i8 == -1) {
            i8 = u0Var.f1079b.size();
        }
        v(u0Var.a(i8, t7.f825a, t7.f826b), false);
    }

    public final void a0(boolean z7, C3171i c3171i) {
        if (this.f899w0 != z7) {
            this.f899w0 = z7;
            if (!z7) {
                for (F0 f8 : this.f852G) {
                    f8.k();
                }
            }
        }
        if (c3171i != null) {
            c3171i.f();
        }
    }

    @Override // U0.B
    public final void b(long j8, long j9, C3136t c3136t, MediaFormat mediaFormat) {
        if (this.f887k0) {
            p117p0.I i8 = this.f864N;
            i8.getClass();
            p117p0.H hB = p117p0.I.b();
            hB.f28041a = i8.f28043a.obtainMessage(37);
            hB.b();
        }
    }

    public final void b0(T t7) {
        this.f890n0.d(1);
        int i8 = t7.f827c;
        O0.X x7 = t7.f826b;
        List list = t7.f825a;
        if (i8 != -1) {
            this.f846A0 = new W(new B0(list, x7), t7.f827c, t7.f828d);
        }
        u0 u0Var = this.f876Z;
        ArrayList arrayList = u0Var.f1079b;
        u0Var.g(0, arrayList.size());
        v(u0Var.a(arrayList.size(), list, x7), false);
    }

    public final void c() {
        for (F0 f8 : this.f852G) {
            H0 h8 = this.f886j0 ? this.f885i0 : null;
            f8.f706a.handleMessage(18, h8);
            AbstractC0051h abstractC0051h = f8.f708c;
            if (abstractC0051h != null) {
                abstractC0051h.handleMessage(18, h8);
            }
        }
    }

    public final void c0(boolean z7) {
        this.f892p0 = z7;
        O();
        if (this.f893q0) {
            C0054i0 c0054i0 = this.f875Y;
            if (c0054i0.f985j != c0054i0.f984i) {
                U(true);
                u(false);
            }
        }
    }

    public final boolean d() {
        if (!this.f882f0) {
            return false;
        }
        for (F0 f8 : this.f852G) {
            if (f8.f()) {
                return true;
            }
        }
        return false;
    }

    public final void d0(p094m0.S s7) {
        this.f864N.d(16);
        C0065o c0065o = this.f871U;
        c0065o.setPlaybackParameters(s7);
        p094m0.S playbackParameters = c0065o.getPlaybackParameters();
        x(playbackParameters, playbackParameters.f26786a, true, true);
    }

    public final void e() {
        M();
        U(true);
    }

    public final void e0(A a8) {
        this.f855H0 = a8;
        p094m0.f0 f0Var = this.f889m0.f1092a;
        C0054i0 c0054i0 = this.f875Y;
        c0054i0.getClass();
        a8.getClass();
        if (c0054i0.f992q.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < c0054i0.f992q.size(); i8++) {
            ((C0048f0) c0054i0.f992q.get(i8)).i();
        }
        c0054i0.f992q = arrayList;
        c0054i0.f988m = null;
        c0054i0.k();
    }

    public final void f() {
        AbstractC0051h abstractC0051h;
        if (this.f882f0 && d()) {
            for (F0 f8 : this.f852G) {
                int iB = f8.b();
                if (f8.f()) {
                    int i8 = f8.f709d;
                    boolean z7 = i8 == 4 || i8 == 2;
                    int i9 = i8 != 4 ? 0 : 1;
                    if (z7) {
                        abstractC0051h = f8.f706a;
                    } else {
                        abstractC0051h = f8.f708c;
                        abstractC0051h.getClass();
                    }
                    f8.a(abstractC0051h, this.f871U);
                    f8.i(z7);
                    f8.f709d = i9;
                }
                this.f902z0 -= iB - f8.b();
            }
            this.f857I0 = -9223372036854775807L;
        }
    }

    public final void f0(int i8) {
        this.f897u0 = i8;
        p094m0.f0 f0Var = this.f889m0.f1092a;
        C0054i0 c0054i0 = this.f875Y;
        c0054i0.f982g = i8;
        int iR = c0054i0.r(f0Var);
        if ((iR & 1) != 0) {
            U(true);
        } else if ((iR & 2) != 0) {
            f();
        }
        u(false);
    }

    public final void g(int i8) {
        F0[] f0Arr = this.f852G;
        int iB = f0Arr[i8].b();
        F0 f8 = f0Arr[i8];
        AbstractC0051h abstractC0051h = f8.f706a;
        C0065o c0065o = this.f871U;
        f8.a(abstractC0051h, c0065o);
        AbstractC0051h abstractC0051h2 = f8.f708c;
        if (abstractC0051h2 != null) {
            boolean z7 = (abstractC0051h2.getState() != 0) && f8.f709d != 3;
            f8.a(abstractC0051h2, c0065o);
            f8.i(false);
            if (z7) {
                abstractC0051h2.getClass();
                abstractC0051h2.handleMessage(17, f8.f706a);
            }
        }
        f8.f709d = 0;
        G(i8, false);
        this.f902z0 -= iB;
    }

    public final void g0(boolean z7) throws Throwable {
        if (!z7) {
            this.f887k0 = false;
            this.f864N.d(37);
            W w7 = this.f888l0;
            if (w7 != null) {
                V(w7, false);
                this.f888l0 = null;
            }
        }
        this.f886j0 = z7;
        c();
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:153:0x02e4 A[PHI: r5
      0x02e4: PHI (r5v24 long) = (r5v23 long), (r5v27 long) binds: [B:152:0x02e2, B:148:0x02d2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:158:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:160:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:163:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:174:0x032e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:177:0x0338  */
    /* JADX WARN: Code duplicated, block: B:194:0x0368 A[EDGE_INSN: B:194:0x0368->B:113:0x022c BREAK  A[LOOP:10: B:123:0x0245->B:129:0x025a]] */
    /* JADX WARN: Code duplicated, block: B:195:0x0374  */
    /* JADX WARN: Code duplicated, block: B:197:0x0378  */
    /* JADX WARN: Code duplicated, block: B:199:0x0390  */
    /* JADX WARN: Code duplicated, block: B:201:0x0399 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:206:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:209:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:241:0x0425  */
    /* JADX WARN: Code duplicated, block: B:312:0x052c  */
    /* JADX WARN: Code duplicated, block: B:396:0x066d  */
    /* JADX WARN: Code duplicated, block: B:436:0x06f6  */
    /* JADX WARN: Code duplicated, block: B:437:0x06f9  */
    /* JADX WARN: Code duplicated, block: B:439:0x0700  */
    /* JADX WARN: Code duplicated, block: B:441:0x0704  */
    /* JADX WARN: Code duplicated, block: B:444:0x070c  */
    /* JADX WARN: Code duplicated, block: B:446:0x0710  */
    /* JADX WARN: Code duplicated, block: B:449:0x0716  */
    /* JADX WARN: Code duplicated, block: B:451:0x0726  */
    /* JADX WARN: Code duplicated, block: B:452:0x072b  */
    /* JADX WARN: Code duplicated, block: B:455:0x0734  */
    /* JADX WARN: Code duplicated, block: B:458:0x073c  */
    /* JADX WARN: Code duplicated, block: B:461:0x0747  */
    /* JADX WARN: Code duplicated, block: B:464:0x074d  */
    /* JADX WARN: Code duplicated, block: B:466:0x0750 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:470:0x077e  */
    /* JADX WARN: Code duplicated, block: B:471:0x0781  */
    /* JADX WARN: Code duplicated, block: B:474:0x0787  */
    /* JADX WARN: Code duplicated, block: B:477:0x0795  */
    /* JADX WARN: Code duplicated, block: B:481:0x079d  */
    /* JADX WARN: Code duplicated, block: B:492:0x07b1  */
    /* JADX WARN: Code duplicated, block: B:493:0x07b3  */
    /* JADX WARN: Code duplicated, block: B:495:0x07bf  */
    /* JADX WARN: Code duplicated, block: B:498:0x07d7  */
    /* JADX WARN: Code duplicated, block: B:506:0x07f4  */
    /* JADX WARN: Code duplicated, block: B:508:0x07fa  */
    /* JADX WARN: Code duplicated, block: B:510:0x0802 A[LOOP:9: B:509:0x0800->B:510:0x0802, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:515:0x0813  */
    /* JADX WARN: Code duplicated, block: B:517:0x081e  */
    /* JADX WARN: Code duplicated, block: B:524:0x0830  */
    /* JADX WARN: Code duplicated, block: B:527:0x0836  */
    /* JADX WARN: Code duplicated, block: B:529:0x083e  */
    /* JADX WARN: Code duplicated, block: B:533:0x084a  */
    /* JADX WARN: Code duplicated, block: B:547:0x0894  */
    /* JADX WARN: Code duplicated, block: B:550:0x089c  */
    /* JADX WARN: Code duplicated, block: B:553:0x08a4  */
    /* JADX WARN: Code duplicated, block: B:556:0x08a9  */
    /* JADX WARN: Code duplicated, block: B:560:0x08b0  */
    /* JADX WARN: Code duplicated, block: B:563:0x08b7  */
    /* JADX WARN: Code duplicated, block: B:566:0x08c2  */
    /* JADX WARN: Code duplicated, block: B:578:0x07a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:609:0x0844 A[EDGE_INSN: B:609:0x0844->B:531:0x0844 BREAK  A[LOOP:7: B:525:0x0831->B:530:0x0841], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:611:0x0841 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:617:0x032e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:630:0x03d6 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x01ab  */
    /* JADX WARN: Instruction removed from duplicated block: B:508:0x07fa, please report this as an issue */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void h() {
        int i8;
        boolean z7;
        boolean z8;
        long j8;
        boolean z9;
        v0 v0Var;
        boolean z10;
        C0048f0 c0048f0;
        C0057k c0057k;
        long j9;
        long j10;
        int i9;
        C0048f0 c0048f1;
        long j11;
        C0048f0 c0048f2;
        boolean z11;
        boolean z12;
        boolean z13;
        C0061m c0061m;
        long jMin;
        S0.d dVar;
        int i10;
        boolean z14;
        v0 v0Var2;
        int i11;
        int i12;
        F0[] f0Arr;
        v0 v0Var3;
        C0048f0 c0048f3;
        int length;
        int i13;
        F0 f8;
        boolean zB;
        AbstractC0051h abstractC0051h;
        C0048f0 c0048f4;
        AbstractC0051h abstractC0051h2;
        int i14;
        long j12;
        boolean z15;
        long jE;
        int i15;
        AbstractC0051h abstractC0051h3;
        AbstractC0051h abstractC0051h4;
        int i16;
        int i17;
        C0054i0 c0054i0;
        C0048f0 c0048f5;
        C0048f0 c0048f6;
        boolean z16;
        F0[] f0Arr2;
        boolean z17;
        C0054i0 c0054i1;
        C0048f0 c0048f7;
        C0048f0 c0048f8;
        int i18;
        ((p117p0.G) this.f873W).getClass();
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.f864N.d(2);
        long j13 = -9223372036854775807L;
        if (this.f889m0.f1092a.q() || !this.f876Z.f1088k) {
            i8 = 3;
        } else {
            this.f875Y.m(this.f847B0);
            C0054i0 c0054i2 = this.f875Y;
            C0048f0 c0048f9 = c0054i2.f987l;
            if (c0048f9 == null || (!c0048f9.f932g.f959j && c0048f9.g() && c0054i2.f987l.f932g.f954e != -9223372036854775807L && c0054i2.f989n < 100)) {
                C0054i0 c0054i3 = this.f875Y;
                long j14 = this.f847B0;
                v0 v0Var4 = this.f889m0;
                C0048f0 c0048f10 = c0054i3.f987l;
                C0050g0 c0050g0E = c0048f10 == null ? c0054i3.e(v0Var4.f1092a, v0Var4.f1093b, v0Var4.f1094c, v0Var4.f1110s) : c0054i3.d(v0Var4.f1092a, c0048f10, j14);
                if (c0050g0E != null) {
                    C0054i0 c0054i4 = this.f875Y;
                    C0048f0 c0048f11 = c0054i4.f987l;
                    long j15 = c0048f11 == null ? 1000000000000L : (c0048f11.f941p + c0048f11.f932g.f954e) - c0050g0E.f951b;
                    int i19 = 0;
                    while (true) {
                        if (i19 >= c0054i4.f992q.size()) {
                            c0048f3 = null;
                            break;
                        }
                        C0050g0 c0050g0 = ((C0048f0) c0054i4.f992q.get(i19)).f932g;
                        long j16 = c0050g0.f954e;
                        if ((j16 == j13 || j16 == c0050g0E.f954e) && c0050g0.f951b == c0050g0E.f951b && c0050g0.f950a.equals(c0050g0E.f950a)) {
                            c0048f3 = (C0048f0) c0054i4.f992q.remove(i19);
                            break;
                        } else {
                            i19++;
                            j13 = -9223372036854775807L;
                        }
                    }
                    if (c0048f3 == null) {
                        X x7 = (X) c0054i4.f980e.f1125H;
                        S0.d dVar2 = ((C0061m) x7.f862L).f1020a;
                        x7.f855H0.getClass();
                        c0048f3 = new C0048f0(x7.f854H, j15, x7.f858J, dVar2, x7.f876Z, c0050g0E, x7.f860K);
                    } else {
                        c0048f3.f932g = c0050g0E;
                        c0048f3.f941p = j15;
                    }
                    C0048f0 c0048f12 = c0054i4.f987l;
                    if (c0048f12 == null) {
                        c0054i4.f984i = c0048f3;
                        c0054i4.f985j = c0048f3;
                        c0054i4.f986k = c0048f3;
                    } else if (c0048f3 != c0048f12.f938m) {
                        c0048f12.b();
                        c0048f12.f938m = c0048f3;
                        c0048f12.c();
                    }
                    c0054i4.f990o = null;
                    c0054i4.f987l = c0048f3;
                    c0054i4.f989n++;
                    c0054i4.l();
                    if (!c0048f3.f929d) {
                        long j17 = c0050g0E.f951b;
                        c0048f3.f929d = true;
                        c0048f3.f926a.m(this, j17);
                    } else if (c0048f3.f930e) {
                        this.f864N.a(8, c0048f3.f926a).b();
                    }
                    if (this.f875Y.f984i == c0048f3) {
                        P(c0050g0E.f951b);
                    }
                    u(false);
                }
            }
            if (this.f896t0) {
                this.f896t0 = z(this.f875Y.f987l);
                u0();
            } else {
                C();
            }
            if (!this.f893q0 && this.f882f0 && !this.f859J0 && !d() && (c0048f7 = (c0054i1 = this.f875Y).f986k) != null && c0048f7 == c0054i1.f985j && (c0048f8 = c0048f7.f938m) != null && c0048f8.f930e) {
                c0054i1.f986k = c0048f8;
                c0054i1.l();
                H1.j(c0054i1.f986k);
                C0048f0 c0048f13 = c0054i1.f986k;
                if (c0048f13 != null) {
                    R0.y yVar = c0048f13.f940o;
                    int i20 = 0;
                    while (true) {
                        F0[] f0Arr3 = this.f852G;
                        if (i20 >= f0Arr3.length) {
                            break;
                        }
                        if (yVar.b(i20)) {
                            F0 f9 = f0Arr3[i20];
                            if (f9.f708c != null && !f9.f()) {
                                F0 f10 = f0Arr3[i20];
                                H1.i(!f10.f());
                                if (F0.h(f10.f706a)) {
                                    i18 = 3;
                                } else {
                                    AbstractC0051h abstractC0051h5 = f10.f708c;
                                    i18 = (abstractC0051h5 == null || abstractC0051h5.getState() == 0) ? 2 : 4;
                                }
                                f10.f709d = i18;
                                i(c0048f13, i20, false, c0048f13.e());
                            }
                        }
                        i20++;
                        yVar = yVar;
                    }
                    if (d()) {
                        this.f857I0 = c0048f13.f926a.q();
                        if (!c0048f13.g()) {
                            c0054i1.n(c0048f13);
                            u(false);
                            C();
                        }
                    }
                }
            }
            C0054i0 c0054i5 = this.f875Y;
            C0048f0 c0048f14 = c0054i5.f985j;
            if (c0048f14 != null) {
                C0048f0 c0048f15 = c0048f14.f938m;
                F0[] f0Arr4 = this.f852G;
                if (c0048f15 == null || this.f893q0) {
                    if (c0048f14.f932g.f959j || this.f893q0) {
                        for (F0 f11 : f0Arr4) {
                            if (f11.d(c0048f14) != null) {
                                AbstractC0051h abstractC0051hD = f11.d(c0048f14);
                                abstractC0051hD.getClass();
                                if (abstractC0051hD.hasReadStreamToEnd()) {
                                    long j18 = c0048f14.f932g.f954e;
                                    long j19 = (j18 == -9223372036854775807L || j18 == Long.MIN_VALUE) ? -9223372036854775807L : c0048f14.f941p + j18;
                                    AbstractC0051h abstractC0051hD2 = f11.d(c0048f14);
                                    abstractC0051hD2.getClass();
                                    F0.l(abstractC0051hD2, j19);
                                }
                            }
                        }
                    }
                } else if (c0048f14.f930e) {
                    int i21 = 0;
                    while (true) {
                        if (i21 >= f0Arr4.length) {
                            if (!d() || c0054i5.f986k != c0054i5.f985j) {
                                C0048f0 c0048f16 = c0048f14.f938m;
                                if (!c0048f16.f930e && this.f847B0 < c0048f16.e()) {
                                    break;
                                }
                                R0.y yVar2 = c0048f14.f940o;
                                C0048f0 c0048f17 = c0054i5.f986k;
                                C0048f0 c0048f18 = c0054i5.f985j;
                                if (c0048f17 == c0048f18) {
                                    H1.j(c0048f18);
                                    c0054i5.f986k = c0048f18.f938m;
                                }
                                C0048f0 c0048f19 = c0054i5.f985j;
                                H1.j(c0048f19);
                                c0054i5.f985j = c0048f19.f938m;
                                c0054i5.l();
                                C0048f0 c0048f20 = c0054i5.f985j;
                                H1.j(c0048f20);
                                R0.y yVar3 = c0048f20.f940o;
                                p094m0.f0 f0Var = this.f889m0.f1092a;
                                C0048f0 c0048f21 = c0048f20;
                                z0(f0Var, c0048f20.f932g.f950a, f0Var, c0048f14.f932g.f950a, -9223372036854775807L, false);
                                if (!c0048f21.f930e) {
                                    length = f0Arr4.length;
                                    i13 = 0;
                                    while (i13 < length) {
                                        f8 = f0Arr4[i13];
                                        long jE2 = c0048f21.e();
                                        int i22 = f8.f707b;
                                        zB = yVar2.b(i22);
                                        boolean zB2 = yVar3.b(i22);
                                        AbstractC0051h abstractC0051h6 = f8.f706a;
                                        int i23 = length;
                                        abstractC0051h = f8.f708c;
                                        if (abstractC0051h != null) {
                                            i14 = f8.f709d;
                                            c0048f4 = c0048f21;
                                            if (i14 == 3 && (i14 != 0 || !F0.h(abstractC0051h6))) {
                                                abstractC0051h2 = abstractC0051h;
                                            }
                                            if (!zB && !abstractC0051h2.isCurrentStreamFinal()) {
                                                boolean z18 = abstractC0051h6.getTrackType() == -2;
                                                E0 e8 = yVar2.f6253b[i22];
                                                E0 e9 = yVar3.f6253b[i22];
                                                if (!zB2 || !Objects.equals(e9, e8) || z18 || f8.f()) {
                                                    F0.l(abstractC0051h2, jE2);
                                                }
                                            }
                                            i13++;
                                            length = i23;
                                            c0048f21 = c0048f4;
                                        } else {
                                            c0048f4 = c0048f21;
                                        }
                                        abstractC0051h2 = abstractC0051h6;
                                        if (!zB) {
                                        }
                                        i13++;
                                        length = i23;
                                        c0048f21 = c0048f4;
                                    }
                                    break;
                                }
                                boolean z19 = this.f882f0;
                                if (z19) {
                                    j12 = -9223372036854775807L;
                                    if (this.f857I0 != -9223372036854775807L) {
                                        this.f857I0 = j12;
                                        if (z19 || this.f859J0) {
                                            z15 = false;
                                        } else {
                                            z15 = true;
                                        }
                                        if (z15) {
                                            if (!z15) {
                                                length = f0Arr4.length;
                                                i13 = 0;
                                                while (i13 < length) {
                                                    f8 = f0Arr4[i13];
                                                    long jE3 = c0048f21.e();
                                                    int i24 = f8.f707b;
                                                    zB = yVar2.b(i24);
                                                    boolean zB3 = yVar3.b(i24);
                                                    AbstractC0051h abstractC0051h7 = f8.f706a;
                                                    int i25 = length;
                                                    abstractC0051h = f8.f708c;
                                                    if (abstractC0051h != null) {
                                                        i14 = f8.f709d;
                                                        c0048f4 = c0048f21;
                                                        if (i14 == 3) {
                                                        }
                                                        if (!zB) {
                                                        }
                                                        i13++;
                                                        length = i25;
                                                        c0048f21 = c0048f4;
                                                    } else {
                                                        c0048f4 = c0048f21;
                                                    }
                                                    abstractC0051h2 = abstractC0051h7;
                                                    if (!zB) {
                                                    }
                                                    i13++;
                                                    length = i25;
                                                    c0048f21 = c0048f4;
                                                }
                                                break;
                                                break;
                                            }
                                        } else {
                                            i17 = 0;
                                            while (true) {
                                                if (i17 < f0Arr4.length) {
                                                    if (!z15) {
                                                        length = f0Arr4.length;
                                                        i13 = 0;
                                                        while (i13 < length) {
                                                            f8 = f0Arr4[i13];
                                                            long jE4 = c0048f21.e();
                                                            int i26 = f8.f707b;
                                                            zB = yVar2.b(i26);
                                                            boolean zB4 = yVar3.b(i26);
                                                            AbstractC0051h abstractC0051h8 = f8.f706a;
                                                            int i27 = length;
                                                            abstractC0051h = f8.f708c;
                                                            if (abstractC0051h != null) {
                                                                i14 = f8.f709d;
                                                                c0048f4 = c0048f21;
                                                                if (i14 == 3) {
                                                                }
                                                                if (!zB) {
                                                                }
                                                                i13++;
                                                                length = i27;
                                                                c0048f21 = c0048f4;
                                                            } else {
                                                                c0048f4 = c0048f21;
                                                            }
                                                            abstractC0051h2 = abstractC0051h8;
                                                            if (!zB) {
                                                            }
                                                            i13++;
                                                            length = i27;
                                                            c0048f21 = c0048f4;
                                                        }
                                                        break;
                                                        break;
                                                    }
                                                } else {
                                                    if (!yVar3.b(i17) && f0Arr4[i17].f706a.getTrackType() != -2) {
                                                        R0.t[] tVarArr = yVar3.f6254c;
                                                        if (p094m0.O.a(((R0.c) tVarArr[i17]).l().f27041o, ((R0.c) tVarArr[i17]).l().f27037k) || f0Arr4[i17].f()) {
                                                        }
                                                    }
                                                    i17++;
                                                }
                                            }
                                        }
                                        jE = c0048f21.e();
                                        for (F0 f12 : f0Arr4) {
                                            abstractC0051h3 = f12.f706a;
                                            if (F0.h(abstractC0051h3) && (i16 = f12.f709d) != 4 && i16 != 2) {
                                                F0.l(abstractC0051h3, jE);
                                            }
                                            abstractC0051h4 = f12.f708c;
                                            if (abstractC0051h4 == null && abstractC0051h4.getState() != 0 && f12.f709d != 3) {
                                                F0.l(abstractC0051h4, jE);
                                            }
                                        }
                                        if (c0048f21.g()) {
                                            c0054i5.n(c0048f21);
                                            u(false);
                                            C();
                                            break;
                                        }
                                        break;
                                    }
                                } else {
                                    j12 = -9223372036854775807L;
                                }
                                if (c0048f21.f926a.q() == j12) {
                                    length = f0Arr4.length;
                                    i13 = 0;
                                    while (i13 < length) {
                                        f8 = f0Arr4[i13];
                                        long jE5 = c0048f21.e();
                                        int i28 = f8.f707b;
                                        zB = yVar2.b(i28);
                                        boolean zB5 = yVar3.b(i28);
                                        AbstractC0051h abstractC0051h9 = f8.f706a;
                                        int i29 = length;
                                        abstractC0051h = f8.f708c;
                                        if (abstractC0051h != null) {
                                            i14 = f8.f709d;
                                            c0048f4 = c0048f21;
                                            if (i14 == 3) {
                                            }
                                            if (!zB) {
                                            }
                                            i13++;
                                            length = i29;
                                            c0048f21 = c0048f4;
                                        } else {
                                            c0048f4 = c0048f21;
                                        }
                                        abstractC0051h2 = abstractC0051h9;
                                        if (!zB) {
                                        }
                                        i13++;
                                        length = i29;
                                        c0048f21 = c0048f4;
                                    }
                                    break;
                                    break;
                                }
                                this.f857I0 = j12;
                                if (z19) {
                                    z15 = false;
                                } else {
                                    z15 = false;
                                }
                                if (z15) {
                                    if (!z15) {
                                        length = f0Arr4.length;
                                        i13 = 0;
                                        while (i13 < length) {
                                            f8 = f0Arr4[i13];
                                            long jE6 = c0048f21.e();
                                            int i210 = f8.f707b;
                                            zB = yVar2.b(i210);
                                            boolean zB6 = yVar3.b(i210);
                                            AbstractC0051h abstractC0051h10 = f8.f706a;
                                            int i211 = length;
                                            abstractC0051h = f8.f708c;
                                            if (abstractC0051h != null) {
                                                i14 = f8.f709d;
                                                c0048f4 = c0048f21;
                                                if (i14 == 3) {
                                                }
                                                if (!zB) {
                                                }
                                                i13++;
                                                length = i211;
                                                c0048f21 = c0048f4;
                                            } else {
                                                c0048f4 = c0048f21;
                                            }
                                            abstractC0051h2 = abstractC0051h10;
                                            if (!zB) {
                                            }
                                            i13++;
                                            length = i211;
                                            c0048f21 = c0048f4;
                                        }
                                        break;
                                        break;
                                    }
                                } else {
                                    i17 = 0;
                                    while (true) {
                                        if (i17 < f0Arr4.length) {
                                            if (!z15) {
                                                length = f0Arr4.length;
                                                i13 = 0;
                                                while (i13 < length) {
                                                    f8 = f0Arr4[i13];
                                                    long jE7 = c0048f21.e();
                                                    int i212 = f8.f707b;
                                                    zB = yVar2.b(i212);
                                                    boolean zB7 = yVar3.b(i212);
                                                    AbstractC0051h abstractC0051h11 = f8.f706a;
                                                    int i213 = length;
                                                    abstractC0051h = f8.f708c;
                                                    if (abstractC0051h != null) {
                                                        i14 = f8.f709d;
                                                        c0048f4 = c0048f21;
                                                        if (i14 == 3) {
                                                        }
                                                        if (!zB) {
                                                        }
                                                        i13++;
                                                        length = i213;
                                                        c0048f21 = c0048f4;
                                                    } else {
                                                        c0048f4 = c0048f21;
                                                    }
                                                    abstractC0051h2 = abstractC0051h11;
                                                    if (!zB) {
                                                    }
                                                    i13++;
                                                    length = i213;
                                                    c0048f21 = c0048f4;
                                                }
                                                break;
                                                break;
                                            }
                                        } else {
                                            if (!yVar3.b(i17)) {
                                            }
                                            i17++;
                                        }
                                    }
                                }
                                jE = c0048f21.e();
                                while (i15 < r3) {
                                    abstractC0051h3 = f12.f706a;
                                    if (F0.h(abstractC0051h3)) {
                                        F0.l(abstractC0051h3, jE);
                                    }
                                    abstractC0051h4 = f12.f708c;
                                    if (abstractC0051h4 == null) {
                                    }
                                }
                                if (c0048f21.g()) {
                                    break;
                                }
                                c0054i5.n(c0048f21);
                                u(false);
                                C();
                                break;
                            }
                            break;
                        }
                        F0 f13 = f0Arr4[i21];
                        if (!f13.e(f13.f706a, c0048f14) || !f13.e(f13.f708c, c0048f14)) {
                            break;
                        } else {
                            i21++;
                        }
                    }
                }
            }
            C0054i0 c0054i6 = this.f875Y;
            C0048f0 c0048f22 = c0054i6.f985j;
            if (c0048f22 != null && c0054i6.f984i != c0048f22 && !c0048f22.f933h) {
                R0.y yVar4 = c0048f22.f940o;
                int i30 = 0;
                boolean z20 = true;
                while (true) {
                    f0Arr2 = this.f852G;
                    if (i30 >= f0Arr2.length) {
                        break;
                    }
                    int iB = f0Arr2[i30].b();
                    F0 f14 = f0Arr2[i30];
                    AbstractC0051h abstractC0051h12 = f14.f706a;
                    C0065o c0065o = this.f871U;
                    int iJ = f14.j(abstractC0051h12, c0048f22, yVar4, c0065o);
                    int iJ2 = f14.j(f14.f708c, c0048f22, yVar4, c0065o);
                    if (iJ == 1) {
                        iJ = iJ2;
                    }
                    if ((iJ & 2) != 0 && (z17 = this.f901y0) && z17) {
                        this.f901y0 = false;
                        if (this.f889m0.f1107p) {
                            this.f864N.e(2);
                        }
                    }
                    this.f902z0 -= iB - f0Arr2[i30].b();
                    z20 &= (iJ & 1) != 0;
                    i30++;
                }
                if (z20) {
                    for (int i31 = 0; i31 < f0Arr2.length; i31++) {
                        if (yVar4.b(i31) && f0Arr2[i31].d(c0048f22) == null) {
                            i(c0048f22, i31, false, c0048f22.e());
                        }
                    }
                }
                if (z20) {
                    c0054i6.f985j.f933h = true;
                }
            }
            boolean z21 = false;
            while (p0() && !this.f893q0 && (c0048f5 = (c0054i0 = this.f875Y).f984i) != null && (c0048f6 = c0048f5.f938m) != null && this.f847B0 >= c0048f6.e() && c0048f6.f933h) {
                if (z21) {
                    E();
                }
                this.f859J0 = false;
                C0048f0 c0048f0A = c0054i0.a();
                c0048f0A.getClass();
                if (this.f889m0.f1093b.f5257a.equals(c0048f0A.f932g.f950a.f5257a)) {
                    C0300y c0300y = this.f889m0.f1093b;
                    if (c0300y.f5258b == -1) {
                        C0300y c0300y2 = c0048f0A.f932g.f950a;
                        if (c0300y2.f5258b != -1 || c0300y.f5261e == c0300y2.f5261e) {
                            z16 = false;
                        } else {
                            z16 = true;
                        }
                    } else {
                        z16 = false;
                    }
                } else {
                    z16 = false;
                }
                C0050g0 c0050g1 = c0048f0A.f932g;
                C0300y c0300y3 = c0050g1.f950a;
                long j20 = c0050g1.f951b;
                this.f889m0 = y(c0300y3, j20, c0050g1.f952c, j20, !z16, 0);
                O();
                y0();
                boolean zD = d();
                F0[] f0Arr5 = this.f852G;
                if (zD && c0048f0A == c0054i0.f986k) {
                    for (F0 f15 : f0Arr5) {
                        int i32 = f15.f709d;
                        if (i32 == 3 || i32 == 4) {
                            boolean z22 = i32 == 4;
                            AbstractC0051h abstractC0051h13 = f15.f706a;
                            AbstractC0051h abstractC0051h14 = f15.f708c;
                            if (z22) {
                                abstractC0051h14.getClass();
                                abstractC0051h14.handleMessage(17, abstractC0051h13);
                            } else {
                                abstractC0051h14.getClass();
                                abstractC0051h13.handleMessage(17, abstractC0051h14);
                            }
                            f15.f709d = f15.f709d == 4 ? 0 : 1;
                        } else if (i32 == 2) {
                            f15.f709d = 0;
                        }
                    }
                }
                if (this.f889m0.f1096e == 3) {
                    r0();
                }
                R0.y yVar5 = c0054i0.f984i.f940o;
                for (int i33 = 0; i33 < f0Arr5.length; i33++) {
                    if (yVar5.b(i33)) {
                        F0 f16 = f0Arr5[i33];
                        AbstractC0051h abstractC0051h15 = f16.f706a;
                        if (F0.h(abstractC0051h15)) {
                            abstractC0051h15.enableMayRenderStartOfStream();
                        } else {
                            AbstractC0051h abstractC0051h16 = f16.f708c;
                            if (abstractC0051h16 != null && abstractC0051h16.getState() != 0) {
                                abstractC0051h16.enableMayRenderStartOfStream();
                            }
                        }
                    }
                }
                z21 = true;
            }
            i8 = 3;
            this.f855H0.getClass();
        }
        int i34 = this.f889m0.f1096e;
        if (i34 == 1 || i34 == 4) {
            return;
        }
        C0048f0 c0048f23 = this.f875Y.f984i;
        if (c0048f23 == null) {
            T(jUptimeMillis);
            return;
        }
        Trace.beginSection("doSomeWork");
        y0();
        if (c0048f23.f930e) {
            ((p117p0.G) this.f873W).getClass();
            this.f848C0 = p117p0.M.R(SystemClock.elapsedRealtime());
            c0048f23.f926a.v(this.f889m0.f1110s - this.f869S, this.f870T);
            z7 = true;
            int i35 = 0;
            z8 = true;
            while (true) {
                F0[] f0Arr6 = this.f852G;
                if (i35 >= f0Arr6.length) {
                    break;
                }
                F0 f17 = f0Arr6[i35];
                if (f17.b() == 0) {
                    G(i35, false);
                } else {
                    long j21 = this.f847B0;
                    long j22 = this.f848C0;
                    AbstractC0051h abstractC0051h17 = f17.f706a;
                    if (F0.h(abstractC0051h17)) {
                        abstractC0051h17.render(j21, j22);
                    }
                    AbstractC0051h abstractC0051h18 = f17.f708c;
                    if (abstractC0051h18 != null && abstractC0051h18.getState() != 0) {
                        abstractC0051h18.render(j21, j22);
                    }
                    if (z8) {
                        AbstractC0051h abstractC0051h19 = f17.f706a;
                        boolean zIsEnded = F0.h(abstractC0051h19) ? abstractC0051h19.isEnded() & true : true;
                        AbstractC0051h abstractC0051h20 = f17.f708c;
                        if (abstractC0051h20 != null && abstractC0051h20.getState() != 0) {
                            zIsEnded &= abstractC0051h20.isEnded();
                        }
                        if (zIsEnded) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                    } else {
                        z8 = false;
                    }
                    AbstractC0051h abstractC0051hD3 = f17.d(c0048f23);
                    boolean z23 = abstractC0051hD3 == null || abstractC0051hD3.hasReadStreamToEnd() || abstractC0051hD3.isReady() || abstractC0051hD3.isEnded();
                    G(i35, z23);
                    z7 = z7 && z23;
                    if (!z23) {
                        F(i35);
                    }
                }
                i35++;
            }
        } else {
            c0048f23.f926a.h();
            z7 = true;
            z8 = true;
        }
        long j23 = c0048f23.f932g.f954e;
        if (z8 && c0048f23.f930e) {
            j8 = -9223372036854775807L;
            z9 = j23 == -9223372036854775807L || j23 <= this.f889m0.f1110s;
            if (z9 && this.f893q0) {
                this.f893q0 = false;
                int i36 = this.f889m0.f1105n;
                this.f890n0.d(0);
                x0(this.f883g0.d(this.f889m0.f1096e, false), i36, 5, false);
            }
            if (z9 || !c0048f23.f932g.f959j) {
                v0Var = this.f889m0;
                if (v0Var.f1096e != 2) {
                    z10 = true;
                    if (this.f889m0.f1096e == i8 && (this.f902z0 != 0 ? !z7 : !B())) {
                        A0(p0(), false);
                        l0(2);
                        if (this.f894r0) {
                            for (c0048f0 = this.f875Y.f984i; c0048f0 != null; c0048f0 = c0048f0.f938m) {
                                for (R0.t tVar : c0048f0.f940o.f6254c) {
                                }
                            }
                            c0057k = this.f877a0;
                            j9 = c0057k.f1006i;
                            if (j9 != j8) {
                                long j24 = j9 + c0057k.f999b;
                                c0057k.f1006i = j24;
                                j10 = c0057k.f1005h;
                                if (j10 != j8 && j24 > j10) {
                                    c0057k.f1006i = j10;
                                }
                                c0057k.f1010m = j8;
                            }
                        }
                        t0();
                    }
                } else if (this.f902z0 != 0) {
                    if (z7) {
                        if (v0Var.f1098g) {
                            C0054i0 c0054i7 = this.f875Y;
                            c0048f1 = c0054i7.f984i;
                            if (q0(v0Var.f1092a, c0048f1.f932g.f950a)) {
                                j11 = this.f877a0.f1006i;
                            } else {
                                j11 = j8;
                            }
                            c0048f2 = c0054i7.f987l;
                            if (c0048f2.g() || !c0048f2.f932g.f959j) {
                                z11 = false;
                            } else {
                                z11 = true;
                            }
                            if (c0048f2.f932g.f950a.b() || c0048f2.f930e) {
                                z12 = false;
                            } else {
                                z12 = true;
                            }
                            if (!z11 && !z12) {
                                long jN = n(c0048f2.d());
                                p094m0.f0 f0Var2 = this.f889m0.f1092a;
                                C0300y c0300y4 = c0048f1.f932g.f950a;
                                float f18 = this.f871U.getPlaybackParameters().f26786a;
                                boolean z24 = this.f889m0.f1103l;
                                z13 = this.f894r0;
                                c0061m = (C0061m) this.f862L;
                                c0061m.getClass();
                                long jC = p117p0.M.C(jN, f18);
                                if (z13) {
                                    jMin = c0061m.f1024e;
                                } else {
                                    jMin = c0061m.f1023d;
                                }
                                if (j11 != j8) {
                                    jMin = Math.min(j11 / 2, jMin);
                                }
                                if (jMin > 0 && jC < jMin) {
                                    if (!c0061m.f1026g) {
                                        dVar = c0061m.f1020a;
                                        synchronized (dVar) {
                                            i10 = dVar.f6325d * dVar.f6323b;
                                        }
                                        if (i10 >= c0061m.b()) {
                                        }
                                    }
                                }
                            }
                        }
                        l0(i8);
                        this.f851F0 = null;
                        if (p0()) {
                            A0(false, false);
                            C0065o c0065o2 = this.f871U;
                            z10 = true;
                            c0065o2.f1044L = true;
                            c0065o2.f1039G.b();
                            r0();
                        }
                    }
                    z10 = true;
                    if (this.f889m0.f1096e == i8) {
                        A0(p0(), false);
                        l0(2);
                        if (this.f894r0) {
                            while (c0048f0 != null) {
                                while (i9 < r6) {
                                }
                            }
                            c0057k = this.f877a0;
                            j9 = c0057k.f1006i;
                            if (j9 != j8) {
                                long j25 = j9 + c0057k.f999b;
                                c0057k.f1006i = j25;
                                j10 = c0057k.f1005h;
                                if (j10 != j8) {
                                    c0057k.f1006i = j10;
                                }
                                c0057k.f1010m = j8;
                            }
                        }
                        t0();
                    }
                } else if (B()) {
                    l0(i8);
                    this.f851F0 = null;
                    if (p0()) {
                        A0(false, false);
                        C0065o c0065o3 = this.f871U;
                        z10 = true;
                        c0065o3.f1044L = true;
                        c0065o3.f1039G.b();
                        r0();
                    }
                } else {
                    z10 = true;
                    if (this.f889m0.f1096e == i8) {
                        A0(p0(), false);
                        l0(2);
                        if (this.f894r0) {
                            while (c0048f0 != null) {
                                while (i9 < r6) {
                                }
                            }
                            c0057k = this.f877a0;
                            j9 = c0057k.f1006i;
                            if (j9 != j8) {
                                long j26 = j9 + c0057k.f999b;
                                c0057k.f1006i = j26;
                                j10 = c0057k.f1005h;
                                if (j10 != j8) {
                                    c0057k.f1006i = j10;
                                }
                                c0057k.f1010m = j8;
                            }
                        }
                        t0();
                    }
                }
                if (this.f889m0.f1096e == 2) {
                    i12 = 0;
                    while (true) {
                        f0Arr = this.f852G;
                        if (i12 >= f0Arr.length) {
                            break;
                        }
                        if (f0Arr[i12].d(c0048f23) != null) {
                            F(i12);
                        }
                        i12++;
                    }
                    v0Var3 = this.f889m0;
                    if (!v0Var3.f1098g || v0Var3.f1109r >= 500000 || !z(this.f875Y.f987l) || !p0()) {
                        this.f853G0 = j8;
                    } else if (this.f853G0 == j8) {
                        ((p117p0.G) this.f873W).getClass();
                        this.f853G0 = SystemClock.elapsedRealtime();
                    } else {
                        ((p117p0.G) this.f873W).getClass();
                        if (SystemClock.elapsedRealtime() - this.f853G0 >= 4000) {
                            throw new IllegalStateException("Playback stuck buffering and not loading");
                        }
                    }
                } else {
                    this.f853G0 = j8;
                }
                if (p0() || this.f889m0.f1096e != i8) {
                    z14 = false;
                } else {
                    z14 = true;
                }
                if (this.f901y0 || !this.f900x0 || !z14) {
                    z10 = false;
                }
                v0Var2 = this.f889m0;
                if (v0Var2.f1107p != z10) {
                    this.f889m0 = v0Var2.i(z10);
                }
                this.f900x0 = false;
                if (!z10 && (i11 = this.f889m0.f1096e) != 4 && (z14 || i11 == 2 || (i11 == i8 && this.f902z0 != 0))) {
                    T(jUptimeMillis);
                }
                Trace.endSection();
            }
            l0(4);
            t0();
            z10 = true;
            if (this.f889m0.f1096e == 2) {
                i12 = 0;
                while (true) {
                    f0Arr = this.f852G;
                    if (i12 >= f0Arr.length) {
                        break;
                        break;
                    } else {
                        if (f0Arr[i12].d(c0048f23) != null) {
                            F(i12);
                        }
                        i12++;
                    }
                }
                v0Var3 = this.f889m0;
                if (!v0Var3.f1098g) {
                    this.f853G0 = j8;
                } else {
                    this.f853G0 = j8;
                }
            } else {
                this.f853G0 = j8;
            }
            if (p0()) {
                z14 = false;
            } else {
                z14 = false;
            }
            if (this.f901y0) {
                z10 = false;
            } else {
                z10 = false;
            }
            v0Var2 = this.f889m0;
            if (v0Var2.f1107p != z10) {
                this.f889m0 = v0Var2.i(z10);
            }
            this.f900x0 = false;
            if (!z10) {
                T(jUptimeMillis);
            }
            Trace.endSection();
        }
        j8 = -9223372036854775807L;
        if (z9) {
            this.f893q0 = false;
            int i37 = this.f889m0.f1105n;
            this.f890n0.d(0);
            x0(this.f883g0.d(this.f889m0.f1096e, false), i37, 5, false);
        }
        if (z9) {
            v0Var = this.f889m0;
            if (v0Var.f1096e != 2) {
                z10 = true;
                if (this.f889m0.f1096e == i8) {
                    A0(p0(), false);
                    l0(2);
                    if (this.f894r0) {
                        while (c0048f0 != null) {
                            while (i9 < r6) {
                            }
                        }
                        c0057k = this.f877a0;
                        j9 = c0057k.f1006i;
                        if (j9 != j8) {
                            long j27 = j9 + c0057k.f999b;
                            c0057k.f1006i = j27;
                            j10 = c0057k.f1005h;
                            if (j10 != j8) {
                                c0057k.f1006i = j10;
                            }
                            c0057k.f1010m = j8;
                        }
                    }
                    t0();
                }
            } else if (this.f902z0 != 0) {
                if (z7) {
                    if (v0Var.f1098g) {
                        C0054i0 c0054i8 = this.f875Y;
                        c0048f1 = c0054i8.f984i;
                        if (q0(v0Var.f1092a, c0048f1.f932g.f950a)) {
                            j11 = this.f877a0.f1006i;
                        } else {
                            j11 = j8;
                        }
                        c0048f2 = c0054i8.f987l;
                        if (c0048f2.g()) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                        if (c0048f2.f932g.f950a.b()) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        if (!z11) {
                            long jN2 = n(c0048f2.d());
                            p094m0.f0 f0Var3 = this.f889m0.f1092a;
                            C0300y c0300y5 = c0048f1.f932g.f950a;
                            float f19 = this.f871U.getPlaybackParameters().f26786a;
                            boolean z25 = this.f889m0.f1103l;
                            z13 = this.f894r0;
                            c0061m = (C0061m) this.f862L;
                            c0061m.getClass();
                            long jC2 = p117p0.M.C(jN2, f19);
                            if (z13) {
                                jMin = c0061m.f1024e;
                            } else {
                                jMin = c0061m.f1023d;
                            }
                            if (j11 != j8) {
                                jMin = Math.min(j11 / 2, jMin);
                            }
                            if (jMin > 0) {
                                if (!c0061m.f1026g) {
                                    dVar = c0061m.f1020a;
                                    synchronized (dVar) {
                                        i10 = dVar.f6325d * dVar.f6323b;
                                        if (i10 >= c0061m.b()) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                    l0(i8);
                    this.f851F0 = null;
                    if (p0()) {
                        A0(false, false);
                        C0065o c0065o4 = this.f871U;
                        z10 = true;
                        c0065o4.f1044L = true;
                        c0065o4.f1039G.b();
                        r0();
                    } else {
                        z10 = true;
                    }
                }
                z10 = true;
                if (this.f889m0.f1096e == i8) {
                    A0(p0(), false);
                    l0(2);
                    if (this.f894r0) {
                        while (c0048f0 != null) {
                            while (i9 < r6) {
                            }
                        }
                        c0057k = this.f877a0;
                        j9 = c0057k.f1006i;
                        if (j9 != j8) {
                            long j28 = j9 + c0057k.f999b;
                            c0057k.f1006i = j28;
                            j10 = c0057k.f1005h;
                            if (j10 != j8) {
                                c0057k.f1006i = j10;
                            }
                            c0057k.f1010m = j8;
                        }
                    }
                    t0();
                }
            } else if (B()) {
                l0(i8);
                this.f851F0 = null;
                if (p0()) {
                    A0(false, false);
                    C0065o c0065o5 = this.f871U;
                    z10 = true;
                    c0065o5.f1044L = true;
                    c0065o5.f1039G.b();
                    r0();
                } else {
                    z10 = true;
                }
            } else {
                z10 = true;
                if (this.f889m0.f1096e == i8) {
                    A0(p0(), false);
                    l0(2);
                    if (this.f894r0) {
                        while (c0048f0 != null) {
                            while (i9 < r6) {
                            }
                        }
                        c0057k = this.f877a0;
                        j9 = c0057k.f1006i;
                        if (j9 != j8) {
                            long j29 = j9 + c0057k.f999b;
                            c0057k.f1006i = j29;
                            j10 = c0057k.f1005h;
                            if (j10 != j8) {
                                c0057k.f1006i = j10;
                            }
                            c0057k.f1010m = j8;
                        }
                    }
                    t0();
                }
            }
        } else {
            v0Var = this.f889m0;
            if (v0Var.f1096e != 2) {
                z10 = true;
                if (this.f889m0.f1096e == i8) {
                    A0(p0(), false);
                    l0(2);
                    if (this.f894r0) {
                        while (c0048f0 != null) {
                            while (i9 < r6) {
                            }
                        }
                        c0057k = this.f877a0;
                        j9 = c0057k.f1006i;
                        if (j9 != j8) {
                            long j210 = j9 + c0057k.f999b;
                            c0057k.f1006i = j210;
                            j10 = c0057k.f1005h;
                            if (j10 != j8) {
                                c0057k.f1006i = j10;
                            }
                            c0057k.f1010m = j8;
                        }
                    }
                    t0();
                }
            } else if (this.f902z0 != 0) {
                if (z7) {
                    if (v0Var.f1098g) {
                        C0054i0 c0054i9 = this.f875Y;
                        c0048f1 = c0054i9.f984i;
                        if (q0(v0Var.f1092a, c0048f1.f932g.f950a)) {
                            j11 = this.f877a0.f1006i;
                        } else {
                            j11 = j8;
                        }
                        c0048f2 = c0054i9.f987l;
                        if (c0048f2.g()) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                        if (c0048f2.f932g.f950a.b()) {
                            z12 = false;
                        } else {
                            z12 = false;
                        }
                        if (!z11) {
                            long jN3 = n(c0048f2.d());
                            p094m0.f0 f0Var4 = this.f889m0.f1092a;
                            C0300y c0300y6 = c0048f1.f932g.f950a;
                            float f110 = this.f871U.getPlaybackParameters().f26786a;
                            boolean z26 = this.f889m0.f1103l;
                            z13 = this.f894r0;
                            c0061m = (C0061m) this.f862L;
                            c0061m.getClass();
                            long jC3 = p117p0.M.C(jN3, f110);
                            if (z13) {
                                jMin = c0061m.f1024e;
                            } else {
                                jMin = c0061m.f1023d;
                            }
                            if (j11 != j8) {
                                jMin = Math.min(j11 / 2, jMin);
                            }
                            if (jMin > 0) {
                                if (!c0061m.f1026g) {
                                    dVar = c0061m.f1020a;
                                    synchronized (dVar) {
                                        i10 = dVar.f6325d * dVar.f6323b;
                                        if (i10 >= c0061m.b()) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                    l0(i8);
                    this.f851F0 = null;
                    if (p0()) {
                        A0(false, false);
                        C0065o c0065o6 = this.f871U;
                        z10 = true;
                        c0065o6.f1044L = true;
                        c0065o6.f1039G.b();
                        r0();
                    } else {
                        z10 = true;
                    }
                }
                z10 = true;
                if (this.f889m0.f1096e == i8) {
                    A0(p0(), false);
                    l0(2);
                    if (this.f894r0) {
                        while (c0048f0 != null) {
                            while (i9 < r6) {
                            }
                        }
                        c0057k = this.f877a0;
                        j9 = c0057k.f1006i;
                        if (j9 != j8) {
                            long j211 = j9 + c0057k.f999b;
                            c0057k.f1006i = j211;
                            j10 = c0057k.f1005h;
                            if (j10 != j8) {
                                c0057k.f1006i = j10;
                            }
                            c0057k.f1010m = j8;
                        }
                    }
                    t0();
                }
            } else if (B()) {
                l0(i8);
                this.f851F0 = null;
                if (p0()) {
                    A0(false, false);
                    C0065o c0065o7 = this.f871U;
                    z10 = true;
                    c0065o7.f1044L = true;
                    c0065o7.f1039G.b();
                    r0();
                } else {
                    z10 = true;
                }
            } else {
                z10 = true;
                if (this.f889m0.f1096e == i8) {
                    A0(p0(), false);
                    l0(2);
                    if (this.f894r0) {
                        while (c0048f0 != null) {
                            while (i9 < r6) {
                            }
                        }
                        c0057k = this.f877a0;
                        j9 = c0057k.f1006i;
                        if (j9 != j8) {
                            long j212 = j9 + c0057k.f999b;
                            c0057k.f1006i = j212;
                            j10 = c0057k.f1005h;
                            if (j10 != j8) {
                                c0057k.f1006i = j10;
                            }
                            c0057k.f1010m = j8;
                        }
                    }
                    t0();
                }
            }
        }
        if (this.f889m0.f1096e == 2) {
            i12 = 0;
            while (true) {
                f0Arr = this.f852G;
                if (i12 >= f0Arr.length) {
                    break;
                    break;
                } else {
                    if (f0Arr[i12].d(c0048f23) != null) {
                        F(i12);
                    }
                    i12++;
                }
            }
            v0Var3 = this.f889m0;
            if (!v0Var3.f1098g) {
                this.f853G0 = j8;
            } else {
                this.f853G0 = j8;
            }
        } else {
            this.f853G0 = j8;
        }
        if (p0()) {
            z14 = false;
        } else {
            z14 = false;
        }
        if (this.f901y0) {
            z10 = false;
        } else {
            z10 = false;
        }
        v0Var2 = this.f889m0;
        if (v0Var2.f1107p != z10) {
            this.f889m0 = v0Var2.i(z10);
        }
        this.f900x0 = false;
        if (!z10) {
            T(jUptimeMillis);
        }
        Trace.endSection();
    }

    public final void h0(H0 h8) {
        this.f885i0 = h8;
        c();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) throws Throwable {
        boolean z7;
        int i8;
        C0048f0 c0048f0;
        C0300y c0300y;
        C0048f0 c0048f1;
        int i9 = 1000;
        try {
            switch (message.what) {
                case 1:
                    boolean z8 = message.arg1 != 0;
                    int i10 = message.arg2;
                    this.f890n0.d(1);
                    x0(this.f883g0.d(this.f889m0.f1096e, z8), i10 >> 4, i10 & 15, z8);
                    break;
                case 2:
                    h();
                    break;
                case 3:
                    V((W) message.obj, true);
                    break;
                case 4:
                    d0((p094m0.S) message.obj);
                    break;
                case 5:
                    i0((I0) message.obj);
                    break;
                case 6:
                    s0(false, true);
                    break;
                case 7:
                    K((C3171i) message.obj);
                    return true;
                case 8:
                    w((InterfaceC0298w) message.obj);
                    break;
                case 9:
                    q((InterfaceC0298w) message.obj);
                    break;
                case 10:
                    M();
                    break;
                case 11:
                    f0(message.arg1);
                    break;
                case 12:
                    j0(message.arg1 != 0);
                    break;
                case 13:
                    a0(message.arg1 != 0, (C3171i) message.obj);
                    break;
                case 14:
                    X((z0) message.obj);
                    break;
                case 15:
                    Y((z0) message.obj);
                    break;
                case 16:
                    p094m0.S s7 = (p094m0.S) message.obj;
                    x(s7, s7.f26786a, true, false);
                    break;
                case 17:
                    b0((T) message.obj);
                    break;
                case 18:
                    a((T) message.obj, message.arg1);
                    break;
                case 19:
                    A0.O.I(message.obj);
                    I();
                    throw null;
                case 20:
                    L(message.arg1, message.arg2, (O0.X) message.obj);
                    break;
                case 21:
                    k0((O0.X) message.obj);
                    break;
                case 22:
                    H();
                    break;
                case 23:
                    c0(message.arg1 != 0);
                    break;
                case 24:
                default:
                    return false;
                case 25:
                    e();
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    M();
                    U(true);
                    break;
                case 27:
                    w0(message.arg1, message.arg2, (List) message.obj);
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    e0((A) message.obj);
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    J();
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    Pair pair = (Pair) message.obj;
                    n0(pair.first, (C3171i) pair.second);
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    Z((C3121d) message.obj, message.arg1 != 0);
                    break;
                case 32:
                    o0(((Float) message.obj).floatValue());
                    break;
                case 33:
                    o(message.arg1);
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    p();
                    break;
                case 35:
                    m0((U0.B) message.obj);
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    g0(((Boolean) message.obj).booleanValue());
                    break;
                case 37:
                    this.f887k0 = false;
                    W w7 = this.f888l0;
                    if (w7 != null) {
                        V(w7, false);
                        this.f888l0 = null;
                    }
                    break;
                case 38:
                    h0((H0) message.obj);
                    break;
            }
        } catch (C0072w e8) {
            C0072w c0072wA = e8;
            int i11 = c0072wA.f1112I;
            C0054i0 c0054i0 = this.f875Y;
            if (i11 == 1 && (c0048f1 = c0054i0.f985j) != null && c0072wA.f1117N == null) {
                c0072wA = c0072wA.a(c0048f1.f932g.f950a);
            }
            int i12 = c0072wA.f1112I;
            p117p0.I i13 = this.f864N;
            if (i12 != 1 || (c0300y = c0072wA.f1117N) == null || !A(c0072wA.f1114K, c0300y)) {
                C0072w c0072w = this.f851F0;
                if (c0072w != null) {
                    c0072w.addSuppressed(c0072wA);
                    c0072wA = this.f851F0;
                }
                C0072w c0072w2 = c0072wA;
                if (c0072w2.f1112I == 1 && c0054i0.f984i != c0054i0.f985j) {
                    while (true) {
                        c0048f0 = c0054i0.f984i;
                        if (c0048f0 == c0054i0.f985j) {
                            break;
                        }
                        c0054i0.a();
                    }
                    H1.f(c0048f0);
                    E();
                    C0050g0 c0050g0 = c0048f0.f932g;
                    C0300y c0300y2 = c0050g0.f950a;
                    long j8 = c0050g0.f951b;
                    this.f889m0 = y(c0300y2, j8, c0050g0.f952c, j8, true, 0);
                }
                if (c0072w2.f1118O && (this.f851F0 == null || (i8 = c0072w2.f26783G) == 5004 || i8 == 5003)) {
                    p117p0.x.g("ExoPlayerImplInternal", "Recoverable renderer error", c0072w2);
                    if (this.f851F0 == null) {
                        this.f851F0 = c0072w2;
                    }
                    p117p0.H hA = i13.a(25, c0072w2);
                    i13.getClass();
                    Message message2 = hA.f28041a;
                    message2.getClass();
                    i13.f28043a.sendMessageAtFrontOfQueue(message2);
                    hA.a();
                } else {
                    p117p0.x.d("ExoPlayerImplInternal", "Playback error", c0072w2);
                    z7 = true;
                    s0(true, false);
                    this.f889m0 = this.f889m0.f(c0072w2);
                }
                E();
                return z7;
            }
            this.f859J0 = true;
            f();
            C0048f0 c0048f2 = c0054i0.f986k;
            C0048f0 c0048f3 = c0054i0.f984i;
            if (c0048f3 != c0048f2) {
                while (c0048f3 != null) {
                    C0048f0 c0048f4 = c0048f3.f938m;
                    if (c0048f4 == c0048f2) {
                        break;
                    }
                    c0048f3 = c0048f4;
                }
            }
            c0054i0.n(c0048f3);
            if (this.f889m0.f1096e != 4) {
                C();
                i13.e(2);
            }
        } catch (G0.k e9) {
            s(e9, e9.f3368G);
        } catch (C0278b e10) {
            s(e10, 1002);
        } catch (p094m0.P e11) {
            boolean z9 = e11.f26781G;
            int i14 = e11.f26782H;
            if (i14 == 1) {
                i9 = z9 ? 3001 : 3003;
            } else if (i14 == 4) {
                i9 = z9 ? 3002 : 3004;
            }
            s(e11, i9);
        } catch (C3185j e12) {
            s(e12, e12.f29947G);
        } catch (IOException e13) {
            s(e13, 2000);
        } catch (RuntimeException e14) {
            C0072w c0072w3 = new C0072w(2, e14, ((e14 instanceof IllegalStateException) || (e14 instanceof IllegalArgumentException)) ? 1004 : 1000);
            p117p0.x.d("ExoPlayerImplInternal", "Playback error", c0072w3);
            s0(true, false);
            this.f889m0 = this.f889m0.f(c0072w3);
        }
        z7 = true;
        E();
        return z7;
    }

    public final void i(C0048f0 c0048f0, int i8, boolean z7, long j8) {
        F0 f8 = this.f852G[i8];
        if (f8.g()) {
            return;
        }
        boolean z8 = true;
        boolean z9 = c0048f0 == this.f875Y.f984i;
        R0.y yVar = c0048f0.f940o;
        E0 e8 = yVar.f6253b[i8];
        R0.t tVar = yVar.f6254c[i8];
        boolean z10 = p0() && this.f889m0.f1096e == 3;
        boolean z11 = !z7 && z10;
        this.f902z0++;
        O0.U u7 = c0048f0.f928c[i8];
        long j9 = this.f847B0;
        long j10 = c0048f0.f941p;
        C0300y c0300y = c0048f0.f932g.f950a;
        C3136t[] c3136tArrC = F0.c(tVar);
        int i9 = f8.f709d;
        C0065o c0065o = this.f871U;
        if (i9 != 0) {
            if (i9 == 2 || i9 == 4) {
                z8 = true;
            } else {
                f8.f711f = true;
                AbstractC0051h abstractC0051h = f8.f708c;
                abstractC0051h.getClass();
                abstractC0051h.enable(e8, c3136tArrC, u7, j9, z11, z9, j8, j10, c0300y);
                c0065o.a(abstractC0051h);
            }
            S s7 = new S(this);
            AbstractC0051h abstractC0051hD = f8.d(c0048f0);
            abstractC0051hD.getClass();
            abstractC0051hD.handleMessage(11, s7);
            if (z10 || !z9) {
            }
            f8.m();
            return;
        }
        f8.f710e = z8;
        f8.f706a.enable(e8, c3136tArrC, u7, j9, z11, z9, j8, j10, c0300y);
        c0065o.a(f8.f706a);
        S s8 = new S(this);
        AbstractC0051h abstractC0051hD2 = f8.d(c0048f0);
        abstractC0051hD2.getClass();
        abstractC0051hD2.handleMessage(11, s8);
        if (z10) {
        }
    }

    public final void i0(I0 i8) {
        this.f884h0 = i8;
    }

    public final void j(boolean[] zArr, long j8) {
        F0[] f0Arr;
        C0048f0 c0048f0 = this.f875Y.f985j;
        R0.y yVar = c0048f0.f940o;
        int i8 = 0;
        while (true) {
            f0Arr = this.f852G;
            if (i8 >= f0Arr.length) {
                break;
            }
            if (!yVar.b(i8)) {
                f0Arr[i8].k();
            }
            i8++;
        }
        for (int i9 = 0; i9 < f0Arr.length; i9++) {
            if (yVar.b(i9) && f0Arr[i9].d(c0048f0) == null) {
                i(c0048f0, i9, zArr[i9], j8);
            }
        }
    }

    public final void j0(boolean z7) {
        this.f898v0 = z7;
        p094m0.f0 f0Var = this.f889m0.f1092a;
        C0054i0 c0054i0 = this.f875Y;
        c0054i0.f983h = z7;
        int iR = c0054i0.r(f0Var);
        if ((iR & 1) != 0) {
            U(true);
        } else if ((iR & 2) != 0) {
            f();
        }
        u(false);
    }

    public final long k(p094m0.f0 f0Var, Object obj, long j8) {
        p094m0.d0 d0Var = this.f868R;
        int i8 = f0Var.h(obj, d0Var).f26827c;
        p094m0.e0 e0Var = this.f867Q;
        f0Var.o(i8, e0Var);
        if (e0Var.f26839f != -9223372036854775807L && e0Var.a() && e0Var.f26842i) {
            return p117p0.M.R(p117p0.M.z(e0Var.f26840g) - e0Var.f26839f) - (j8 + d0Var.f26829e);
        }
        return -9223372036854775807L;
    }

    public final void k0(O0.X x7) {
        this.f890n0.d(1);
        u0 u0Var = this.f876Z;
        int size = u0Var.f1079b.size();
        if (x7.f5166b.length != size) {
            x7 = new O0.X(new Random(x7.f5165a.nextLong())).a(size);
        }
        u0Var.f1087j = x7;
        v(u0Var.b(), false);
    }

    public final long l(C0048f0 c0048f0) {
        if (c0048f0 == null) {
            return 0L;
        }
        long jMax = c0048f0.f941p;
        if (!c0048f0.f930e) {
            return jMax;
        }
        int i8 = 0;
        while (true) {
            F0[] f0Arr = this.f852G;
            if (i8 >= f0Arr.length) {
                return jMax;
            }
            if (f0Arr[i8].d(c0048f0) != null) {
                AbstractC0051h abstractC0051hD = f0Arr[i8].d(c0048f0);
                Objects.requireNonNull(abstractC0051hD);
                long readingPositionUs = abstractC0051hD.getReadingPositionUs();
                if (readingPositionUs == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jMax = Math.max(readingPositionUs, jMax);
            }
            i8++;
        }
    }

    public final void l0(int i8) {
        v0 v0Var = this.f889m0;
        if (v0Var.f1096e != i8) {
            if (i8 != 2) {
                this.f853G0 = -9223372036854775807L;
            }
            if (i8 != 3 && v0Var.f1107p) {
                this.f889m0 = v0Var.i(false);
            }
            this.f889m0 = this.f889m0.h(i8);
        }
    }

    public final Pair m(p094m0.f0 f0Var) {
        long j8 = 0;
        if (f0Var.q()) {
            return Pair.create(v0.f1091u, 0L);
        }
        int iA = f0Var.a(this.f898v0);
        Pair pairJ = f0Var.j(this.f867Q, this.f868R, iA, -9223372036854775807L);
        C0300y c0300yP = this.f875Y.p(f0Var, pairJ.first, 0L);
        long jLongValue = ((Long) pairJ.second).longValue();
        if (c0300yP.b()) {
            Object obj = c0300yP.f5257a;
            p094m0.d0 d0Var = this.f868R;
            f0Var.h(obj, d0Var);
            if (c0300yP.f5259c == d0Var.f(c0300yP.f5258b)) {
                d0Var.f26831g.getClass();
            }
        } else {
            j8 = jLongValue;
        }
        return Pair.create(c0300yP, Long.valueOf(j8));
    }

    public final void m0(U0.B b8) {
        for (F0 f8 : this.f852G) {
            AbstractC0051h abstractC0051h = f8.f706a;
            if (abstractC0051h.getTrackType() == 2) {
                abstractC0051h.handleMessage(7, b8);
                AbstractC0051h abstractC0051h2 = f8.f708c;
                if (abstractC0051h2 != null) {
                    abstractC0051h2.handleMessage(7, b8);
                }
            }
        }
    }

    public final long n(long j8) {
        C0048f0 c0048f0 = this.f875Y.f987l;
        if (c0048f0 == null) {
            return 0L;
        }
        return Math.max(0L, j8 - (this.f847B0 - c0048f0.f941p));
    }

    public final void n0(Object obj, C3171i c3171i) {
        for (F0 f8 : this.f852G) {
            AbstractC0051h abstractC0051h = f8.f706a;
            if (abstractC0051h.getTrackType() == 2) {
                int i8 = f8.f709d;
                if (i8 == 4 || i8 == 1) {
                    AbstractC0051h abstractC0051h2 = f8.f708c;
                    abstractC0051h2.getClass();
                    abstractC0051h2.handleMessage(1, obj);
                } else {
                    abstractC0051h.handleMessage(1, obj);
                }
            }
        }
        int i9 = this.f889m0.f1096e;
        if (i9 == 3 || i9 == 2) {
            this.f864N.e(2);
        }
        if (c3171i != null) {
            c3171i.f();
        }
    }

    public final void o(int i8) {
        v0 v0Var = this.f889m0;
        x0(i8, v0Var.f1105n, v0Var.f1104m, v0Var.f1103l);
    }

    public final void o0(float f8) {
        this.f861K0 = f8;
        float f9 = f8 * this.f883g0.f948g;
        for (F0 f10 : this.f852G) {
            AbstractC0051h abstractC0051h = f10.f706a;
            if (abstractC0051h.getTrackType() == 1) {
                abstractC0051h.handleMessage(2, Float.valueOf(f9));
                AbstractC0051h abstractC0051h2 = f10.f708c;
                if (abstractC0051h2 != null) {
                    abstractC0051h2.handleMessage(2, Float.valueOf(f9));
                }
            }
        }
    }

    public final void p() {
        o0(this.f861K0);
    }

    public final boolean p0() {
        v0 v0Var = this.f889m0;
        return v0Var.f1103l && v0Var.f1105n == 0;
    }

    public final void q(InterfaceC0298w interfaceC0298w) {
        C0054i0 c0054i0 = this.f875Y;
        C0048f0 c0048f0 = c0054i0.f987l;
        if (c0048f0 != null && c0048f0.f926a == interfaceC0298w) {
            c0054i0.m(this.f847B0);
            C();
            return;
        }
        C0048f0 c0048f1 = c0054i0.f988m;
        if (c0048f1 == null || c0048f1.f926a != interfaceC0298w) {
            return;
        }
        D();
    }

    public final boolean q0(p094m0.f0 f0Var, C0300y c0300y) {
        if (c0300y.b() || f0Var.q()) {
            return false;
        }
        int i8 = f0Var.h(c0300y.f5257a, this.f868R).f26827c;
        p094m0.e0 e0Var = this.f867Q;
        f0Var.o(i8, e0Var);
        return e0Var.a() && e0Var.f26842i && e0Var.f26839f != -9223372036854775807L;
    }

    @Override // O0.V
    public final void r(O0.W w7) {
        this.f864N.a(9, (InterfaceC0298w) w7).b();
    }

    public final void r0() {
        C0048f0 c0048f0 = this.f875Y.f984i;
        if (c0048f0 == null) {
            return;
        }
        R0.y yVar = c0048f0.f940o;
        int i8 = 0;
        while (true) {
            F0[] f0Arr = this.f852G;
            if (i8 >= f0Arr.length) {
                return;
            }
            if (yVar.b(i8)) {
                f0Arr[i8].m();
            }
            i8++;
        }
    }

    public final void s(IOException iOException, int i8) {
        C0072w c0072w = new C0072w(0, iOException, i8);
        C0048f0 c0048f0 = this.f875Y.f984i;
        if (c0048f0 != null) {
            c0072w = c0072w.a(c0048f0.f932g.f950a);
        }
        p117p0.x.d("ExoPlayerImplInternal", "Playback error", c0072w);
        s0(false, false);
        this.f889m0 = this.f889m0.f(c0072w);
    }

    public final void s0(boolean z7, boolean z8) {
        N(z7 || !this.f899w0, false, true, false);
        this.f890n0.d(z8 ? 1 : 0);
        C0061m c0061m = (C0061m) this.f862L;
        if (c0061m.f1029j.remove(this.f879c0) != null) {
            c0061m.d();
        }
        this.f883g0.d(1, this.f889m0.f1103l);
        l0(1);
    }

    @Override // O0.InterfaceC0297v
    public final void t(InterfaceC0298w interfaceC0298w) {
        this.f864N.a(8, interfaceC0298w).b();
    }

    public final void t0() {
        C0065o c0065o = this.f871U;
        c0065o.f1044L = false;
        J0 j8 = c0065o.f1039G;
        if (j8.f736H) {
            j8.a(j8.getPositionUs());
            j8.f736H = false;
        }
        for (F0 f8 : this.f852G) {
            AbstractC0051h abstractC0051h = f8.f706a;
            if (F0.h(abstractC0051h) && abstractC0051h.getState() == 2) {
                abstractC0051h.stop();
            }
            AbstractC0051h abstractC0051h2 = f8.f708c;
            if (abstractC0051h2 != null && abstractC0051h2.getState() != 0 && abstractC0051h2.getState() == 2) {
                abstractC0051h2.stop();
            }
        }
    }

    public final void u(boolean z7) {
        C0048f0 c0048f0 = this.f875Y.f987l;
        C0300y c0300y = c0048f0 == null ? this.f889m0.f1093b : c0048f0.f932g.f950a;
        boolean z8 = !this.f889m0.f1102k.equals(c0300y);
        if (z8) {
            this.f889m0 = this.f889m0.c(c0300y);
        }
        v0 v0Var = this.f889m0;
        v0Var.f1108q = c0048f0 == null ? v0Var.f1110s : c0048f0.d();
        v0 v0Var2 = this.f889m0;
        v0Var2.f1109r = n(v0Var2.f1108q);
        if ((z8 || z7) && c0048f0 != null && c0048f0.f930e) {
            C0300y c0300y2 = c0048f0.f932g.f950a;
            v0(c0048f0.f940o);
        }
    }

    public final void u0() {
        C0048f0 c0048f0 = this.f875Y.f987l;
        boolean z7 = this.f896t0 || (c0048f0 != null && c0048f0.f926a.k());
        v0 v0Var = this.f889m0;
        if (z7 != v0Var.f1098g) {
            this.f889m0 = v0Var.b(z7);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v58 ??, still in use, count: 1, list:
          (r0v58 ?? I:??[OBJECT, ARRAY]) from 0x0036: MOVE (r9v14 ?? I:??[OBJECT, ARRAY]) = (r0v58 ?? I:??[OBJECT, ARRAY]) (LINE:55)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    public final void v(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v58 ??, still in use, count: 1, list:
          (r0v58 ?? I:??[OBJECT, ARRAY]) from 0x0036: MOVE (r9v14 ?? I:??[OBJECT, ARRAY]) = (r0v58 ?? I:??[OBJECT, ARRAY]) (LINE:55)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r43v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
        	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
        	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
        	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
        	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
        	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
        	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
        	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
        	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
        	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
        	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
        	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
        	at jadx.core.ProcessClass.process(ProcessClass.java:89)
        	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
        	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
        	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
        	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
        */

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void v0(R0.y yVar) {
        C0054i0 c0054i0 = this.f875Y;
        C0048f0 c0048f0 = c0054i0.f987l;
        c0048f0.getClass();
        if (c0048f0 != c0054i0.f984i) {
            long j8 = c0048f0.f932g.f951b;
        }
        n(c0048f0.d());
        if (q0(this.f889m0.f1092a, c0048f0.f932g.f950a)) {
            long j9 = this.f877a0.f1006i;
        }
        p094m0.f0 f0Var = this.f889m0.f1092a;
        float f8 = this.f871U.getPlaybackParameters().f26786a;
        boolean z7 = this.f889m0.f1103l;
        R0.t[] tVarArr = yVar.f6254c;
        C0061m c0061m = (C0061m) this.f862L;
        C0059l c0059l = (C0059l) c0061m.f1029j.get(this.f879c0);
        c0059l.getClass();
        int iMax = c0061m.f1025f;
        if (iMax == -1) {
            int length = tVarArr.length;
            int i8 = 0;
            int i9 = 0;
            while (true) {
                int i10 = 13107200;
                if (i8 < length) {
                    R0.t tVar = tVarArr[i8];
                    if (tVar != null) {
                        switch (((R0.c) tVar).f6125a.f26859c) {
                            case CompanionAdSlot.FLUID_SIZE /* -2 */:
                                i10 = 0;
                                i9 += i10;
                                break;
                            case -1:
                            case 1:
                                i9 += i10;
                                break;
                            case 0:
                                i10 = 144310272;
                                i9 += i10;
                                break;
                            case 2:
                                i10 = 131072000;
                                i9 += i10;
                                break;
                            case 3:
                            case 5:
                            case 6:
                                i10 = 131072;
                                i9 += i10;
                                break;
                            case 4:
                                i10 = 26214400;
                                i9 += i10;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                    }
                    i8++;
                } else {
                    iMax = Math.max(13107200, i9);
                }
            }
        }
        c0059l.f1015b = iMax;
        c0061m.d();
    }

    public final void w(InterfaceC0298w interfaceC0298w) {
        C0048f0 c0048f0;
        C0054i0 c0054i0 = this.f875Y;
        C0048f0 c0048f1 = c0054i0.f987l;
        int i8 = 0;
        boolean z7 = c0048f1 != null && c0048f1.f926a == interfaceC0298w;
        C0065o c0065o = this.f871U;
        if (z7) {
            c0048f1.getClass();
            if (!c0048f1.f930e) {
                float f8 = c0065o.getPlaybackParameters().f26786a;
                v0 v0Var = this.f889m0;
                c0048f1.f(f8, v0Var.f1092a, v0Var.f1103l);
            }
            C0300y c0300y = c0048f1.f932g.f950a;
            v0(c0048f1.f940o);
            if (c0048f1 == c0054i0.f984i) {
                P(c0048f1.f932g.f951b);
                j(new boolean[this.f852G.length], c0054i0.f985j.e());
                c0048f1.f933h = true;
                v0 v0Var2 = this.f889m0;
                C0300y c0300y2 = v0Var2.f1093b;
                long j8 = c0048f1.f932g.f951b;
                this.f889m0 = y(c0300y2, j8, v0Var2.f1094c, j8, false, 5);
            }
            C();
            return;
        }
        while (true) {
            if (i8 >= c0054i0.f992q.size()) {
                c0048f0 = null;
                break;
            }
            c0048f0 = (C0048f0) c0054i0.f992q.get(i8);
            if (c0048f0.f926a == interfaceC0298w) {
                break;
            } else {
                i8++;
            }
        }
        if (c0048f0 != null) {
            H1.i(!c0048f0.f930e);
            float f9 = c0065o.getPlaybackParameters().f26786a;
            v0 v0Var3 = this.f889m0;
            c0048f0.f(f9, v0Var3.f1092a, v0Var3.f1103l);
            C0048f0 c0048f2 = c0054i0.f988m;
            if (c0048f2 == null || c0048f2.f926a != interfaceC0298w) {
                return;
            }
            D();
        }
    }

    public final void w0(int i8, int i9, List list) {
        this.f890n0.d(1);
        u0 u0Var = this.f876Z;
        u0Var.getClass();
        ArrayList arrayList = u0Var.f1079b;
        H1.d(i8 >= 0 && i8 <= i9 && i9 <= arrayList.size());
        H1.d(list.size() == i9 - i8);
        for (int i10 = i8; i10 < i9; i10++) {
            ((s0) arrayList.get(i10)).f1069a.s((p094m0.I) list.get(i10 - i8));
        }
        v(u0Var.b(), false);
    }

    public final void x(p094m0.S s7, float f8, boolean z7, boolean z8) {
        int i8;
        if (z7) {
            if (z8) {
                this.f890n0.d(1);
            }
            this.f889m0 = this.f889m0.g(s7);
        }
        float f9 = s7.f26786a;
        C0048f0 c0048f0 = this.f875Y.f984i;
        while (true) {
            i8 = 0;
            if (c0048f0 == null) {
                break;
            }
            R0.t[] tVarArr = c0048f0.f940o.f6254c;
            int length = tVarArr.length;
            while (i8 < length) {
                R0.t tVar = tVarArr[i8];
                if (tVar != null) {
                    tVar.g(f9);
                }
                i8++;
            }
            c0048f0 = c0048f0.f938m;
        }
        F0[] f0Arr = this.f852G;
        int length2 = f0Arr.length;
        while (i8 < length2) {
            F0 f10 = f0Arr[i8];
            AbstractC0051h abstractC0051h = f10.f706a;
            float f11 = s7.f26786a;
            abstractC0051h.setPlaybackSpeed(f8, f11);
            AbstractC0051h abstractC0051h2 = f10.f708c;
            if (abstractC0051h2 != null) {
                abstractC0051h2.setPlaybackSpeed(f8, f11);
            }
            i8++;
        }
    }

    public final void x0(int i8, int i9, int i10, boolean z7) {
        boolean z8 = z7 && i8 != -1;
        if (i8 == -1) {
            i10 = 2;
        } else if (i10 == 2) {
            i10 = 1;
        }
        if (i8 == 0) {
            i9 = 1;
        } else if (i9 == 1) {
            i9 = 0;
        }
        v0 v0Var = this.f889m0;
        if (v0Var.f1103l == z8 && v0Var.f1105n == i9 && v0Var.f1104m == i10) {
            return;
        }
        this.f889m0 = v0Var.e(z8, i10, i9);
        A0(false, false);
        C0054i0 c0054i0 = this.f875Y;
        for (C0048f0 c0048f0 = c0054i0.f984i; c0048f0 != null; c0048f0 = c0048f0.f938m) {
            for (R0.t tVar : c0048f0.f940o.f6254c) {
            }
        }
        if (!p0()) {
            t0();
            y0();
            v0 v0Var2 = this.f889m0;
            if (v0Var2.f1107p) {
                this.f889m0 = v0Var2.i(false);
            }
            c0054i0.m(this.f847B0);
            return;
        }
        int i11 = this.f889m0.f1096e;
        p117p0.I i12 = this.f864N;
        if (i11 != 3) {
            if (i11 == 2) {
                i12.e(2);
            }
        } else {
            C0065o c0065o = this.f871U;
            c0065o.f1044L = true;
            c0065o.f1039G.b();
            r0();
            i12.e(2);
        }
    }

    public final v0 y(C0300y c0300y, long j8, long j9, long j10, boolean z7, int i8) {
        O0.Z z8;
        R0.y yVar;
        List list;
        z4.d0 d0VarM0;
        boolean z9;
        this.f850E0 = (!this.f850E0 && j8 == this.f889m0.f1110s && c0300y.equals(this.f889m0.f1093b)) ? false : true;
        O();
        v0 v0Var = this.f889m0;
        O0.Z z10 = v0Var.f1099h;
        R0.y yVar2 = v0Var.f1100i;
        List list2 = v0Var.f1101j;
        if (this.f876Z.f1088k) {
            C0048f0 c0048f0 = this.f875Y.f984i;
            O0.Z z11 = c0048f0 == null ? O0.Z.f5181d : c0048f0.f939n;
            R0.y yVar3 = c0048f0 == null ? this.f860K : c0048f0.f940o;
            R0.t[] tVarArr = yVar3.f6254c;
            z4.E e8 = new z4.E(4);
            boolean z12 = false;
            for (R0.t tVar : tVarArr) {
                if (tVar != null) {
                    p094m0.N n7 = ((R0.c) tVar).f6128d[0].f27038l;
                    if (n7 == null) {
                        e8.g0(new p094m0.N(new p094m0.M[0]));
                    } else {
                        e8.g0(n7);
                        z12 = true;
                    }
                }
            }
            if (z12) {
                d0VarM0 = e8.m0();
            } else {
                z4.F f8 = z4.H.f31804H;
                d0VarM0 = z4.d0.f31844K;
            }
            if (c0048f0 != null) {
                C0050g0 c0050g0 = c0048f0.f932g;
                if (c0050g0.f952c != j9) {
                    c0048f0.f932g = c0050g0.a(j9);
                }
            }
            C0054i0 c0054i0 = this.f875Y;
            C0048f0 c0048f1 = c0054i0.f984i;
            if (c0048f1 == c0054i0.f985j && c0048f1 != null) {
                R0.y yVar4 = c0048f1.f940o;
                int i9 = 0;
                boolean z13 = false;
                while (true) {
                    F0[] f0Arr = this.f852G;
                    if (i9 >= f0Arr.length) {
                        z9 = true;
                        break;
                    }
                    if (yVar4.b(i9)) {
                        if (f0Arr[i9].f706a.getTrackType() != 1) {
                            z9 = false;
                            break;
                        }
                        if (yVar4.f6253b[i9].f702a != 0) {
                            z13 = true;
                        }
                    }
                    i9++;
                }
                boolean z14 = z13 && z9;
                if (z14 != this.f901y0) {
                    this.f901y0 = z14;
                    if (!z14 && this.f889m0.f1107p) {
                        this.f864N.e(2);
                    }
                }
            }
            list = d0VarM0;
            z8 = z11;
            yVar = yVar3;
        } else if (c0300y.equals(v0Var.f1093b)) {
            z8 = z10;
            yVar = yVar2;
            list = list2;
        } else {
            z8 = O0.Z.f5181d;
            yVar = this.f860K;
            list = z4.d0.f31844K;
        }
        if (z7) {
            U u7 = this.f890n0;
            if (!u7.f833e || u7.f831c == 5) {
                u7.f832d = true;
                u7.f833e = true;
                u7.f831c = i8;
            } else {
                H1.d(i8 == 5);
            }
        }
        v0 v0Var2 = this.f889m0;
        return v0Var2.d(c0300y, j8, j9, j10, n(v0Var2.f1108q), z8, yVar, list);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00ce  */
    public final void y0() {
        p094m0.S playbackParameters;
        C0048f0 c0048f0 = this.f875Y.f984i;
        if (c0048f0 == null) {
            return;
        }
        long jQ = c0048f0.f930e ? c0048f0.f926a.q() : -9223372036854775807L;
        if (jQ != -9223372036854775807L) {
            if (!c0048f0.g()) {
                this.f875Y.n(c0048f0);
                u(false);
                C();
            }
            P(jQ);
            if (jQ != this.f889m0.f1110s) {
                v0 v0Var = this.f889m0;
                this.f889m0 = y(v0Var.f1093b, jQ, v0Var.f1094c, jQ, true, 5);
            }
        } else {
            C0065o c0065o = this.f871U;
            boolean z7 = c0048f0 != this.f875Y.f985j;
            AbstractC0051h abstractC0051h = c0065o.f1041I;
            J0 j8 = c0065o.f1039G;
            if (abstractC0051h == null || abstractC0051h.isEnded() || ((z7 && c0065o.f1041I.getState() != 2) || (!c0065o.f1041I.isReady() && (z7 || c0065o.f1041I.hasReadStreamToEnd())))) {
                c0065o.f1043K = true;
                if (c0065o.f1044L) {
                    j8.b();
                }
            } else {
                InterfaceC0046e0 interfaceC0046e0 = c0065o.f1042J;
                interfaceC0046e0.getClass();
                long positionUs = interfaceC0046e0.getPositionUs();
                if (!c0065o.f1043K) {
                    j8.a(positionUs);
                    playbackParameters = interfaceC0046e0.getPlaybackParameters();
                    if (!playbackParameters.equals(j8.f739K)) {
                        j8.setPlaybackParameters(playbackParameters);
                        ((X) c0065o.f1040H).f864N.a(16, playbackParameters).b();
                    }
                } else if (positionUs >= j8.getPositionUs()) {
                    c0065o.f1043K = false;
                    if (c0065o.f1044L) {
                        j8.b();
                    }
                    j8.a(positionUs);
                    playbackParameters = interfaceC0046e0.getPlaybackParameters();
                    if (!playbackParameters.equals(j8.f739K)) {
                        j8.setPlaybackParameters(playbackParameters);
                        ((X) c0065o.f1040H).f864N.a(16, playbackParameters).b();
                    }
                } else if (j8.f736H) {
                    j8.a(j8.getPositionUs());
                    j8.f736H = false;
                }
            }
            long positionUs2 = c0065o.getPositionUs();
            this.f847B0 = positionUs2;
            long j9 = positionUs2 - c0048f0.f941p;
            long j10 = this.f889m0.f1110s;
            if (!this.f872V.isEmpty() && !this.f889m0.f1093b.b()) {
                if (this.f850E0) {
                    this.f850E0 = false;
                }
                v0 v0Var2 = this.f889m0;
                v0Var2.f1092a.b(v0Var2.f1093b.f5257a);
                int iMin = Math.min(this.f849D0, this.f872V.size());
                if (iMin > 0) {
                    A0.O.I(this.f872V.get(iMin - 1));
                }
                if (iMin < this.f872V.size()) {
                    A0.O.I(this.f872V.get(iMin));
                }
                this.f849D0 = iMin;
            }
            if (this.f871U.hasSkippedSilenceSinceLastCall()) {
                boolean z8 = !this.f890n0.f833e;
                v0 v0Var3 = this.f889m0;
                this.f889m0 = y(v0Var3.f1093b, j9, v0Var3.f1094c, j9, z8, 6);
            } else {
                v0 v0Var4 = this.f889m0;
                v0Var4.f1110s = j9;
                v0Var4.f1111t = SystemClock.elapsedRealtime();
            }
        }
        this.f889m0.f1108q = this.f875Y.f987l.d();
        v0 v0Var5 = this.f889m0;
        v0Var5.f1109r = n(v0Var5.f1108q);
        v0 v0Var6 = this.f889m0;
        if (v0Var6.f1103l && v0Var6.f1096e == 3 && q0(v0Var6.f1092a, v0Var6.f1093b)) {
            v0 v0Var7 = this.f889m0;
            float f8 = 1.0f;
            if (v0Var7.f1106o.f26786a == 1.0f) {
                C0057k c0057k = this.f877a0;
                long jK = k(v0Var7.f1092a, v0Var7.f1093b.f5257a, v0Var7.f1110s);
                long j11 = this.f889m0.f1109r;
                if (c0057k.f1001d != -9223372036854775807L) {
                    long j12 = jK - j11;
                    long j13 = c0057k.f1011n;
                    if (j13 == -9223372036854775807L) {
                        c0057k.f1011n = j12;
                        c0057k.f1012o = 0L;
                    } else {
                        float f9 = c0057k.f1000c;
                        float f10 = 1.0f - f9;
                        long jMax = Math.max(j12, (long) ((j12 * f10) + (j13 * f9)));
                        c0057k.f1011n = jMax;
                        c0057k.f1012o = (long) ((f10 * Math.abs(j12 - jMax)) + (f9 * c0057k.f1012o));
                    }
                    if (c0057k.f1010m == -9223372036854775807L || SystemClock.elapsedRealtime() - c0057k.f1010m >= 1000) {
                        c0057k.f1010m = SystemClock.elapsedRealtime();
                        long j14 = (c0057k.f1012o * 3) + c0057k.f1011n;
                        if (c0057k.f1006i > j14) {
                            float fR = p117p0.M.R(1000L);
                            long[] jArr = {j14, c0057k.f1003f, c0057k.f1006i - (((long) ((c0057k.f1009l - 1.0f) * fR)) + ((long) ((c0057k.f1007j - 1.0f) * fR)))};
                            long j15 = jArr[0];
                            for (int i8 = 1; i8 < 3; i8++) {
                                long j16 = jArr[i8];
                                if (j16 > j15) {
                                    j15 = j16;
                                }
                            }
                            c0057k.f1006i = j15;
                        } else {
                            long j17 = p117p0.M.j(jK - ((long) (Math.max(0.0f, c0057k.f1009l - 1.0f) / 1.0E-7f)), c0057k.f1006i, j14);
                            c0057k.f1006i = j17;
                            long j18 = c0057k.f1005h;
                            if (j18 != -9223372036854775807L && j17 > j18) {
                                c0057k.f1006i = j18;
                            }
                        }
                        long j19 = jK - c0057k.f1006i;
                        if (Math.abs(j19) < c0057k.f998a) {
                            c0057k.f1009l = 1.0f;
                        } else {
                            c0057k.f1009l = p117p0.M.h((1.0E-7f * j19) + 1.0f, c0057k.f1008k, c0057k.f1007j);
                        }
                        f8 = c0057k.f1009l;
                    } else {
                        f8 = c0057k.f1009l;
                    }
                }
                if (this.f871U.getPlaybackParameters().f26786a != f8) {
                    p094m0.S s7 = new p094m0.S(f8, this.f889m0.f1106o.f26787b);
                    this.f864N.d(16);
                    this.f871U.setPlaybackParameters(s7);
                    x(this.f889m0.f1106o, this.f871U.getPlaybackParameters().f26786a, false, false);
                }
            }
        }
    }

    public final void z0(p094m0.f0 f0Var, C0300y c0300y, p094m0.f0 f0Var2, C0300y c0300y2, long j8, boolean z7) {
        if (!q0(f0Var, c0300y)) {
            p094m0.S s7 = c0300y.b() ? p094m0.S.f26785d : this.f889m0.f1106o;
            C0065o c0065o = this.f871U;
            if (c0065o.getPlaybackParameters().equals(s7)) {
                return;
            }
            this.f864N.d(16);
            c0065o.setPlaybackParameters(s7);
            x(this.f889m0.f1106o, s7.f26786a, false, false);
            return;
        }
        Object obj = c0300y.f5257a;
        p094m0.d0 d0Var = this.f868R;
        int i8 = f0Var.h(obj, d0Var).f26827c;
        p094m0.e0 e0Var = this.f867Q;
        f0Var.o(i8, e0Var);
        p094m0.D d6 = e0Var.f26843j;
        C0057k c0057k = this.f877a0;
        c0057k.getClass();
        c0057k.f1001d = p117p0.M.R(d6.f26670a);
        c0057k.f1004g = p117p0.M.R(d6.f26671b);
        c0057k.f1005h = p117p0.M.R(d6.f26672c);
        float f8 = d6.f26673d;
        if (f8 == -3.4028235E38f) {
            f8 = 0.97f;
        }
        c0057k.f1008k = f8;
        float f9 = d6.f26674e;
        if (f9 == -3.4028235E38f) {
            f9 = 1.03f;
        }
        c0057k.f1007j = f9;
        if (f8 == 1.0f && f9 == 1.0f) {
            c0057k.f1001d = -9223372036854775807L;
        }
        c0057k.a();
        if (j8 != -9223372036854775807L) {
            c0057k.f1002e = k(f0Var, obj, j8);
            c0057k.a();
            return;
        }
        if (!Objects.equals(!f0Var2.q() ? f0Var2.n(f0Var2.h(c0300y2.f5257a, d0Var).f26827c, e0Var, 0L).f26834a : null, e0Var.f26834a) || z7) {
            c0057k.f1002e = -9223372036854775807L;
            c0057k.a();
        }
    }
}
