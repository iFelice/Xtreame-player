package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: classes.dex */
public abstract class PD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f15349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15350c;

    public PD(byte[] bArr, int i8, int i9) throws InvalidKeyException {
        this.f15348a = i9;
        if (i9 != 1) {
            if (bArr.length != 32) {
                throw new InvalidKeyException("The key length in bytes must be 32.");
            }
            this.f15349b = ND.d(bArr);
            this.f15350c = i8;
            return;
        }
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.f15349b = com.google.android.gms.internal.pal.P3.c(bArr);
        this.f15350c = i8;
    }

    public abstract int a();

    public abstract int[] b(int[] iArr, int i8);

    public final ByteBuffer c(int i8, byte[] bArr) {
        switch (this.f15348a) {
            case 0:
                int[] iArrB = b(ND.d(bArr), i8);
                int[] iArr = (int[]) iArrB.clone();
                ND.b(iArr);
                for (int i9 = 0; i9 < 16; i9++) {
                    iArrB[i9] = iArrB[i9] + iArr[i9];
                }
                ByteBuffer byteBufferOrder = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
                byteBufferOrder.asIntBuffer().put(iArrB, 0, 16);
                return byteBufferOrder;
            default:
                int[] iArrB2 = b(com.google.android.gms.internal.pal.P3.c(bArr), i8);
                int[] iArr2 = (int[]) iArrB2.clone();
                com.google.android.gms.internal.pal.P3.b(iArr2);
                for (int i10 = 0; i10 < 16; i10++) {
                    iArrB2[i10] = iArrB2[i10] + iArr2[i10];
                }
                ByteBuffer byteBufferOrder2 = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
                byteBufferOrder2.asIntBuffer().put(iArrB2, 0, 16);
                return byteBufferOrder2;
        }
    }
}
