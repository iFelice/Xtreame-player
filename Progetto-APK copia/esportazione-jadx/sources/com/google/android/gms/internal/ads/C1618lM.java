package com.google.android.gms.internal.ads;

import D0.C0115e;
import D0.C0129t;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1618lM implements TL {

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public static final Object f19732Z = new Object();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static ScheduledExecutorService f19733a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static int f19734b0;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public long f19735A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public long f19736B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f19737C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f19738D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f19739E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public long f19740F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public float f19741G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ByteBuffer f19742H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f19743I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ByteBuffer f19744J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f19745K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f19746L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f19747M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f19748N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f19749O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public C1100bK f19750P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public IL f19751Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public long f19752R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f19753S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public Looper f19754T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public long f19755U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public long f19756V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public Handler f19757W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final C1093bD f19758X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final C1050aM f19759Y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f19760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final XL f19761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1981sM f19762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final PA f19763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PA f19764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final WL f19765f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayDeque f19766g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C1566kM f19767h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final D0.M f19768i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final D0.M f19769j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public C2344zL f19770k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public C1722nM f19771l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C1308fM f19772m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public C1308fM f19773n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C0732Fh f19774o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AudioTrack f19775p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public EL f19776q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public GL f19777r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public C1464iM f19778s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public C1097bH f19779t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public C1360gM f19780u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public C1360gM f19781v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public C1778ob f19782w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f19783x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f19784y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f19785z;

    public C1618lM(p000a.x xVar) {
        EL elB;
        Context context = (Context) xVar.f8620b;
        this.f19760a = context;
        C1097bH c1097bH = C1097bH.f18033b;
        this.f19779t = c1097bH;
        if (context != null) {
            EL el = EL.f12964c;
            int i8 = Et.f13234a;
            elB = EL.b(context, c1097bH, null);
        } else {
            elB = (EL) xVar.f8621c;
        }
        this.f19776q = elB;
        this.f19758X = (C1093bD) xVar.f8623e;
        int i9 = Et.f13234a;
        C1050aM c1050aM = (C1050aM) xVar.f8624f;
        c1050aM.getClass();
        this.f19759Y = c1050aM;
        this.f19765f = new WL(new C1102bM(this));
        XL xl = new XL();
        this.f19761b = xl;
        C1981sM c1981sM = new C1981sM();
        c1981sM.f20891m = Et.f13239f;
        this.f19762c = c1981sM;
        C0993Xi c0993Xi = new C0993Xi();
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        Object[] objArr = {c0993Xi, xl, c1981sM};
        Cw.O0(objArr, 3);
        this.f19763d = AbstractC2073uA.s(3, objArr);
        this.f19764e = AbstractC2073uA.w(new C1929rM());
        this.f19741G = 1.0f;
        this.f19749O = 0;
        this.f19750P = new C1100bK();
        C1778ob c1778ob = C1778ob.f20289d;
        this.f19781v = new C1360gM(c1778ob, 0L, 0L);
        this.f19782w = c1778ob;
        this.f19783x = false;
        this.f19766g = new ArrayDeque();
        this.f19768i = new D0.M();
        this.f19769j = new D0.M();
    }

    public static boolean j(AudioTrack audioTrack) {
        return Et.f13234a >= 29 && audioTrack.isOffloadedPlayback();
    }

    public final long a() {
        C1308fM c1308fM = this.f19773n;
        return c1308fM.f18749c == 0 ? this.f19784y / ((long) c1308fM.f18748b) : this.f19785z;
    }

    public final long b() {
        C1308fM c1308fM = this.f19773n;
        if (c1308fM.f18749c != 0) {
            return this.f19736B;
        }
        long j8 = this.f19735A;
        long j9 = c1308fM.f18750d;
        int i8 = Et.f13234a;
        return ((j8 + j9) - 1) / j9;
    }

    public final void c(long j8) {
        boolean z7;
        C1778ob c1778ob;
        C1308fM c1308fM = this.f19773n;
        int i8 = c1308fM.f18749c;
        boolean z8 = false;
        if (i8 == 0) {
            int i9 = c1308fM.f18747a.f20364C;
            z7 = true;
        } else {
            z7 = false;
        }
        C1093bD c1093bD = this.f19758X;
        if (z7) {
            c1778ob = this.f19782w;
            C0937Ti c0937Ti = (C0937Ti) c1093bD.f18027I;
            float f8 = c1778ob.f20290a;
            if (c0937Ti.f16704c != f8) {
                c0937Ti.f16704c = f8;
                c0937Ti.f16710i = true;
            }
            float f9 = c0937Ti.f16705d;
            float f10 = c1778ob.f20291b;
            if (f9 != f10) {
                c0937Ti.f16705d = f10;
                c0937Ti.f16710i = true;
            }
        } else {
            c1778ob = C1778ob.f20289d;
        }
        C1778ob c1778ob2 = c1778ob;
        this.f19782w = c1778ob2;
        if (i8 == 0) {
            int i10 = c1308fM.f18747a.f20364C;
            z8 = this.f19783x;
            ((C1878qM) c1093bD.f18026H).f20567j = z8;
        }
        this.f19783x = z8;
        ArrayDeque arrayDeque = this.f19766g;
        long jMax = Math.max(0L, j8);
        C1308fM c1308fM2 = this.f19773n;
        arrayDeque.add(new C1360gM(c1778ob2, jMax, Et.u(c1308fM2.f18751e, b())));
        C0732Fh c0732Fh = this.f19773n.f18755i;
        this.f19774o = c0732Fh;
        c0732Fh.b();
        C1722nM c1722nM = this.f19771l;
        if (c1722nM != null) {
            boolean z9 = this.f19783x;
            C1773oL c1773oL = c1722nM.f20167a.f20273y0;
            Handler handler = (Handler) c1773oL.f20259H;
            if (handler != null) {
                handler.post(new p017c0.a(7, c1773oL, z9));
            }
        }
    }

    public final void d() {
        Context context;
        EL elC;
        B0.r rVar;
        if (this.f19777r != null || (context = this.f19760a) == null) {
            return;
        }
        this.f19754T = Looper.myLooper();
        GL gl = new GL(context, new C1102bM(this), this.f19779t, this.f19751Q);
        this.f19777r = gl;
        if (gl.f13520i) {
            elC = gl.f13517f;
            elC.getClass();
        } else {
            gl.f13520i = true;
            C0115e c0115e = gl.f13516e;
            if (c0115e != null) {
                c0115e.f1922b.registerContentObserver(c0115e.f1923c, false, c0115e);
            }
            int i8 = Et.f13234a;
            Handler handler = gl.f13513b;
            Context context2 = gl.f13512a;
            if (i8 >= 23 && (rVar = gl.f13514c) != null) {
                FL.a(context2, rVar, handler);
            }
            elC = EL.c(context2, context2.registerReceiver(gl.f13515d, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, handler), gl.f13519h, gl.f13518g);
            gl.f13517f = elC;
        }
        this.f19776q = elC;
    }

    public final void e() {
        if (this.f19746L) {
            return;
        }
        this.f19746L = true;
        long jB = b();
        WL wl = this.f19765f;
        wl.f17241z = wl.d();
        ((Nr) wl.f17215G).getClass();
        wl.f17239x = Et.t(SystemClock.elapsedRealtime());
        wl.f17209A = jB;
        if (j(this.f19775p)) {
            this.f19747M = false;
        }
        this.f19775p.stop();
    }

    public final void f(long j8) throws Exception {
        ByteBuffer byteBuffer;
        if (!this.f19774o.e()) {
            ByteBuffer byteBuffer2 = this.f19742H;
            if (byteBuffer2 == null) {
                byteBuffer2 = InterfaceC2044ti.f21093a;
            }
            g(byteBuffer2);
            return;
        }
        while (!this.f19774o.d()) {
            do {
                C0732Fh c0732Fh = this.f19774o;
                if (c0732Fh.e()) {
                    ByteBuffer byteBuffer3 = c0732Fh.f13390c[c0732Fh.f()];
                    if (byteBuffer3.hasRemaining()) {
                        byteBuffer = byteBuffer3;
                    } else {
                        c0732Fh.g(InterfaceC2044ti.f21093a);
                        byteBuffer = c0732Fh.f13390c[c0732Fh.f()];
                    }
                } else {
                    byteBuffer = InterfaceC2044ti.f21093a;
                }
                if (byteBuffer.hasRemaining()) {
                    g(byteBuffer);
                } else {
                    ByteBuffer byteBuffer4 = this.f19742H;
                    if (byteBuffer4 == null || !byteBuffer4.hasRemaining()) {
                        return;
                    }
                    C0732Fh c0732Fh2 = this.f19774o;
                    ByteBuffer byteBuffer5 = this.f19742H;
                    if (c0732Fh2.e() && !c0732Fh2.f13391d) {
                        c0732Fh2.g(byteBuffer5);
                    }
                }
            } while (!byteBuffer.hasRemaining());
            return;
        }
    }

    public final void g(ByteBuffer byteBuffer) throws Exception {
        boolean z7;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.f19744J;
            boolean z8 = false;
            if (byteBuffer2 != null) {
                p113o3.r.J(byteBuffer2 == byteBuffer);
            } else {
                this.f19744J = byteBuffer;
            }
            D0.M m7 = this.f19769j;
            if (m7.f1780a != null) {
                synchronized (f19732Z) {
                    z7 = f19734b0 > 0;
                }
                if (z7 || SystemClock.elapsedRealtime() < m7.f1782c) {
                    return;
                }
            }
            int iRemaining = byteBuffer.remaining();
            int iWrite = this.f19775p.write(byteBuffer, iRemaining, 1);
            this.f19752R = SystemClock.elapsedRealtime();
            if (iWrite >= 0) {
                m7.f1780a = null;
                m7.f1781b = -9223372036854775807L;
                m7.f1782c = -9223372036854775807L;
                j(this.f19775p);
                int i8 = this.f19773n.f18749c;
                if (i8 == 0) {
                    this.f19735A += (long) iWrite;
                }
                if (iWrite == iRemaining) {
                    if (i8 != 0) {
                        p113o3.r.M(byteBuffer == this.f19742H);
                        this.f19736B = (((long) this.f19737C) * ((long) this.f19743I)) + this.f19736B;
                    }
                    this.f19744J = null;
                    return;
                }
                return;
            }
            if ((Et.f13234a >= 24 && iWrite == -6) || iWrite == -32) {
                if (b() > 0) {
                    z8 = true;
                } else if (j(this.f19775p)) {
                    if (this.f19773n.f18749c == 1) {
                        this.f19753S = true;
                    }
                    z8 = true;
                }
            }
            SL sl = new SL(iWrite, this.f19773n.f18747a, z8);
            C1722nM c1722nM = this.f19771l;
            if (c1722nM != null) {
                c1722nM.a(sl);
            }
            if (sl.f16426H) {
                this.f19776q = EL.f12964c;
                throw sl;
            }
            m7.b(sl);
        }
    }

    public final boolean h() throws Exception {
        if (!this.f19774o.e()) {
            ByteBuffer byteBuffer = this.f19744J;
            if (byteBuffer == null) {
                return true;
            }
            g(byteBuffer);
            return this.f19744J == null;
        }
        C0732Fh c0732Fh = this.f19774o;
        if (c0732Fh.e() && !c0732Fh.f13391d) {
            c0732Fh.f13391d = true;
            ((InterfaceC2044ti) c0732Fh.f13389b.get(0)).zzd();
        }
        f(Long.MIN_VALUE);
        if (!this.f19774o.d()) {
            return false;
        }
        ByteBuffer byteBuffer2 = this.f19744J;
        return byteBuffer2 == null || !byteBuffer2.hasRemaining();
    }

    public final boolean i() {
        return this.f19775p != null;
    }

    public final int k(C1804p0 c1804p0) {
        d();
        if (!"audio/raw".equals(c1804p0.f20383m)) {
            return this.f19776q.a(c1804p0, this.f19779t) != null ? 2 : 0;
        }
        int i8 = c1804p0.f20364C;
        if (Et.c(i8)) {
            return i8 != 2 ? 1 : 2;
        }
        p000a.r.p("Invalid PCM encoding: ", i8, "DefaultAudioSink");
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:63:0x014e  */
    public final void l(C1804p0 c1804p0, int[] iArr) throws QL {
        C0732Fh c0732Fh;
        int i8;
        int iIntValue;
        int i9;
        int iO;
        int iIntValue2;
        int i10;
        int iMax;
        int i11;
        int i12;
        int iC;
        d();
        boolean zEquals = "audio/raw".equals(c1804p0.f20383m);
        int i13 = c1804p0.f20363B;
        if (zEquals) {
            int i14 = c1804p0.f20364C;
            p113o3.r.J(Et.c(i14));
            int iO2 = Et.o(i14);
            int i15 = c1804p0.f20362A;
            i10 = iO2 * i15;
            C1917rA c1917rA = new C1917rA();
            c1917rA.d(this.f19763d);
            InterfaceC2044ti[] interfaceC2044tiArr = (InterfaceC2044ti[]) this.f19758X.f18028J;
            Cw.O0(interfaceC2044tiArr, 2);
            c1917rA.f(c1917rA.f20247b + 2);
            System.arraycopy(interfaceC2044tiArr, 0, c1917rA.f20246a, c1917rA.f20247b, 2);
            c1917rA.f20247b += 2;
            C0732Fh c0732Fh2 = new C0732Fh(c1917rA.h());
            if (c0732Fh2.equals(this.f19774o)) {
                c0732Fh2 = this.f19774o;
            }
            int i16 = c1804p0.f20365D;
            C1981sM c1981sM = this.f19762c;
            c1981sM.f20887i = i16;
            c1981sM.f20888j = c1804p0.f20366E;
            this.f19761b.f17409i = iArr;
            try {
                C0936Th c0936ThA = c0732Fh2.a(new C0936Th(i13, i15, i14));
                int i17 = c0936ThA.f16700b;
                int iN = Et.n(i17);
                int i18 = c0936ThA.f16701c;
                c0732Fh = c0732Fh2;
                iIntValue = i18;
                iO = Et.o(i18) * i17;
                iIntValue2 = iN;
                i8 = c0936ThA.f16699a;
                i9 = 0;
            } catch (C1267ei e8) {
                throw new QL(e8, c1804p0);
            }
        } else {
            C0732Fh c0732Fh3 = new C0732Fh(PA.f15340K);
            JL jl = JL.f14140d;
            Pair pairA = this.f19776q.a(c1804p0, this.f19779t);
            if (pairA == null) {
                throw new QL("Unable to configure passthrough for: ".concat(String.valueOf(c1804p0)), c1804p0);
            }
            c0732Fh = c0732Fh3;
            i8 = i13;
            iIntValue = ((Integer) pairA.first).intValue();
            i9 = 2;
            iO = -1;
            iIntValue2 = ((Integer) pairA.second).intValue();
            i10 = -1;
        }
        if (iIntValue == 0) {
            throw new QL("Invalid output encoding (mode=" + i9 + ") for: " + String.valueOf(c1804p0), c1804p0);
        }
        if (iIntValue2 == 0) {
            throw new QL("Invalid output channel config (mode=" + i9 + ") for: " + String.valueOf(c1804p0), c1804p0);
        }
        boolean zEquals2 = "audio/vnd.dts.hd;profile=lbr".equals(c1804p0.f20383m);
        int i19 = c1804p0.f20379i;
        if (zEquals2 && i19 == -1) {
            i19 = 768000;
        }
        int minBufferSize = AudioTrack.getMinBufferSize(i8, iIntValue2, iIntValue);
        p113o3.r.M(minBufferSize != -2);
        int i20 = iO != -1 ? iO : 1;
        if (i9 != 0) {
            if (i9 != 1) {
                if (iIntValue == 5) {
                    i12 = 500000;
                } else if (iIntValue == 8) {
                    i12 = 1000000;
                    iIntValue = 8;
                } else {
                    i12 = 250000;
                }
                if (i19 != -1) {
                    RoundingMode roundingMode = RoundingMode.CEILING;
                    roundingMode.getClass();
                    iC = i19 / 8;
                    int i21 = i19 - (iC * 8);
                    if (i21 != 0) {
                        int i22 = ((i19 ^ 8) >> 31) | 1;
                        switch (AbstractC1711nB.f20077a[roundingMode.ordinal()]) {
                            case 1:
                                throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                            case 2:
                                break;
                            case 3:
                                if (i22 < 0) {
                                    iC += i22;
                                }
                                break;
                            case 4:
                                iC += i22;
                                break;
                            case 5:
                                if (i22 > 0) {
                                    iC += i22;
                                }
                                break;
                            case 6:
                            case 7:
                            case 8:
                                int iAbs = Math.abs(i21);
                                int iAbs2 = iAbs - (Math.abs(8) - iAbs);
                                if (iAbs2 != 0) {
                                    if (iAbs2 > 0) {
                                        iC += i22;
                                    }
                                } else if (roundingMode == RoundingMode.HALF_UP) {
                                    iC += i22;
                                } else if ((iC & 1 & (roundingMode != RoundingMode.HALF_EVEN ? 0 : 1)) != 0) {
                                    iC += i22;
                                }
                                break;
                            default:
                                throw new AssertionError();
                        }
                    }
                } else {
                    iC = GH.c(iIntValue);
                }
                iMax = Cw.w0((((long) i12) * ((long) iC)) / 1000000);
            } else {
                iMax = Cw.w0((((long) GH.c(iIntValue)) * 50000000) / 1000000);
            }
            i11 = iIntValue;
        } else {
            long j8 = i8;
            int i23 = iIntValue;
            long j9 = i20;
            iMax = Math.max(Cw.w0(((((long) 250000) * j8) * j9) / 1000000), Math.min(minBufferSize * 4, Cw.w0(((((long) 750000) * j8) * j9) / 1000000)));
            i11 = i23;
        }
        int iMax2 = (((Math.max(minBufferSize, iMax) + i20) - 1) / i20) * i20;
        this.f19753S = false;
        C1308fM c1308fM = new C1308fM(c1804p0, i10, i9, iO, i8, iIntValue2, i11, iMax2, c0732Fh);
        if (i()) {
            this.f19772m = c1308fM;
        } else {
            this.f19773n = c1308fM;
        }
    }

    public final void m() {
        C1464iM c1464iM;
        if (i()) {
            this.f19784y = 0L;
            this.f19785z = 0L;
            this.f19735A = 0L;
            this.f19736B = 0L;
            this.f19737C = 0;
            this.f19781v = new C1360gM(this.f19782w, 0L, 0L);
            this.f19740F = 0L;
            this.f19780u = null;
            this.f19766g.clear();
            this.f19742H = null;
            this.f19743I = 0;
            this.f19744J = null;
            this.f19746L = false;
            this.f19745K = false;
            this.f19747M = false;
            this.f19762c.f20893o = 0L;
            C0732Fh c0732Fh = this.f19773n.f18755i;
            this.f19774o = c0732Fh;
            c0732Fh.b();
            AudioTrack audioTrack = this.f19765f.f17218c;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 3) {
                this.f19775p.pause();
            }
            if (j(this.f19775p)) {
                C1566kM c1566kM = this.f19767h;
                c1566kM.getClass();
                c1566kM.b(this.f19775p);
            }
            this.f19773n.getClass();
            GH gh = new GH();
            C1308fM c1308fM = this.f19772m;
            if (c1308fM != null) {
                this.f19773n = c1308fM;
                this.f19772m = null;
            }
            WL wl = this.f19765f;
            wl.f17226k = 0L;
            wl.f17238w = 0;
            wl.f17237v = 0;
            wl.f17227l = 0L;
            wl.f17211C = 0L;
            wl.f17214F = 0L;
            wl.f17225j = false;
            wl.f17218c = null;
            wl.f17220e = null;
            if (Et.f13234a >= 24 && (c1464iM = this.f19778s) != null) {
                c1464iM.b();
                this.f19778s = null;
            }
            AudioTrack audioTrack2 = this.f19775p;
            C1722nM c1722nM = this.f19771l;
            Handler handler = new Handler(Looper.myLooper());
            synchronized (f19732Z) {
                try {
                    if (f19733a0 == null) {
                        f19733a0 = Executors.newSingleThreadScheduledExecutor(new ThreadFactoryC2055tt(1));
                    }
                    f19734b0++;
                    f19733a0.schedule(new MK(audioTrack2, c1722nM, handler, gh, 3), 20L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f19775p = null;
        }
        D0.M m7 = this.f19769j;
        m7.f1780a = null;
        m7.f1781b = -9223372036854775807L;
        m7.f1782c = -9223372036854775807L;
        D0.M m8 = this.f19768i;
        m8.f1780a = null;
        m8.f1781b = -9223372036854775807L;
        m8.f1782c = -9223372036854775807L;
        this.f19755U = 0L;
        this.f19756V = 0L;
        Handler handler2 = this.f19757W;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    public final void n() {
        this.f19748N = true;
        if (i()) {
            WL wl = this.f19765f;
            if (wl.f17239x != -9223372036854775807L) {
                ((Nr) wl.f17215G).getClass();
                wl.f17239x = Et.t(SystemClock.elapsedRealtime());
            }
            VL vl = wl.f17220e;
            vl.getClass();
            vl.a(0);
            this.f19775p.play();
        }
    }

    public final void o() {
        m();
        PA pa = this.f19763d;
        int i8 = pa.f15342J;
        for (int i9 = 0; i9 < i8; i9++) {
            ((InterfaceC2044ti) pa.get(i9)).zzf();
        }
        PA pa2 = this.f19764e;
        int i10 = pa2.f15342J;
        for (int i11 = 0; i11 < i10; i11++) {
            ((InterfaceC2044ti) pa2.get(i11)).zzf();
        }
        C0732Fh c0732Fh = this.f19774o;
        if (c0732Fh != null) {
            c0732Fh.c();
        }
        this.f19748N = false;
        this.f19753S = false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:158:0x0287  */
    /* JADX WARN: Code duplicated, block: B:201:0x0337  */
    /* JADX WARN: Code duplicated, block: B:206:0x0342  */
    /* JADX WARN: Code duplicated, block: B:207:0x0344  */
    /* JADX WARN: Code duplicated, block: B:209:0x0352  */
    /* JADX WARN: Code duplicated, block: B:212:0x0363  */
    /* JADX WARN: Code duplicated, block: B:214:0x0379  */
    /* JADX WARN: Code duplicated, block: B:311:0x056a A[Catch: RL -> 0x00fe, TryCatch #3 {RL -> 0x00fe, blocks: (B:35:0x0072, B:69:0x00e8, B:71:0x00f0, B:73:0x00f6, B:76:0x0101, B:77:0x010b, B:79:0x0111, B:81:0x0115, B:82:0x011a, B:86:0x0130, B:88:0x013f, B:89:0x0146, B:93:0x0153, B:95:0x015c, B:98:0x0167, B:100:0x016b, B:101:0x0174, B:103:0x017b, B:105:0x018f, B:64:0x00ac, B:66:0x00b5, B:308:0x0560, B:309:0x0563, B:311:0x056a, B:312:0x056c, B:38:0x0077, B:39:0x0079, B:47:0x0085, B:315:0x056f, B:68:0x00e6, B:303:0x0557, B:307:0x055f, B:306:0x055c, B:67:0x00de, B:51:0x0090, B:56:0x009f, B:60:0x00a7, B:59:0x00a4, B:40:0x007a, B:44:0x0081), top: B:325:0x0072, inners: #1, #4, #5 }] */
    /* JADX WARN: Code duplicated, block: B:335:? A[Catch: RL -> 0x00fe, SYNTHETIC, TRY_LEAVE, TryCatch #3 {RL -> 0x00fe, blocks: (B:35:0x0072, B:69:0x00e8, B:71:0x00f0, B:73:0x00f6, B:76:0x0101, B:77:0x010b, B:79:0x0111, B:81:0x0115, B:82:0x011a, B:86:0x0130, B:88:0x013f, B:89:0x0146, B:93:0x0153, B:95:0x015c, B:98:0x0167, B:100:0x016b, B:101:0x0174, B:103:0x017b, B:105:0x018f, B:64:0x00ac, B:66:0x00b5, B:308:0x0560, B:309:0x0563, B:311:0x056a, B:312:0x056c, B:38:0x0077, B:39:0x0079, B:47:0x0085, B:315:0x056f, B:68:0x00e6, B:303:0x0557, B:307:0x055f, B:306:0x055c, B:67:0x00de, B:51:0x0090, B:56:0x009f, B:60:0x00a7, B:59:0x00a4, B:40:0x007a, B:44:0x0081), top: B:325:0x0072, inners: #1, #4, #5 }] */
    public final boolean p(long j8, int i8, ByteBuffer byteBuffer) throws Exception {
        boolean z7;
        AudioTrack audioTrackA;
        Exception exc;
        GL gl;
        C2344zL c2344zL;
        int i9;
        int iX;
        int i10;
        int i11;
        int i12;
        int i13;
        byte b8;
        int i14;
        int i15;
        int i16;
        int i17;
        ByteBuffer byteBuffer2 = this.f19742H;
        p113o3.r.J(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f19772m != null) {
            if (!h()) {
                return false;
            }
            C1308fM c1308fM = this.f19772m;
            C1308fM c1308fM2 = this.f19773n;
            if (c1308fM2.f18749c == c1308fM.f18749c && c1308fM2.f18753g == c1308fM.f18753g && c1308fM2.f18751e == c1308fM.f18751e && c1308fM2.f18752f == c1308fM.f18752f && c1308fM2.f18750d == c1308fM.f18750d) {
                this.f19773n = c1308fM;
                this.f19772m = null;
                AudioTrack audioTrack = this.f19775p;
                if (audioTrack != null && j(audioTrack)) {
                    this.f19773n.getClass();
                }
            } else {
                e();
                if (q()) {
                    return false;
                }
                m();
            }
            c(j8);
        }
        boolean zI = i();
        D0.M m7 = this.f19768i;
        if (zI) {
            exc = null;
        } else {
            try {
                if (m7.f1780a != null) {
                    synchronized (f19732Z) {
                        z7 = f19734b0 > 0;
                    }
                    if (z7 || SystemClock.elapsedRealtime() < m7.f1782c) {
                        return false;
                    }
                }
                try {
                    C1308fM c1308fM3 = this.f19773n;
                    c1308fM3.getClass();
                    try {
                        audioTrackA = c1308fM3.a(this.f19749O, this.f19779t);
                        this.f19775p = audioTrackA;
                        if (j(audioTrackA)) {
                            AudioTrack audioTrack2 = this.f19775p;
                            if (this.f19767h == null) {
                                this.f19767h = new C1566kM(this);
                            }
                            this.f19767h.a(audioTrack2);
                            this.f19773n.getClass();
                        }
                        int i18 = Et.f13234a;
                        if (i18 >= 31 && (c2344zL = this.f19770k) != null) {
                            AbstractC1205dM.a(this.f19775p, c2344zL);
                        }
                        this.f19749O = this.f19775p.getAudioSessionId();
                        WL wl = this.f19765f;
                        AudioTrack audioTrack3 = this.f19775p;
                        C1308fM c1308fM4 = this.f19773n;
                        wl.b(audioTrack3, c1308fM4.f18749c == 2, c1308fM4.f18753g, c1308fM4.f18750d, c1308fM4.f18754h);
                        if (i()) {
                            this.f19775p.setVolume(this.f19741G);
                        }
                        this.f19750P.getClass();
                        IL il = this.f19751Q;
                        if (il != null && i18 >= 23) {
                            AbstractC1153cM.a(this.f19775p, il);
                            GL gl2 = this.f19777r;
                            if (gl2 != null) {
                                gl2.a(this.f19751Q.f13878a);
                            }
                        }
                        if (i18 >= 24 && (gl = this.f19777r) != null) {
                            this.f19778s = new C1464iM(this.f19775p, gl);
                        }
                        this.f19739E = true;
                        C1722nM c1722nM = this.f19771l;
                        if (c1722nM != null) {
                            this.f19773n.getClass();
                            GH gh = new GH();
                            C1773oL c1773oL = c1722nM.f20167a.f20273y0;
                            Handler handler = (Handler) c1773oL.f20259H;
                            if (handler != null) {
                                handler.post(new NL(c1773oL, gh, 0));
                            }
                        }
                        exc = null;
                    } catch (RL e8) {
                        C1722nM c1722nM2 = this.f19771l;
                        if (c1722nM2 != null) {
                            c1722nM2.a(e8);
                        }
                        throw e8;
                    }
                } catch (RL e9) {
                    C1308fM c1308fM5 = this.f19773n;
                    if (c1308fM5.f18754h > 1000000) {
                        C1308fM c1308fM6 = new C1308fM(c1308fM5.f18747a, c1308fM5.f18748b, c1308fM5.f18749c, c1308fM5.f18750d, c1308fM5.f18751e, c1308fM5.f18752f, c1308fM5.f18753g, 1000000, c1308fM5.f18755i);
                        try {
                            try {
                                audioTrackA = c1308fM6.a(this.f19749O, this.f19779t);
                                this.f19773n = c1308fM6;
                            } catch (RL e10) {
                                C1722nM c1722nM3 = this.f19771l;
                                if (c1722nM3 != null) {
                                    c1722nM3.a(e10);
                                }
                                throw e10;
                            }
                        } catch (RL e11) {
                            e9.addSuppressed(e11);
                            if (this.f19773n.f18749c == 1) {
                                throw e9;
                            }
                            this.f19753S = true;
                            throw e9;
                        }
                    }
                    if (this.f19773n.f18749c == 1) {
                        throw e9;
                    }
                    this.f19753S = true;
                    throw e9;
                }
            } catch (RL e12) {
                if (e12.f16259H) {
                    throw e12;
                }
                m7.b(e12);
                return false;
            }
        }
        m7.f1780a = exc;
        m7.f1781b = -9223372036854775807L;
        m7.f1782c = -9223372036854775807L;
        if (this.f19739E) {
            this.f19740F = Math.max(0L, j8);
            this.f19738D = false;
            this.f19739E = false;
            c(j8);
            if (this.f19748N) {
                n();
            }
        }
        long jB = b();
        WL wl2 = this.f19765f;
        AudioTrack audioTrack4 = wl2.f17218c;
        audioTrack4.getClass();
        int playState = audioTrack4.getPlayState();
        if (wl2.f17222g) {
            if (playState == 2) {
                wl2.f17230o = false;
                return false;
            }
            if (playState == 1) {
                if (wl2.d() == 0) {
                    return false;
                }
                playState = 1;
            }
        }
        boolean z8 = wl2.f17230o;
        boolean zC = wl2.c(jB);
        wl2.f17230o = zC;
        if (z8 && !zC && playState != 1) {
            int i19 = wl2.f17219d;
            long jW = Et.w(wl2.f17223h);
            C1618lM c1618lM = wl2.f17216a.f18040a;
            if (c1618lM.f19771l != null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - c1618lM.f19752R;
                C1773oL c1773oL2 = c1618lM.f19771l.f20167a.f20273y0;
                Handler handler2 = (Handler) c1773oL2.f20259H;
                if (handler2 != null) {
                    handler2.post(new ML(c1773oL2, i19, jW, jElapsedRealtime, 0));
                }
            }
        }
        if (this.f19742H == null) {
            p113o3.r.J(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            C1308fM c1308fM7 = this.f19773n;
            if (c1308fM7.f18749c != 0 && this.f19737C == 0) {
                int i20 = c1308fM7.f18753g;
                if (i20 == 20) {
                    if ((byteBuffer.get(5) & 2) == 0) {
                        i9 = 0;
                    } else {
                        byte b9 = byteBuffer.get(26);
                        int i21 = 28;
                        int i22 = 28;
                        for (int i23 = 0; i23 < b9; i23++) {
                            i22 += byteBuffer.get(i23 + 27);
                        }
                        byte b10 = byteBuffer.get(i22 + 26);
                        for (int i24 = 0; i24 < b10; i24++) {
                            i21 += byteBuffer.get(i22 + 27 + i24);
                        }
                        i9 = i22 + i21;
                    }
                    int i25 = byteBuffer.get(i9 + 26) + 27 + i9;
                    iX = (int) ((Q3.b.X(byteBuffer.get(i25), byteBuffer.limit() - i25 > 1 ? byteBuffer.get(i25 + 1) : (byte) 0) * 48000) / 1000000);
                } else if (i20 != 30) {
                    switch (i20) {
                        case 5:
                        case 6:
                            if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
                                iX = AbstractC1717nH.f20112c[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
                            } else {
                                iX = 1536;
                            }
                            break;
                        case 7:
                        case 8:
                            if (byteBuffer.getInt(0) != -233094848 || byteBuffer.getInt(0) == -398277519) {
                                iX = 1024;
                            } else if (byteBuffer.getInt(0) == 622876772) {
                                iX = 4096;
                            } else {
                                int iPosition = byteBuffer.position();
                                byte b11 = byteBuffer.get(iPosition);
                                if (b11 != -2) {
                                    if (b11 != -1) {
                                        if (b11 != 31) {
                                            i13 = (byteBuffer.get(iPosition + 4) & 1) << 6;
                                            i14 = byteBuffer.get(iPosition + 5) & 252;
                                            i12 = 2;
                                        } else {
                                            i12 = 2;
                                            i13 = (byteBuffer.get(iPosition + 5) & 7) << 4;
                                            b8 = byteBuffer.get(iPosition + 6);
                                        }
                                        i11 = (i14 >> i12) | i13;
                                        i10 = 1;
                                    } else {
                                        i12 = 2;
                                        i13 = (byteBuffer.get(iPosition + 4) & 7) << 4;
                                        b8 = byteBuffer.get(iPosition + 7);
                                    }
                                    i14 = b8 & 60;
                                    i11 = (i14 >> i12) | i13;
                                    i10 = 1;
                                } else {
                                    i10 = 1;
                                    i11 = ((byteBuffer.get(iPosition + 5) & 1) << 6) | ((byteBuffer.get(iPosition + 4) & 252) >> 2);
                                }
                                iX = (i11 + i10) * 32;
                            }
                            break;
                        case 9:
                            int iReverseBytes = byteBuffer.getInt(byteBuffer.position());
                            if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                                iReverseBytes = Integer.reverseBytes(iReverseBytes);
                            }
                            if ((iReverseBytes & (-2097152)) != -2097152 || (i15 = (iReverseBytes >>> 19) & 3) == 1 || (i16 = (iReverseBytes >>> 17) & 3) == 0) {
                                iX = -1;
                            } else {
                                int i26 = iReverseBytes >>> 12;
                                int i27 = (iReverseBytes >>> 10) & 3;
                                int i28 = i26 & 15;
                                if (i28 == 0 || i28 == 15 || i27 == 3) {
                                    iX = -1;
                                } else {
                                    iX = 1152;
                                    if (i16 != 1) {
                                        if (i16 != 2) {
                                            iX = 384;
                                        }
                                    } else if (i15 != 3) {
                                        iX = 576;
                                    }
                                }
                            }
                            if (iX == -1) {
                                throw new IllegalArgumentException();
                            }
                            break;
                        case 10:
                            iX = 1024;
                            break;
                        case 11:
                        case 12:
                            iX = 2048;
                            break;
                        default:
                            switch (i20) {
                                case 14:
                                    int iPosition2 = byteBuffer.position();
                                    int iLimit = byteBuffer.limit() - 10;
                                    int i29 = iPosition2;
                                    while (true) {
                                        if (i29 <= iLimit) {
                                            int iReverseBytes2 = byteBuffer.getInt(i29 + 4);
                                            if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                                                iReverseBytes2 = Integer.reverseBytes(iReverseBytes2);
                                            }
                                            if ((iReverseBytes2 & (-2)) == -126718022) {
                                                i17 = i29 - iPosition2;
                                            } else {
                                                i29++;
                                            }
                                        } else {
                                            i17 = -1;
                                        }
                                    }
                                    if (i17 == -1) {
                                        iX = 0;
                                    } else {
                                        iX = (40 << ((byteBuffer.get((byteBuffer.position() + i17) + ((byteBuffer.get((byteBuffer.position() + i17) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7)) * 16;
                                    }
                                    break;
                                case 15:
                                    iX = IMediaList.Event.ItemAdded;
                                    break;
                                case 16:
                                    iX = 1024;
                                    break;
                                case 17:
                                    byte[] bArr = new byte[16];
                                    int iPosition3 = byteBuffer.position();
                                    byteBuffer.get(bArr);
                                    byteBuffer.position(iPosition3);
                                    iX = AbstractC1717nH.a(new C1286f0(bArr, 16)).f632c;
                                    break;
                                case 18:
                                    if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
                                        iX = AbstractC1717nH.f20112c[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
                                    } else {
                                        iX = 1536;
                                    }
                                    break;
                                default:
                                    throw new IllegalStateException(p000a.r.f("Unexpected audio encoding: ", i20));
                            }
                            break;
                    }
                } else if (byteBuffer.getInt(0) != -233094848) {
                    iX = 1024;
                } else {
                    iX = 1024;
                }
                this.f19737C = iX;
                if (iX == 0) {
                    return true;
                }
            }
            if (this.f19780u != null) {
                if (!h()) {
                    return false;
                }
                c(j8);
                this.f19780u = null;
            }
            long jU = Et.u(this.f19773n.f18747a.f20363B, a() - this.f19762c.f20893o) + this.f19740F;
            if (!this.f19738D && Math.abs(jU - j8) > 200000) {
                C1722nM c1722nM4 = this.f19771l;
                if (c1722nM4 != null) {
                    StringBuilder sbD = p148t.a.d("Unexpected audio track timestamp discontinuity: expected ", jU, ", got ");
                    sbD.append(j8);
                    c1722nM4.a(new C0129t(sbD.toString()));
                }
                this.f19738D = true;
            }
            if (this.f19738D) {
                if (!h()) {
                    return false;
                }
                long j9 = j8 - jU;
                this.f19740F += j9;
                this.f19738D = false;
                c(j8);
                C1722nM c1722nM5 = this.f19771l;
                if (c1722nM5 != null && j9 != 0) {
                    c1722nM5.f20167a.f20268H0 = true;
                }
            }
            if (this.f19773n.f18749c == 0) {
                this.f19784y += (long) byteBuffer.remaining();
            } else {
                this.f19785z = (((long) this.f19737C) * ((long) i8)) + this.f19785z;
            }
            this.f19742H = byteBuffer;
            this.f19743I = i8;
        }
        f(j8);
        if (!this.f19742H.hasRemaining()) {
            this.f19742H = null;
            this.f19743I = 0;
            return true;
        }
        long jB2 = b();
        if (wl2.f17240y == -9223372036854775807L || jB2 <= 0) {
            return false;
        }
        ((Nr) wl2.f17215G).getClass();
        if (SystemClock.elapsedRealtime() - wl2.f17240y < 200) {
            return false;
        }
        Zo.f("DefaultAudioSink", "Resetting stalled audio track");
        m();
        return true;
    }

    public final boolean q() {
        if (i()) {
            return !(Et.f13234a >= 29 && this.f19775p.isOffloadedPlayback() && this.f19747M) && this.f19765f.c(b());
        }
        return false;
    }
}
