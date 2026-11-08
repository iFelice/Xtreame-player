package F5;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3246c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(int i8, p176w5.a aVar) {
        super(aVar);
        this.f3246c = i8;
    }

    @Override // F5.f
    public final void u(int i8, StringBuilder sb) {
        switch (this.f3246c) {
            case 0:
                sb.append("(3103)");
                break;
            default:
                if (i8 >= 10000) {
                    sb.append("(3203)");
                } else {
                    sb.append("(3202)");
                }
                break;
        }
    }

    @Override // F5.f
    public final int v(int i8) {
        switch (this.f3246c) {
            case 0:
                return i8;
            default:
                return i8 < 10000 ? i8 : i8 - 10000;
        }
    }
}
