package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class V2 implements InterfaceC1031a3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final U2 f16933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1534jr f16934b = new C1534jr(32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f16936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f16937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f16938f;

    public V2(U2 u7) {
        this.f16933a = u7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1031a3
    public final void a(Ys ys, N n7, A1.I i8) {
        this.f16933a.a(ys, n7, i8);
        this.f16938f = true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1031a3
    public final void b(int i8, C1534jr c1534jr) {
        int iW;
        int i9 = i8 & 1;
        if (i9 != 0) {
            iW = c1534jr.f19516b + c1534jr.w();
        } else {
            iW = -1;
        }
        if (this.f16938f) {
            if (i9 == 0) {
                return;
            }
            this.f16938f = false;
            c1534jr.j(iW);
            this.f16936d = 0;
        }
        while (c1534jr.o() > 0) {
            int i10 = this.f16936d;
            C1534jr c1534jr2 = this.f16934b;
            if (i10 < 3) {
                if (i10 == 0) {
                    int iW2 = c1534jr.w();
                    c1534jr.j(c1534jr.f19516b - 1);
                    if (iW2 == 255) {
                        this.f16938f = true;
                        return;
                    }
                }
                int iMin = Math.min(c1534jr.o(), 3 - this.f16936d);
                c1534jr.f(this.f16936d, c1534jr2.f19515a, iMin);
                int i11 = this.f16936d + iMin;
                this.f16936d = i11;
                if (i11 == 3) {
                    c1534jr2.j(0);
                    c1534jr2.i(3);
                    c1534jr2.k(1);
                    int iW3 = c1534jr2.w();
                    boolean z7 = (iW3 & 128) != 0;
                    int iW4 = c1534jr2.w();
                    this.f16937e = z7;
                    int i12 = (((iW3 & 15) << 8) | iW4) + 3;
                    this.f16935c = i12;
                    byte[] bArr = c1534jr2.f19515a;
                    if (bArr.length < i12) {
                        int length = bArr.length;
                        c1534jr2.e(Math.min(4098, Math.max(i12, length + length)));
                    }
                }
            } else {
                int iMin2 = Math.min(c1534jr.o(), this.f16935c - i10);
                c1534jr.f(this.f16936d, c1534jr2.f19515a, iMin2);
                int i13 = this.f16936d + iMin2;
                this.f16936d = i13;
                int i14 = this.f16935c;
                if (i13 != i14) {
                    continue;
                } else {
                    if (!this.f16937e) {
                        c1534jr2.i(i14);
                    } else {
                        if (Et.l(0, c1534jr2.f19515a, i14, -1) != 0) {
                            this.f16938f = true;
                            return;
                        }
                        c1534jr2.i(this.f16935c - 4);
                    }
                    c1534jr2.j(0);
                    this.f16933a.b(c1534jr2);
                    this.f16936d = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1031a3
    public final void zzc() {
        this.f16938f = true;
    }
}
