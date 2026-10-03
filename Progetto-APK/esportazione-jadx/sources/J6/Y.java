package J6;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f4222a = new ThreadLocal();

    public static D a() {
        ThreadLocal threadLocal = f4222a;
        D d6 = (D) threadLocal.get();
        if (d6 != null) {
            return d6;
        }
        C0204c c0204c = new C0204c(Thread.currentThread());
        threadLocal.set(c0204c);
        return c0204c;
    }
}
