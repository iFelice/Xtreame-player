package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1769oH extends OG {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AbstractC1873qH f20254G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public AbstractC1873qH f20255H;

    public AbstractC1769oH(AbstractC1873qH abstractC1873qH) {
        this.f20254G = abstractC1873qH;
        if (abstractC1873qH.v()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f20255H = abstractC1873qH.q();
    }

    public final AbstractC1873qH b() {
        AbstractC1873qH abstractC1873qHC = c();
        abstractC1873qHC.getClass();
        if (AbstractC1873qH.u(abstractC1873qHC, true)) {
            return abstractC1873qHC;
        }
        throw new C1356gI();
    }

    public final AbstractC1873qH c() {
        if (!this.f20255H.v()) {
            return this.f20255H;
        }
        this.f20255H.m();
        return this.f20255H;
    }

    public final Object clone() {
        AbstractC1769oH abstractC1769oH = (AbstractC1769oH) this.f20254G.x(5, null);
        abstractC1769oH.f20255H = c();
        return abstractC1769oH;
    }

    public final void d() {
        if (this.f20255H.v()) {
            return;
        }
        AbstractC1873qH abstractC1873qHQ = this.f20254G.q();
        UH.f16822c.a(abstractC1873qHQ.getClass()).zzg(abstractC1873qHQ, this.f20255H);
        this.f20255H = abstractC1873qHQ;
    }
}
