package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.measurement.AbstractC2617p2;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class F1 extends p113o3.r implements D4.b {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final boolean f22456J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Logger f22457K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final AbstractC2617p2 f22458L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Object f22459M;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile Object f22460G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile C2523z1 f22461H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public volatile E1 f22462I;

    static {
        boolean z7;
        Throwable th;
        Throwable th2;
        AbstractC2617p2 b8;
        try {
            z7 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z7 = false;
        }
        f22456J = z7;
        f22457K = Logger.getLogger(F1.class.getName());
        try {
            b8 = new D1();
            th2 = null;
            th = null;
        } catch (Error | RuntimeException e8) {
            try {
                th = null;
                th2 = e8;
                b8 = new A1(AtomicReferenceFieldUpdater.newUpdater(E1.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(E1.class, E1.class, "b"), AtomicReferenceFieldUpdater.newUpdater(F1.class, E1.class, "I"), AtomicReferenceFieldUpdater.newUpdater(F1.class, C2523z1.class, "H"), AtomicReferenceFieldUpdater.newUpdater(F1.class, Object.class, "G"));
            } catch (Error | RuntimeException e9) {
                th = e9;
                th2 = e8;
                b8 = new B1();
            }
        }
        f22458L = b8;
        if (th != null) {
            Logger logger = f22457K;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        f22459M = new Object();
    }

    public static void Q(F1 f8) {
        for (E1 e1Q = f22458L.q(f8); e1Q != null; e1Q = e1Q.f22443b) {
            Thread thread = e1Q.f22442a;
            if (thread != null) {
                e1Q.f22442a = null;
                LockSupport.unpark(thread);
            }
        }
        f8.O();
        C2523z1 c2523z1P = f22458L.p(f8);
        C2523z1 c2523z1 = null;
        while (c2523z1P != null) {
            C2523z1 c2523z2 = c2523z1P.f22859c;
            c2523z1P.f22859c = c2523z1;
            c2523z1 = c2523z1P;
            c2523z1P = c2523z2;
        }
        while (c2523z1 != null) {
            Runnable runnable = c2523z1.f22857a;
            C2523z1 c2523z3 = c2523z1.f22859c;
            runnable.getClass();
            Executor executor = c2523z1.f22858b;
            executor.getClass();
            R(runnable, executor);
            c2523z1 = c2523z3;
        }
    }

    public static void R(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e8) {
            f22457K.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", com.google.protobuf.U2.m("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e8);
        }
    }

    public static final Object T(Object obj) throws ExecutionException {
        if (obj instanceof C2515x1) {
            Throwable th = ((C2515x1) obj).f22820b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof C2519y1) {
            throw new ExecutionException(((C2519y1) obj).f22852a);
        }
        if (obj == f22459M) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String N() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public void O() {
    }

    public final void P(StringBuilder sb) {
        Object obj;
        boolean z7 = false;
        while (true) {
            try {
                try {
                    obj = get();
                    break;
                } catch (CancellationException unused) {
                    sb.append("CANCELLED");
                    return;
                } catch (RuntimeException e8) {
                    sb.append("UNKNOWN, cause=[");
                    sb.append(e8.getClass());
                    sb.append(" thrown from get()]");
                    return;
                } catch (ExecutionException e9) {
                    sb.append("FAILURE, cause=[");
                    sb.append(e9.getCause());
                    sb.append("]");
                    return;
                }
            } catch (InterruptedException unused2) {
                z7 = true;
            } catch (Throwable th) {
                if (z7) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z7) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        if (obj == null) {
            sb.append("null");
        } else if (obj == this) {
            sb.append("this future");
        } else {
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
        sb.append("]");
    }

    public final void S(E1 e8) {
        e8.f22442a = null;
        while (true) {
            E1 e9 = this.f22462I;
            if (e9 != E1.f22441c) {
                E1 e10 = null;
                while (e9 != null) {
                    E1 e11 = e9.f22443b;
                    if (e9.f22442a != null) {
                        e10 = e9;
                    } else if (e10 != null) {
                        e10.f22443b = e11;
                        if (e10.f22442a == null) {
                        }
                    } else if (!f22458L.x(this, e9, e11)) {
                    }
                    e9 = e11;
                }
                return;
            }
            return;
        }
    }

    @Override // D4.b
    public final void a(Runnable runnable, Executor executor) {
        C2523z1 c2523z1;
        C2523z1 c2523z2;
        if (runnable == null) {
            throw new NullPointerException("Runnable was null.");
        }
        if (executor == null) {
            throw new NullPointerException("Executor was null.");
        }
        if (!isDone() && (c2523z1 = this.f22461H) != (c2523z2 = C2523z1.f22856d)) {
            C2523z1 c2523z3 = new C2523z1(runnable, executor);
            do {
                c2523z3.f22859c = c2523z1;
                if (f22458L.v(this, c2523z1, c2523z3)) {
                    return;
                } else {
                    c2523z1 = this.f22461H;
                }
            } while (c2523z1 != c2523z2);
        }
        R(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        C2515x1 c2515x1;
        Object obj = this.f22460G;
        if (obj != null) {
            return false;
        }
        if (f22456J) {
            c2515x1 = new C2515x1(z7, new CancellationException("Future.cancel() was called."));
        } else {
            c2515x1 = z7 ? C2515x1.f22817c : C2515x1.f22818d;
            c2515x1.getClass();
        }
        if (!f22458L.w(this, obj, c2515x1)) {
            return false;
        }
        Q(this);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f22460G;
        if ((obj2 != null) && true) {
            return T(obj2);
        }
        E1 e8 = this.f22462I;
        E1 e9 = E1.f22441c;
        if (e8 != e9) {
            E1 e10 = new E1();
            do {
                AbstractC2617p2 abstractC2617p2 = f22458L;
                abstractC2617p2.t(e10, e8);
                if (abstractC2617p2.x(this, e8, e10)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            S(e10);
                            throw new InterruptedException();
                        }
                        obj = this.f22460G;
                    } while (!((obj != null) & true));
                    return T(obj);
                }
                e8 = this.f22462I;
            } while (e8 != e9);
        }
        Object obj3 = this.f22460G;
        obj3.getClass();
        return T(obj3);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f22460G instanceof C2515x1;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (this.f22460G != null) & true;
    }

    public final String toString() {
        String strConcat;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.f22460G instanceof C2515x1) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            P(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            try {
                strConcat = N();
                int i8 = AbstractC2521z.f22855a;
                if (strConcat == null || strConcat.isEmpty()) {
                    strConcat = null;
                }
            } catch (RuntimeException | StackOverflowError e8) {
                strConcat = "Exception thrown from implementation: ".concat(String.valueOf(e8.getClass()));
            }
            if (strConcat != null) {
                sb.append(", info=[");
                sb.append(strConcat);
                sb.append("]");
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                P(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0096  */
    /* JADX WARN: Code duplicated, block: B:48:0x009a  */
    /* JADX WARN: Code duplicated, block: B:49:0x009c  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ab A[EDGE_INSN: B:56:0x00ab->B:36:0x0077 BREAK  A[LOOP:0: B:21:0x003e->B:85:?]] */
    /* JADX WARN: Code duplicated, block: B:59:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:63:0x0103  */
    /* JADX WARN: Code duplicated, block: B:68:0x010b  */
    /* JADX WARN: Code duplicated, block: B:70:0x0122  */
    /* JADX WARN: Code duplicated, block: B:73:0x012e  */
    /* JADX WARN: Code duplicated, block: B:77:0x014e  */
    /* JADX WARN: Code duplicated, block: B:79:0x015a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00ab -> B:36:0x0077). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // java.util.concurrent.Future
    public final java.lang.Object get(long r19, java.util.concurrent.TimeUnit r21) {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.F1.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }
}
