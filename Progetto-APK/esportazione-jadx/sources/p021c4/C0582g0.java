package p021c4;

/* JADX INFO: renamed from: c4.g0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0582g0 implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0591j0 f11190b;

    public C0582g0(C0591j0 c0591j0, String str) {
        this.f11190b = c0591j0;
        this.f11189a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        T t7 = ((C0597l0) this.f11190b.f10616G).f11258O;
        C0597l0.k(t7);
        t7.f11039L.b(th, this.f11189a);
    }
}
