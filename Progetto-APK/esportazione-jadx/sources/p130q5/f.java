package p130q5;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g f29617c;

    public f(g gVar) {
        super(gVar.f29618a, gVar.f29619b);
        this.f29617c = gVar;
    }

    @Override // p130q5.g
    public final byte[] a() {
        byte[] bArrA = this.f29617c.a();
        int i8 = this.f29618a * this.f29619b;
        byte[] bArr = new byte[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            bArr[i9] = (byte) (255 - (bArrA[i9] & 255));
        }
        return bArr;
    }

    @Override // p130q5.g
    public final byte[] b(int i8, byte[] bArr) {
        byte[] bArrB = this.f29617c.b(i8, bArr);
        for (int i9 = 0; i9 < this.f29618a; i9++) {
            bArrB[i9] = (byte) (255 - (bArrB[i9] & 255));
        }
        return bArrB;
    }

    @Override // p130q5.g
    public final boolean c() {
        return this.f29617c.c();
    }

    @Override // p130q5.g
    public final g d() {
        return new f(this.f29617c.d());
    }
}
