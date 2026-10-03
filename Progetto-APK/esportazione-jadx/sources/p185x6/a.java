package p185x6;

import C6.p;
import p190y4.k;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final i f31220G;

    public a(i iVar) {
        this.f31220G = iVar;
    }

    @Override // p185x6.j
    public final Object E(Object obj, p pVar) {
        return pVar.c(obj, this);
    }

    @Override // p185x6.j
    public final j N(j jVar) {
        return k.a0(this, jVar);
    }

    @Override // p185x6.j
    public j O(i iVar) {
        return k.Z(this, iVar);
    }

    @Override // p185x6.h
    public final i getKey() {
        return this.f31220G;
    }

    @Override // p185x6.j
    public h k(i iVar) {
        return k.D(this, iVar);
    }
}
