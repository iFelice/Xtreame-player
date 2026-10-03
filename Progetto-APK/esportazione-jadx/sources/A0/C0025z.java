package A0;

import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p094m0.C3137u;

/* JADX INFO: renamed from: A0.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0025z implements g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ B f247b;

    public /* synthetic */ C0025z(B b8, int i8) {
        this.f246a = i8;
        this.f247b = b8;
    }

    @Override // A0.g0
    public final void run() {
        int i8 = 7;
        switch (this.f246a) {
            case 0:
                this.f247b.f24a0 = false;
                break;
            case 1:
                B b8 = this.f247b;
                if (b8.f21X) {
                    b8.f24a0 = true;
                }
                if (b8.f13P.isEmpty() && b8.f19V == null) {
                    K k8 = b8.f8K;
                    k8.getClass();
                    ((AbstractC0001a) k8).a();
                    AbstractC0007g.b(Long.MIN_VALUE);
                    ScheduledFuture scheduledFuture = b8.f22Y;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    b8.f22Y = null;
                } else {
                    b8.f18U = true;
                    ScheduledFuture scheduledFuture2 = b8.f22Y;
                    if (scheduledFuture2 != null) {
                        scheduledFuture2.cancel(false);
                    }
                    b8.f22Y = null;
                    b8.f22Y = b8.f14Q.schedule(new p000a.b(b8, i8), B.f6e0, TimeUnit.MILLISECONDS);
                }
                break;
            case 2:
                B b9 = this.f247b;
                b9.getClass();
                try {
                    b9.n();
                } catch (RuntimeException e8) {
                    b9.f25b0 = e8;
                    p117p0.x.d("ExtTexMgr", "Failed to remove texture frames", e8);
                    if (b9.f23Z != null) {
                        b9.f23Z.countDown();
                        return;
                    }
                    return;
                }
                break;
            case 3:
                B b10 = this.f247b;
                b10.getClass();
                AbstractC0007g.b(-9223372036854775807L);
                if (b10.f21X) {
                    ConcurrentLinkedQueue concurrentLinkedQueue = b10.f13P;
                    C3137u c3137u = b10.f20W;
                    c3137u.getClass();
                    concurrentLinkedQueue.add(c3137u);
                }
                if (!b10.f24a0) {
                    if (b10.f18U) {
                        ScheduledFuture scheduledFuture3 = b10.f22Y;
                        if (scheduledFuture3 != null) {
                            scheduledFuture3.cancel(false);
                        }
                        b10.f22Y = null;
                        b10.f22Y = b10.f14Q.schedule(new p000a.b(b10, i8), B.f6e0, TimeUnit.MILLISECONDS);
                    }
                    b10.f17T++;
                    b10.m();
                    break;
                } else {
                    b10.f11N.updateTexImage();
                    b10.f13P.poll();
                    if (b10.f23Z != null && b10.f13P.isEmpty()) {
                        b10.f23Z.countDown();
                        break;
                    }
                }
                break;
            case 4:
                B b11 = this.f247b;
                b11.f19V = null;
                if (b11.f18U && b11.f13P.isEmpty()) {
                    b11.f18U = false;
                    K k9 = b11.f8K;
                    k9.getClass();
                    ((AbstractC0001a) k9).a();
                    AbstractC0007g.b(Long.MIN_VALUE);
                    ScheduledFuture scheduledFuture4 = b11.f22Y;
                    if (scheduledFuture4 != null) {
                        scheduledFuture4.cancel(false);
                    }
                    b11.f22Y = null;
                } else {
                    b11.m();
                }
                break;
            case 5:
                B b12 = this.f247b;
                b12.f16S++;
                b12.m();
                break;
            default:
                B b13 = this.f247b;
                if (b13.f17T != b13.f13P.size()) {
                    int size = b13.f13P.size();
                    long j8 = B.f6e0;
                    int i9 = b13.f17T;
                    String str = p117p0.M.f28050a;
                    Locale locale = Locale.US;
                    p117p0.x.f("ExtTexMgr", "Forcing EOS after missing " + size + " frames for " + j8 + " ms, with available frame count: " + i9);
                    b13.f18U = false;
                    b13.f19V = null;
                    b13.f24a0 = true;
                    b13.n();
                    b13.f13P.clear();
                    b13.k();
                    break;
                }
                break;
        }
    }
}
