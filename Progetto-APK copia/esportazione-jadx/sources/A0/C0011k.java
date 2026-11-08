package A0;

import N.C0260i;
import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLDisplay;
import com.google.android.gms.internal.ads.Cw;
import java.util.Arrays;
import java.util.concurrent.Executor;
import p094m0.C3126i;
import p094m0.C3138v;
import p094m0.InterfaceC3128k;
import p094m0.o0;
import p117p0.AbstractC3164b;

/* JADX INFO: renamed from: A0.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0011k implements K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC3128k f164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0013m f165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C3126i f166d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public EGLDisplay f171i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f172j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f173k = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public I f167e = new U4.b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public J f168f = new p039f.S(this, 26);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public H f169g = new C0260i(6);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Executor f170h = D4.a.f2392G;

    public C0011k(Context context, InterfaceC3128k interfaceC3128k, C3126i c3126i) {
        this.f163a = context;
        this.f164b = interfaceC3128k;
        this.f166d = c3126i;
    }

    @Override // A0.K
    public final void a() {
        this.f168f.b();
    }

    @Override // A0.K
    public final void b(F.i iVar, C3138v c3138v, long j8) {
        try {
            g(c3138v.f27058c, c3138v.f27059d);
            this.f165c.getClass();
            throw null;
        } catch (o0 | p117p0.p e8) {
            this.f170h.execute(new RunnableC0010j(this, e8, j8, 0));
        }
    }

    @Override // A0.K
    public final void c(C3138v c3138v) {
        this.f167e.A(c3138v);
        this.f167e.r();
    }

    @Override // A0.K
    public final void d(C0006f c0006f) {
        this.f168f = c0006f;
    }

    @Override // A0.K
    public final void e(Executor executor, C0014n c0014n) {
        this.f169g = c0014n;
        this.f170h = executor;
    }

    @Override // A0.K
    public final void f(I i8) {
        this.f167e = i8;
        i8.r();
    }

    @Override // A0.K
    public final void flush() {
        C0013m c0013m = this.f165c;
        if (c0013m != null) {
            c0013m.flush();
        }
        this.f167e.x();
        this.f167e.r();
    }

    public final void g(int i8, int i9) {
        if (this.f171i == null) {
            this.f171i = AbstractC3164b.t();
        }
        EGL14.eglGetCurrentContext();
        if (this.f172j == -1 || this.f173k == -1) {
            this.f172j = i8;
            this.f173k = i9;
        }
        this.f164b.getClass();
        if (this.f165c == null) {
            Cw.g(4, "initialCapacity");
            Object[] objArrCopyOf = new Object[4];
            S sF = S.f(this.f172j, this.f173k);
            int iF = Q3.b.f(4, 1);
            if (iF > 4) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
            }
            objArrCopyOf[0] = sF;
            z4.d0 d0VarP = z4.H.p(1, objArrCopyOf);
            z4.d0 d0Var = z4.d0.f31844K;
            C3126i c3126i = this.f166d;
            this.f165c = C0013m.k(this.f163a, d0VarP, d0Var, c3126i, c3126i.f26874c == 1 ? 2 : 0);
        }
    }

    @Override // A0.K
    public final void release() throws o0 {
        C0013m c0013m = this.f165c;
        if (c0013m != null) {
            c0013m.release();
        }
        try {
            AbstractC3164b.e();
        } catch (p117p0.p e8) {
            throw new o0((Throwable) e8);
        }
    }
}
