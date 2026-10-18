package J6;

/* JADX INFO: loaded from: classes2.dex */
public final class O extends N {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Q f4211e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final P f4212f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0209h f4213g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f4214h;

    public O(Q q7, P p7, C0209h c0209h, Object obj) {
        this.f4211e = q7;
        this.f4212f = p7;
        this.f4213g = c0209h;
        this.f4214h = obj;
    }

    @Override // J6.N
    public final boolean j() {
        return false;
    }

    @Override // J6.N
    public final void k(Throwable th) {
        Q q7 = this.f4211e;
        q7.getClass();
        C0209h c0209h = this.f4213g;
        C0209h c0209hU = Q.u(c0209h);
        P p7 = this.f4212f;
        Object obj = this.f4214h;
        if (c0209hU == null || !q7.C(p7, c0209hU, obj)) {
            T t7 = p7.f4218a;
            t7.getClass();
            t7.d(new N6.i(2), 2);
            C0209h c0209hU2 = Q.u(c0209h);
            if (c0209hU2 == null || !q7.C(p7, c0209hU2, obj)) {
                q7.c(q7.j(p7, obj));
            }
        }
    }
}
