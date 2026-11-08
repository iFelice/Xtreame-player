package p021c4;

import com.bumptech.glide.c;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: c4.b1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0568b1 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11125G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ G f11126H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ ServiceConnectionC0571c1 f11127I;

    public /* synthetic */ RunnableC0568b1(ServiceConnectionC0571c1 serviceConnectionC0571c1, G g8, int i8) {
        this.f11125G = i8;
        this.f11126H = g8;
        this.f11127I = serviceConnectionC0571c1;
    }

    private final void a() {
        ServiceConnectionC0571c1 serviceConnectionC0571c1 = this.f11127I;
        synchronized (serviceConnectionC0571c1) {
            try {
                serviceConnectionC0571c1.f11134a = false;
                C0574d1 c0574d1 = serviceConnectionC0571c1.f11136c;
                if (!c0574d1.x()) {
                    T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11047T.a("Connected to service");
                    G g8 = this.f11126H;
                    c0574d1.m();
                    c.h(g8);
                    c0574d1.f11146J = g8;
                    c0574d1.D();
                    c0574d1.C();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScheduledExecutorService scheduledExecutorService;
        switch (this.f11125G) {
            case 0:
                a();
                return;
            default:
                ServiceConnectionC0571c1 serviceConnectionC0571c1 = this.f11127I;
                synchronized (serviceConnectionC0571c1) {
                    try {
                        serviceConnectionC0571c1.f11134a = false;
                        C0574d1 c0574d1 = serviceConnectionC0571c1.f11136c;
                        if (!c0574d1.x()) {
                            T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
                            C0597l0.k(t7);
                            t7.f11046S.a("Connected to remote service");
                            G g8 = this.f11126H;
                            c0574d1.m();
                            c.h(g8);
                            c0574d1.f11146J = g8;
                            c0574d1.D();
                            c0574d1.C();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                C0574d1 c0574d2 = this.f11127I.f11136c;
                if (!((C0597l0) c0574d2.f10616G).f11256M.B(null, E.f10811p1) || (scheduledExecutorService = c0574d2.f11149M) == null) {
                    return;
                }
                scheduledExecutorService.shutdownNow();
                c0574d2.f11149M = null;
                return;
        }
    }
}
