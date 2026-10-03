package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class U5 extends S5 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MessageDigest f16785c;

    @Override // com.google.android.gms.internal.ads.S5
    public final byte[] b(String str) {
        byte[] bArr;
        byte[] bArrArray;
        String[] strArrSplit = str.split(" ");
        int length = strArrSplit.length;
        int i8 = 4;
        if (length == 1) {
            int iM = a7.b.m(strArrSplit[0]);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.putInt(iM);
            bArrArray = byteBufferAllocate.array();
        } else {
            if (length < 5) {
                bArr = new byte[length + length];
                for (int i9 = 0; i9 < strArrSplit.length; i9++) {
                    int iM2 = a7.b.m(strArrSplit[i9]);
                    int i10 = (iM2 >> 16) ^ ((char) iM2);
                    byte b8 = (byte) i10;
                    byte b9 = (byte) (i10 >> 8);
                    int i11 = i9 + i9;
                    bArr[i11] = new byte[]{b8, b9}[0];
                    bArr[i11 + 1] = b9;
                }
            } else {
                bArr = new byte[length];
                for (int i12 = 0; i12 < strArrSplit.length; i12++) {
                    int iM3 = a7.b.m(strArrSplit[i12]);
                    bArr[i12] = (byte) ((iM3 >> 24) ^ (((iM3 & 255) ^ ((iM3 >> 8) & 255)) ^ ((iM3 >> 16) & 255)));
                }
            }
            bArrArray = bArr;
        }
        this.f16785c = a();
        synchronized (this.f16407a) {
            try {
                MessageDigest messageDigest = this.f16785c;
                if (messageDigest == null) {
                    return new byte[0];
                }
                messageDigest.reset();
                this.f16785c.update(bArrArray);
                byte[] bArrDigest = this.f16785c.digest();
                int length2 = bArrDigest.length;
                if (length2 <= 4) {
                    i8 = length2;
                }
                byte[] bArr2 = new byte[i8];
                System.arraycopy(bArrDigest, 0, bArr2, 0, i8);
                return bArr2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
