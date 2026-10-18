package p032e0;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: renamed from: e0.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2976d implements InterfaceC2983k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f24738G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f24739H;

    public C2976d(Object obj) {
        this.f24738G = obj;
        this.f24739H = C2975c.f24735c.b(obj.getClass());
    }

    @Override // p032e0.InterfaceC2983k
    public final void b(m mVar, EnumC2981i enumC2981i) {
        HashMap map = ((C2973a) this.f24739H).f24731a;
        List list = (List) map.get(enumC2981i);
        Object obj = this.f24738G;
        C2973a.a(list, mVar, enumC2981i, obj);
        C2973a.a((List) map.get(EnumC2981i.ON_ANY), mVar, enumC2981i, obj);
    }
}
