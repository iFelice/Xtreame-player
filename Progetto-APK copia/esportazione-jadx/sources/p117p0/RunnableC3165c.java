package p117p0;

/* JADX INFO: renamed from: p0.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3165c implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f28071G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C3167e f28072H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f28073I;

    public /* synthetic */ RunnableC3165c(C3167e c3167e, Object obj, int i8) {
        this.f28071G = i8;
        this.f28072H = c3167e;
        this.f28073I = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f28071G;
        Object obj = this.f28073I;
        C3167e c3167e = this.f28072H;
        switch (i8) {
            case 0:
                if (c3167e.f28079f == 0) {
                    Object obj2 = c3167e.f28077d;
                    c3167e.f28077d = obj;
                    if (!obj2.equals(obj)) {
                        c3167e.f28076c.a(obj2, obj);
                    }
                }
                break;
            default:
                int i9 = c3167e.f28079f - 1;
                c3167e.f28079f = i9;
                if (i9 == 0) {
                    Object obj3 = c3167e.f28077d;
                    c3167e.f28077d = obj;
                    if (!obj3.equals(obj)) {
                        c3167e.f28076c.a(obj3, obj);
                    }
                }
                break;
        }
    }
}
