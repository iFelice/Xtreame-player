package C2;

/* JADX INFO: renamed from: C2.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0096l implements D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0091g f1398b;

    public C0096l(int i8) {
        this.f1397a = i8;
        int i9 = 1;
        if (i8 != 1) {
            this.f1398b = new C0091g(this, i9);
        } else {
            this.f1398b = new C0091g();
        }
    }

    @Override // C2.D
    public final C a(H h8) {
        int i8 = this.f1397a;
        C0091g c0091g = this.f1398b;
        switch (i8) {
            case 0:
                return new C0092h(c0091g, 1);
            default:
                return new D2.a(c0091g);
        }
    }
}
