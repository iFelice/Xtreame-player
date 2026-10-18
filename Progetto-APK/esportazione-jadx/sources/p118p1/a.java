package p118p1;

import W0.E;
import W0.F;
import W0.G;
import java.math.BigInteger;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class a implements F {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f28134a;

    public a(b bVar) {
        this.f28134a = bVar;
    }

    @Override // W0.F
    public final boolean f() {
        return true;
    }

    @Override // W0.F
    public final E k(long j8) {
        b bVar = this.f28134a;
        BigInteger bigIntegerValueOf = BigInteger.valueOf((((long) bVar.f28138J.f28175e) * j8) / 1000000);
        long j9 = bVar.f28137I;
        long j10 = bVar.f28136H;
        G g8 = new G(j8, M.j((bigIntegerValueOf.multiply(BigInteger.valueOf(j9 - j10)).divide(BigInteger.valueOf(bVar.f28140L)).longValue() + j10) - 30000, bVar.f28136H, j9 - 1));
        return new E(g8, g8);
    }

    @Override // W0.F
    public final long m() {
        b bVar = this.f28134a;
        return (bVar.f28140L * 1000000) / ((long) bVar.f28138J.f28175e);
    }
}
