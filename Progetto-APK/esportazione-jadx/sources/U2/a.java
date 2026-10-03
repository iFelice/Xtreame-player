package U2;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a implements P4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6926a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final P4.c f6927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final P4.c f6928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final P4.c f6929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final P4.c f6930e;

    static {
        K.k kVarC = K.k.c();
        kVarC.f4294H = 1;
        S4.a aVarB = kVarC.b();
        HashMap map = new HashMap();
        map.put(S4.e.class, aVarB);
        f6927b = new P4.c("window", Collections.unmodifiableMap(new HashMap(map)));
        K.k kVarC2 = K.k.c();
        kVarC2.f4294H = 2;
        S4.a aVarB2 = kVarC2.b();
        HashMap map2 = new HashMap();
        map2.put(S4.e.class, aVarB2);
        f6928c = new P4.c("logSourceMetrics", Collections.unmodifiableMap(new HashMap(map2)));
        K.k kVarC3 = K.k.c();
        kVarC3.f4294H = 3;
        S4.a aVarB3 = kVarC3.b();
        HashMap map3 = new HashMap();
        map3.put(S4.e.class, aVarB3);
        f6929d = new P4.c("globalMetrics", Collections.unmodifiableMap(new HashMap(map3)));
        K.k kVarC4 = K.k.c();
        kVarC4.f4294H = 4;
        S4.a aVarB4 = kVarC4.b();
        HashMap map4 = new HashMap();
        map4.put(S4.e.class, aVarB4);
        f6930e = new P4.c("appNamespace", Collections.unmodifiableMap(new HashMap(map4)));
    }

    @Override // P4.a
    public final void a(Object obj, Object obj2) {
        X2.a aVar = (X2.a) obj;
        P4.e eVar = (P4.e) obj2;
        eVar.a(f6927b, aVar.f7632a);
        eVar.a(f6928c, aVar.f7633b);
        eVar.a(f6929d, aVar.f7634c);
        eVar.a(f6930e, aVar.f7635d);
    }
}
