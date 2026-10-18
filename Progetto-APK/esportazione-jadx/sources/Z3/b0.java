package Z3;

/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0427i f8288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g0 f8289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f8290c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f8291d = false;

    public b0(C0427i c0427i, g0 g0Var) {
        this.f8288a = c0427i;
        this.f8289b = g0Var;
    }

    public final boolean a() {
        boolean z7;
        C0427i c0427i = this.f8288a;
        if (c0427i.f8345b.getBoolean("is_pub_misconfigured", false)) {
            return true;
        }
        synchronized (this.f8290c) {
            z7 = this.f8291d;
        }
        int i8 = !z7 ? 0 : c0427i.f8345b.getInt("consent_status", 0);
        return i8 == 1 || i8 == 3;
    }
}
