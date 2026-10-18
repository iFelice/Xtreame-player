package p135r2;

import A0.C0022w;
import A0.O;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.ads.AbstractC2118v3;
import com.google.android.gms.internal.ads.C1703n3;
import com.google.android.gms.internal.ads.C1962s3;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.InterfaceC1910r3;
import com.google.android.gms.internal.ads.K4;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f29826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f29827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f29828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f29829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f29830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f29831f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f29832g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f29833h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f29834i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Object f29835j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Object f29836k;

    public l(C0022w c0022w, C2218x c2218x) {
        K4 k8 = new K4(new Handler(Looper.getMainLooper()));
        this.f29826a = new AtomicInteger();
        this.f29827b = new HashSet();
        this.f29828c = new PriorityBlockingQueue();
        this.f29829d = new PriorityBlockingQueue();
        this.f29830e = new ArrayList();
        this.f29831f = new ArrayList();
        this.f29832g = c0022w;
        this.f29833h = c2218x;
        this.f29834i = new C1962s3[4];
        this.f29836k = k8;
    }

    public final void a(k kVar) {
        kVar.f29820N = this;
        synchronized (((Set) this.f29827b)) {
            ((Set) this.f29827b).add(kVar);
        }
        kVar.f29819M = Integer.valueOf(((AtomicInteger) this.f29826a).incrementAndGet());
        kVar.a("add-to-queue");
        b();
        if (kVar.f29821O) {
            ((PriorityBlockingQueue) this.f29828c).add(kVar);
        } else {
            ((PriorityBlockingQueue) this.f29829d).add(kVar);
        }
    }

    public final void b() {
        synchronized (((List) this.f29831f)) {
            try {
                Iterator it = ((List) this.f29831f).iterator();
                if (it.hasNext()) {
                    O.I(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(AbstractC2118v3 abstractC2118v3) {
        abstractC2118v3.f21436N = this;
        synchronized (((Set) this.f29827b)) {
            ((Set) this.f29827b).add(abstractC2118v3);
        }
        abstractC2118v3.f21435M = Integer.valueOf(((AtomicInteger) this.f29826a).incrementAndGet());
        abstractC2118v3.d("add-to-queue");
        d();
        ((PriorityBlockingQueue) this.f29828c).add(abstractC2118v3);
    }

    public final void d() {
        synchronized (((List) this.f29831f)) {
            try {
                Iterator it = ((List) this.f29831f).iterator();
                if (it.hasNext()) {
                    O.I(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        C1703n3 c1703n3 = (C1703n3) this.f29835j;
        if (c1703n3 != null) {
            c1703n3.f20063J = true;
            c1703n3.interrupt();
        }
        C1962s3[] c1962s3Arr = (C1962s3[]) this.f29834i;
        for (int i8 = 0; i8 < 4; i8++) {
            C1962s3 c1962s3 = c1962s3Arr[i8];
            if (c1962s3 != null) {
                c1962s3.f20858J = true;
                c1962s3.interrupt();
            }
        }
        C1703n3 c1703n4 = new C1703n3((PriorityBlockingQueue) this.f29828c, (PriorityBlockingQueue) this.f29829d, (C0022w) this.f29832g, (K4) this.f29836k);
        this.f29835j = c1703n4;
        c1703n4.start();
        for (int i9 = 0; i9 < 4; i9++) {
            C1962s3 c1962s4 = new C1962s3((PriorityBlockingQueue) this.f29829d, (InterfaceC1910r3) this.f29833h, (C0022w) this.f29832g, (K4) this.f29836k);
            ((C1962s3[]) this.f29834i)[i9] = c1962s4;
            c1962s4.start();
        }
    }
}
