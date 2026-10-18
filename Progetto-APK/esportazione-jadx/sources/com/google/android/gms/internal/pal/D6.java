package com.google.android.gms.internal.pal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class D6 implements InterfaceC2768m3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f23494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f23495b;

    public D6(byte[] bArr, int i8) throws GeneralSecurityException {
        this.f23494a = i8;
        if (i8 == 1) {
            this.f23495b = new S3(bArr, 0);
        } else if (i8 == 2) {
            this.f23495b = new S3(bArr, 1);
        } else {
            if (!AbstractC2864y4.y(2)) {
                throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
            }
            this.f23495b = new Q3(bArr, true);
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2768m3
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        int i8 = this.f23494a;
        Object obj = this.f23495b;
        switch (i8) {
            case 0:
                return ((Q3) obj).a(O6.a(12), bArr);
            case 1:
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + 28);
                byte[] bArrA = O6.a(12);
                byteBufferAllocate.put(bArrA);
                ((S3) obj).m(byteBufferAllocate, bArrA, bArr, bArr2);
                return byteBufferAllocate.array();
            default:
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(bArr.length + 40);
                byte[] bArrA2 = O6.a(24);
                byteBufferAllocate2.put(bArrA2);
                ((S3) obj).m(byteBufferAllocate2, bArrA2, bArr, bArr2);
                return byteBufferAllocate2.array();
        }
    }
}
