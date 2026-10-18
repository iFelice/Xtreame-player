package A1;

import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class C implements J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final B f259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.E f260b = new p117p0.E(32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f264f;

    public C(B b8) {
        this.f259a = b8;
    }

    @Override // A1.J
    public final void a() {
        this.f264f = true;
    }

    @Override // A1.J
    public final void b(int i8, p117p0.E e8) {
        int iZ;
        boolean z7 = (i8 & 1) != 0;
        if (z7) {
            iZ = e8.f28036b + e8.z();
        } else {
            iZ = -1;
        }
        if (this.f264f) {
            if (!z7) {
                return;
            }
            this.f264f = false;
            e8.L(iZ);
            this.f262d = 0;
        }
        while (e8.a() > 0) {
            int i9 = this.f262d;
            p117p0.E e9 = this.f260b;
            if (i9 < 3) {
                if (i9 == 0) {
                    int iZ2 = e8.z();
                    e8.L(e8.f28036b - 1);
                    if (iZ2 == 255) {
                        this.f264f = true;
                        return;
                    }
                }
                int iMin = Math.min(e8.a(), 3 - this.f262d);
                e8.j(this.f262d, e9.f28035a, iMin);
                int i10 = this.f262d + iMin;
                this.f262d = i10;
                if (i10 == 3) {
                    e9.L(0);
                    e9.K(3);
                    e9.M(1);
                    int iZ3 = e9.z();
                    int iZ4 = e9.z();
                    this.f263e = (iZ3 & 128) != 0;
                    int i11 = (((iZ3 & 15) << 8) | iZ4) + 3;
                    this.f261c = i11;
                    byte[] bArr = e9.f28035a;
                    if (bArr.length < i11) {
                        e9.c(Math.min(4098, Math.max(i11, bArr.length * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(e8.a(), this.f261c - this.f262d);
                e8.j(this.f262d, e9.f28035a, iMin2);
                int i12 = this.f262d + iMin2;
                this.f262d = i12;
                int i13 = this.f261c;
                if (i12 != i13) {
                    continue;
                } else {
                    if (!this.f263e) {
                        e9.K(i13);
                    } else {
                        if (M.m(0, e9.f28035a, i13, -1) != 0) {
                            this.f264f = true;
                            return;
                        }
                        e9.K(this.f261c - 4);
                    }
                    e9.L(0);
                    this.f259a.b(e9);
                    this.f262d = 0;
                }
            }
        }
    }

    @Override // A1.J
    public final void d(p117p0.J j8, W0.u uVar, I i8) {
        this.f259a.d(j8, uVar, i8);
        this.f264f = true;
    }
}
