package B0;

import C0.C0077b;
import C0.C0084i;
import C0.InterfaceC0076a;
import N.C0260i;
import O0.AbstractC0277a;
import O0.C0300y;
import android.content.Context;
import android.graphics.Rect;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseBooleanArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.image.ImageOutput;
import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.ads.C1960s1;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import p039f.RunnableC3004t;
import p086l.e1;
import p094m0.AbstractC3123f;
import p094m0.C3121d;
import p094m0.C3129l;
import p094m0.C3134q;
import p117p0.C3167e;
import p117p0.C3171i;

/* JADX INFO: loaded from: classes.dex */
public final class O extends AbstractC3123f implements ExoPlayer {

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public static final /* synthetic */ int f757Q0 = 0;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public TextureView f758A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public final int f759B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public p117p0.F f760C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public C3121d f761D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public float f762E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public boolean f763F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public p110o0.c f764G0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final R0.y f765H;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public final boolean f766H0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p094m0.U f767I;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public boolean f768I0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C3171i f769J = new C3171i();

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public final int f770J0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Context f771K;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public boolean f772K0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p094m0.Y f773L;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public p094m0.w0 f774L0;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final AbstractC0051h[] f775M;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public p094m0.L f776M0;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final AbstractC0051h[] f777N;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public v0 f778N0;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final R0.w f779O;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public int f780O0;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final p117p0.I f781P;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public long f782P0;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final H f783Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final X f784R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final p178x.e f785S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final CopyOnWriteArraySet f786T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final p094m0.d0 f787U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final ArrayList f788V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final boolean f789W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final InterfaceC0076a f790X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final Looper f791Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final S0.c f792Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final long f793a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final long f794b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final long f795c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final L f796d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final M f797e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final C0041c f798f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final e1 f799g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final e1 f800h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final long f801i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final C3167e f802j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f803k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f804l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f805m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f806n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f807o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f808p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public z4.L f809q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final H0 f810r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public O0.X f811s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public p094m0.U f812t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public p094m0.L f813u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public Object f814v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public Surface f815w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public SurfaceHolder f816x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public V0.k f817y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public boolean f818z0;

    static {
        p094m0.J.a("media3.exoplayer");
    }

