package I1;

import C6.p;
import J6.InterfaceC0217p;
import p185x6.e;
import p199z6.h;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a extends h implements p {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f3995K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ d f3996L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(d dVar, e eVar) {
        super(eVar);
        this.f3996L = dVar;
    }

    @Override // C6.p
    public final Object c(Object obj, Object obj2) {
        return ((a) d((InterfaceC0217p) obj, (e) obj2)).f(p155t6.h.f30319a);
    }

    @Override // p199z6.a
    public final e d(Object obj, e eVar) {
        return new a(this.f3996L, eVar);
    }

    @Override // p199z6.a
    public final Object f(Object obj) throws Throwable {
        p192y6.a aVar = p192y6.a.f31454G;
        int i8 = this.f3995K;
        if (i8 == 0) {
            q0.H(obj);
            K1.e eVar = this.f3996L.f4004a;
            this.f3995K = 1;
            obj = eVar.c(this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (i8 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            q0.H(obj);
        }
        return obj;
    }
}
