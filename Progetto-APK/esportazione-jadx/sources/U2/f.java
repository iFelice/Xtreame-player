package U2;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class f implements P4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f6940a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final P4.c f6941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final P4.c f6942c;

    static {
        K.k kVarC = K.k.c();
        kVarC.f4294H = 1;
        S4.a aVarB = kVarC.b();
        HashMap map = new HashMap();
        map.put(S4.e.class, aVarB);
        f6941b = new P4.c("currentCacheSizeBytes", Collections.unmodifiableMap(new HashMap(map)));
        K.k kVarC2 = K.k.c();
        kVarC2.f4294H = 2;
        S4.a aVarB2 = kVarC2.b();
        HashMap map2 = new HashMap();
        map2.put(S4.e.class, aVarB2);
        f6942c = new P4.c("maxCacheSizeBytes", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // P4.a
    public final void a(Object obj, Object obj2) {
        X2.f fVar = (X2.f) obj;
        P4.e eVar = (P4.e) obj2;
        eVar.b(f6941b, fVar.f7651a);
        eVar.b(f6942c, fVar.f7652b);
    }
}
