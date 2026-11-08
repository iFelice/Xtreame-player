package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.ClientApi;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2059tx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClientApi f21158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f21159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f21160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC1157cb f21161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p090l3.T0 f21162e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p090l3.O f21164g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C1696mx f21166i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ScheduledExecutorService f21168k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final P3.a f21170m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConcurrentLinkedQueue f21165h = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f21163f = new AtomicBoolean(true);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f21167j = new AtomicBoolean(false);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AtomicBoolean f21169l = new AtomicBoolean(true);

    public AbstractC2059tx(ClientApi clientApi, Context context, int i8, InterfaceC1157cb interfaceC1157cb, p090l3.T0 t7, p090l3.O o4, ScheduledExecutorService scheduledExecutorService, C1696mx c1696mx, P3.a aVar) {
        this.f21158a = clientApi;
        this.f21159b = context;
        this.f21160c = i8;
        this.f21161d = interfaceC1157cb;
        this.f21162e = t7;
        this.f21164g = o4;
        this.f21168k = scheduledExecutorService;
        this.f21166i = c1696mx;
        this.f21170m = aVar;
    }

    public static void d(AbstractC2059tx abstractC2059tx, boolean z7) {
        synchronized (abstractC2059tx) {
            try {
                C1696mx c1696mx = abstractC2059tx.f21166i;
                if (c1696mx.f20025c <= ((Integer) C3099q.f26624d.f26627c.a(Q7.f15938t)).intValue() || c1696mx.f20026d < c1696mx.f20024b) {
                    if (z7) {
                        C1696mx c1696mx2 = abstractC2059tx.f21166i;
                        double d6 = c1696mx2.f20026d;
                        c1696mx2.f20026d = Math.min((long) (d6 + d6), c1696mx2.f20024b);
                        c1696mx2.f20025c++;
                    }
                    ScheduledExecutorService scheduledExecutorService = abstractC2059tx.f21168k;
                    RunnableC2007sx runnableC2007sx = new RunnableC2007sx(abstractC2059tx, 0);
                    C1696mx c1696mx3 = abstractC2059tx.f21166i;
                    double d8 = c1696mx3.f20026d;
                    double d9 = 0.2d * d8;
                    long j8 = (long) (d8 + d9);
                    long j9 = (long) (d8 - d9);
                    scheduledExecutorService.schedule(runnableC2007sx, j9 + ((long) (c1696mx3.f20027e.nextDouble() * ((j8 - j9) + 1))), TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract C1816pC a();

    public final synchronized void b() {
        this.f21168k.submit(new RunnableC2007sx(this, 0));
    }

    public final synchronized Object c() {
        g();
        C1696mx c1696mx = this.f21166i;
        c1696mx.f20026d = c1696mx.f20023a;
        c1696mx.f20025c = 0L;
        C1955rx c1955rx = (C1955rx) this.f21165h.poll();
        e(true);
        if (c1955rx == null) {
            return null;
        }
        return c1955rx.f20809a;
    }

    public final synchronized void e(boolean z7) {
        if (!z7) {
            try {
                g();
            } catch (Throwable th) {
                throw th;
            }
        }
        p113o3.O.f27924l.post(new RunnableC2007sx(this, 1));
        if (!this.f21167j.get()) {
            if (this.f21165h.size() < this.f21162e.f26503J && this.f21163f.get()) {
                this.f21167j.set(true);
                Cw.h2(a(), new Xu(this, 10), this.f21168k);
            }
        }
    }

    public final synchronized boolean f() {
        g();
        return !this.f21165h.isEmpty();
    }

    public final synchronized void g() {
        Iterator it = this.f21165h.iterator();
        while (it.hasNext()) {
            C1955rx c1955rx = (C1955rx) it.next();
            ((P3.b) c1955rx.f20811c).getClass();
            if (System.currentTimeMillis() >= c1955rx.f20810b + c1955rx.f20812d) {
                it.remove();
            }
        }
    }
}
