package T2;

/* JADX INFO: loaded from: classes.dex */
public final class g implements P4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f6559a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final P4.c f6560b = P4.c.a("networkType");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final P4.c f6561c = P4.c.a("mobileSubtype");

    @Override // P4.a
    public final void a(Object obj, Object obj2) {
        P4.e eVar = (P4.e) obj2;
        n nVar = (n) ((v) obj);
        eVar.a(f6560b, nVar.f6592a);
        eVar.a(f6561c, nVar.f6593b);
    }
}
