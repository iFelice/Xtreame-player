package Y;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f7861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractComponentCallbacksC0406s f7863c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f7864d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f7865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f7866f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f7867g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final P f7868h;

    public d0(int i8, int i9, P p7, J.c cVar) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = p7.f7778c;
        this.f7864d = new ArrayList();
        this.f7865e = new HashSet();
        this.f7866f = false;
        this.f7867g = false;
        this.f7861a = i8;
        this.f7862b = i9;
        this.f7863c = abstractComponentCallbacksC0406s;
        cVar.a(new p039f.S(this, 19));
        this.f7868h = p7;
    }

    public final void a() {
        if (this.f7866f) {
            return;
        }
        this.f7866f = true;
        if (this.f7865e.isEmpty()) {
            b();
            return;
        }
        for (J.c cVar : new ArrayList(this.f7865e)) {
            synchronized (cVar) {
                try {
                    if (!cVar.f4045a) {
                        cVar.f4045a = true;
                        cVar.f4047c = true;
                        J.b bVar = cVar.f4046b;
                        if (bVar != null) {
                            try {
                                bVar.e();
                            } catch (Throwable th) {
                                synchronized (cVar) {
                                    cVar.f4047c = false;
                                    cVar.notifyAll();
                                    throw th;
                                }
                            }
                        }
                        synchronized (cVar) {
                            cVar.f4047c = false;
                            cVar.notifyAll();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void b() {
        if (!this.f7867g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f7867g = true;
            Iterator it = this.f7864d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        this.f7868h.k();
    }

    public final void c(int i8, int i9) {
        int iB = p156u.h.b(i9);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7863c;
        if (iB == 0) {
            if (this.f7861a != 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + abstractComponentCallbacksC0406s + " mFinalState = " + A0.O.Q(this.f7861a) + " -> " + A0.O.Q(i8) + ". ");
                }
                this.f7861a = i8;
                return;
            }
            return;
        }
        if (iB == 1) {
            if (this.f7861a == 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + abstractComponentCallbacksC0406s + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + A0.O.P(this.f7862b) + " to ADDING.");
                }
                this.f7861a = 2;
                this.f7862b = 2;
                return;
            }
            return;
        }
        if (iB != 2) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + abstractComponentCallbacksC0406s + " mFinalState = " + A0.O.Q(this.f7861a) + " -> REMOVED. mLifecycleImpact  = " + A0.O.P(this.f7862b) + " to REMOVING.");
        }
        this.f7861a = 1;
        this.f7862b = 3;
    }

    public final void d() {
        int i8 = this.f7862b;
        P p7 = this.f7868h;
        if (i8 != 2) {
            if (i8 == 3) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = p7.f7778c;
                View viewN = abstractComponentCallbacksC0406s.N();
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Clearing focus " + viewN.findFocus() + " on view " + viewN + " for Fragment " + abstractComponentCallbacksC0406s);
                }
                viewN.clearFocus();
                return;
            }
            return;
        }
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = p7.f7778c;
        View viewFindFocus = abstractComponentCallbacksC0406s2.f7963m0.findFocus();
        if (viewFindFocus != null) {
            abstractComponentCallbacksC0406s2.i().f7927m = viewFindFocus;
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + abstractComponentCallbacksC0406s2);
            }
        }
        View viewN2 = this.f7863c.N();
        if (viewN2.getParent() == null) {
            p7.b();
            viewN2.setAlpha(0.0f);
        }
        if (viewN2.getAlpha() == 0.0f && viewN2.getVisibility() == 0) {
            viewN2.setVisibility(4);
        }
        C0405q c0405q = abstractComponentCallbacksC0406s2.f7966p0;
        viewN2.setAlpha(c0405q == null ? 1.0f : c0405q.f7926l);
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + A0.O.Q(this.f7861a) + "} {mLifecycleImpact = " + A0.O.P(this.f7862b) + "} {mFragment = " + this.f7863c + "}";
    }
}
