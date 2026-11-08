package U2;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class d implements P4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f6936a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final P4.c f6937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final P4.c f6938c;

    static {
        K.k kVarC = K.k.c();
        kVarC.f4294H = 1;
        S4.a aVarB = kVarC.b();
        HashMap map = new HashMap();
        map.put(S4.e.class, aVarB);
        f6937b = new P4.c("logSource", Collections.unmodifiableMap(new HashMap(map)));
        K.k kVarC2 = K.k.c();
        kVarC2.f4294H = 2;
        S4.a aVarB2 = kVarC2.b();
        HashMap map2 = new HashMap();
        map2.put(S4.e.class, aVarB2);
        f6938c = new P4.c("logEventDropped", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // P4.a
    public final void a(Object obj, Object obj2) {
        X2.e eVar = (X2.e) obj;
        P4.e eVar2 = (P4.e) obj2;
        eVar2.a(f6937b, eVar.f7649a);
        eVar2.a(f6938c, eVar.f7650b);
    }
}
