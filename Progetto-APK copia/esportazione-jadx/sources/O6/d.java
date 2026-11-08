package O6;

import J6.AbstractC0214m;
import J6.E;
import N6.u;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends E implements Executor {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final d f5671I = new d();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final AbstractC0214m f5672J;

    static {
        l lVar = l.f5685I;
        int i8 = u.f4999a;
        if (64 >= i8) {
            i8 = 64;
        }
        f5672J = lVar.c0(com.bumptech.glide.d.s("kotlinx.coroutines.io.parallelism", i8, 0, 0, 12), null);
    }

    @Override // J6.AbstractC0214m
    public final void a0(p185x6.j jVar, Runnable runnable) {
        f5672J.a0(jVar, runnable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        a0(p185x6.k.f31227G, runnable);
    }

    @Override // J6.AbstractC0214m
    public final String toString() {
        return "Dispatchers.IO";
    }
}
