package com.google.android.gms.internal.pal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public final class I6 implements InterfaceC2768m3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final M6 f23558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC2871z3 f23559b;

    public I6(M6 m7, InterfaceC2871z3 interfaceC2871z3) {
        this.f23558a = m7;
        this.f23559b = interfaceC2871z3;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2768m3
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        B6 b8 = (B6) this.f23558a;
        b8.getClass();
        int length = bArr.length;
        int i8 = b8.f23472b;
        int i9 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER - i8;
        if (length > i9) {
            throw new GeneralSecurityException(p000a.r.f("plaintext length can not exceed ", i9));
        }
        byte[] bArr3 = new byte[i8 + length];
        byte[] bArrA = O6.a(i8);
        System.arraycopy(bArrA, 0, bArr3, 0, i8);
        Cipher cipher = (Cipher) B6.f23470d.get();
        byte[] bArr4 = new byte[b8.f23473c];
        System.arraycopy(bArrA, 0, bArr4, 0, i8);
        cipher.init(1, b8.f23471a, new IvParameterSpec(bArr4));
        if (cipher.doFinal(bArr, 0, length, bArr3, b8.f23472b) == length) {
            return AbstractC2864y4.Y(bArr3, this.f23559b.a(AbstractC2864y4.Y(bArr2, bArr3, Arrays.copyOf(ByteBuffer.allocate(8).putLong(0L).array(), 8))));
        }
        throw new GeneralSecurityException("stored output's length does not match input's length");
    }
}
