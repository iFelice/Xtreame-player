package U2;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class c implements P4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f6933a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final P4.c f6934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final P4.c f6935c;

    static {
        K.k kVarC = K.k.c();
        kVarC.f4294H = 1;
        S4.a aVarB = kVarC.b();
        HashMap map = new HashMap();
        map.put(S4.e.class, aVarB);
        f6934b = new P4.c("eventsDroppedCount", Collections.unmodifiableMap(new HashMap(map)));
        K.k kVarC2 = K.k.c();
        kVarC2.f4294H = 3;
        S4.a aVarB2 = kVarC2.b();
        HashMap map2 = new HashMap();
        map2.put(S4.e.class, aVarB2);
        f6935c = new P4.c("reason", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // P4.a
    public final void a(Object obj, Object obj2) {
        X2.d dVar = (X2.d) obj;
        P4.e eVar = (P4.e) obj2;
        eVar.b(f6934b, dVar.f7646a);
        eVar.a(f6935c, dVar.f7647b);
    }
}
