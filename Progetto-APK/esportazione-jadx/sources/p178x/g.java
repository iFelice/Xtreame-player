package p178x;

/* JADX INFO: loaded from: classes.dex */
public class g extends f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f31148m;

    public g(p pVar) {
        super(pVar);
        if (pVar instanceof k) {
            this.f31140e = 2;
        } else {
            this.f31140e = 3;
        }
    }

    @Override // p178x.f
    public final void d(int i8) {
        if (this.f31145j) {
            return;
        }
        this.f31145j = true;
        this.f31142g = i8;
        for (d dVar : this.f31146k) {
            dVar.a(dVar);
        }
    }
}
