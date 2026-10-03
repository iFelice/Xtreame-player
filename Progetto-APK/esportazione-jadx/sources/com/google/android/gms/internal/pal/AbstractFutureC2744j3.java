package com.google.android.gms.internal.pal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.j3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractFutureC2744j3 extends AbstractC2864y4 implements Future {

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final boolean f23877T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final Logger f23878U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final AbstractC2864y4 f23879V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static final Object f23880W;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public volatile Object f23881Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public volatile C2696d3 f23882R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public volatile C2736i3 f23883S;

    static {
        boolean z7;
        Throwable th;
        Throwable th2;
        AbstractC2864y4 c2712f3;
        try {
            z7 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z7 = false;
        }
        f23877T = z7;
        f23878U = Logger.getLogger(AbstractFutureC2744j3.class.getName());
        try {
            c2712f3 = new C2728h3();
            th2 = null;
            th = null;
        } catch (Error | RuntimeException e8) {
            try {
                th = null;
                th2 = e8;
                c2712f3 = new C2704e3(AtomicReferenceFieldUpdater.newUpdater(C2736i3.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C2736i3.class, C2736i3.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFutureC2744j3.class, C2736i3.class, "S"), AtomicReferenceFieldUpdater.newUpdater(AbstractFutureC2744j3.class, C2696d3.class, "R"), AtomicReferenceFieldUpdater.newUpdater(AbstractFutureC2744j3.class, Object.class, "Q"));
            } catch (Error | RuntimeException e9) {
                th = e9;
                th2 = e8;
                c2712f3 = new C2712f3();
            }
        }
        f23879V = c2712f3;
        if (th != null) {
            Logger logger = f23878U;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        f23880W = new Object();
    }

    public static void J0(AbstractFutureC2744j3 abstractFutureC2744j3) {
        for (C2736i3 c2736i3E = f23879V.E(abstractFutureC2744j3); c2736i3E != null; c2736i3E = c2736i3E.f23856b) {
            Thread thread = c2736i3E.f23855a;
            if (thread != null) {
                c2736i3E.f23855a = null;
                LockSupport.unpark(thread);
            }
        }
        C2696d3 c2696d3F = f23879V.f(abstractFutureC2744j3);
        C2696d3 c2696d3 = null;
        while (c2696d3F != null) {
            C2696d3 c2696d4 = c2696d3F.f23777a;
            c2696d3F.f23777a = c2696d3;
            c2696d3 = c2696d3F;
            c2696d3F = c2696d4;
        }
        if (c2696d3 != null) {
            throw null;
        }
    }

    public static final Object L0(Object obj) throws ExecutionException {
        if (obj instanceof C2680b3) {
            Throwable th = ((C2680b3) obj).f23734a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof AbstractC2688c3) {
            ((AbstractC2688c3) obj).getClass();
            throw new ExecutionException((Throwable) null);
        }
        if (obj == f23880W) {
            return null;
        }
        return obj;
    }

    public final void I0(StringBuilder sb) {
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

    public final void K0(C2736i3 c2736i3) {
        c2736i3.f23855a = null;
        while (true) {
            C2736i3 c2736i4 = this.f23883S;
            if (c2736i4 != C2736i3.f23854c) {
                C2736i3 c2736i5 = null;
                while (c2736i4 != null) {
                    C2736i3 c2736i6 = c2736i4.f23856b;
                    if (c2736i4.f23855a != null) {
                        c2736i5 = c2736i4;
                    } else if (c2736i5 != null) {
                        c2736i5.f23856b = c2736i6;
                        if (c2736i5.f23855a == null) {
                        }
                    } else if (!f23879V.p0(this, c2736i4, c2736i6)) {
                    }
                    c2736i4 = c2736i6;
                }
                return;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        C2680b3 c2680b3;
        Object obj = this.f23881Q;
        if (obj == null) {
            if (f23877T) {
                c2680b3 = new C2680b3(z7, new CancellationException("Future.cancel() was called."));
            } else {
                c2680b3 = z7 ? C2680b3.f23732b : C2680b3.f23733c;
                c2680b3.getClass();
            }
            if (f23879V.l0(this, obj, c2680b3)) {
                J0(this);
                return true;
            }
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f23881Q;
        if ((obj2 != null) && true) {
            return L0(obj2);
        }
        C2736i3 c2736i3 = this.f23883S;
        C2736i3 c2736i4 = C2736i3.f23854c;
        if (c2736i3 != c2736i4) {
            C2736i3 c2736i5 = new C2736i3();
            do {
                AbstractC2864y4 abstractC2864y4 = f23879V;
                abstractC2864y4.W(c2736i5, c2736i3);
                if (abstractC2864y4.p0(this, c2736i3, c2736i5)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            K0(c2736i5);
                            throw new InterruptedException();
                        }
                        obj = this.f23881Q;
                    } while (!((obj != null) & true));
                    return L0(obj);
                }
                c2736i3 = this.f23883S;
            } while (c2736i3 != c2736i4);
        }
        Object obj3 = this.f23881Q;
        obj3.getClass();
        return L0(obj3);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f23881Q instanceof C2680b3;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (this.f23881Q != null) & true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String strConcat;
        String str;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.f23881Q instanceof C2680b3) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            I0(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            try {
                strConcat = null;
                if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
                int i8 = J2.f23564a;
                if (str != null && !str.isEmpty()) {
                    strConcat = str;
                }
            } catch (RuntimeException e8) {
                e = e8;
                Class<?> cls = e.getClass();
                cls.toString();
                strConcat = "Exception thrown from implementation: ".concat(String.valueOf(cls));
            } catch (StackOverflowError e9) {
                e = e9;
                Class<?> cls2 = e.getClass();
                cls2.toString();
                strConcat = "Exception thrown from implementation: ".concat(String.valueOf(cls2));
            }
            if (strConcat != null) {
                sb.append(", info=[");
                sb.append(strConcat);
                sb.append("]");
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                I0(sb);
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
    /* JADX WARN: Code duplicated, block: B:61:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:68:0x0103  */
    /* JADX WARN: Code duplicated, block: B:70:0x011a  */
    /* JADX WARN: Code duplicated, block: B:73:0x0126  */
    /* JADX WARN: Code duplicated, block: B:77:0x0146  */
    /* JADX WARN: Code duplicated, block: B:79:0x0152  */
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
            Method dump skipped, instruction units count: 356
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.pal.AbstractFutureC2744j3.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }
}
