package T2;

/* JADX INFO: loaded from: classes.dex */
public final class f implements P4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f6551a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final P4.c f6552b = P4.c.a("requestTimeMs");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final P4.c f6553c = P4.c.a("requestUptimeMs");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final P4.c f6554d = P4.c.a("clientInfo");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final P4.c f6555e = P4.c.a("logSource");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final P4.c f6556f = P4.c.a("logSourceName");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final P4.c f6557g = P4.c.a("logEvent");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final P4.c f6558h = P4.c.a("qosTier");

    @Override // P4.a
    public final void a(Object obj, Object obj2) {
        P4.e eVar = (P4.e) obj2;
        l lVar = (l) ((s) obj);
        eVar.b(f6552b, lVar.f6584a);
        eVar.b(f6553c, lVar.f6585b);
        eVar.a(f6554d, lVar.f6586c);
        eVar.a(f6555e, lVar.f6587d);
        eVar.a(f6556f, lVar.f6588e);
        eVar.a(f6557g, lVar.f6589f);
        eVar.a(f6558h, lVar.f6590g);
    }
}
