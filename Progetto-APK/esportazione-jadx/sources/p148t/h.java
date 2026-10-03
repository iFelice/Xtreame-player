package p148t;

import D4.b;
import com.google.android.gms.internal.ads.OB;
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
public abstract class h implements b {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final boolean f30152J = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Logger f30153K = Logger.getLogger(h.class.getName());

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final AbstractC2617p2 f30154L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Object f30155M;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile Object f30156G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile e f30157H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public volatile g f30158I;

    static {
        AbstractC2617p2 ob;
        try {
            ob = new f(AtomicReferenceFieldUpdater.newUpdater(g.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(g.class, g.class, "b"), AtomicReferenceFieldUpdater.newUpdater(h.class, g.class, "I"), AtomicReferenceFieldUpdater.newUpdater(h.class, e.class, "H"), AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "G"));
            th = null;
        } catch (Throwable th) {
            th = th;
            ob = new OB();
        }
        f30154L = ob;
        if (th != null) {
            f30153K.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f30155M = new Object();
    }

    public static void d(h hVar) {
        g gVar;
        e eVar;
        e eVar2;
        e eVar3;
        do {
            gVar = hVar.f30158I;
        } while (!f30154L.d(hVar, gVar, g.f30149c));
        while (true) {
            eVar = null;
            if (gVar == null) {
                break;
            }
            Thread thread = gVar.f30150a;
            if (thread != null) {
                gVar.f30150a = null;
                LockSupport.unpark(thread);
            }
            gVar = gVar.f30151b;
        }
        hVar.c();
        do {
            eVar2 = hVar.f30157H;
        } while (!f30154L.b(hVar, eVar2, e.f30140d));
        while (true) {
            eVar3 = eVar;
            eVar = eVar2;
            if (eVar == null) {
                break;
            }
            eVar2 = eVar.f30143c;
            eVar.f30143c = eVar3;
        }
        while (eVar3 != null) {
            e eVar4 = eVar3.f30143c;
            e(eVar3.f30141a, eVar3.f30142b);
            eVar3 = eVar4;
        }
    }

    public static void e(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e8) {
            f30153K.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e8);
        }
    }

    public static Object f(Object obj) throws ExecutionException {
        if (obj instanceof b) {
            Throwable th = ((b) obj).f30137a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof d) {
            throw new ExecutionException(((d) obj).f30139a);
        }
        if (obj == f30155M) {
            return null;
        }
        return obj;
    }

    @Override // D4.b
    public final void a(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        e eVar = this.f30157H;
        e eVar2 = e.f30140d;
        if (eVar != eVar2) {
            e eVar3 = new e(runnable, executor);
            do {
                eVar3.f30143c = eVar;
                if (f30154L.b(this, eVar, eVar3)) {
                    return;
                } else {
                    eVar = this.f30157H;
                }
            } while (eVar != eVar2);
        }
        e(runnable, executor);
    }

    public final void b(StringBuilder sb) {
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
        sb.append(obj == this ? "this future" : String.valueOf(obj));
        sb.append("]");
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        b bVar;
        Object obj = this.f30156G;
        if (obj == null) {
            if (f30152J) {
                bVar = new b(z7, new CancellationException("Future.cancel() was called."));
            } else {
                bVar = z7 ? b.f30135b : b.f30136c;
            }
            if (f30154L.c(this, obj, bVar)) {
                d(this);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String g() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* JADX WARN: Code duplicated, block: B:46:0x008a  */
    /* JADX WARN: Code duplicated, block: B:48:0x008e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0090  */
    /* JADX WARN: Code duplicated, block: B:54:0x0099  */
    /* JADX WARN: Code duplicated, block: B:56:0x009f A[EDGE_INSN: B:56:0x009f->B:36:0x006e BREAK  A[LOOP:0: B:21:0x003e->B:86:?]] */
    /* JADX WARN: Code duplicated, block: B:59:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:69:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:71:0x0112  */
    /* JADX WARN: Code duplicated, block: B:74:0x011e  */
    /* JADX WARN: Code duplicated, block: B:78:0x013e  */
    /* JADX WARN: Code duplicated, block: B:80:0x014a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x009f -> B:36:0x006e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // java.util.concurrent.Future
    public final java.lang.Object get(long r20, java.util.concurrent.TimeUnit r22) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p148t.h.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    public final void h(g gVar) {
        gVar.f30150a = null;
        while (true) {
            g gVar2 = this.f30158I;
            if (gVar2 == g.f30149c) {
                return;
            }
            g gVar3 = null;
            while (gVar2 != null) {
                g gVar4 = gVar2.f30151b;
                if (gVar2.f30150a != null) {
                    gVar3 = gVar2;
                } else if (gVar3 != null) {
                    gVar3.f30151b = gVar4;
                    if (gVar3.f30150a == null) {
                    }
                } else if (!f30154L.d(this, gVar2, gVar4)) {
                }
                gVar2 = gVar4;
            }
            return;
        }
    }

    public boolean i(Object obj) {
        if (obj == null) {
            obj = f30155M;
        }
        if (!f30154L.c(this, null, obj)) {
            return false;
        }
        d(this);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f30156G instanceof b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (this.f30156G != null) & true;
    }

    public boolean j(Throwable th) {
        th.getClass();
        if (!f30154L.c(this, null, new d(th))) {
            return false;
        }
        d(this);
        return true;
    }

    public final String toString() {
        String strG;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f30156G instanceof b) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            b(sb);
        } else {
            try {
                strG = g();
            } catch (RuntimeException e8) {
                strG = "Exception thrown from implementation: " + e8.getClass();
            }
            if (strG != null && !strG.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strG);
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

    public void c() {
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f30156G;
            if ((obj2 != null) & true) {
                return f(obj2);
            }
            g gVar = this.f30158I;
            g gVar2 = g.f30149c;
            if (gVar != gVar2) {
                g gVar3 = new g();
                do {
                    AbstractC2617p2 abstractC2617p2 = f30154L;
                    abstractC2617p2.j(gVar3, gVar);
                    if (abstractC2617p2.d(this, gVar, gVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f30156G;
                            } else {
                                h(gVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & true));
                        return f(obj);
                    }
                    gVar = this.f30158I;
                } while (gVar != gVar2);
            }
            return f(this.f30156G);
        }
        throw new InterruptedException();
    }
}
