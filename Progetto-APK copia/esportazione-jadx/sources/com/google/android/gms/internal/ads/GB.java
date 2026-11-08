package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public abstract class GB extends AbstractC2075uC implements D4.b {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final boolean f13485J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final C1454iC f13486K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Q3.b f13487L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Object f13488M;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile Object f13489G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile C2230xB f13490H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public volatile FB f13491I;

    static {
        boolean z7;
        Throwable th;
        Throwable th2;
        Q3.b ab;
        try {
            z7 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z7 = false;
        }
        f13485J = z7;
        f13486K = new C1454iC(0, GB.class);
        try {
            ab = new EB();
            th2 = null;
            th = null;
        } catch (Error | Exception e8) {
            try {
                th = null;
                th2 = e8;
                ab = new C2282yB(AtomicReferenceFieldUpdater.newUpdater(FB.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(FB.class, FB.class, "b"), AtomicReferenceFieldUpdater.newUpdater(GB.class, FB.class, "I"), AtomicReferenceFieldUpdater.newUpdater(GB.class, C2230xB.class, "H"), AtomicReferenceFieldUpdater.newUpdater(GB.class, Object.class, "G"));
            } catch (Error | Exception e9) {
                th = e9;
                th2 = e8;
                ab = new AB();
            }
        }
        f13487L = ab;
        if (th != null) {
            C1454iC c1454iC = f13486K;
            Logger loggerA = c1454iC.a();
            Level level = Level.SEVERE;
            loggerA.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            c1454iC.a().logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        f13488M = new Object();
    }

    public static final Object c(Object obj) throws ExecutionException {
        if (obj instanceof C2126vB) {
            Throwable th = ((C2126vB) obj).f21453b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof C2178wB) {
            throw new ExecutionException(((C2178wB) obj).f21652a);
        }
        if (obj == f13488M) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object h(D4.b bVar) {
        Throwable thB;
        if (bVar instanceof BB) {
            Object c2126vB = ((GB) bVar).f13489G;
            if (c2126vB instanceof C2126vB) {
                C2126vB c2126vB2 = (C2126vB) c2126vB;
                if (c2126vB2.f21452a) {
                    Throwable th = c2126vB2.f21453b;
                    c2126vB = th != null ? new C2126vB(false, th) : C2126vB.f21451d;
                }
            }
            Objects.requireNonNull(c2126vB);
            return c2126vB;
        }
        if ((bVar instanceof AbstractC2075uC) && (thB = ((AbstractC2075uC) bVar).b()) != null) {
            return new C2178wB(thB);
        }
        boolean zIsCancelled = bVar.isCancelled();
        if ((!f13485J) && zIsCancelled) {
            C2126vB c2126vB3 = C2126vB.f21451d;
            Objects.requireNonNull(c2126vB3);
            return c2126vB3;
        }
        try {
            Object objI = i(bVar);
            if (zIsCancelled) {
                return new C2126vB(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(bVar))));
            }
            return objI == null ? f13488M : objI;
        } catch (Error e8) {
            e = e8;
            return new C2178wB(e);
        } catch (CancellationException e9) {
            return !zIsCancelled ? new C2178wB(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(bVar)), e9)) : new C2126vB(false, e9);
        } catch (ExecutionException e10) {
            return zIsCancelled ? new C2126vB(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(bVar)), e10)) : new C2178wB(e10.getCause());
        } catch (Exception e11) {
            e = e11;
            return new C2178wB(e);
        }
    }

    public static Object i(Future future) {
        Object obj;
        boolean z7 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
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
        return obj;
    }

    public static void o(GB gb, boolean z7) {
        C2230xB c2230xB = null;
        while (true) {
            for (FB fbF = f13487L.F(gb); fbF != null; fbF = fbF.f13330b) {
                Thread thread = fbF.f13329a;
                if (thread != null) {
                    fbF.f13329a = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z7) {
                gb.j();
            }
            gb.e();
            C2230xB c2230xB2 = c2230xB;
            C2230xB c2230xBB = f13487L.B(gb);
            C2230xB c2230xB3 = c2230xB2;
            while (c2230xBB != null) {
                C2230xB c2230xB4 = c2230xBB.f21854c;
                c2230xBB.f21854c = c2230xB3;
                c2230xB3 = c2230xBB;
                c2230xBB = c2230xB4;
            }
            while (c2230xB3 != null) {
                c2230xB = c2230xB3.f21854c;
                Runnable runnable = c2230xB3.f21852a;
                Objects.requireNonNull(runnable);
                if (runnable instanceof RunnableC2334zB) {
                    RunnableC2334zB runnableC2334zB = (RunnableC2334zB) runnable;
                    gb = runnableC2334zB.f22136G;
                    if (gb.f13489G == runnableC2334zB) {
                        if (f13487L.W(gb, runnableC2334zB, h(runnableC2334zB.f22137H))) {
                            z7 = false;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = c2230xB3.f21853b;
                    Objects.requireNonNull(executor);
                    p(runnable, executor);
                }
                c2230xB3 = c2230xB;
            }
            return;
        }
    }

    public static void p(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e8) {
            f13486K.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", com.google.protobuf.U2.m("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e8);
        }
    }

    @Override // D4.b
    public void a(Runnable runnable, Executor executor) {
        C2230xB c2230xB;
        C2230xB c2230xB2;
        AbstractC2987b.w0(runnable, "Runnable was null.");
        AbstractC2987b.w0(executor, "Executor was null.");
        if (!isDone() && (c2230xB = this.f13490H) != (c2230xB2 = C2230xB.f21851d)) {
            C2230xB c2230xB3 = new C2230xB(runnable, executor);
            do {
                c2230xB3.f21854c = c2230xB;
                if (f13487L.T(this, c2230xB, c2230xB3)) {
                    return;
                } else {
                    c2230xB = this.f13490H;
                }
            } while (c2230xB != c2230xB2);
        }
        p(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2075uC
    public final Throwable b() {
        if (!(this instanceof BB)) {
            return null;
        }
        Object obj = this.f13489G;
        if (obj instanceof C2178wB) {
            return ((C2178wB) obj).f21652a;
        }
        return null;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z7) {
        C2126vB c2126vB;
        Object obj = this.f13489G;
        if (!(obj instanceof RunnableC2334zB) && !(obj == null)) {
            return false;
        }
        if (f13485J) {
            c2126vB = new C2126vB(z7, new CancellationException("Future.cancel() was called."));
        } else {
            c2126vB = z7 ? C2126vB.f21450c : C2126vB.f21451d;
            Objects.requireNonNull(c2126vB);
        }
        boolean z8 = false;
        GB gb = this;
        while (true) {
            if (f13487L.W(gb, obj, c2126vB)) {
                o(gb, z7);
                if (obj instanceof RunnableC2334zB) {
                    D4.b bVar = ((RunnableC2334zB) obj).f22137H;
                    if (bVar instanceof BB) {
                        gb = (GB) bVar;
                        obj = gb.f13489G;
                        if ((obj == null) | (obj instanceof RunnableC2334zB)) {
                            z8 = true;
                        }
                    } else {
                        bVar.cancel(z7);
                    }
                }
                return true;
            }
            obj = gb.f13489G;
            if (!(obj instanceof RunnableC2334zB)) {
                return z8;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String d() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public void e() {
    }

    public boolean f(Object obj) {
        if (obj == null) {
            obj = f13488M;
        }
        if (!f13487L.W(this, null, obj)) {
            return false;
        }
        o(this, false);
        return true;
    }

    public boolean g(Throwable th) {
        th.getClass();
        if (!f13487L.W(this, null, new C2178wB(th))) {
            return false;
        }
        o(this, false);
        return true;
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f13489G;
        if ((obj2 != null) && (!(obj2 instanceof RunnableC2334zB))) {
            return c(obj2);
        }
        FB fb = this.f13491I;
        FB fb2 = FB.f13328c;
        if (fb != fb2) {
            FB fb3 = new FB();
            do {
                Q3.b bVar = f13487L;
                bVar.M(fb3, fb);
                if (bVar.Z(this, fb, fb3)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            q(fb3);
                            throw new InterruptedException();
                        }
                        obj = this.f13489G;
                    } while (!((obj != null) & (!(obj instanceof RunnableC2334zB))));
                    return c(obj);
                }
                fb = this.f13491I;
            } while (fb != fb2);
        }
        Object obj3 = this.f13489G;
        Objects.requireNonNull(obj3);
        return c(obj3);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f13489G instanceof C2126vB;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.f13489G;
        return (obj != null) & (!(obj instanceof RunnableC2334zB));
    }

    public void j() {
    }

    public final void k(D4.b bVar) {
        if ((bVar != null) && (this.f13489G instanceof C2126vB)) {
            bVar.cancel(m());
        }
    }

    public final void l(D4.b bVar) {
        C2178wB c2178wB;
        bVar.getClass();
        Object obj = this.f13489G;
        if (obj == null) {
            if (bVar.isDone()) {
                if (f13487L.W(this, null, h(bVar))) {
                    o(this, false);
                    return;
                }
                return;
            }
            RunnableC2334zB runnableC2334zB = new RunnableC2334zB(this, bVar);
            if (f13487L.W(this, null, runnableC2334zB)) {
                try {
                    bVar.a(runnableC2334zB, XB.f17385G);
                    return;
                } catch (Throwable th) {
                    try {
                        c2178wB = new C2178wB(th);
                    } catch (Error | Exception unused) {
                        c2178wB = C2178wB.f21651b;
                    }
                    f13487L.W(this, runnableC2334zB, c2178wB);
                    return;
                }
            }
            obj = this.f13489G;
        }
        if (obj instanceof C2126vB) {
            bVar.cancel(((C2126vB) obj).f21452a);
        }
    }

    public final boolean m() {
        Object obj = this.f13489G;
        return (obj instanceof C2126vB) && ((C2126vB) obj).f21452a;
    }

    public final void n(StringBuilder sb) {
        try {
            Object objI = i(this);
            sb.append("SUCCESS, result=[");
            if (objI == null) {
                sb.append("null");
            } else if (objI == this) {
                sb.append("this future");
            } else {
                sb.append(objI.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(objI)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e8) {
            sb.append("FAILURE, cause=[");
            sb.append(e8.getCause());
            sb.append("]");
        } catch (Exception e9) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e9.getClass());
            sb.append(" thrown from get()]");
        }
    }

    public final void q(FB fb) {
        fb.f13329a = null;
        while (true) {
            FB fb2 = this.f13491I;
            if (fb2 != FB.f13328c) {
                FB fb3 = null;
                while (fb2 != null) {
                    FB fb4 = fb2.f13330b;
                    if (fb2.f13329a != null) {
                        fb3 = fb2;
                    } else if (fb3 != null) {
                        fb3.f13330b = fb4;
                        if (fb3.f13329a == null) {
                        }
                    } else if (!f13487L.Z(this, fb2, fb4)) {
                    }
                    fb2 = fb4;
                }
                return;
            }
            return;
        }
    }

    public String toString() {
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
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            n(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.f13489G;
            if (obj instanceof RunnableC2334zB) {
                sb.append(", setFuture=[");
                D4.b bVar = ((RunnableC2334zB) obj).f22137H;
                try {
                    if (bVar == this) {
                        sb.append("this future");
                    } else {
                        sb.append(bVar);
                    }
                } catch (Exception e8) {
                    e = e8;
                    sb.append("Exception thrown from implementation: ");
                    sb.append(e.getClass());
                } catch (StackOverflowError e9) {
                    e = e9;
                    sb.append("Exception thrown from implementation: ");
                    sb.append(e.getClass());
                }
                sb.append("]");
            } else {
                try {
                    strConcat = d();
                    if (AbstractC2987b.j0(strConcat)) {
                        strConcat = null;
                    }
                } catch (Exception | StackOverflowError e10) {
                    strConcat = "Exception thrown from implementation: ".concat(String.valueOf(e10.getClass()));
                }
                if (strConcat != null) {
                    sb.append(", info=[");
                    sb.append(strConcat);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                n(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x009c  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b4 A[EDGE_INSN: B:56:0x00b4->B:36:0x007d BREAK  A[LOOP:0: B:21:0x0041->B:85:?]] */
    /* JADX WARN: Code duplicated, block: B:59:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:63:0x010c  */
    /* JADX WARN: Code duplicated, block: B:68:0x0114  */
    /* JADX WARN: Code duplicated, block: B:70:0x012b  */
    /* JADX WARN: Code duplicated, block: B:73:0x0137  */
    /* JADX WARN: Code duplicated, block: B:77:0x0157  */
    /* JADX WARN: Code duplicated, block: B:79:0x0163  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00b4 -> B:36:0x007d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // java.util.concurrent.Future
    public java.lang.Object get(long r19, java.util.concurrent.TimeUnit r21) {
        /*
            Method dump skipped, instruction units count: 373
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.GB.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }
}
