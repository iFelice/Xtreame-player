package p101n;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class d extends f implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public c f27295G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f27296H = true;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ g f27297I;

    public d(g gVar) {
        this.f27297I = gVar;
    }

    @Override // p101n.f
    public final void a(c cVar) {
        c cVar2 = this.f27295G;
        if (cVar == cVar2) {
            c cVar3 = cVar2.f27294J;
            this.f27295G = cVar3;
            this.f27296H = cVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f27296H) {
            return this.f27297I.f27300G != null;
        }
        c cVar = this.f27295G;
        return (cVar == null || cVar.f27293I == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f27296H) {
            this.f27296H = false;
            this.f27295G = this.f27297I.f27300G;
        } else {
            c cVar = this.f27295G;
            this.f27295G = cVar != null ? cVar.f27293I : null;
        }
        return this.f27295G;
    }
}
