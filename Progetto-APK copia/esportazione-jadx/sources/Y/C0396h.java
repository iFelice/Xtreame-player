package Y;

import android.transition.Transition;

/* JADX INFO: renamed from: Y.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0396h extends p039f.H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f7887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f7888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f7889e;

    /* JADX WARN: Code duplicated, block: B:15:0x0022  */
    /* JADX WARN: Code duplicated, block: B:16:0x0025  */
    public C0396h(d0 d0Var, J.c cVar, boolean z7, boolean z8) {
        Object obj;
        super(d0Var, cVar);
        int i8 = d0Var.f7861a;
        Object obj2 = null;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = d0Var.f7863c;
        if (i8 == 2) {
            if (z7) {
                C0405q c0405q = abstractComponentCallbacksC0406s.f7966p0;
                if (c0405q == null || (obj = c0405q.f7924j) == AbstractComponentCallbacksC0406s.f7929B0) {
                }
                this.f7887c = obj;
                if (z7) {
                    C0405q c0405q2 = abstractComponentCallbacksC0406s.f7966p0;
                } else {
                    C0405q c0405q3 = abstractComponentCallbacksC0406s.f7966p0;
                }
                this.f7888d = true;
            } else {
                abstractComponentCallbacksC0406s.getClass();
            }
            Object obj3 = null;
            this.f7887c = obj3;
            if (z7) {
                C0405q c0405q4 = abstractComponentCallbacksC0406s.f7966p0;
            } else {
                C0405q c0405q5 = abstractComponentCallbacksC0406s.f7966p0;
            }
            this.f7888d = true;
        } else {
            if (z7) {
                C0405q c0405q6 = abstractComponentCallbacksC0406s.f7966p0;
                if (c0405q6 == null || (obj = c0405q6.f7923i) == AbstractComponentCallbacksC0406s.f7929B0) {
                }
                this.f7887c = obj;
                this.f7888d = true;
            } else {
                abstractComponentCallbacksC0406s.getClass();
            }
            Object obj4 = null;
            this.f7887c = obj4;
            this.f7888d = true;
        }
        if (!z8) {
            this.f7889e = null;
            return;
        }
        if (!z7) {
            abstractComponentCallbacksC0406s.getClass();
            this.f7889e = null;
            return;
        }
        C0405q c0405q7 = abstractComponentCallbacksC0406s.f7966p0;
        if (c0405q7 != null && (obj = c0405q7.f7925k) != AbstractComponentCallbacksC0406s.f7929B0) {
            obj2 = obj;
        }
        this.f7889e = obj2;
    }

    public final Z s(Object obj) {
        if (obj == null) {
            return null;
        }
        X x7 = S.f7790a;
        if (obj instanceof Transition) {
            return x7;
        }
        Z z7 = S.f7791b;
        if (z7 != null && z7.e(obj)) {
            return z7;
        }
        throw new IllegalArgumentException("Transition " + obj + " for fragment " + ((d0) this.f24905a).f7863c + " is not a valid framework Transition or AndroidX Transition");
    }
}
