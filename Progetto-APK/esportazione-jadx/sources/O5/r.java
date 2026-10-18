package O5;

/* JADX INFO: loaded from: classes2.dex */
public final class r extends l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5636c;

    @Override // O5.l
    public final p096m2.l b(p130q5.j jVar) {
        if (this.f5636c) {
            this.f5636c = false;
            return new p096m2.l(new p176w5.e(new p130q5.f(jVar)));
        }
        this.f5636c = true;
        return new p096m2.l(new p176w5.e(jVar));
    }
}
