package p185x6;

import C6.l;
import I6.f;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements i {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final l f31221G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final i f31222H;

    public b(i iVar, f fVar) {
        q0.h(iVar, "baseKey");
        this.f31221G = fVar;
        this.f31222H = iVar instanceof b ? ((b) iVar).f31222H : iVar;
    }

    public final h a(h hVar) {
        q0.h(hVar, "element");
        return (h) this.f31221G.invoke(hVar);
    }
}
