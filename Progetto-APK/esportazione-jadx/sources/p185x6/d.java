package p185x6;

import C6.p;
import java.io.Serializable;
import okhttp3.HttpUrl;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements j, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final j f31224G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final h f31225H;

    public d(h hVar, j jVar) {
        q0.h(jVar, "left");
        q0.h(hVar, "element");
        this.f31224G = jVar;
        this.f31225H = hVar;
    }

    @Override // p185x6.j
    public final Object E(Object obj, p pVar) {
        return pVar.c(this.f31224G.E(obj, pVar), this.f31225H);
    }

    @Override // p185x6.j
    public final j N(j jVar) {
        return q0.D(this, jVar);
    }

    @Override // p185x6.j
    public final j O(i iVar) {
        q0.h(iVar, "key");
        h hVar = this.f31225H;
        h hVarK = hVar.k(iVar);
        j jVar = this.f31224G;
        if (hVarK != null) {
            return jVar;
        }
        j jVarO = jVar.O(iVar);
        if (jVarO == jVar) {
            return this;
        }
        return jVarO == k.f31227G ? hVar : new d(hVar, jVarO);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                dVar.getClass();
                int i8 = 2;
                d dVar2 = dVar;
                int i9 = 2;
                while (true) {
                    j jVar = dVar2.f31224G;
                    dVar2 = jVar instanceof d ? (d) jVar : null;
                    if (dVar2 == null) {
                        break;
                    }
                    i9++;
                }
                d dVar3 = this;
                while (true) {
                    j jVar2 = dVar3.f31224G;
                    dVar3 = jVar2 instanceof d ? (d) jVar2 : null;
                    if (dVar3 == null) {
                        break;
                    }
                    i8++;
                }
                if (i9 == i8) {
                    d dVar4 = this;
                    while (true) {
                        h hVar = dVar4.f31225H;
                        if (!q0.c(dVar.k(hVar.getKey()), hVar)) {
                            break;
                        }
                        j jVar3 = dVar4.f31224G;
                        if (jVar3 instanceof d) {
                            dVar4 = (d) jVar3;
                        } else {
                            q0.f(jVar3, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                            h hVar2 = (h) jVar3;
                            if (q0.c(dVar.k(hVar2.getKey()), hVar2)) {
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.f31225H.hashCode() + this.f31224G.hashCode();
    }

    @Override // p185x6.j
    public final h k(i iVar) {
        q0.h(iVar, "key");
        d dVar = this;
        while (true) {
            h hVarK = dVar.f31225H.k(iVar);
            if (hVarK != null) {
                return hVarK;
            }
            j jVar = dVar.f31224G;
            if (!(jVar instanceof d)) {
                return jVar.k(iVar);
            }
            dVar = (d) jVar;
        }
    }

    public final String toString() {
        return "[" + ((String) E(HttpUrl.FRAGMENT_ENCODE_SET, new c(0))) + ']';
    }
}
