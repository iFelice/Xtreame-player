package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public abstract class MB extends PB {

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final C1454iC f14683U = new C1454iC(0, MB.class);

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public AbstractC1814pA f14684R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f14685S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f14686T;

    public MB(AbstractC2073uA abstractC2073uA, boolean z7, boolean z8) {
        int size = abstractC2073uA.size();
        this.f15345N = null;
        this.f15346O = size;
        this.f14684R = abstractC2073uA;
        this.f14685S = z7;
        this.f14686T = z8;
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final String d() {
        AbstractC1814pA abstractC1814pA = this.f14684R;
        return abstractC1814pA != null ? "futures=".concat(abstractC1814pA.toString()) : super.d();
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final void e() {
        AbstractC1814pA abstractC1814pA = this.f14684R;
        y(1);
        if ((abstractC1814pA != null) && (this.f13489G instanceof C2126vB)) {
            boolean zM = m();
            AbstractC1349gB abstractC1349gBN = abstractC1814pA.n();
            while (abstractC1349gBN.hasNext()) {
                ((Future) abstractC1349gBN.next()).cancel(zM);
            }
        }
    }

    public final void r(AbstractC1814pA abstractC1814pA) {
        int iO = PB.f15343P.o(this);
        int i8 = 0;
        AbstractC2987b.E0("Less than 0 remaining futures", iO >= 0);
        if (iO == 0) {
            if (abstractC1814pA != null) {
                AbstractC1349gB abstractC1349gBN = abstractC1814pA.n();
                while (abstractC1349gBN.hasNext()) {
                    Future future = (Future) abstractC1349gBN.next();
                    if (!future.isCancelled()) {
                        try {
                            v(i8, Cw.J(future));
                        } catch (ExecutionException e8) {
                            s(e8.getCause());
                        } catch (Throwable th) {
                            s(th);
                        }
                    }
                    i8++;
                }
            }
            this.f15345N = null;
            w();
            y(2);
        }
    }

    public final void s(Throwable th) {
        th.getClass();
        if (this.f14685S && !g(th)) {
            Set set = this.f15345N;
            if (set == null) {
                Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                u(setNewSetFromMap);
                PB.f15343P.s(this, setNewSetFromMap);
                set = this.f15345N;
                Objects.requireNonNull(set);
            }
            Throwable cause = th;
            while (true) {
                if (cause == null) {
                    f14683U.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (th instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
                    return;
                } else if (!set.add(cause)) {
                    break;
                } else {
                    cause = cause.getCause();
                }
            }
        }
        boolean z7 = th instanceof Error;
        if (z7) {
            f14683U.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != z7 ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
        }
    }

    public final void t(int i8, D4.b bVar) {
        try {
            if (bVar.isCancelled()) {
                this.f14684R = null;
                cancel(false);
            } else {
                try {
                    v(i8, Cw.J(bVar));
                } catch (ExecutionException e8) {
                    s(e8.getCause());
                } catch (Throwable th) {
                    s(th);
                }
            }
        } finally {
            r(null);
        }
    }

    public final void u(Set set) {
        set.getClass();
        if (this.f13489G instanceof C2126vB) {
            return;
        }
        Throwable thB = b();
        Objects.requireNonNull(thB);
        while (thB != null && set.add(thB)) {
            thB = thB.getCause();
        }
    }

    public abstract void v(int i8, Object obj);

    public abstract void w();

    public final void x() {
        Objects.requireNonNull(this.f14684R);
        if (this.f14684R.isEmpty()) {
            w();
            return;
        }
        XB xb = XB.f17385G;
        if (!this.f14685S) {
            AbstractC1814pA abstractC1814pA = this.f14686T ? this.f14684R : null;
            RunnableC1170co runnableC1170co = new RunnableC1170co(17, this, abstractC1814pA);
            AbstractC1349gB abstractC1349gBN = this.f14684R.n();
            while (abstractC1349gBN.hasNext()) {
                D4.b bVar = (D4.b) abstractC1349gBN.next();
                if (bVar.isDone()) {
                    r(abstractC1814pA);
                } else {
                    bVar.a(runnableC1170co, xb);
                }
            }
            return;
        }
        AbstractC1349gB abstractC1349gBN2 = this.f14684R.n();
        int i8 = 0;
        while (abstractC1349gBN2.hasNext()) {
            D4.b bVar2 = (D4.b) abstractC1349gBN2.next();
            int i9 = i8 + 1;
            if (bVar2.isDone()) {
                t(i8, bVar2);
            } else {
                bVar2.a(new RunnableC0858Nn(this, i8, bVar2, 1), xb);
            }
            i8 = i9;
        }
    }

    public abstract void y(int i8);
}
