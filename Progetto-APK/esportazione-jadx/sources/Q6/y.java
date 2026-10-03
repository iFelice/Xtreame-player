package Q6;

import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f6097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6100d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f6101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public y f6102f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public y f6103g;

    public y(byte[] bArr, int i8, int i9, boolean z7, boolean z8) {
        q0.h(bArr, "data");
        this.f6097a = bArr;
        this.f6098b = i8;
        this.f6099c = i9;
        this.f6100d = z7;
        this.f6101e = z8;
    }

    public final y a() {
        y yVar = this.f6102f;
        if (yVar == this) {
            yVar = null;
        }
        y yVar2 = this.f6103g;
        q0.e(yVar2);
        yVar2.f6102f = this.f6102f;
        y yVar3 = this.f6102f;
        q0.e(yVar3);
        yVar3.f6103g = this.f6103g;
        this.f6102f = null;
        this.f6103g = null;
        return yVar;
    }

    public final void b(y yVar) {
        yVar.f6103g = this;
        yVar.f6102f = this.f6102f;
        y yVar2 = this.f6102f;
        q0.e(yVar2);
        yVar2.f6103g = yVar;
        this.f6102f = yVar;
    }

    public final y c() {
        this.f6100d = true;
        return new y(this.f6097a, this.f6098b, this.f6099c, true, false);
    }

    public final void d(y yVar, int i8) {
        if (!yVar.f6101e) {
            throw new IllegalStateException("only owner can write".toString());
        }
        int i9 = yVar.f6099c;
        int i10 = i9 + i8;
        byte[] bArr = yVar.f6097a;
        if (i10 > 8192) {
            if (yVar.f6100d) {
                throw new IllegalArgumentException();
            }
            int i11 = yVar.f6098b;
            if (i10 - i11 > 8192) {
                throw new IllegalArgumentException();
            }
            p162u6.j.K(0, i11, i9, bArr, bArr);
            yVar.f6099c -= yVar.f6098b;
            yVar.f6098b = 0;
        }
        int i12 = yVar.f6099c;
        int i13 = this.f6098b;
        p162u6.j.K(i12, i13, i13 + i8, this.f6097a, bArr);
        yVar.f6099c += i8;
        this.f6098b += i8;
    }

    public y() {
        this.f6097a = new byte[8192];
        this.f6101e = true;
        this.f6100d = false;
    }
}
