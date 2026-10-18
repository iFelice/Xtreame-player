package p117p0;

import android.os.Looper;

/* JADX INFO: renamed from: p0.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3167e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final I f28074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final I f28075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC3166d f28076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f28077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f28078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f28079f;

    public C3167e(Object obj, Looper looper, Looper looper2, G g8, InterfaceC3166d interfaceC3166d) {
        this.f28074a = g8.a(looper, null);
        this.f28075b = g8.a(looper2, null);
        this.f28077d = obj;
        this.f28078e = obj;
        this.f28076c = interfaceC3166d;
    }

    public final void a(Runnable runnable) {
        I i8 = this.f28074a;
        if (i8.f28043a.getLooper().getThread().isAlive()) {
            i8.c(runnable);
        }
    }

    public final void b(Object obj) {
        this.f28078e = obj;
        RunnableC3165c runnableC3165c = new RunnableC3165c(this, obj, 0);
        I i8 = this.f28075b;
        if (i8.f28043a.getLooper().getThread().isAlive()) {
            i8.c(runnableC3165c);
        }
    }
}
