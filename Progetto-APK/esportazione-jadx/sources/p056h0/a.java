package p056h0;

import A0.O;
import p032e0.G;
import p132r.n;

/* JADX INFO: loaded from: classes.dex */
public final class a extends G {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final F2.G f25381c = new F2.G(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n f25382b = new n();

    @Override // p032e0.G
    public final void b() {
        n nVar = this.f25382b;
        int i8 = nVar.f29687I;
        if (i8 > 0) {
            O.I(nVar.f29686H[0]);
            throw null;
        }
        Object[] objArr = nVar.f29686H;
        for (int i9 = 0; i9 < i8; i9++) {
            objArr[i9] = null;
        }
        nVar.f29687I = 0;
    }
}
