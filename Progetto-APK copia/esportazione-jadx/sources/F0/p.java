package F0;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;
import p094m0.C3136t;

/* JADX INFO: loaded from: classes.dex */
public final class p extends n {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final u f3080j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final u f3081k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f3082l;

    public p(j jVar, long j8, long j9, long j10, long j11, long j12, List list, long j13, u uVar, u uVar2, long j14, long j15) {
        super(jVar, j8, j9, j10, j12, list, j13, j14, j15);
        this.f3080j = uVar;
        this.f3081k = uVar2;
        this.f3082l = j11;
    }

    @Override // F0.s
    public final j a(m mVar) {
        u uVar = this.f3080j;
        if (uVar == null) {
            return this.f3087a;
        }
        C3136t c3136t = mVar.f3066a;
        return new j(0L, -1L, uVar.a(c3136t.f27036j, c3136t.f27027a, 0L, 0L));
    }

    @Override // F0.n
    public final long d(long j8) {
        List list = this.f3075f;
        if (list != null) {
            return list.size();
        }
        long j9 = this.f3082l;
        if (j9 != -1) {
            return (j9 - this.f3073d) + 1;
        }
        if (j8 == -9223372036854775807L) {
            return -1L;
        }
        BigInteger bigIntegerMultiply = BigInteger.valueOf(j8).multiply(BigInteger.valueOf(this.f3088b));
        BigInteger bigIntegerMultiply2 = BigInteger.valueOf(this.f3074e).multiply(BigInteger.valueOf(1000000L));
        RoundingMode roundingMode = RoundingMode.CEILING;
        int i8 = B4.a.f1213a;
        return new BigDecimal(bigIntegerMultiply).divide(new BigDecimal(bigIntegerMultiply2), 0, roundingMode).toBigIntegerExact().longValue();
    }

    @Override // F0.n
    public final j h(long j8, m mVar) {
        long j9 = this.f3073d;
        List list = this.f3075f;
        long j10 = list != null ? ((q) list.get((int) (j8 - j9))).f3083a : (j8 - j9) * this.f3074e;
        C3136t c3136t = mVar.f3066a;
        return new j(0L, -1L, this.f3081k.a(c3136t.f27036j, c3136t.f27027a, j8, j10));
    }
}