    public O(C0075z c0075z) {
        C0075z c0075z2;
        try {
            p117p0.x.e("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.8.0] [" + p117p0.M.f28050a + "]");
            Context context = c0075z.f1127a;
            this.f771K = context.getApplicationContext();
            p190y4.h hVar = c0075z.f1134h;
            p117p0.G g8 = c0075z.f1128b;
            this.f790X = (InterfaceC0076a) hVar.apply(g8);
            this.f770J0 = c0075z.f1136j;
            this.f761D0 = c0075z.f1137k;
            this.f759B0 = c0075z.f1138l;
            this.f763F0 = false;
            this.f801i0 = c0075z.f1147u;
            L l4 = new L(this);
            this.f796d0 = l4;
            this.f797e0 = new M();
            AbstractC0051h[] abstractC0051hArrA = ((C0066p) c0075z.f1129c.get()).a(new Handler(c0075z.f1135i), l4, l4, l4, l4);
            this.f775M = abstractC0051hArrA;
            H1.i(abstractC0051hArrA.length > 0);
            this.f777N = new AbstractC0051h[abstractC0051hArrA.length];
            int i8 = 0;
            while (true) {
                AbstractC0051h[] abstractC0051hArr = this.f777N;
                if (i8 >= abstractC0051hArr.length) {
                    break;
                }
                this.f775M[i8].getTrackType();
                abstractC0051hArr[i8] = null;
                i8++;
            }
            R0.w wVar = (R0.w) c0075z.f1131e.get();
            this.f779O = wVar;
            S0.c cVar = (S0.c) c0075z.f1133g.get();
            this.f792Z = cVar;
            this.f789W = c0075z.f1139m;
            I0 i9 = c0075z.f1140n;
            this.f793a0 = c0075z.f1142p;
            this.f794b0 = c0075z.f1143q;
            this.f795c0 = c0075z.f1144r;
            this.f810r0 = c0075z.f1141o;
            Looper looper = c0075z.f1135i;
            this.f791Y = looper;
            this.f773L = this;
            this.f785S = new p178x.e(looper, g8, new H(this));
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.f786T = copyOnWriteArraySet;
            this.f788V = new ArrayList();
            this.f811s0 = new O0.X();
            AbstractC0051h[] abstractC0051hArr2 = this.f775M;
            R0.y yVar = new R0.y(new E0[abstractC0051hArr2.length], new R0.t[abstractC0051hArr2.length], p094m0.m0.f26958b, null);
            this.f765H = yVar;
            this.f787U = new p094m0.d0();
            C3134q c3134q = new C3134q(0);
            int[] iArr = {1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32};
            int i10 = 0;
            for (int i11 = 20; i10 < i11; i11 = 20) {
                c3134q.a(iArr[i10]);
                i10++;
            }
            wVar.getClass();
            c3134q.a(29);
            p094m0.r rVarB = c3134q.b();
            this.f767I = new p094m0.U(rVarB);
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            for (int i12 = 0; i12 < rVarB.f26967a.size(); i12++) {
                int iA = rVarB.a(i12);
                H1.i(!false);
                sparseBooleanArray.append(iA, true);
            }
            H1.i(!false);
            sparseBooleanArray.append(4, true);
            H1.i(!false);
            sparseBooleanArray.append(10, true);
            H1.i(!false);
            this.f812t0 = new p094m0.U(new p094m0.r(sparseBooleanArray));
            this.f781P = g8.a(looper, null);
            H h8 = new H(this);
            this.f783Q = h8;
            this.f778N0 = v0.k(yVar);
            ((C0.A) this.f790X).V(this, looper);
            final C0.I i13 = new C0.I(c0075z.f1150x);
            X x7 = new X(this.f771K, this.f775M, this.f777N, wVar, yVar, (InterfaceC0040b0) c0075z.f1132f.get(), cVar, this.f803k0, this.f804l0, this.f790X, i9, c0075z.f1145s, c0075z.f1146t, looper, g8, h8, i13, this.f797e0);
            p117p0.I i14 = x7.f864N;
            this.f784R = x7;
            Looper looper2 = x7.f866P;
            this.f762E0 = 1.0f;
            this.f803k0 = 0;
            p094m0.L l8 = p094m0.L.f26742I;
            this.f813u0 = l8;
            this.f776M0 = l8;
            this.f780O0 = -1;
            this.f764G0 = p110o0.c.f27654c;
            this.f766H0 = true;
            InterfaceC0076a interfaceC0076a = this.f790X;
            interfaceC0076a.getClass();
            this.f785S.a(interfaceC0076a);
            Handler handler = new Handler(looper);
            InterfaceC0076a interfaceC0076a2 = this.f790X;
            S0.f fVar = (S0.f) cVar;
            fVar.getClass();
            interfaceC0076a2.getClass();
            D0.U u7 = fVar.f6338c;
            u7.getClass();
            u7.K(interfaceC0076a2);
            ((CopyOnWriteArrayList) u7.f1868H).add(new S0.b(handler, interfaceC0076a2));
            copyOnWriteArraySet.add(this.f796d0);
            if (Build.VERSION.SDK_INT >= 31) {
                final Context context2 = this.f771K;
                c0075z2 = c0075z;
                final boolean z7 = c0075z2.f1148v;
                g8.a(x7.f866P, null).c(new Runnable() { // from class: B0.J
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context3 = context2;
                        boolean z8 = z7;
                        O o4 = this;
                        C0.I i15 = i13;
                        MediaMetricsManager mediaMetricsManagerB = C0.D.b(context3.getSystemService("media_metrics"));
                        C0.F f8 = mediaMetricsManagerB == null ? null : new C0.F(context3, mediaMetricsManagerB.createPlaybackSession());
                        if (f8 == null) {
                            p117p0.x.f("ExoPlayerImpl", "MediaMetricsService unavailable.");
                            return;
                        }
                        if (z8) {
                            o4.getClass();
                            C0.A a8 = (C0.A) o4.f790X;
                            a8.getClass();
                            a8.f1231L.a(f8);
                        }
                        LogSessionId sessionId = f8.f1256d.getSessionId();
                        synchronized (i15) {
                            C0.H h9 = i15.f1281b;
                            h9.getClass();
                            H1.i(h9.f1279a.equals(LogSessionId.LOG_SESSION_ID_NONE));
                            h9.f1279a = sessionId;
                        }
                    }
                });
            } else {
                c0075z2 = c0075z;
            }
            C3167e c3167e = new C3167e(0, looper2, looper, g8, new H(this));
            this.f802j0 = c3167e;
            c3167e.a(new p000a.b(this, 12));
            C0041c c0041c = new C0041c(c0075z2.f1127a, looper2, c0075z2.f1135i, this.f796d0, g8);
            this.f798f0 = c0041c;
            c0041c.m(false);
            e1 e1Var = new e1(context, looper2, g8, 1);
            this.f799g0 = e1Var;
            e1Var.f();
            e1 e1Var2 = new e1(context, looper2, g8, 2);
            this.f800h0 = e1Var2;
            e1Var2.f();
            int i15 = C3129l.f26943e;
            this.f774L0 = p094m0.w0.f27062d;
            this.f760C0 = p117p0.F.f28038c;
            i14.a(38, this.f810r0).b();
            C3121d c3121d = this.f761D0;
            i14.getClass();
            p117p0.H hB = p117p0.I.b();
            hB.f28041a = i14.f28043a.obtainMessage(31, 0, 0, c3121d);
            hB.b();
            O(1, this.f761D0, 3);
            O(2, Integer.valueOf(this.f759B0), 4);
            O(2, 0, 5);
            O(1, Boolean.valueOf(this.f763F0), 9);
            O(6, this.f797e0, 8);
            O(-1, Integer.valueOf(this.f770J0), 16);
        } finally {
            this.f769J.f();
        }
    }

    public static long D(v0 v0Var) {
        p094m0.e0 e0Var = new p094m0.e0();
        p094m0.d0 d0Var = new p094m0.d0();
        v0Var.f1092a.h(v0Var.f1093b.f5257a, d0Var);
        long j8 = v0Var.f1094c;
        if (j8 != -9223372036854775807L) {
            return d0Var.f26829e + j8;
        }
        return v0Var.f1092a.n(d0Var.f26827c, e0Var, 0L).f26845l;
    }

    public static v0 G(v0 v0Var, int i8) {
        v0 v0VarH = v0Var.h(i8);
        return (i8 == 1 || i8 == 4) ? v0VarH.b(false) : v0VarH;
    }

    public final long A() {
        c0();
        if (!F()) {
            return a();
        }
        v0 v0Var = this.f778N0;
        C0300y c0300y = v0Var.f1093b;
        p094m0.f0 f0Var = v0Var.f1092a;
        Object obj = c0300y.f5257a;
        p094m0.d0 d0Var = this.f787U;
        f0Var.h(obj, d0Var);
        return p117p0.M.e0(d0Var.a(c0300y.f5258b, c0300y.f5259c));
    }

    public final boolean B() {
        c0();
        return this.f778N0.f1103l;
    }

    public final int C() {
        c0();
        return this.f778N0.f1096e;
    }

    public final p094m0.k0 E() {
        c0();
        R0.k kVarH = ((R0.q) this.f779O).h();
        if (!this.f808p0) {
            return kVarH;
        }
        kVarH.getClass();
        R0.j jVar = new R0.j(kVarH);
        jVar.k(this.f809q0);
        return new R0.k(jVar);
    }

    public final boolean F() {
        c0();
        return this.f778N0.f1093b.b();
    }

    public final v0 H(v0 v0Var, p094m0.f0 f0Var, Pair pair) {
        List list;
        H1.d(f0Var.q() || pair != null);
        p094m0.f0 f0Var2 = v0Var.f1092a;
        long jQ = q(v0Var);
        v0 v0VarJ = v0Var.j(f0Var);
        if (f0Var.q()) {
            C0300y c0300y = v0.f1091u;
            long jR = p117p0.M.R(this.f782P0);
            v0 v0VarC = v0VarJ.d(c0300y, jR, jR, jR, 0L, O0.Z.f5181d, this.f765H, z4.d0.f31844K).c(c0300y);
            v0VarC.f1108q = v0VarC.f1110s;
            return v0VarC;
        }
        Object obj = v0VarJ.f1093b.f5257a;
        boolean z7 = !obj.equals(pair.first);
        C0300y c0300y2 = z7 ? new C0300y(pair.first) : v0VarJ.f1093b;
        long jLongValue = ((Long) pair.second).longValue();
        long jR2 = p117p0.M.R(jQ);
        if (!f0Var2.q()) {
            jR2 -= f0Var2.h(obj, this.f787U).f26829e;
        }
        if (z7 || jLongValue < jR2) {
            H1.i(!c0300y2.b());
            O0.Z z8 = z7 ? O0.Z.f5181d : v0VarJ.f1099h;
            R0.y yVar = z7 ? this.f765H : v0VarJ.f1100i;
            if (z7) {
                z4.F f8 = z4.H.f31804H;
                list = z4.d0.f31844K;
            } else {
                list = v0VarJ.f1101j;
            }
            v0 v0VarC2 = v0VarJ.d(c0300y2, jLongValue, jLongValue, jLongValue, 0L, z8, yVar, list).c(c0300y2);
            v0VarC2.f1108q = jLongValue;
            return v0VarC2;
        }
        if (jLongValue != jR2) {
            H1.i(!c0300y2.b());
            long jMax = Math.max(0L, v0VarJ.f1109r - (jLongValue - jR2));
            long j8 = v0VarJ.f1108q;
            if (v0VarJ.f1102k.equals(v0VarJ.f1093b)) {
                j8 = jLongValue + jMax;
            }
            v0 v0VarD = v0VarJ.d(c0300y2, jLongValue, jLongValue, jLongValue, jMax, v0VarJ.f1099h, v0VarJ.f1100i, v0VarJ.f1101j);
            v0VarD.f1108q = j8;
            return v0VarD;
        }
        int iB = f0Var.b(v0VarJ.f1102k.f5257a);
        if (iB != -1 && f0Var.g(iB, this.f787U, false).f26827c == f0Var.h(c0300y2.f5257a, this.f787U).f26827c) {
            return v0VarJ;
        }
        f0Var.h(c0300y2.f5257a, this.f787U);
        long jA = c0300y2.b() ? this.f787U.a(c0300y2.f5258b, c0300y2.f5259c) : this.f787U.f26828d;
        v0 v0VarC3 = v0VarJ.d(c0300y2, v0VarJ.f1110s, v0VarJ.f1110s, v0VarJ.f1095d, jA - v0VarJ.f1110s, v0VarJ.f1099h, v0VarJ.f1100i, v0VarJ.f1101j).c(c0300y2);
        v0VarC3.f1108q = jA;
        return v0VarC3;
    }

    public final Pair I(p094m0.f0 f0Var, int i8, long j8) {
        if (f0Var.q()) {
            this.f780O0 = i8;
            if (j8 == -9223372036854775807L) {
                j8 = 0;
            }
            this.f782P0 = j8;
            return null;
        }
        if (i8 == -1 || i8 >= f0Var.p()) {
            i8 = f0Var.a(this.f804l0);
            j8 = p117p0.M.e0(f0Var.n(i8, this.f26850G, 0L).f26845l);
        }
        return f0Var.j(this.f26850G, this.f787U, i8, p117p0.M.R(j8));
    }

    public final void J(final int i8, final int i9) {
        p117p0.F f8 = this.f760C0;
        if (i8 == f8.f28039a && i9 == f8.f28040b) {
            return;
        }
        this.f760C0 = new p117p0.F(i8, i9);
        this.f785S.l(24, new p117p0.u() { // from class: B0.F
            @Override // p117p0.u
            public final void invoke(Object obj) {
                ((p094m0.W) obj).G(i8, i9);
            }
        });
        O(2, new p117p0.F(i8, i9), 14);
    }

    public final void K() {
        c0();
        v0 v0Var = this.f778N0;
        if (v0Var.f1096e != 1) {
            return;
        }
        v0 v0VarF = v0Var.f(null);
        v0 v0VarG = G(v0VarF, v0VarF.f1092a.q() ? 4 : 2);
        this.f805m0++;
        p117p0.I i8 = this.f784R.f864N;
        i8.getClass();
        p117p0.H hB = p117p0.I.b();
        hB.f28041a = i8.f28043a.obtainMessage(29);
        hB.b();
        a0(v0VarG, 1, false, 5, -9223372036854775807L, -1, false);
    }

    public final void L() {
        String str;
        StringBuilder sb = new StringBuilder("Release ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [AndroidXMedia3/1.8.0] [");
        sb.append(p117p0.M.f28050a);
        sb.append("] [");
        HashSet hashSet = p094m0.J.f26707a;
        synchronized (p094m0.J.class) {
            str = p094m0.J.f26708b;
        }
        sb.append(str);
        sb.append("]");
        p117p0.x.e("ExoPlayerImpl", sb.toString());
        c0();
        this.f798f0.m(false);
        this.f799g0.g(false);
        this.f800h0.g(false);
        X x7 = this.f784R;
        if (!x7.f891o0 && x7.f866P.getThread().isAlive()) {
            x7.f891o0 = true;
            C3171i c3171i = new C3171i(x7.f873W);
            int i8 = 7;
            x7.f864N.a(7, c3171i).b();
            if (!c3171i.d(x7.f878b0)) {
                this.f785S.l(10, new C0260i(i8));
            }
        }
        this.f785S.k();
        this.f781P.f28043a.removeCallbacksAndMessages(null);
        S0.c cVar = this.f792Z;
        ((S0.f) cVar).f6338c.K(this.f790X);
        v0 v0Var = this.f778N0;
        if (v0Var.f1107p) {
            this.f778N0 = v0Var.a();
        }
        v0 v0VarG = G(this.f778N0, 1);
        this.f778N0 = v0VarG;
        v0 v0VarC = v0VarG.c(v0VarG.f1093b);
        this.f778N0 = v0VarC;
        v0VarC.f1108q = v0VarC.f1110s;
        this.f778N0.f1109r = 0L;
        C0.A a8 = (C0.A) this.f790X;
        p117p0.I i9 = a8.f1233N;
        H1.j(i9);
        i9.c(new p000a.b(a8, 14));
        N();
        Surface surface = this.f815w0;
        if (surface != null) {
            surface.release();
            this.f815w0 = null;
        }
        this.f764G0 = p110o0.c.f27654c;
        this.f772K0 = true;
    }

    public final void M(p094m0.W w7) {
        c0();
        w7.getClass();
        p178x.e eVar = this.f785S;
        eVar.m();
        CopyOnWriteArraySet<p117p0.w> copyOnWriteArraySet = (CopyOnWriteArraySet) eVar.f31132f;
        for (p117p0.w wVar : copyOnWriteArraySet) {
            if (wVar.f28122a.equals(w7)) {
                p117p0.v vVar = (p117p0.v) eVar.f31131e;
                wVar.f28125d = true;
                if (wVar.f28124c) {
                    wVar.f28124c = false;
                    vVar.c(wVar.f28122a, wVar.f28123b.b());
                }
                copyOnWriteArraySet.remove(wVar);
            }
        }
    }

    public final void N() {
        V0.k kVar = this.f817y0;
        L l4 = this.f796d0;
        if (kVar != null) {
            z0 z0VarP = p(this.f797e0);
            H1.i(!z0VarP.f1156f);
            z0VarP.f1153c = 10000;
            H1.i(!z0VarP.f1156f);
            z0VarP.f1154d = null;
            z0VarP.b();
            this.f817y0.f7065G.remove(l4);
            this.f817y0 = null;
        }
        TextureView textureView = this.f758A0;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != l4) {
                p117p0.x.f("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.f758A0.setSurfaceTextureListener(null);
            }
            this.f758A0 = null;
        }
        SurfaceHolder surfaceHolder = this.f816x0;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(l4);
            this.f816x0 = null;
        }
    }

    public final void O(int i8, Object obj, int i9) {
        for (AbstractC0051h abstractC0051h : this.f775M) {
            if (i8 == -1 || abstractC0051h.getTrackType() == i8) {
                z0 z0VarP = p(abstractC0051h);
                H1.i(!z0VarP.f1156f);
                z0VarP.f1153c = i9;
                H1.i(!z0VarP.f1156f);
                z0VarP.f1154d = obj;
                z0VarP.b();
            }
        }
        for (AbstractC0051h abstractC0051h2 : this.f777N) {
            if (abstractC0051h2 != null && (i8 == -1 || abstractC0051h2.getTrackType() == i8)) {
                z0 z0VarP2 = p(abstractC0051h2);
                H1.i(!z0VarP2.f1156f);
                z0VarP2.f1153c = i9;
                H1.i(!z0VarP2.f1156f);
                z0VarP2.f1154d = obj;
                z0VarP2.b();
            }
        }
    }

    public final void P() {
        C3121d c3121d = C3121d.f26823b;
        c0();
        if (this.f772K0) {
            return;
        }
        boolean zEquals = Objects.equals(this.f761D0, c3121d);
        p178x.e eVar = this.f785S;
        if (!zEquals) {
            this.f761D0 = c3121d;
            O(1, c3121d, 3);
            eVar.j(20, new C0073x(c3121d, 7));
        }
        C3121d c3121d2 = this.f761D0;
        p117p0.I i8 = this.f784R.f864N;
        i8.getClass();
        p117p0.H hB = p117p0.I.b();
        hB.f28041a = i8.f28043a.obtainMessage(31, 1, 0, c3121d2);
        hB.b();
        eVar.g();
    }

    public final void Q(AbstractC0277a abstractC0277a) {
        c0();
        List listSingletonList = Collections.singletonList(abstractC0277a);
        c0();
        c0();
        z(this.f778N0);
        v();
        this.f805m0++;
        ArrayList arrayList = this.f788V;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            for (int i8 = size - 1; i8 >= 0; i8--) {
                arrayList.remove(i8);
            }
            O0.X x7 = this.f811s0;
            int[] iArr = x7.f5166b;
            int[] iArr2 = new int[iArr.length - size];
            int i9 = 0;
            for (int i10 = 0; i10 < iArr.length; i10++) {
                int i11 = iArr[i10];
                if (i11 < 0 || i11 >= size) {
                    int i12 = i10 - i9;
                    if (i11 >= 0) {
                        i11 -= size;
                    }
                    iArr2[i12] = i11;
                } else {
                    i9++;
                }
            }
            this.f811s0 = new O0.X(iArr2, new Random(x7.f5165a.nextLong()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i13 = 0; i13 < listSingletonList.size(); i13++) {
            s0 s0Var = new s0((AbstractC0277a) listSingletonList.get(i13), this.f789W);
            arrayList2.add(s0Var);
            arrayList.add(i13, new N(s0Var.f1070b, s0Var.f1069a));
        }
        this.f811s0 = this.f811s0.a(arrayList2.size());
        B0 b8 = new B0(arrayList, this.f811s0);
        boolean zQ = b8.q();
        int i14 = b8.f687d;
        if (!zQ && -1 >= i14) {
            throw new C1960s1();
        }
        int iA = b8.a(this.f804l0);
        v0 v0VarH = H(this.f778N0, b8, I(b8, iA, -9223372036854775807L));
        int i15 = v0VarH.f1096e;
        if (iA != -1 && i15 != 1) {
            i15 = (b8.q() || iA >= i14) ? 4 : 2;
        }
        v0 v0VarG = G(v0VarH, i15);
        this.f784R.f864N.a(17, new T(arrayList2, this.f811s0, iA, p117p0.M.R(-9223372036854775807L))).b();
        a0(v0VarG, 0, (this.f778N0.f1093b.f5257a.equals(v0VarG.f1093b.f5257a) || this.f778N0.f1092a.q()) ? false : true, 4, w(v0VarG), -1, false);
    }

    public final void R(SurfaceHolder surfaceHolder) {
        this.f818z0 = false;
        this.f816x0 = surfaceHolder;
        surfaceHolder.addCallback(this.f796d0);
        Surface surface = this.f816x0.getSurface();
        if (surface == null || !surface.isValid()) {
            J(0, 0);
        } else {
            Rect surfaceFrame = this.f816x0.getSurfaceFrame();
            J(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    public final void S(boolean z7) {
        c0();
        Z(1, z7);
    }

    public final void T(int i8) {
        c0();
        if (this.f803k0 != i8) {
            this.f803k0 = i8;
            p117p0.I i9 = this.f784R.f864N;
            i9.getClass();
            p117p0.H hB = p117p0.I.b();
            hB.f28041a = i9.f28043a.obtainMessage(11, i8, 0);
            hB.b();
            G g8 = new G(i8, 0);
            p178x.e eVar = this.f785S;
            eVar.j(8, g8);
            Y();
            eVar.g();
        }
    }

    public final void U(p094m0.k0 k0Var) {
        p094m0.k0 k0VarB;
        c0();
        R0.w wVar = this.f779O;
        wVar.getClass();
        p094m0.k0 k0VarE = E();
        if (this.f808p0) {
            this.f809q0 = k0Var.f26916E;
            z4.L l4 = this.f810r0.f721a;
            p094m0.j0 j0VarA = k0Var.a();
            AbstractC1349gB it = l4.iterator();
            while (it.hasNext()) {
                j0VarA.j(((Integer) it.next()).intValue(), true);
            }
            k0VarB = j0VarA.b();
        } else {
            k0VarB = k0Var;
        }
        if (!k0VarB.equals(((R0.q) wVar).h())) {
            wVar.b(k0VarB);
        }
        if (k0VarE.equals(k0Var)) {
            return;
        }
        this.f785S.l(19, new C0073x(k0Var, 8));
    }

    public final void V(Object obj) {
        Object obj2 = this.f814v0;
        boolean zD = true;
        boolean z7 = (obj2 == null || obj2 == obj) ? false : true;
        long j8 = z7 ? this.f801i0 : -9223372036854775807L;
        X x7 = this.f784R;
        if (!x7.f891o0 && x7.f866P.getThread().isAlive()) {
            C3171i c3171i = new C3171i(x7.f873W);
            x7.f864N.a(30, new Pair(obj, c3171i)).b();
            if (j8 != -9223372036854775807L) {
                zD = c3171i.d(j8);
            }
        }
        if (z7) {
            Object obj3 = this.f814v0;
            Surface surface = this.f815w0;
            if (obj3 == surface) {
                surface.release();
                this.f815w0 = null;
            }
        }
        this.f814v0 = obj;
        if (zD) {
            return;
        }
        X(new C0072w(2, new Y(3), 1003));
    }

    public final void W(float f8) {
        c0();
        final float fH = p117p0.M.h(f8, 0.0f, 1.0f);
        if (this.f762E0 == fH) {
            return;
        }
        this.f762E0 = fH;
        this.f784R.f864N.a(32, Float.valueOf(fH)).b();
        this.f785S.l(22, new p117p0.u() { // from class: B0.E
            @Override // p117p0.u
            public final void invoke(Object obj) {
                ((p094m0.W) obj).k(fH);
            }
        });
    }

    public final void X(C0072w c0072w) {
        v0 v0Var = this.f778N0;
        v0 v0VarC = v0Var.c(v0Var.f1093b);
        v0VarC.f1108q = v0VarC.f1110s;
        v0VarC.f1109r = 0L;
        v0 v0VarG = G(v0VarC, 1);
        if (c0072w != null) {
            v0VarG = v0VarG.f(c0072w);
        }
        v0 v0Var2 = v0VarG;
        this.f805m0++;
        p117p0.I i8 = this.f784R.f864N;
        i8.getClass();
        p117p0.H hB = p117p0.I.b();
        hB.f28041a = i8.f28043a.obtainMessage(6);
        hB.b();
        a0(v0Var2, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0037  */
    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    public final void Y() {
        boolean z7;
        boolean z8;
        p094m0.U u7 = this.f812t0;
        String str = p117p0.M.f28050a;
        O o4 = (O) this.f773L;
        boolean zF = o4.F();
        boolean zF2 = o4.f();
        p094m0.f0 f0VarX = o4.x();
        boolean z9 = false;
        if (f0VarX.q()) {
            z7 = false;
        } else {
            int iT = o4.t();
            o4.c0();
            int i8 = o4.f803k0;
            if (i8 == 1) {
                i8 = 0;
            }
            o4.c0();
            if (f0VarX.l(o4.f804l0, iT, i8) != -1) {
                z7 = true;
            } else {
                z7 = false;
            }
        }
        p094m0.f0 f0VarX2 = o4.x();
        if (f0VarX2.q()) {
            z8 = false;
        } else {
            int iT2 = o4.t();
            o4.c0();
            int i9 = o4.f803k0;
            if (i9 == 1) {
                i9 = 0;
            }
            o4.c0();
            if (f0VarX2.e(o4.f804l0, iT2, i9) != -1) {
                z8 = true;
            } else {
                z8 = false;
            }
        }
        boolean zE = o4.e();
        boolean zD = o4.d();
        boolean zQ = o4.x().q();
        p094m0.T t7 = new p094m0.T();
        p094m0.r rVar = this.f767I.f26790a;
        C3134q c3134q = t7.f26789a;
        c3134q.getClass();
        for (int i10 = 0; i10 < rVar.f26967a.size(); i10++) {
            c3134q.a(rVar.a(i10));
        }
        boolean z10 = !zF;
        t7.a(4, z10);
        t7.a(5, zF2 && !zF);
        t7.a(6, z7 && !zF);
        t7.a(7, !zQ && (z7 || !zE || zF2) && !zF);
        t7.a(8, z8 && !zF);
        t7.a(9, !zQ && (z8 || (zE && zD)) && !zF);
        t7.a(10, z10);
        t7.a(11, zF2 && !zF);
        if (zF2 && !zF) {
            z9 = true;
        }
        t7.a(12, z9);
        p094m0.U u8 = new p094m0.U(c3134q.b());
        this.f812t0 = u8;
        if (u8.equals(u7)) {
            return;
        }
        this.f785S.j(13, new H(this));
    }

    public final void Z(int i8, boolean z7) {
        int i9;
        if (this.f808p0) {
            i9 = 4;
        } else {
            i9 = (this.f778N0.f1105n != 1 || z7) ? 0 : 1;
        }
        v0 v0VarA = this.f778N0;
        if (v0VarA.f1103l == z7 && v0VarA.f1105n == i9 && v0VarA.f1104m == i8) {
            return;
        }
        this.f805m0++;
        if (v0VarA.f1107p) {
            v0VarA = v0VarA.a();
        }
        v0 v0VarE = v0VarA.e(z7, i8, i9);
        int i10 = i8 | (i9 << 4);
        p117p0.I i11 = this.f784R.f864N;
        i11.getClass();
        p117p0.H hB = p117p0.I.b();
        hB.f28041a = i11.f28043a.obtainMessage(1, z7 ? 1 : 0, i10);
        hB.b();
        a0(v0VarE, 0, false, 5, -9223372036854775807L, -1, false);
    }

    public final void a0(final v0 v0Var, final int i8, boolean z7, int i9, long j8, int i10, boolean z8) {
        Pair pair;
        int i11;
        final p094m0.I i12;
        int i13;
        Object obj;
        p094m0.I i14;
        Object obj2;
        int i15;
        long jD;
        long jD2;
        Object obj3;
        p094m0.I i16;
        Object obj4;
        int i17;
        v0 v0Var2 = this.f778N0;
        this.f778N0 = v0Var;
        boolean z9 = !v0Var2.f1092a.equals(v0Var.f1092a);
        p094m0.f0 f0Var = v0Var2.f1092a;
        p094m0.f0 f0Var2 = v0Var.f1092a;
        if (f0Var2.q() && f0Var.q()) {
            pair = new Pair(Boolean.FALSE, -1);
        } else if (f0Var2.q() != f0Var.q()) {
            pair = new Pair(Boolean.TRUE, 3);
        } else {
            C0300y c0300y = v0Var2.f1093b;
            Object obj5 = c0300y.f5257a;
            p094m0.d0 d0Var = this.f787U;
            int i18 = f0Var.h(obj5, d0Var).f26827c;
            p094m0.e0 e0Var = this.f26850G;
            Object obj6 = f0Var.n(i18, e0Var, 0L).f26834a;
            C0300y c0300y2 = v0Var.f1093b;
            if (!obj6.equals(f0Var2.n(f0Var2.h(c0300y2.f5257a, d0Var).f26827c, e0Var, 0L).f26834a)) {
                if (z7 && i9 == 0) {
                    i11 = 1;
                } else if (z7 && i9 == 1) {
                    i11 = 2;
                } else {
                    if (!z9) {
                        throw new IllegalStateException();
                    }
                    i11 = 3;
                }
                pair = new Pair(Boolean.TRUE, Integer.valueOf(i11));
            } else if (z7 && i9 == 0 && c0300y.f5260d < c0300y2.f5260d) {
                pair = new Pair(Boolean.TRUE, 0);
            } else {
                pair = (z7 && i9 == 1 && z8) ? new Pair(Boolean.TRUE, 2) : new Pair(Boolean.FALSE, -1);
            }
        }
        boolean zBooleanValue = ((Boolean) pair.first).booleanValue();
        final int iIntValue = ((Integer) pair.second).intValue();
        if (zBooleanValue) {
            i12 = v0Var.f1092a.q() ? null : v0Var.f1092a.n(v0Var.f1092a.h(v0Var.f1093b.f5257a, this.f787U).f26827c, this.f26850G, 0L).f26836c;
            this.f776M0 = p094m0.L.f26742I;
        } else {
            i12 = null;
        }
        if (zBooleanValue || !v0Var2.f1101j.equals(v0Var.f1101j)) {
            p094m0.K kA = this.f776M0.a();
            List list = v0Var.f1101j;
            for (int i19 = 0; i19 < list.size(); i19++) {
                p094m0.N n7 = (p094m0.N) list.get(i19);
                int i20 = 0;
                while (true) {
                    p094m0.M[] mArr = n7.f26777a;
                    if (i20 < mArr.length) {
                        mArr[i20].populateMediaMetadata(kA);
                        i20++;
                    }
                }
            }
            this.f776M0 = new p094m0.L(kA);
        }
        p094m0.L lN = n();
        boolean z10 = !lN.equals(this.f813u0);
        this.f813u0 = lN;
        boolean z11 = v0Var2.f1103l != v0Var.f1103l;
        boolean z12 = v0Var2.f1096e != v0Var.f1096e;
        if (z12 || z11) {
            b0();
        }
        boolean z13 = v0Var2.f1098g != v0Var.f1098g;
        if (z9) {
            final int i21 = 0;
            this.f785S.j(0, new p117p0.u() { // from class: B0.B
                @Override // p117p0.u
                public final void invoke(Object obj7) {
                    int i22 = i21;
                    int i23 = i8;
                    Object obj8 = v0Var;
                    switch (i22) {
                        case 0:
                            p094m0.f0 f0Var3 = ((v0) obj8).f1092a;
                            ((p094m0.W) obj7).u(i23);
                            break;
                        default:
                            ((p094m0.W) obj7).t((p094m0.I) obj8, i23);
                            break;
                    }
                }
            });
        }
        if (z7) {
            p094m0.d0 d0Var2 = new p094m0.d0();
            if (v0Var2.f1092a.q()) {
                i13 = i10;
                obj = null;
                i14 = null;
                obj2 = null;
                i15 = -1;
            } else {
                Object obj7 = v0Var2.f1093b.f5257a;
                v0Var2.f1092a.h(obj7, d0Var2);
                int i22 = d0Var2.f26827c;
                int iB = v0Var2.f1092a.b(obj7);
                obj2 = obj7;
                obj = v0Var2.f1092a.n(i22, this.f26850G, 0L).f26834a;
                i14 = this.f26850G.f26836c;
                i13 = i22;
                i15 = iB;
            }
            if (i9 == 0) {
                if (v0Var2.f1093b.b()) {
                    C0300y c0300y3 = v0Var2.f1093b;
                    jD = d0Var2.a(c0300y3.f5258b, c0300y3.f5259c);
                    jD2 = D(v0Var2);
                } else {
                    jD = v0Var2.f1093b.f5261e != -1 ? D(this.f778N0) : d0Var2.f26828d + d0Var2.f26829e;
                    jD2 = jD;
                }
            } else if (v0Var2.f1093b.b()) {
                jD = v0Var2.f1110s;
                jD2 = D(v0Var2);
            } else {
                jD = d0Var2.f26829e + v0Var2.f1110s;
                jD2 = jD;
            }
            long jE0 = p117p0.M.e0(jD);
            long jE1 = p117p0.M.e0(jD2);
            C0300y c0300y4 = v0Var2.f1093b;
            p094m0.X x7 = new p094m0.X(obj, i13, i14, obj2, i15, jE0, jE1, c0300y4.f5258b, c0300y4.f5259c);
            int iT = t();
            if (this.f778N0.f1092a.q()) {
                obj3 = null;
                i16 = null;
                obj4 = null;
                i17 = -1;
            } else {
                v0 v0Var3 = this.f778N0;
                Object obj8 = v0Var3.f1093b.f5257a;
                v0Var3.f1092a.h(obj8, this.f787U);
                int iB2 = this.f778N0.f1092a.b(obj8);
                p094m0.f0 f0Var3 = this.f778N0.f1092a;
                p094m0.e0 e0Var2 = this.f26850G;
                i17 = iB2;
                obj3 = f0Var3.n(iT, e0Var2, 0L).f26834a;
                i16 = e0Var2.f26836c;
                obj4 = obj8;
            }
            long jE2 = p117p0.M.e0(j8);
            long jE3 = this.f778N0.f1093b.b() ? p117p0.M.e0(D(this.f778N0)) : jE2;
            C0300y c0300y5 = this.f778N0.f1093b;
            this.f785S.j(11, new D(i9, x7, new p094m0.X(obj3, iT, i16, obj4, i17, jE2, jE3, c0300y5.f5258b, c0300y5.f5259c)));
        } else {
            z10 = z10;
            z12 = z12;
            z13 = z13;
        }
        if (zBooleanValue) {
            final int i23 = 1;
            this.f785S.j(1, new p117p0.u() { // from class: B0.B
                @Override // p117p0.u
                public final void invoke(Object obj9) {
                    int i24 = i23;
                    int i25 = iIntValue;
                    Object obj10 = i12;
                    switch (i24) {
                        case 0:
                            p094m0.f0 f0Var4 = ((v0) obj10).f1092a;
                            ((p094m0.W) obj9).u(i25);
                            break;
                        default:
                            ((p094m0.W) obj9).t((p094m0.I) obj10, i25);
                            break;
                    }
                }
            });
        }
        final int i24 = 5;
        final int i25 = 4;
        if (v0Var2.f1097f != v0Var.f1097f) {
            this.f785S.j(10, new p117p0.u() { // from class: B0.C
                @Override // p117p0.u
                public final void invoke(Object obj9) {
                    int i26 = i25;
                    v0 v0Var4 = v0Var;
                    p094m0.W w7 = (p094m0.W) obj9;
                    switch (i26) {
                        case 0:
                            w7.j(v0Var4.f1104m, v0Var4.f1103l);
                            break;
                        case 1:
                            w7.a(v0Var4.f1105n);
                            break;
                        case 2:
                            w7.O(v0Var4.m());
                            break;
                        case 3:
                            w7.n(v0Var4.f1106o);
                            break;
                        case 4:
                            w7.v(v0Var4.f1097f);
                            break;
                        case 5:
                            w7.p(v0Var4.f1097f);
                            break;
                        case 6:
                            w7.A(v0Var4.f1100i.f6255d);
                            break;
                        case 7:
                            boolean z14 = v0Var4.f1098g;
                            w7.getClass();
                            w7.i(v0Var4.f1098g);
                            break;
                        case 8:
                            w7.z(v0Var4.f1096e, v0Var4.f1103l);
                            break;
                        default:
                            w7.m(v0Var4.f1096e);
                            break;
                    }
                }
            });
            if (v0Var.f1097f != null) {
                this.f785S.j(10, new p117p0.u() { // from class: B0.C
                    @Override // p117p0.u
                    public final void invoke(Object obj9) {
                        int i26 = i24;
                        v0 v0Var4 = v0Var;
                        p094m0.W w7 = (p094m0.W) obj9;
                        switch (i26) {
                            case 0:
                                w7.j(v0Var4.f1104m, v0Var4.f1103l);
                                break;
                            case 1:
                                w7.a(v0Var4.f1105n);
                                break;
                            case 2:
                                w7.O(v0Var4.m());
                                break;
                            case 3:
                                w7.n(v0Var4.f1106o);
                                break;
                            case 4:
                                w7.v(v0Var4.f1097f);
                                break;
                            case 5:
                                w7.p(v0Var4.f1097f);
                                break;
                            case 6:
                                w7.A(v0Var4.f1100i.f6255d);
                                break;
                            case 7:
                                boolean z14 = v0Var4.f1098g;
                                w7.getClass();
                                w7.i(v0Var4.f1098g);
                                break;
                            case 8:
                                w7.z(v0Var4.f1096e, v0Var4.f1103l);
                                break;
                            default:
                                w7.m(v0Var4.f1096e);
                                break;
                        }
                    }
                });
            }
        }
        R0.y yVar = v0Var2.f1100i;
        R0.y yVar2 = v0Var.f1100i;
        final int i26 = 6;
        if (yVar != yVar2) {
            R0.w wVar = this.f779O;
            Object obj9 = yVar2.f6256e;
            wVar.getClass();
            this.f785S.j(2, new p117p0.u() { // from class: B0.C
                @Override // p117p0.u
                public final void invoke(Object obj10) {
                    int i27 = i26;
                    v0 v0Var4 = v0Var;
                    p094m0.W w7 = (p094m0.W) obj10;
                    switch (i27) {
                        case 0:
                            w7.j(v0Var4.f1104m, v0Var4.f1103l);
                            break;
                        case 1:
                            w7.a(v0Var4.f1105n);
                            break;
                        case 2:
                            w7.O(v0Var4.m());
                            break;
                        case 3:
                            w7.n(v0Var4.f1106o);
                            break;
                        case 4:
                            w7.v(v0Var4.f1097f);
                            break;
                        case 5:
                            w7.p(v0Var4.f1097f);
                            break;
                        case 6:
                            w7.A(v0Var4.f1100i.f6255d);
                            break;
                        case 7:
                            boolean z14 = v0Var4.f1098g;
                            w7.getClass();
                            w7.i(v0Var4.f1098g);
                            break;
                        case 8:
                            w7.z(v0Var4.f1096e, v0Var4.f1103l);
                            break;
                        default:
                            w7.m(v0Var4.f1096e);
                            break;
                    }
                }
            });
        }
        if (z10) {
            this.f785S.j(14, new C0073x(this.f813u0, i26));
        }
        final int i27 = 7;
        if (z13) {
            this.f785S.j(3, new p117p0.u() { // from class: B0.C
                @Override // p117p0.u
                public final void invoke(Object obj10) {
                    int i28 = i27;
                    v0 v0Var4 = v0Var;
                    p094m0.W w7 = (p094m0.W) obj10;
                    switch (i28) {
                        case 0:
                            w7.j(v0Var4.f1104m, v0Var4.f1103l);
                            break;
                        case 1:
                            w7.a(v0Var4.f1105n);
                            break;
                        case 2:
                            w7.O(v0Var4.m());
                            break;
                        case 3:
                            w7.n(v0Var4.f1106o);
                            break;
                        case 4:
                            w7.v(v0Var4.f1097f);
                            break;
                        case 5:
                            w7.p(v0Var4.f1097f);
                            break;
                        case 6:
                            w7.A(v0Var4.f1100i.f6255d);
                            break;
                        case 7:
                            boolean z14 = v0Var4.f1098g;
                            w7.getClass();
                            w7.i(v0Var4.f1098g);
                            break;
                        case 8:
                            w7.z(v0Var4.f1096e, v0Var4.f1103l);
                            break;
                        default:
                            w7.m(v0Var4.f1096e);
                            break;
                    }
                }
            });
        }
        if (z12 || z11) {
            final int i28 = 8;
            this.f785S.j(-1, new p117p0.u() { // from class: B0.C
                @Override // p117p0.u
                public final void invoke(Object obj10) {
                    int i29 = i28;
                    v0 v0Var4 = v0Var;
                    p094m0.W w7 = (p094m0.W) obj10;
                    switch (i29) {
                        case 0:
                            w7.j(v0Var4.f1104m, v0Var4.f1103l);
                            break;
                        case 1:
                            w7.a(v0Var4.f1105n);
                            break;
                        case 2:
                            w7.O(v0Var4.m());
                            break;
                        case 3:
                            w7.n(v0Var4.f1106o);
                            break;
                        case 4:
                            w7.v(v0Var4.f1097f);
                            break;
                        case 5:
                            w7.p(v0Var4.f1097f);
                            break;
                        case 6:
                            w7.A(v0Var4.f1100i.f6255d);
                            break;
                        case 7:
                            boolean z14 = v0Var4.f1098g;
                            w7.getClass();
                            w7.i(v0Var4.f1098g);
                            break;
                        case 8:
                            w7.z(v0Var4.f1096e, v0Var4.f1103l);
                            break;
                        default:
                            w7.m(v0Var4.f1096e);
                            break;
                    }
                }
            });
        }
        if (z12) {
            final int i29 = 9;
            this.f785S.j(4, new p117p0.u() { // from class: B0.C
                @Override // p117p0.u
                public final void invoke(Object obj10) {
                    int i210 = i29;
                    v0 v0Var4 = v0Var;
                    p094m0.W w7 = (p094m0.W) obj10;
                    switch (i210) {
                        case 0:
                            w7.j(v0Var4.f1104m, v0Var4.f1103l);
                            break;
                        case 1:
                            w7.a(v0Var4.f1105n);
                            break;
                        case 2:
                            w7.O(v0Var4.m());
                            break;
                        case 3:
                            w7.n(v0Var4.f1106o);
                            break;
                        case 4:
                            w7.v(v0Var4.f1097f);
                            break;
                        case 5:
                            w7.p(v0Var4.f1097f);
                            break;
                        case 6:
                            w7.A(v0Var4.f1100i.f6255d);
                            break;
                        case 7:
                            boolean z14 = v0Var4.f1098g;
                            w7.getClass();
                            w7.i(v0Var4.f1098g);
                            break;
                        case 8:
                            w7.z(v0Var4.f1096e, v0Var4.f1103l);
                            break;
                        default:
                            w7.m(v0Var4.f1096e);
                            break;
                    }
                }
            });
        }
        if (z11 || v0Var2.f1104m != v0Var.f1104m) {
            final int i30 = 0;
            this.f785S.j(5, new p117p0.u() { // from class: B0.C
                @Override // p117p0.u
                public final void invoke(Object obj10) {
                    int i210 = i30;
                    v0 v0Var4 = v0Var;
                    p094m0.W w7 = (p094m0.W) obj10;
                    switch (i210) {
                        case 0:
                            w7.j(v0Var4.f1104m, v0Var4.f1103l);
                            break;
                        case 1:
                            w7.a(v0Var4.f1105n);
                            break;
                        case 2:
                            w7.O(v0Var4.m());
                            break;
                        case 3:
                            w7.n(v0Var4.f1106o);
                            break;
                        case 4:
                            w7.v(v0Var4.f1097f);
                            break;
                        case 5:
                            w7.p(v0Var4.f1097f);
                            break;
                        case 6:
                            w7.A(v0Var4.f1100i.f6255d);
                            break;
                        case 7:
                            boolean z14 = v0Var4.f1098g;
                            w7.getClass();
                            w7.i(v0Var4.f1098g);
                            break;
                        case 8:
                            w7.z(v0Var4.f1096e, v0Var4.f1103l);
                            break;
                        default:
                            w7.m(v0Var4.f1096e);
                            break;
                    }
                }
            });
        }
        if (v0Var2.f1105n != v0Var.f1105n) {
            final int i31 = 1;
            this.f785S.j(6, new p117p0.u() { // from class: B0.C
                @Override // p117p0.u
                public final void invoke(Object obj10) {
                    int i210 = i31;
                    v0 v0Var4 = v0Var;
                    p094m0.W w7 = (p094m0.W) obj10;
                    switch (i210) {
                        case 0:
                            w7.j(v0Var4.f1104m, v0Var4.f1103l);
                            break;
                        case 1:
                            w7.a(v0Var4.f1105n);
                            break;
                        case 2:
                            w7.O(v0Var4.m());
                            break;
                        case 3:
                            w7.n(v0Var4.f1106o);
                            break;
                        case 4:
                            w7.v(v0Var4.f1097f);
                            break;
                        case 5:
                            w7.p(v0Var4.f1097f);
                            break;
                        case 6:
                            w7.A(v0Var4.f1100i.f6255d);
                            break;
                        case 7:
                            boolean z14 = v0Var4.f1098g;
                            w7.getClass();
                            w7.i(v0Var4.f1098g);
                            break;
                        case 8:
                            w7.z(v0Var4.f1096e, v0Var4.f1103l);
                            break;
                        default:
                            w7.m(v0Var4.f1096e);
                            break;
                    }
                }
            });
        }
        if (v0Var2.m() != v0Var.m()) {
            final int i32 = 2;
            this.f785S.j(7, new p117p0.u() { // from class: B0.C
                @Override // p117p0.u
                public final void invoke(Object obj10) {
                    int i210 = i32;
                    v0 v0Var4 = v0Var;
                    p094m0.W w7 = (p094m0.W) obj10;
                    switch (i210) {
                        case 0:
                            w7.j(v0Var4.f1104m, v0Var4.f1103l);
                            break;
                        case 1:
                            w7.a(v0Var4.f1105n);
                            break;
                        case 2:
                            w7.O(v0Var4.m());
                            break;
                        case 3:
                            w7.n(v0Var4.f1106o);
                            break;
                        case 4:
                            w7.v(v0Var4.f1097f);
                            break;
                        case 5:
                            w7.p(v0Var4.f1097f);
                            break;
                        case 6:
                            w7.A(v0Var4.f1100i.f6255d);
                            break;
                        case 7:
                            boolean z14 = v0Var4.f1098g;
                            w7.getClass();
                            w7.i(v0Var4.f1098g);
                            break;
                        case 8:
                            w7.z(v0Var4.f1096e, v0Var4.f1103l);
                            break;
                        default:
                            w7.m(v0Var4.f1096e);
                            break;
                    }
                }
            });
        }
        if (!v0Var2.f1106o.equals(v0Var.f1106o)) {
            final int i33 = 3;
            this.f785S.j(12, new p117p0.u() { // from class: B0.C
                @Override // p117p0.u
                public final void invoke(Object obj10) {
                    int i210 = i33;
                    v0 v0Var4 = v0Var;
                    p094m0.W w7 = (p094m0.W) obj10;
                    switch (i210) {
                        case 0:
                            w7.j(v0Var4.f1104m, v0Var4.f1103l);
                            break;
                        case 1:
                            w7.a(v0Var4.f1105n);
                            break;
                        case 2:
                            w7.O(v0Var4.m());
                            break;
                        case 3:
                            w7.n(v0Var4.f1106o);
                            break;
                        case 4:
                            w7.v(v0Var4.f1097f);
                            break;
                        case 5:
                            w7.p(v0Var4.f1097f);
                            break;
                        case 6:
                            w7.A(v0Var4.f1100i.f6255d);
                            break;
                        case 7:
                            boolean z14 = v0Var4.f1098g;
                            w7.getClass();
                            w7.i(v0Var4.f1098g);
                            break;
                        case 8:
                            w7.z(v0Var4.f1096e, v0Var4.f1103l);
                            break;
                        default:
                            w7.m(v0Var4.f1096e);
                            break;
                    }
                }
            });
        }
        Y();
        this.f785S.g();
        if (v0Var2.f1107p != v0Var.f1107p) {
            Iterator it = this.f786T.iterator();
            while (it.hasNext()) {
                ((L) it.next()).f743G.b0();
            }
        }
    }

    public final void b0() {
        int iC = C();
        e1 e1Var = this.f800h0;
        e1 e1Var2 = this.f799g0;
        if (iC != 1) {
            if (iC == 2 || iC == 3) {
                c0();
                e1Var2.g(B() && !this.f778N0.f1107p);
                e1Var.g(B());
                return;
            } else if (iC != 4) {
                throw new IllegalStateException();
            }
        }
        e1Var2.g(false);
        e1Var.g(false);
    }

    public final void c0() {
        this.f769J.c();
        Thread threadCurrentThread = Thread.currentThread();
        Looper looper = this.f791Y;
        if (threadCurrentThread != looper.getThread()) {
            String name = Thread.currentThread().getName();
            String name2 = looper.getThread().getName();
            String str = p117p0.M.f28050a;
            Locale locale = Locale.US;
            String strC = A0.O.C("Player is accessed on the wrong thread.\nCurrent thread: '", name, "'\nExpected thread: '", name2, "'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread");
            if (this.f766H0) {
                throw new IllegalStateException(strC);
            }
            p117p0.x.g("ExoPlayerImpl", strC, this.f768I0 ? null : new IllegalStateException());
            this.f768I0 = true;
        }
    }

    @Override // p094m0.AbstractC3123f
    public final void i(int i8, long j8, boolean z7) {
        c0();
        if (i8 == -1) {
            return;
        }
        int i9 = 0;
        H1.d(i8 >= 0);
        p094m0.f0 f0Var = this.f778N0.f1092a;
        if (f0Var.q() || i8 < f0Var.p()) {
            C0.A a8 = (C0.A) this.f790X;
            if (!a8.f1234O) {
                C0077b c0077bP = a8.P();
                a8.f1234O = true;
                a8.U(c0077bP, -1, new C0084i(c0077bP, i9));
            }
            this.f805m0++;
            if (F()) {
                p117p0.x.f("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                U u7 = new U(this.f778N0, 0);
                u7.d(1);
                O o4 = this.f783Q.f719G;
                o4.f781P.c(new RunnableC3004t(16, o4, u7));
                return;
            }
            v0 v0VarG = this.f778N0;
            int i10 = v0VarG.f1096e;
            if (i10 == 3 || (i10 == 4 && !f0Var.q())) {
                v0VarG = G(this.f778N0, 2);
            }
            int iT = t();
            v0 v0VarH = H(v0VarG, f0Var, I(f0Var, i8, j8));
            this.f784R.f864N.a(3, new W(f0Var, i8, p117p0.M.R(j8))).b();
            a0(v0VarH, 0, true, 1, w(v0VarH), iT, z7);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final boolean isScrubbingModeEnabled() {
        c0();
        return this.f808p0;
    }

    public final p094m0.L n() {
        p094m0.f0 f0VarX = x();
        if (f0VarX.q()) {
            return this.f776M0;
        }
        p094m0.I i8 = f0VarX.n(t(), this.f26850G, 0L).f26836c;
        p094m0.K kA = this.f776M0.a();
        p094m0.L l4 = i8.f26704d;
        if (l4 != null) {
            CharSequence charSequence = l4.f26751a;
            if (charSequence != null) {
                kA.f26716a = charSequence;
            }
            CharSequence charSequence2 = l4.f26752b;
            if (charSequence2 != null) {
                kA.f26717b = charSequence2;
            }
            CharSequence charSequence3 = l4.f26753c;
            if (charSequence3 != null) {
                kA.f26718c = charSequence3;
            }
            CharSequence charSequence4 = l4.f26754d;
            if (charSequence4 != null) {
                kA.f26719d = charSequence4;
            }
            CharSequence charSequence5 = l4.f26755e;
            if (charSequence5 != null) {
                kA.f26720e = charSequence5;
            }
            CharSequence charSequence6 = l4.f26756f;
            if (charSequence6 != null) {
                kA.f26721f = charSequence6;
            }
            CharSequence charSequence7 = l4.f26757g;
            if (charSequence7 != null) {
                kA.f26722g = charSequence7;
            }
            Long l8 = l4.f26758h;
            if (l8 != null) {
                H1.d(l8.longValue() >= 0);
                kA.f26723h = l8;
            }
            byte[] bArr = l4.f26759i;
            Uri uri = l4.f26761k;
            if (uri != null || bArr != null) {
                kA.f26726k = uri;
                kA.f26724i = bArr == null ? null : (byte[]) bArr.clone();
                kA.f26725j = l4.f26760j;
            }
            Integer num = l4.f26762l;
            if (num != null) {
                kA.f26727l = num;
            }
            Integer num2 = l4.f26763m;
            if (num2 != null) {
                kA.f26728m = num2;
            }
            Integer num3 = l4.f26764n;
            if (num3 != null) {
                kA.f26729n = num3;
            }
            Boolean bool = l4.f26765o;
            if (bool != null) {
                kA.f26730o = bool;
            }
            Boolean bool2 = l4.f26766p;
            if (bool2 != null) {
                kA.f26731p = bool2;
            }
            Integer num4 = l4.f26767q;
            if (num4 != null) {
                kA.f26732q = num4;
            }
            Integer num5 = l4.f26768r;
            if (num5 != null) {
                kA.f26732q = num5;
            }
            Integer num6 = l4.f26769s;
            if (num6 != null) {
                kA.f26733r = num6;
            }
            Integer num7 = l4.f26770t;
            if (num7 != null) {
                kA.f26734s = num7;
            }
            Integer num8 = l4.f26771u;
            if (num8 != null) {
                kA.f26735t = num8;
            }
            Integer num9 = l4.f26772v;
            if (num9 != null) {
                kA.f26736u = num9;
            }
            Integer num10 = l4.f26773w;
            if (num10 != null) {
                kA.f26737v = num10;
            }
            CharSequence charSequence8 = l4.f26774x;
            if (charSequence8 != null) {
                kA.f26738w = charSequence8;
            }
            CharSequence charSequence9 = l4.f26775y;
            if (charSequence9 != null) {
                kA.f26739x = charSequence9;
            }
            CharSequence charSequence10 = l4.f26776z;
            if (charSequence10 != null) {
                kA.f26740y = charSequence10;
            }
            Integer num11 = l4.f26743A;
            if (num11 != null) {
                kA.f26741z = num11;
            }
            Integer num12 = l4.f26744B;
            if (num12 != null) {
                kA.f26709A = num12;
            }
            CharSequence charSequence11 = l4.f26745C;
            if (charSequence11 != null) {
                kA.f26710B = charSequence11;
            }
            CharSequence charSequence12 = l4.f26746D;
            if (charSequence12 != null) {
                kA.f26711C = charSequence12;
            }
            CharSequence charSequence13 = l4.f26747E;
            if (charSequence13 != null) {
                kA.f26712D = charSequence13;
            }
            Integer num13 = l4.f26748F;
            if (num13 != null) {
                kA.f26713E = num13;
            }
            Bundle bundle = l4.f26749G;
            if (bundle != null) {
                kA.f26714F = bundle;
            }
            z4.H h8 = l4.f26750H;
            if (!h8.isEmpty()) {
                kA.f26715G = z4.H.s(h8);
            }
        }
        return new p094m0.L(kA);
    }

    public final void o() {
        c0();
        N();
        V(null);
        J(0, 0);
    }

    public final z0 p(y0 y0Var) {
        int iZ = z(this.f778N0);
        p094m0.f0 f0Var = this.f778N0.f1092a;
        int i8 = iZ == -1 ? 0 : iZ;
        X x7 = this.f784R;
        return new z0(x7, y0Var, f0Var, i8, x7.f866P);
    }

    public final long q(v0 v0Var) {
        if (!v0Var.f1093b.b()) {
            return p117p0.M.e0(w(v0Var));
        }
        Object obj = v0Var.f1093b.f5257a;
        p094m0.f0 f0Var = v0Var.f1092a;
        p094m0.d0 d0Var = this.f787U;
        f0Var.h(obj, d0Var);
        long j8 = v0Var.f1094c;
        return j8 == -9223372036854775807L ? p117p0.M.e0(f0Var.n(z(v0Var), this.f26850G, 0L).f26845l) : p117p0.M.e0(d0Var.f26829e) + p117p0.M.e0(j8);
    }

    public final int r() {
        c0();
        if (F()) {
            return this.f778N0.f1093b.f5258b;
        }
        return -1;
    }

    public final int s() {
        c0();
        if (F()) {
            return this.f778N0.f1093b.f5259c;
        }
        return -1;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void setImageOutput(ImageOutput imageOutput) {
        c0();
        O(4, imageOutput, 15);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void setScrubbingModeEnabled(boolean z7) {
        p094m0.k0 k0VarB;
        c0();
        if (z7 == this.f808p0) {
            return;
        }
        this.f808p0 = z7;
        H0 h8 = this.f810r0;
        if (!h8.f721a.isEmpty()) {
            R0.w wVar = this.f779O;
            wVar.getClass();
            R0.k kVarH = ((R0.q) wVar).h();
            if (z7) {
                this.f809q0 = kVarH.f26916E;
                p094m0.j0 j0VarA = kVarH.a();
                AbstractC1349gB it = h8.f721a.iterator();
                while (it.hasNext()) {
                    j0VarA.j(((Integer) it.next()).intValue(), true);
                }
                k0VarB = j0VarA.b();
            } else {
                kVarH.getClass();
                R0.j jVar = new R0.j(kVarH);
                jVar.k(this.f809q0);
                R0.k kVar = new R0.k(jVar);
                this.f809q0 = null;
                k0VarB = kVar;
            }
            if (!k0VarB.equals(kVarH)) {
                wVar.b(k0VarB);
            }
        }
        this.f784R.f864N.a(36, Boolean.valueOf(z7)).b();
        v0 v0Var = this.f778N0;
        Z(v0Var.f1104m, v0Var.f1103l);
    }

    public final int t() {
        c0();
        int iZ = z(this.f778N0);
        if (iZ == -1) {
            return 0;
        }
        return iZ;
    }

    public final int u() {
        c0();
        if (this.f778N0.f1092a.q()) {
            return 0;
        }
        v0 v0Var = this.f778N0;
        return v0Var.f1092a.b(v0Var.f1093b.f5257a);
    }

    public final long v() {
        c0();
        return p117p0.M.e0(w(this.f778N0));
    }

    public final long w(v0 v0Var) {
        if (v0Var.f1092a.q()) {
            return p117p0.M.R(this.f782P0);
        }
        long jL = v0Var.f1107p ? v0Var.l() : v0Var.f1110s;
        if (v0Var.f1093b.b()) {
            return jL;
        }
        p094m0.f0 f0Var = v0Var.f1092a;
        Object obj = v0Var.f1093b.f5257a;
        p094m0.d0 d0Var = this.f787U;
        f0Var.h(obj, d0Var);
        return jL + d0Var.f26829e;
    }

    public final p094m0.f0 x() {
        c0();
        return this.f778N0.f1092a;
    }

    public final p094m0.m0 y() {
        c0();
        return this.f778N0.f1100i.f6255d;
    }

    public final int z(v0 v0Var) {
        if (v0Var.f1092a.q()) {
            return this.f780O0;
        }
        return v0Var.f1092a.h(v0Var.f1093b.f5257a, this.f787U).f26827c;
    }
}
