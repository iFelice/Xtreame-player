package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class OD extends PD {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15145d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ OD(byte[] bArr, int i8, int i9) {
        super(bArr, i8, 0);
        this.f15145d = i9;
    }

    @Override // com.google.android.gms.internal.ads.PD
    public final int a() {
        switch (this.f15145d) {
            case 0:
                return 12;
            default:
                return 24;
        }
    }

    @Override // com.google.android.gms.internal.ads.PD
    public final int[] b(int[] iArr, int i8) {
        Object obj = this.f15349b;
        switch (this.f15145d) {
            case 0:
                int length = iArr.length;
                if (length != 3) {
                    throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
                }
                int[] iArr2 = new int[16];
                int[] iArr3 = ND.f14894a;
                System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
                System.arraycopy((int[]) obj, 0, iArr2, iArr3.length, 8);
                iArr2[12] = i8;
                System.arraycopy(iArr, 0, iArr2, 13, 3);
                return iArr2;
            default:
                int length2 = iArr.length;
                if (length2 != 6) {
                    throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(length2 * 32)));
                }
                int[] iArr4 = new int[16];
                int[] iArrC = ND.c((int[]) obj, iArr);
                int[] iArr5 = ND.f14894a;
                System.arraycopy(iArr5, 0, iArr4, 0, iArr5.length);
                System.arraycopy(iArrC, 0, iArr4, iArr5.length, 8);
                iArr4[12] = i8;
                iArr4[13] = 0;
                iArr4[14] = iArr[4];
                iArr4[15] = iArr[5];
                return iArr4;
        }
    }
}
