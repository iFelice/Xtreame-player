package com.google.android.gms.internal.pal;

import com.google.android.gms.internal.ads.PD;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class R3 extends PD {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f23644d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ R3(byte[] bArr, int i8, int i9) {
        super(bArr, i8, 1);
        this.f23644d = i9;
    }

    @Override // com.google.android.gms.internal.ads.PD
    public final int a() {
        switch (this.f23644d) {
            case 0:
                return 12;
            default:
                return 24;
        }
    }

    @Override // com.google.android.gms.internal.ads.PD
    public final int[] b(int[] iArr, int i8) {
        Object obj = this.f15349b;
        switch (this.f23644d) {
            case 0:
                int length = iArr.length;
                if (length != 3) {
                    throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
                }
                int[] iArr2 = new int[16];
                int[] iArr3 = P3.f23625a;
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
                int[] iArr5 = new int[16];
                int[] iArr6 = P3.f23625a;
                System.arraycopy(iArr6, 0, iArr5, 0, iArr6.length);
                System.arraycopy((int[]) obj, 0, iArr5, iArr6.length, 8);
                iArr5[12] = iArr[0];
                iArr5[13] = iArr[1];
                iArr5[14] = iArr[2];
                iArr5[15] = iArr[3];
                P3.b(iArr5);
                iArr5[4] = iArr5[12];
                iArr5[5] = iArr5[13];
                iArr5[6] = iArr5[14];
                iArr5[7] = iArr5[15];
                int[] iArrCopyOf = Arrays.copyOf(iArr5, 8);
                System.arraycopy(iArr6, 0, iArr4, 0, iArr6.length);
                System.arraycopy(iArrCopyOf, 0, iArr4, iArr6.length, 8);
                iArr4[12] = i8;
                iArr4[13] = 0;
                iArr4[14] = iArr[4];
                iArr4[15] = iArr[5];
                return iArr4;
        }
    }
}
