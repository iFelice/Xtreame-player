package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class VK extends AbstractC1723nN {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16998c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f16999d;

    public VK(AbstractC0774Ie abstractC0774Ie) {
        super(abstractC0774Ie);
        this.f16999d = new C2196we();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C1521je d(int i8, C1521je c1521je, boolean z7) {
        int i9 = this.f16998c;
        AbstractC0774Ie abstractC0774Ie = this.f20168b;
        switch (i9) {
            case 0:
                C1521je c1521jeD = abstractC0774Ie.d(i8, c1521je, z7);
                if (abstractC0774Ie.e(c1521jeD.f19467c, (C2196we) this.f16999d, 0L).b()) {
                    Object obj = c1521je.f19465a;
                    Object obj2 = c1521je.f19466b;
                    int i10 = c1521je.f19467c;
                    long j8 = c1521je.f19468d;
                    T5 t7 = T5.f16590b;
                    c1521jeD.b(obj, obj2, i10, j8, true);
                } else {
                    c1521jeD.f19469e = true;
                }
                return c1521jeD;
            default:
                return abstractC0774Ie.d(i8, c1521je, z7);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C2196we e(int i8, C2196we c2196we, long j8) {
        int i9 = this.f16998c;
        AbstractC0774Ie abstractC0774Ie = this.f20168b;
        switch (i9) {
            case 1:
                abstractC0774Ie.e(i8, c2196we, j8);
                C2225x6 c2225x6 = (C2225x6) this.f16999d;
                c2196we.f21709b = c2225x6;
                C1239e5 c1239e5 = c2225x6.f21836b;
                return c2196we;
            default:
                return abstractC0774Ie.e(i8, c2196we, j8);
        }
    }

    public VK(AbstractC0774Ie abstractC0774Ie, C2225x6 c2225x6) {
        super(abstractC0774Ie);
        this.f16999d = c2225x6;
    }
}
