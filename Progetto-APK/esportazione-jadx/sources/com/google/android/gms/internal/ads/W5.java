package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class W5 extends S5 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MessageDigest f17167c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f17168d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f17169e;

    public W5(int i8) {
        int i9 = i8 >> 3;
        this.f17168d = (i8 & 7) > 0 ? i9 + 1 : i9;
        this.f17169e = i8;
    }

    @Override // com.google.android.gms.internal.ads.S5
    public final byte[] b(String str) {
        synchronized (this.f16407a) {
            try {
                MessageDigest messageDigestA = a();
                this.f17167c = messageDigestA;
                if (messageDigestA == null) {
                    return new byte[0];
                }
                messageDigestA.reset();
                this.f17167c.update(str.getBytes(Charset.forName("UTF-8")));
                byte[] bArrDigest = this.f17167c.digest();
                int length = bArrDigest.length;
                int i8 = this.f17168d;
                if (length > i8) {
                    length = i8;
                }
                byte[] bArr = new byte[length];
                System.arraycopy(bArrDigest, 0, bArr, 0, length);
                if ((this.f17169e & 7) > 0) {
                    long j8 = 0;
                    for (int i9 = 0; i9 < length; i9++) {
                        if (i9 > 0) {
                            j8 <<= 8;
                        }
                        j8 += (long) (bArr[i9] & 255);
                    }
                    long j9 = j8 >>> (8 - (this.f17169e & 7));
                    int i10 = this.f17168d;
                    while (true) {
                        i10--;
                        if (i10 < 0) {
                            break;
                        }
                        bArr[i10] = (byte) (255 & j9);
                        j9 >>>= 8;
                    }
                }
                return bArr;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
