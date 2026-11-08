package p185x6;

import C6.p;
import java.io.Serializable;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements j, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final k f31227G = new k();

    @Override // p185x6.j
    public final j N(j jVar) {
        q0.h(jVar, "context");
        return jVar;
    }

    @Override // p185x6.j
    public final j O(i iVar) {
        q0.h(iVar, "key");
        return this;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // p185x6.j
    public final h k(i iVar) {
        q0.h(iVar, "key");
        return null;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }

    @Override // p185x6.j
    public final Object E(Object obj, p pVar) {
        return obj;
    }
}
