package U2;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class b implements P4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f6931a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final P4.c f6932b;

    static {
        K.k kVarC = K.k.c();
        kVarC.f4294H = 1;
        S4.a aVarB = kVarC.b();
        HashMap map = new HashMap();
        map.put(S4.e.class, aVarB);
        f6932b = new P4.c("storageMetrics", Collections.unmodifiableMap(new HashMap(map)));
    }

    @Override // P4.a
    public final void a(Object obj, Object obj2) {
        ((P4.e) obj2).a(f6932b, ((X2.b) obj).f7636a);
    }
}
