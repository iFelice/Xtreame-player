package p130q5;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f29624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f29625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29626e;

    public j(byte[] bArr, int i8, int i9, int i10, int i11) {
        super(i10, i11);
        if (i10 > i8 || i11 > i9) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f29624c = bArr;
        this.f29625d = i8;
        this.f29626e = i9;
    }

    @Override // p130q5.g
    public final byte[] a() {
        int i8 = this.f29625d;
        byte[] bArr = this.f29624c;
        int i9 = this.f29618a;
        int i10 = this.f29619b;
        if (i9 == i8 && i10 == this.f29626e) {
            return bArr;
        }
        int i11 = i9 * i10;
        byte[] bArr2 = new byte[i11];
        if (i9 == i8) {
            System.arraycopy(bArr, 0, bArr2, 0, i11);
            return bArr2;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            System.arraycopy(bArr, i12, bArr2, i13 * i9, i9);
            i12 += i8;
        }
        return bArr2;
    }

    @Override // p130q5.g
    public final byte[] b(int i8, byte[] bArr) {
        if (i8 < 0 || i8 >= this.f29619b) {
            throw new IllegalArgumentException("Requested row is outside the image: ".concat(String.valueOf(i8)));
        }
        int i9 = this.f29618a;
        if (bArr == null || bArr.length < i9) {
            bArr = new byte[i9];
        }
        System.arraycopy(this.f29624c, i8 * this.f29625d, bArr, 0, i9);
        return bArr;
    }
}
