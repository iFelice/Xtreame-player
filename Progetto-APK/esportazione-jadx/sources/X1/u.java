package X1;

/* JADX INFO: loaded from: classes.dex */
public final class u extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public v f7615a;

    @Override // X1.p
    public final void b(q qVar) {
        v vVar = this.f7615a;
        int i8 = vVar.f7618f0 - 1;
        vVar.f7618f0 = i8;
        if (i8 == 0) {
            vVar.f7619g0 = false;
            vVar.n();
        }
        qVar.w(this);
    }

    @Override // X1.r, X1.p
    public final void c() {
        v vVar = this.f7615a;
        if (vVar.f7619g0) {
            return;
        }
        vVar.G();
        vVar.f7619g0 = true;
    }
}
