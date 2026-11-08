package p021c4;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import p079k.RunnableC3015g;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10690G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ K0 f10691H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f10692I;

    public /* synthetic */ C0(K0 k8, AtomicReference atomicReference, int i8) {
        this.f10690G = i8;
        this.f10691H = k8;
        this.f10692I = atomicReference;
    }

    private final void a() {
        AtomicReference atomicReference = this.f10692I;
        synchronized (atomicReference) {
            try {
                try {
                    Object obj = this.f10691H.f10616G;
                    atomicReference.set(Boolean.valueOf(((C0597l0) obj).f11256M.B(((C0597l0) obj).n().t(), E.f10765a0)));
                    this.f10692I.notify();
                } catch (Throwable th) {
                    this.f10692I.notify();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void b() {
        AtomicReference atomicReference = this.f10692I;
        synchronized (atomicReference) {
            try {
                try {
                    Object obj = this.f10691H.f10616G;
                    atomicReference.set(((C0597l0) obj).f11256M.A(((C0597l0) obj).n().t(), E.f10768b0));
                    this.f10692I.notify();
                } catch (Throwable th) {
                    this.f10692I.notify();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void c() {
        AtomicReference atomicReference = this.f10692I;
        synchronized (atomicReference) {
            try {
                try {
                    Object obj = this.f10691H.f10616G;
                    atomicReference.set(Long.valueOf(((C0597l0) obj).f11256M.w(((C0597l0) obj).n().t(), E.f10771c0)));
                    this.f10692I.notify();
                } catch (Throwable th) {
                    this.f10692I.notify();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void d() {
        AtomicReference atomicReference = this.f10692I;
        synchronized (atomicReference) {
            try {
                try {
                    Object obj = this.f10691H.f10616G;
                    atomicReference.set(Integer.valueOf(((C0597l0) obj).f11256M.t(((C0597l0) obj).n().t(), E.f10774d0)));
                    this.f10692I.notify();
                } catch (Throwable th) {
                    this.f10692I.notify();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10690G) {
            case 0:
                K0 k8 = this.f10691H;
                Z z7 = ((C0597l0) k8.f10616G).f11257N;
                C0597l0.i(z7);
                Bundle bundleU = z7.f11098U.u();
                C0574d1 c0574d1R = ((C0597l0) k8.f10616G).r();
                c0574d1R.m();
                c0574d1R.n();
                c0574d1R.E(new RunnableC3015g(c0574d1R, this.f10692I, c0574d1R.B(false), bundleU, 13, 0));
                return;
            case 1:
                C0574d1 c0574d1R2 = ((C0597l0) this.f10691H.f10616G).r();
                R0[] r0Arr = {R0.SGTM_CLIENT};
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(Integer.valueOf(r0Arr[0].f11028G));
                s1 s1Var = new s1(arrayList);
                c0574d1R2.m();
                c0574d1R2.n();
                c0574d1R2.E(new RunnableC3015g(c0574d1R2, this.f10692I, c0574d1R2.B(false), s1Var, 14, 0));
                return;
            case 2:
                a();
                return;
            case 3:
                b();
                return;
            case 4:
                c();
                return;
            case 5:
                d();
                return;
            default:
                AtomicReference atomicReference = this.f10692I;
                synchronized (atomicReference) {
                    try {
                        try {
                            Object obj = this.f10691H.f10616G;
                            atomicReference.set(Double.valueOf(((C0597l0) obj).f11256M.r(((C0597l0) obj).n().t(), E.f10777e0)));
                            this.f10692I.notify();
                        } catch (Throwable th) {
                            this.f10692I.notify();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return;
        }
    }
}
