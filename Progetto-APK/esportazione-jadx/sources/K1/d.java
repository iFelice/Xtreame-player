package K1;

import C6.p;
import J6.InterfaceC0217p;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class d extends p199z6.h implements p {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public /* synthetic */ Object f4457K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ e f4458L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar, p185x6.e eVar2) {
        super(eVar2);
        this.f4458L = eVar;
    }

    @Override // C6.p
    public final Object c(Object obj, Object obj2) {
        return ((d) d((InterfaceC0217p) obj, (p185x6.e) obj2)).f(p155t6.h.f30319a);
    }

    @Override // p199z6.a
    public final p185x6.e d(Object obj, p185x6.e eVar) {
        d dVar = new d(this.f4458L, eVar);
        dVar.f4457K = obj;
        return dVar;
    }

    @Override // p199z6.a
    public final Object f(Object obj) throws Throwable {
        q0.H(obj);
        throw null;
    }
}
