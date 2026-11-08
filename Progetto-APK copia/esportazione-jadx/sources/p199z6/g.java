package p199z6;

import p185x6.e;
import p185x6.j;
import p185x6.k;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g extends a {
    public g(e eVar) {
        super(eVar);
        if (eVar != null && eVar.getContext() != k.f31227G) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
        }
    }

    @Override // p185x6.e
    public final j getContext() {
        return k.f31227G;
    }
}
