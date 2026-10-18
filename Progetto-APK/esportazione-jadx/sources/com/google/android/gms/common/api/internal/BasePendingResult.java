package com.google.android.gms.common.api.internal;

import A0.O;
import E3.u;
import K3.AbstractC0247u;
import K3.HandlerC0231d;
import K3.X;
import K3.Y;
import android.os.Looper;
import android.util.Log;
import android.util.Pair;
import com.bumptech.glide.c;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.p;
import com.google.android.gms.internal.ads.AbstractC1522jf;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
@KeepName
public abstract class BasePendingResult<R extends o> extends AbstractC2987b {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public p f11771Q;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public o f11773S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public volatile boolean f11774T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f11775U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f11776V;

    @KeepName
    private Y resultGuardian;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Object f11767M = new Object();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final CountDownLatch f11769O = new CountDownLatch(1);

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final ArrayList f11770P = new ArrayList();

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final AtomicReference f11772R = new AtomicReference();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final HandlerC0231d f11768N = new HandlerC0231d(Looper.getMainLooper(), 0);

    static {
        new X(0);
    }

    public BasePendingResult() {
        new WeakReference(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void P0(o oVar) {
        if (oVar instanceof AbstractC1522jf) {
            try {
                ((AbstractC1522jf) oVar).j();
            } catch (RuntimeException e8) {
                Log.w("BasePendingResult", "Unable to release ".concat(String.valueOf(oVar)), e8);
            }
        }
    }

    public final void G0() {
        synchronized (this.f11767M) {
            try {
                if (!this.f11775U && !this.f11774T) {
                    P0(this.f11773S);
                    this.f11775U = true;
                    O0(H0(Status.f11755M));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract E3.o H0(Status status);

    public final void I0(Status status) {
        synchronized (this.f11767M) {
            try {
                if (!K0()) {
                    L0(H0(status));
                    this.f11776V = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean J0() {
        boolean z7;
        synchronized (this.f11767M) {
            z7 = this.f11775U;
        }
        return z7;
    }

    public final boolean K0() {
        return this.f11769O.getCount() == 0;
    }

    public final void L0(o oVar) {
        synchronized (this.f11767M) {
            try {
                if (this.f11776V || this.f11775U) {
                    P0(oVar);
                    return;
                }
                K0();
                c.j("Results have already been set", !K0());
                c.j("Result has already been consumed", !this.f11774T);
                O0(oVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void M0(u uVar) {
        synchronized (this.f11767M) {
            try {
                c.j("Result has already been consumed.", !this.f11774T);
                if (J0()) {
                    return;
                }
                if (K0()) {
                    HandlerC0231d handlerC0231d = this.f11768N;
                    o oVarN0 = N0();
                    handlerC0231d.getClass();
                    handlerC0231d.sendMessage(handlerC0231d.obtainMessage(1, new Pair(uVar, oVarN0)));
                } else {
                    this.f11771Q = uVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final o N0() {
        o oVar;
        synchronized (this.f11767M) {
            c.j("Result has already been consumed.", !this.f11774T);
            c.j("Result is not ready.", K0());
            oVar = this.f11773S;
            this.f11773S = null;
            this.f11771Q = null;
            this.f11774T = true;
        }
        O.I(this.f11772R.getAndSet(null));
        c.h(oVar);
        return oVar;
    }

    public final void O0(o oVar) {
        this.f11773S = oVar;
        oVar.c();
        this.f11769O.countDown();
        if (this.f11775U) {
            this.f11771Q = null;
        } else {
            p pVar = this.f11771Q;
            if (pVar != null) {
                HandlerC0231d handlerC0231d = this.f11768N;
                handlerC0231d.removeMessages(2);
                handlerC0231d.sendMessage(handlerC0231d.obtainMessage(1, new Pair(pVar, N0())));
            } else if (this.f11773S instanceof AbstractC1522jf) {
                this.resultGuardian = new Y(this);
            }
        }
        ArrayList arrayList = this.f11770P;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            ((AbstractC0247u) arrayList.get(0)).getClass();
            throw null;
        }
    }
}
