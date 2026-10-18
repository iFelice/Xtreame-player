package p148t;

/* JADX INFO: loaded from: classes.dex */
public final class c extends Throwable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30138G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(int i8) {
        super("Failure occurred while trying to finish a future.");
        this.f30138G = i8;
    }

    private synchronized void a() {
    }

    private synchronized void b() {
    }

    private synchronized void c() {
    }

    private final synchronized void d() {
    }

    private final synchronized void e() {
    }

    private final synchronized void f() {
    }

    private synchronized void g() {
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        switch (this.f30138G) {
            case 0:
                a();
                return this;
            case 1:
                b();
                return this;
            case 2:
                c();
                return this;
            case 3:
                d();
                return this;
            case 4:
                e();
                return this;
            case 5:
                f();
                return this;
            default:
                g();
                return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(String str, int i8) {
        super(str);
        this.f30138G = i8;
    }
}
