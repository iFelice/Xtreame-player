package A0;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import p039f.RunnableC3004t;
import p094m0.C3126i;
import p094m0.C3138v;
import p094m0.o0;
import p094m0.r0;
import p117p0.AbstractC3164b;

/* JADX INFO: loaded from: classes.dex */
public final class D implements K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final EGLDisplay f32d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EGLContext f33e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EGLSurface f34f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C3126i f35g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final h0 f36h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Executor f37i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final r0 f38j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final b0 f40l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f42n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f43o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f44p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public C0013m f45q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f46r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public p117p0.F f48t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public C0019t f49u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f50v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f51w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public p094m0.b0 f52x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f53y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public EGLSurface f54z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f30b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f31c = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f41m = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public I f47s = new U4.b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ConcurrentLinkedQueue f39k = new ConcurrentLinkedQueue();

    public D(Context context, EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, C3126i c3126i, h0 h0Var, Executor executor, r0 r0Var, boolean z7) {
        this.f29a = context;
        this.f32d = eGLDisplay;
        this.f33e = eGLContext;
        this.f34f = eGLSurface;
        this.f35g = c3126i;
        this.f36h = h0Var;
        this.f37i = executor;
        this.f38j = r0Var;
        this.f42n = z7;
        this.f40l = new b0(C3126i.g(c3126i), 0);
        int i8 = 0 ^ 1;
        long[] jArr = new long[Integer.bitCount(i8) != 1 ? Integer.highestOneBit(i8 - 1) << 1 : i8];
        int i9 = 0 ^ 1;
        long[] jArr2 = new long[Integer.bitCount(i9) != 1 ? Integer.highestOneBit(i9 - 1) << 1 : i9];
        this.f53y = -9223372036854775807L;
    }

    @Override // A0.K
    public final void a() {
        this.f36h.h();
        if (!this.f39k.isEmpty()) {
            H1.i(!this.f42n);
            this.f46r = true;
        } else {
            C0019t c0019t = this.f49u;
            c0019t.getClass();
            c0019t.a();
            this.f46r = false;
        }
    }

    @Override // A0.K
    public final void b(F.i iVar, C3138v c3138v, long j8) {
        this.f36h.h();
        int i8 = 0;
        int i9 = 1;
        boolean z7 = this.f53y != -9223372036854775807L;
        Executor executor = this.f37i;
        if (!z7) {
            executor.execute(new C(this, i8, j8));
        }
        if (this.f42n) {
            h(iVar, c3138v, j8, j8 * 1000);
        } else {
            ConcurrentLinkedQueue concurrentLinkedQueue = this.f39k;
            concurrentLinkedQueue.add(new c0(c3138v, j8));
            long j9 = this.f53y;
            if (j9 != -9223372036854775807L) {
                if (j8 == j9) {
                    this.f53y = -9223372036854775807L;
                    executor.execute(new C(this, i9, j8));
                    h(iVar, c3138v, j8, System.nanoTime());
                    concurrentLinkedQueue.clear();
                } else {
                    this.f47s.A(c3138v);
                }
            }
        }
        this.f47s.r();
    }

    @Override // A0.K
    public final void c(C3138v c3138v) {
        throw new UnsupportedOperationException();
    }

    @Override // A0.K
    public final void d(C0006f c0006f) {
        throw new UnsupportedOperationException();
    }

    @Override // A0.K
    public final void e(Executor executor, C0014n c0014n) {
        throw new UnsupportedOperationException();
    }

    @Override // A0.K
    public final void f(I i8) {
        this.f36h.h();
        this.f47s = i8;
        i8.r();
    }

    @Override // A0.K
    public final void flush() {
        this.f36h.h();
        this.f39k.clear();
        this.f46r = false;
        C0013m c0013m = this.f45q;
        if (c0013m != null) {
            c0013m.flush();
        }
        this.f47s.x();
        this.f47s.r();
    }

    public final boolean g(F.i iVar, int i8, int i9) throws p117p0.p {
        int[] iArr;
        int[] iArr2;
        boolean z7 = (this.f43o == i8 && this.f44p == i9 && this.f48t != null) ? false : true;
        ArrayList arrayList = this.f30b;
        if (z7) {
            this.f43o = i8;
            this.f44p = i9;
            p117p0.F fC = Q.c(i8, i9, arrayList);
            if (!Objects.equals(this.f48t, fC)) {
                this.f48t = fC;
                this.f37i.execute(new RunnableC3004t(11, this, fC));
            }
        }
        this.f48t.getClass();
        p094m0.b0 b0Var = this.f52x;
        if (b0Var == null) {
            H1.i(this.f54z == null);
            C0013m c0013m = this.f45q;
            if (c0013m != null) {
                c0013m.release();
                this.f45q = null;
            }
            p117p0.x.f("FinalShaderWrapper", "Output surface and size not set, dropping frame.");
            return false;
        }
        EGLSurface eGLSurface = this.f54z;
        C3126i c3126i = this.f35g;
        if (eGLSurface == null) {
            int i10 = c3126i.f26874c;
            iVar.getClass();
            int[] iArr3 = AbstractC3164b.f28070f;
            if (i10 == 3 || i10 == 10) {
                iArr = iArr3;
                iArr2 = AbstractC3164b.f28066b;
            } else {
                if (i10 != 7 && i10 != 6) {
                    throw new IllegalArgumentException(p000a.r.f("Unsupported color transfer: ", i10));
                }
                iArr2 = AbstractC3164b.f28067c;
                if (i10 == 6) {
                    if (!AbstractC3164b.w()) {
                        throw new p117p0.p("BT.2020 PQ OpenGL output isn't supported.");
                    }
                    iArr = AbstractC3164b.f28068d;
                } else {
                    if (!AbstractC3164b.x("EGL_EXT_gl_colorspace_bt2020_hlg")) {
                        throw new p117p0.p("BT.2020 HLG OpenGL output isn't supported.");
                    }
                    iArr = AbstractC3164b.f28069e;
                }
            }
            EGLDisplay eGLDisplay = this.f32d;
            EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(eGLDisplay, AbstractC3164b.u(eGLDisplay, iArr2), b0Var.f26816a, iArr, 0);
            AbstractC3164b.d("Error creating a new EGL surface");
            this.f54z = eGLSurfaceEglCreateWindowSurface;
        }
        C0013m c0013m2 = this.f45q;
        if (c0013m2 != null && (this.f51w || z7 || this.f50v)) {
            c0013m2.release();
            this.f45q = null;
            this.f51w = false;
            this.f50v = false;
        }
        if (this.f45q == null) {
            z4.E e8 = new z4.E(4);
            e8.j0(arrayList);
            e8.g0(S.f(b0Var.f26817b, b0Var.f26818c));
            C0013m c0013mK = C0013m.k(this.f29a, e8.m0(), this.f31c, c3126i, this.f41m);
            p117p0.F fC2 = Q.c(this.f43o, this.f44p, c0013mK.f178i);
            p094m0.b0 b0Var2 = this.f52x;
            if (b0Var2 != null) {
                H1.i(fC2.f28039a == b0Var2.f26817b);
                H1.i(fC2.f28040b == b0Var2.f26818c);
            }
            this.f45q = c0013mK;
            this.f51w = false;
        }
        return true;
    }

    public final void h(F.i iVar, C3138v c3138v, long j8, long j9) {
        if (j9 != -2) {
            try {
                if (g(iVar, c3138v.f27058c, c3138v.f27059d)) {
                    long j10 = this.f53y;
                    if (j10 == -9223372036854775807L || j8 == j10) {
                        if (this.f52x != null) {
                            i(c3138v, j8, j9);
                        }
                        this.f47s.A(c3138v);
                        return;
                    }
                }
            } catch (o0 e8) {
                e = e8;
                this.f37i.execute(new RunnableC0010j(this, e, j8, 1));
            } catch (p117p0.p e9) {
                e = e9;
                this.f37i.execute(new RunnableC0010j(this, e, j8, 1));
            }
        }
        this.f47s.A(c3138v);
        if (j9 == -2) {
            C0019t c0019t = this.f49u;
            c0019t.getClass();
            U u7 = c0019t.f204c;
            if (u7 == null) {
                return;
            }
            u7.j(j8);
        }
    }

    public final void i(C3138v c3138v, long j8, long j9) throws p117p0.p, o0 {
        EGLSurface eGLSurface = this.f54z;
        eGLSurface.getClass();
        p094m0.b0 b0Var = this.f52x;
        b0Var.getClass();
        C0013m c0013m = this.f45q;
        c0013m.getClass();
        EGLDisplay eGLDisplay = this.f32d;
        EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f33e);
        AbstractC3164b.d("Error making context current");
        AbstractC3164b.r(0, b0Var.f26817b, b0Var.f26818c);
        AbstractC3164b.h();
        c0013m.h(c3138v.f27056a, j8);
        if (j9 == -3) {
            H1.i(j8 != -9223372036854775807L);
            j9 = 1000 * j8;
        }
        EGLExt.eglPresentationTimeANDROID(eGLDisplay, eGLSurface, j9);
        EGL14.eglSwapBuffers(eGLDisplay, eGLSurface);
        C0019t c0019t = this.f49u;
        c0019t.getClass();
        U u7 = c0019t.f204c;
        if (u7 != null) {
            u7.j(j8);
        }
        AbstractC0007g.b(j8);
    }

    @Override // A0.K
    public final void release() throws o0 {
        this.f36h.h();
        C0013m c0013m = this.f45q;
        if (c0013m != null) {
            c0013m.release();
        }
        try {
            this.f40l.b();
            AbstractC3164b.q(this.f32d, this.f54z);
            AbstractC3164b.e();
        } catch (p117p0.p e8) {
            throw new o0((Throwable) e8);
        }
    }
}
