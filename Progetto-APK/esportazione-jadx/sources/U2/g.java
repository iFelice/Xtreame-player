package U2;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class g implements P4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f6943a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final P4.c f6944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final P4.c f6945c;

    static {
        K.k kVarC = K.k.c();
        kVarC.f4294H = 1;
        S4.a aVarB = kVarC.b();
        HashMap map = new HashMap();
        map.put(S4.e.class, aVarB);
        f6944b = new P4.c("startMs", Collections.unmodifiableMap(new HashMap(map)));
        K.k kVarC2 = K.k.c();
        kVarC2.f4294H = 2;
        S4.a aVarB2 = kVarC2.b();
        HashMap map2 = new HashMap();
        map2.put(S4.e.class, aVarB2);
        f6945c = new P4.c("endMs", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // P4.a
    public final void a(Object obj, Object obj2) {
        X2.g gVar = (X2.g) obj;
        P4.e eVar = (P4.e) obj2;
        eVar.b(f6944b, gVar.f7653a);
        eVar.b(f6945c, gVar.f7654b);
    }
}
