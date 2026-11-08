package p112o2;

import D4.b;
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
import p000a.r;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class h implements b {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final boolean f27860J = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Logger f27861K = Logger.getLogger(h.class.getName());

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final k f27862L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Object f27863M;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile Object f27864G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile c f27865H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public volatile g f27866I;

    static {
        k fVar;
        try {
            fVar = new d(AtomicReferenceFieldUpdater.newUpdater(g.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(g.class, g.class, "b"), AtomicReferenceFieldUpdater.newUpdater(h.class, g.class, "I"), AtomicReferenceFieldUpdater.newUpdater(h.class, c.class, "H"), AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "G"));
            th = null;
        } catch (Throwable th) {
            th = th;
            fVar = new f();
        }
        f27862L = fVar;
        if (th != null) {
            f27861K.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f27863M = new Object();
    }

    public static void c(h hVar) {
        c cVar;
        c cVar2;
        c cVar3 = null;
        while (true) {
            g gVar = hVar.f27866I;
            if (f27862L.m(hVar, gVar, g.f27857c)) {
                while (gVar != null) {
                    Thread thread = gVar.f27858a;
                    if (thread != null) {
                        gVar.f27858a = null;
                        LockSupport.unpark(thread);
                    }
                    gVar = gVar.f27859b;
                }
                do {
                    cVar = hVar.f27865H;
                } while (!f27862L.k(hVar, cVar, c.f27846d));
                while (true) {
                    cVar2 = cVar3;
                    cVar3 = cVar;
                    if (cVar3 == null) {
                        break;
                    }
                    cVar = cVar3.f27849c;
                    cVar3.f27849c = cVar2;
                }
                while (cVar2 != null) {
                    cVar3 = cVar2.f27849c;
                    Runnable runnable = cVar2.f27847a;
                    if (runnable instanceof e) {
                        e eVar = (e) runnable;
                        hVar = eVar.f27855G;
                        if (hVar.f27864G == eVar) {
                            if (f27862L.l(hVar, eVar, f(eVar.f27856H))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        d(runnable, cVar2.f27848b);
                    }
                    cVar2 = cVar3;
                }
                return;
            }
        }
    }

    public static void d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e8) {
            f27861K.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e8);
        }
    }

    public static Object e(Object obj) throws ExecutionException {
        if (obj instanceof a) {
            Throwable th = ((a) obj).f27843b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof b) {
            throw new ExecutionException(((b) obj).f27845a);
        }
        if (obj == f27863M) {
            return null;
        }
        return obj;
    }

    public static Object f(b bVar) {
        if (bVar instanceof h) {
            Object obj = ((h) bVar).f27864G;
            if (!(obj instanceof a)) {
                return obj;
            }
            a aVar = (a) obj;
            if (aVar.f27842a) {
                return aVar.f27843b != null ? new a(false, aVar.f27843b) : a.f27841d;
            }
            return obj;
        }
        boolean zIsCancelled = bVar.isCancelled();
        if ((!f27860J) && zIsCancelled) {
            return a.f27841d;
        }
        try {
            Object objG = g(bVar);
            return objG == null ? f27863M : objG;
        } catch (CancellationException e8) {
            if (zIsCancelled) {
                return new a(false, e8);
            }
            return new b(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + bVar, e8));
        } catch (ExecutionException e9) {
            return new b(e9.getCause());
        } catch (Throwable th) {
            return new b(th);
        }
    }

    public static Object g(Future future) {
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

    @Override // D4.b
    public final void a(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        c cVar = this.f27865H;
        c cVar2 = c.f27846d;
        if (cVar != cVar2) {
            c cVar3 = new c(runnable, executor);
            do {
                cVar3.f27849c = cVar;
                if (f27862L.k(this, cVar, cVar3)) {
                    return;
                } else {
                    cVar = this.f27865H;
                }
            } while (cVar != cVar2);
        }
        d(runnable, executor);
    }

    public final void b(StringBuilder sb) {
        try {
            Object objG = g(this);
            sb.append("SUCCESS, result=[");
            sb.append(objG == this ? "this future" : String.valueOf(objG));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e8) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e8.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e9) {
            sb.append("FAILURE, cause=[");
            sb.append(e9.getCause());
            sb.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        a aVar;
        Object obj = this.f27864G;
        if (!(obj == null) && !(obj instanceof e)) {
            return false;
        }
        if (f27860J) {
            aVar = new a(z7, new CancellationException("Future.cancel() was called."));
        } else {
            aVar = z7 ? a.f27840c : a.f27841d;
        }
        boolean z8 = false;
        h hVar = this;
        while (true) {
            if (f27862L.l(hVar, obj, aVar)) {
                c(hVar);
                if (!(obj instanceof e)) {
                    return true;
                }
                b bVar = ((e) obj).f27856H;
                if (!(bVar instanceof h)) {
                    bVar.cancel(z7);
                    return true;
                }
                hVar = (h) bVar;
                obj = hVar.f27864G;
                if (!(obj == null) && !(obj instanceof e)) {
                    return true;
                }
                z8 = true;
            } else {
                obj = hVar.f27864G;
                if (!(obj instanceof e)) {
                    return z8;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0090  */
    /* JADX WARN: Code duplicated, block: B:48:0x0094  */
    /* JADX WARN: Code duplicated, block: B:49:0x0096  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a8 A[EDGE_INSN: B:56:0x00a8->B:36:0x0074 BREAK  A[LOOP:0: B:21:0x0041->B:86:?]] */
    /* JADX WARN: Code duplicated, block: B:59:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:67:0x0100  */
    /* JADX WARN: Code duplicated, block: B:69:0x0104  */
    /* JADX WARN: Code duplicated, block: B:71:0x011b  */
    /* JADX WARN: Code duplicated, block: B:74:0x0127  */
    /* JADX WARN: Code duplicated, block: B:78:0x0147  */
    /* JADX WARN: Code duplicated, block: B:80:0x0153  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00a8 -> B:36:0x0074). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // java.util.concurrent.Future
    public final java.lang.Object get(long r20, java.util.concurrent.TimeUnit r22) {
        /*
            Method dump skipped, instruction units count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p112o2.h.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String h() {
        Object obj = this.f27864G;
        if (obj instanceof e) {
            StringBuilder sb = new StringBuilder("setFuture=[");
            b bVar = ((e) obj).f27856H;
            return r.j(sb, bVar == this ? "this future" : String.valueOf(bVar), "]");
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public final void i(g gVar) {
        gVar.f27858a = null;
        while (true) {
            g gVar2 = this.f27866I;
            if (gVar2 == g.f27857c) {
                return;
            }
            g gVar3 = null;
            while (gVar2 != null) {
                g gVar4 = gVar2.f27859b;
                if (gVar2.f27858a != null) {
                    gVar3 = gVar2;
                } else if (gVar3 != null) {
                    gVar3.f27859b = gVar4;
                    if (gVar3.f27858a == null) {
                    }
                } else if (!f27862L.m(this, gVar2, gVar4)) {
                }
                gVar2 = gVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f27864G instanceof a;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f27864G;
        return (!(obj instanceof e)) & (obj != null);
    }

    public final String toString() {
        String strH;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f27864G instanceof a) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            b(sb);
        } else {
            try {
                strH = h();
            } catch (RuntimeException e8) {
                strH = "Exception thrown from implementation: " + e8.getClass();
            }
            if (strH != null && !strH.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strH);
                sb.append("]");
            } else if (isDone()) {
                b(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f27864G;
            if ((obj2 != null) & (!(obj2 instanceof e))) {
                return e(obj2);
            }
            g gVar = this.f27866I;
            g gVar2 = g.f27857c;
            if (gVar != gVar2) {
                g gVar3 = new g();
                do {
                    k kVar = f27862L;
                    kVar.b0(gVar3, gVar);
                    if (kVar.m(this, gVar, gVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f27864G;
                            } else {
                                i(gVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof e))));
                        return e(obj);
                    }
                    gVar = this.f27866I;
                } while (gVar != gVar2);
            }
            return e(this.f27864G);
        }
        throw new InterruptedException();
    }
}
