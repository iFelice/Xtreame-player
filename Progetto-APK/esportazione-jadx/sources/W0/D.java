package W0;

import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class D implements F {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p117p0.y f7321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.y f7322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f7323c;

    public D(long j8, long[] jArr, long[] jArr2) {
        H1.d(jArr.length == jArr2.length);
        int length = jArr2.length;
        if (length <= 0 || jArr2[0] <= 0) {
            this.f7321a = new p117p0.y(length, 0);
            this.f7322b = new p117p0.y(length, 0);
        } else {
            int i8 = length + 1;
            p117p0.y yVar = new p117p0.y(i8, 0);
            this.f7321a = yVar;
            p117p0.y yVar2 = new p117p0.y(i8, 0);
            this.f7322b = yVar2;
            yVar.a(0L);
            yVar2.a(0L);
        }
        this.f7321a.b(jArr);
        this.f7322b.b(jArr2);
        this.f7323c = j8;
    }

    public final void b(long j8, long j9) {
        p117p0.y yVar = this.f7322b;
        int i8 = yVar.f28127a;
        p117p0.y yVar2 = this.f7321a;
        if (i8 == 0 && j8 > 0) {
            yVar2.a(0L);
            yVar.a(0L);
        }
        yVar2.a(j9);
        yVar.a(j8);
    }

    @Override // W0.F
    public final boolean f() {
        return this.f7322b.f28127a > 0;
    }

    @Override // W0.F
    public final E k(long j8) {
        p117p0.y yVar = this.f7322b;
        if (yVar.f28127a == 0) {
            G g8 = G.f7326c;
            return new E(g8, g8);
        }
        int iB = p117p0.M.b(yVar, j8);
        long jC = yVar.c(iB);
        p117p0.y yVar2 = this.f7321a;
        G g9 = new G(jC, yVar2.c(iB));
        if (jC == j8 || iB == yVar.f28127a - 1) {
            return new E(g9, g9);
        }
        int i8 = iB + 1;
        return new E(g9, new G(yVar.c(i8), yVar2.c(i8)));
    }

    @Override // W0.F
    public final long m() {
        return this.f7323c;
    }
}
