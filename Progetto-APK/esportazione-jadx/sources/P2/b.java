package P2;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5880a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f5881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5882c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5883d;

    public /* synthetic */ b(int i8, byte[] bArr, int i9, int i10) {
        this.f5880a = i10;
        this.f5881b = bArr;
        this.f5882c = i8;
        this.f5883d = i9;
    }

    public final int a() {
        return ((this.f5881b.length - this.f5882c) * 8) - this.f5883d;
    }

    public final int b(int i8) {
        if (i8 <= 0 || i8 > 32 || i8 > a()) {
            throw new IllegalArgumentException(String.valueOf(i8));
        }
        int i9 = this.f5883d;
        int i10 = 0;
        if (i9 > 0) {
            int i11 = 8 - i9;
            int iMin = Math.min(i8, i11);
            int i12 = i11 - iMin;
            byte[] bArr = this.f5881b;
            int i13 = this.f5882c;
            int i14 = (((255 >> (8 - iMin)) << i12) & bArr[i13]) >> i12;
            i8 -= iMin;
            int i15 = this.f5883d + iMin;
            this.f5883d = i15;
            if (i15 == 8) {
                this.f5883d = 0;
                this.f5882c = i13 + 1;
            }
            i10 = i14;
        }
        if (i8 <= 0) {
            return i10;
        }
        while (i8 >= 8) {
            int i16 = i10 << 8;
            byte[] bArr2 = this.f5881b;
            int i17 = this.f5882c;
            i10 = (bArr2[i17] & 255) | i16;
            this.f5882c = i17 + 1;
            i8 -= 8;
        }
        if (i8 <= 0) {
            return i10;
        }
        int i18 = 8 - i8;
        int i19 = (i10 << i8) | ((((255 >> i18) << i18) & this.f5881b[this.f5882c]) >> i18);
        this.f5883d += i8;
        return i19;
    }

    public final void c(byte[] bArr) {
        int i8 = 0;
        switch (this.f5880a) {
            case 1:
                int i9 = this.f5882c;
                int i10 = this.f5883d;
                while (i8 < 256) {
                    byte[] bArr2 = this.f5881b;
                    i9 = (i9 + 1) & 255;
                    byte b8 = bArr2[i9];
                    i10 = (i10 + b8) & 255;
                    bArr2[i9] = bArr2[i10];
                    bArr2[i10] = b8;
                    bArr[i8] = (byte) (bArr2[(bArr2[i9] + b8) & 255] ^ bArr[i8]);
                    i8++;
                }
                this.f5882c = i9;
                this.f5883d = i10;
                break;
            default:
                int i11 = this.f5882c;
                int i12 = this.f5883d;
                while (i8 < 256) {
                    i11 = (i11 + 1) & 255;
                    byte[] bArr3 = this.f5881b;
                    byte b9 = bArr3[i11];
                    i12 = (i12 + b9) & 255;
                    bArr3[i11] = bArr3[i12];
                    bArr3[i12] = b9;
                    bArr[i8] = (byte) (bArr3[(bArr3[i11] + b9) & 255] ^ bArr[i8]);
                    i8++;
                }
                this.f5882c = i11;
                this.f5883d = i12;
                break;
        }
    }

    public b(byte[] bArr, int i8) {
        this.f5880a = i8;
        if (i8 == 2) {
            this.f5881b = new byte[256];
            for (int i9 = 0; i9 < 256; i9++) {
                this.f5881b[i9] = (byte) i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < 256; i11++) {
                byte[] bArr2 = this.f5881b;
                byte b8 = bArr2[i11];
                i10 = (i10 + b8 + bArr[i11 % bArr.length]) & 255;
                bArr2[i11] = bArr2[i10];
                bArr2[i10] = b8;
            }
            this.f5882c = 0;
            this.f5883d = 0;
            return;
        }
        if (i8 == 3) {
            this.f5881b = bArr;
            return;
        }
        this.f5881b = new byte[256];
        for (int i12 = 0; i12 < 256; i12++) {
            this.f5881b[i12] = (byte) i12;
        }
        int i13 = 0;
        for (int i14 = 0; i14 < 256; i14++) {
            byte[] bArr3 = this.f5881b;
            byte b9 = bArr3[i14];
            i13 = (i13 + b9 + bArr[i14 % bArr.length]) & 255;
            bArr3[i14] = bArr3[i13];
            bArr3[i13] = b9;
        }
        this.f5882c = 0;
        this.f5883d = 0;
    }
}
