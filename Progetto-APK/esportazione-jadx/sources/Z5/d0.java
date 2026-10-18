package Z5;

import java.util.IdentityHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public final class d0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d0 f8451d = new d0(new C0456m(9));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IdentityHashMap f8452a = new IdentityHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0456m f8453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ScheduledExecutorService f8454c;

    public d0(C0456m c0456m) {
        this.f8453b = c0456m;
    }

    public static void a(c0 c0Var, Executor executor) {
        d0 d0Var = f8451d;
        synchronized (d0Var) {
            throw new IllegalArgumentException("No cached instance found for " + c0Var);
        }
    }
}
