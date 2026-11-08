package p101n;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends f implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public c f27298G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public c f27299H;

    @Override // p101n.f
    public final void a(c cVar) {
        c cVar2;
        c cVar3;
        c cVar4 = null;
        if (this.f27298G == cVar && cVar == this.f27299H) {
            this.f27299H = null;
            this.f27298G = null;
        }
        c cVar5 = this.f27298G;
        if (cVar5 == cVar) {
            switch (((b) this).f27290I) {
                case 0:
                    cVar3 = cVar5.f27294J;
                    break;
                default:
                    cVar3 = cVar5.f27293I;
                    break;
            }
            this.f27298G = cVar3;
        }
        c cVar6 = this.f27299H;
        if (cVar6 == cVar) {
            c cVar7 = this.f27298G;
            if (cVar6 != cVar7 && cVar7 != null) {
                switch (((b) this).f27290I) {
                    case 0:
                        cVar2 = cVar6.f27293I;
                        break;
                    default:
                        cVar2 = cVar6.f27294J;
                        break;
                }
                cVar4 = cVar2;
            }
            this.f27299H = cVar4;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f27299H != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        c cVar;
        c cVar2 = this.f27299H;
        c cVar3 = this.f27298G;
        if (cVar2 != cVar3 && cVar3 != null) {
            switch (((b) this).f27290I) {
                case 0:
                    cVar = cVar2.f27293I;
                    break;
                default:
                    cVar = cVar2.f27294J;
                    break;
            }
        } else {
            cVar = null;
        }
        this.f27299H = cVar;
        return cVar2;
    }
}
