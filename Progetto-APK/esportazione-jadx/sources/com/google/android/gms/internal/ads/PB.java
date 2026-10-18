package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.measurement.AbstractC2617p2;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes.dex */
public abstract class PB extends CB {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final AbstractC2617p2 f15343P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final C1454iC f15344Q = new C1454iC(0, PB.class);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public volatile Set f15345N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public volatile int f15346O;

    static {
        Throwable th;
        AbstractC2617p2 ob;
        try {
            ob = new NB(AtomicReferenceFieldUpdater.newUpdater(PB.class, Set.class, "N"), AtomicIntegerFieldUpdater.newUpdater(PB.class, "O"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            ob = new OB();
        }
        Throwable th3 = th;
        f15343P = ob;
        if (th3 != null) {
            f15344Q.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th3);
        }
    }
}
