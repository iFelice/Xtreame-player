package p135r2;

import B0.C0041c;
import D0.U;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f29846a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final U f29847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f29848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BlockingQueue f29849d;

    public s(c cVar, PriorityBlockingQueue priorityBlockingQueue, U u7) {
        this.f29847b = u7;
        this.f29848c = cVar;
        this.f29849d = priorityBlockingQueue;
    }

    public final synchronized boolean a(k kVar) {
        try {
            String strF = kVar.f();
            if (!this.f29846a.containsKey(strF)) {
                this.f29846a.put(strF, null);
                kVar.o(this);
                if (r.f29844a) {
                    r.b("new request, sending to network %s", strF);
                }
                return false;
            }
            List arrayList = (List) this.f29846a.get(strF);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            kVar.a("waiting-for-response");
            arrayList.add(kVar);
            this.f29846a.put(strF, arrayList);
            if (r.f29844a) {
                r.b("Request for cacheKey=%s is in flight, putting on hold.", strF);
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(k kVar) {
        BlockingQueue blockingQueue;
        try {
            String strF = kVar.f();
            List list = (List) this.f29846a.remove(strF);
            if (list != null && !list.isEmpty()) {
                if (r.f29844a) {
                    r.d("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), strF);
                }
                k kVar2 = (k) list.remove(0);
                this.f29846a.put(strF, list);
                kVar2.o(this);
                if (this.f29848c != null && (blockingQueue = this.f29849d) != null) {
                    try {
                        blockingQueue.put(kVar2);
                    } catch (InterruptedException e8) {
                        r.c("Couldn't add request to queue. %s", e8.toString());
                        Thread.currentThread().interrupt();
                        this.f29848c.b();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(k kVar, C0041c c0041c) {
        List list;
        b bVar = (b) c0041c.f915I;
        if (bVar != null) {
            bVar.getClass();
            if (bVar.f29785e >= System.currentTimeMillis()) {
                String strF = kVar.f();
                synchronized (this) {
                    list = (List) this.f29846a.remove(strF);
                }
                if (list != null) {
                    if (r.f29844a) {
                        r.d("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), strF);
                    }
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        this.f29847b.J((k) it.next(), c0041c, null);
                    }
                    return;
                }
                return;
            }
        }
        b(kVar);
    }
}
