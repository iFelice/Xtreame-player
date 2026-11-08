package p021c4;

import E1.W;
import K3.V;
import P3.b;
import android.os.Handler;
import com.bumptech.glide.c;

/* JADX INFO: renamed from: c4.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0604p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile W f11321d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0612t0 f11322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final V f11323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile long f11324c;

    public AbstractC0604p(InterfaceC0612t0 interfaceC0612t0) {
        c.h(interfaceC0612t0);
        this.f11322a = interfaceC0612t0;
        this.f11323b = new V(4, this, interfaceC0612t0);
    }

    public final void a() {
        this.f11324c = 0L;
        d().removeCallbacks(this.f11323b);
    }

    public abstract void b();

    public final void c(long j8) {
        a();
        if (j8 >= 0) {
            InterfaceC0612t0 interfaceC0612t0 = this.f11322a;
            ((b) interfaceC0612t0.c()).getClass();
            this.f11324c = System.currentTimeMillis();
            if (d().postDelayed(this.f11323b, j8)) {
                return;
            }
            interfaceC0612t0.b().f11039L.b(Long.valueOf(j8), "Failed to schedule delayed post. time");
        }
    }

    public final Handler d() {
        W w7;
        if (f11321d != null) {
            return f11321d;
        }
        synchronized (AbstractC0604p.class) {
            try {
                if (f11321d == null) {
                    f11321d = new W(this.f11322a.zzaT().getMainLooper(), 2);
                }
                w7 = f11321d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return w7;
    }
}
