package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class R2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f16197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f16198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f16199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f16200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f16201f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f16202g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f16203h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f16204i;

    public R2() {
        this.f16196a = 1;
        this.f16197b = new Ys();
        this.f16202g = -9223372036854775807L;
        this.f16203h = -9223372036854775807L;
        this.f16204i = -9223372036854775807L;
        this.f16198c = new C1534jr();
    }

    public static int b(int i8, byte[] bArr) {
        return (bArr[i8 + 3] & 255) | ((bArr[i8] & 255) << 24) | ((bArr[i8 + 1] & 255) << 16) | ((bArr[i8 + 2] & 255) << 8);
    }

    public static long c(p117p0.E e8) {
        int i8 = e8.f28036b;
        if (e8.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        e8.j(0, bArr, 9);
        e8.L(i8);
        byte b8 = bArr[0];
        if ((b8 & 196) == 68) {
            byte b9 = bArr[2];
            if ((b9 & 4) == 4) {
                byte b10 = bArr[4];
                if ((b10 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                    long j8 = b8;
                    long j9 = b9;
                    return ((j9 & 3) << 13) | ((j8 & 3) << 28) | (((56 & j8) >> 3) << 30) | ((((long) bArr[1]) & 255) << 20) | (((j9 & 248) >> 3) << 15) | ((((long) bArr[3]) & 255) << 5) | ((((long) b10) & 248) >> 3);
                }
            }
        }
        return -9223372036854775807L;
    }

    public static long e(C1534jr c1534jr) {
        int i8 = c1534jr.f19516b;
        if (c1534jr.o() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        c1534jr.f(0, bArr, 9);
        c1534jr.j(i8);
        byte b8 = bArr[0];
        if ((b8 & 196) != 68) {
            return -9223372036854775807L;
        }
        byte b9 = bArr[2];
        if ((b9 & 4) != 4) {
            return -9223372036854775807L;
        }
        byte b10 = bArr[4];
        if ((b10 & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return -9223372036854775807L;
        }
        long j8 = b8;
        long j9 = b9;
        long j10 = (248 & j9) >> 3;
        long j11 = (j9 & 3) << 13;
        return j11 | ((bArr[1] & 255) << 20) | ((j8 & 3) << 28) | (((j8 & 56) >> 3) << 30) | (j10 << 15) | ((((long) bArr[3]) & 255) << 5) | ((((long) b10) & 248) >> 3);
    }

    public static final int h(int i8, byte[] bArr) {
        return (bArr[i8 + 3] & 255) | ((bArr[i8] & 255) << 24) | ((bArr[i8 + 1] & 255) << 16) | ((bArr[i8 + 2] & 255) << 8);
    }

    public final void a(W0.t tVar) {
        p117p0.E e8 = (p117p0.E) this.f16198c;
        byte[] bArr = p117p0.M.f28051b;
        e8.getClass();
        e8.J(bArr.length, bArr);
        this.f16199d = true;
        tVar.m();
    }

    public final long d() {
        switch (this.f16196a) {
            case 0:
                break;
        }
        return this.f16204i;
    }

    public final void f(M m7) {
        byte[] bArr = Et.f13239f;
        int length = bArr.length;
        ((C1534jr) this.f16198c).h(0, bArr);
        this.f16199d = true;
        m7.zzj();
    }

    public final void g(M m7) {
        byte[] bArr = Et.f13239f;
        int length = bArr.length;
        ((C1534jr) this.f16198c).h(0, bArr);
        this.f16199d = true;
        m7.zzj();
    }

    public R2(int i8) {
        this.f16196a = i8;
        if (i8 != 2) {
            this.f16197b = new Ys();
            this.f16202g = -9223372036854775807L;
            this.f16203h = -9223372036854775807L;
            this.f16204i = -9223372036854775807L;
            this.f16198c = new C1534jr();
            return;
        }
        this.f16197b = new p117p0.J(0L);
        this.f16202g = -9223372036854775807L;
        this.f16203h = -9223372036854775807L;
        this.f16204i = -9223372036854775807L;
        this.f16198c = new p117p0.E();
    }
}
