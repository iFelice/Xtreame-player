package J6;

/* JADX INFO: renamed from: J6.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0220t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f4260a = 0;

    static {
        String property;
        int i8 = N6.u.f4999a;
        try {
            property = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null || !Boolean.parseBoolean(property)) {
            RunnableC0219s runnableC0219s = RunnableC0219s.f4258O;
            return;
        }
        O6.e eVar = AbstractC0225y.f4262a;
        p185x6.g gVar = N6.p.f4994a;
        K6.c cVar = ((K6.c) gVar).f4598L;
        if (gVar instanceof InterfaceC0223w) {
        } else {
            RunnableC0219s runnableC0219s2 = RunnableC0219s.f4258O;
        }
    }
}
