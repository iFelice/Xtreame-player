package A0;

import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import p039f.RunnableC3004t;
import p094m0.C3138v;
import p094m0.o0;
import p117p0.AbstractC3164b;

/* JADX INFO: renamed from: A0.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0004d implements g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f136c;

    public /* synthetic */ C0004d(int i8, Object obj, Object obj2) {
        this.f134a = i8;
        this.f135b = obj;
        this.f136c = obj2;
    }

    @Override // A0.g0
    public final void run() throws o0 {
        boolean z7 = true;
        switch (this.f134a) {
            case 0:
                C0006f c0006f = (C0006f) this.f135b;
                c0006f.f143G.c((C3138v) this.f136c);
                return;
            case 1:
                C0023x c0023x = (C0023x) this.f135b;
                C0022w c0022w = (C0022w) this.f136c;
                int i8 = C0023x.f223x;
                c0023x.a(c0022w, true);
                return;
            case 2:
                B b8 = (B) this.f135b;
                K k8 = (K) this.f136c;
                b8.f16S = 0;
                b8.f8K = (InterfaceC0024y) k8;
                return;
            case 3:
                D d6 = (D) this.f135b;
                p094m0.b0 b0Var = (p094m0.b0) this.f136c;
                if (Objects.equals(d6.f52x, b0Var)) {
                    return;
                }
                p094m0.b0 b0Var2 = d6.f52x;
                if (b0Var2 != null && (b0Var == null || !b0Var2.f26816a.equals(b0Var.f26816a))) {
                    EGLDisplay eGLDisplay = d6.f32d;
                    try {
                        if (d6.f54z != null) {
                            try {
                                EGLContext eGLContext = d6.f33e;
                                EGLSurface eGLSurface = d6.f34f;
                                EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
                                AbstractC3164b.d("Error making context current");
                                AbstractC3164b.r(0, 1, 1);
                                AbstractC3164b.q(eGLDisplay, d6.f54z);
                            } catch (p117p0.p e8) {
                                d6.f37i.execute(new RunnableC3004t(10, d6, e8));
                            }
                            d6.f54z = null;
                        }
                    } catch (Throwable th) {
                        d6.f54z = null;
                        throw th;
                    }
                    break;
                }
                p094m0.b0 b0Var3 = d6.f52x;
                if (b0Var3 != null && b0Var != null && b0Var3.f26817b == b0Var.f26817b && b0Var3.f26818c == b0Var.f26818c) {
                    z7 = false;
                }
                d6.f51w = z7;
                d6.f52x = b0Var;
                return;
            case 4:
                E e9 = (E) this.f135b;
                c0 c0Var = (c0) this.f136c;
                e9.getClass();
                C3138v c3138v = c0Var.f132a;
                e9.f56H.b(e9.f55G, c3138v, c0Var.f133b);
                return;
            case 5:
                ((Z) this.f135b).getClass();
                throw null;
            default:
                h0 h0Var = (h0) this.f135b;
                CountDownLatch countDownLatch = (CountDownLatch) this.f136c;
                synchronized (h0Var.f153e) {
                    h0Var.f155g = false;
                    break;
                }
                countDownLatch.countDown();
                return;
        }
    }
}
