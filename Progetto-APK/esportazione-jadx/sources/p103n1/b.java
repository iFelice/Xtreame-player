package p103n1;

import W0.D;
import W0.E;
import java.math.RoundingMode;
import p117p0.M;
import p117p0.y;

/* JADX INFO: loaded from: classes.dex */
public final class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final D f27380d;

    public b(long j8, long j9, long j10) {
        this.f27380d = new D(j8, new long[]{j9}, new long[]{0});
        this.f27377a = j9;
        this.f27378b = j10;
        int i8 = -2147483647;
        if (j8 == -9223372036854775807L) {
            this.f27379c = -2147483647;
            return;
        }
        long jZ = M.Z(j9 - j10, 8L, j8, RoundingMode.HALF_UP);
        if (jZ > 0 && jZ <= 2147483647L) {
            i8 = (int) jZ;
        }
        this.f27379c = i8;
    }

    @Override // p103n1.f
    public final long a(long j8) {
        D d6 = this.f27380d;
        y yVar = d6.f7322b;
        if (yVar.f28127a == 0) {
            return -9223372036854775807L;
        }
        return yVar.c(M.b(d6.f7321a, j8));
    }

    @Override // p103n1.f
    public final long c() {
        return this.f27378b;
    }

    @Override // p103n1.f
    public final long e() {
        return this.f27377a;
    }

    @Override // W0.F
    public final boolean f() {
        return this.f27380d.f();
    }

    @Override // W0.F
    public final E k(long j8) {
        return this.f27380d.k(j8);
    }

    @Override // p103n1.f
    public final int l() {
        return this.f27379c;
    }

    @Override // W0.F
    public final long m() {
        return this.f27380d.f7323c;
    }
}
