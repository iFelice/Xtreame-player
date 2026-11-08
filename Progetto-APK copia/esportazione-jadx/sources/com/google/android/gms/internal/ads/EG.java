package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public final class EG implements InterfaceC2127vC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JG f12956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FC f12957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12958c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f12959d;

    public EG(CG cg, MG mg, int i8, byte[] bArr) {
        this.f12956a = cg;
        this.f12957b = mg;
        this.f12958c = i8;
        this.f12959d = bArr;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2127vC
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.f12959d;
        int length = bArr3.length;
        int length2 = bArr.length;
        int i8 = this.f12958c;
        if (length2 < length + i8) {
            throw new GeneralSecurityException("Decryption failed (ciphertext too short).");
        }
        if (!NE.c(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        int i9 = length2 - i8;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, bArr3.length, i9);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, i9, length2);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArrR0 = Cw.R0(bArr2, bArrCopyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(((long) bArr2.length) * 8).array(), 8));
        MG mg = (MG) this.f12957b;
        byte[] bArr4 = mg.f14695d;
        int length3 = bArr4.length;
        int i10 = mg.f14693b;
        InterfaceC1507jF interfaceC1507jF = mg.f14692a;
        byte[] bArr5 = mg.f14694c;
        if (!MessageDigest.isEqual(length3 > 0 ? Cw.R0(bArr5, interfaceC1507jF.a(i10, Cw.R0(bArrR0, bArr4))) : Cw.R0(bArr5, interfaceC1507jF.a(i10, bArrR0)), bArrCopyOfRange2)) {
            throw new GeneralSecurityException("invalid MAC");
        }
        CG cg = (CG) this.f12956a;
        cg.getClass();
        int length4 = bArrCopyOfRange.length;
        int i11 = cg.f12601b;
        if (length4 < i11) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArr6 = new byte[i11];
        System.arraycopy(bArrCopyOfRange, 0, bArr6, 0, i11);
        int i12 = cg.f12601b;
        int i13 = length4 - i12;
        byte[] bArr7 = new byte[i13];
        Cipher cipher = (Cipher) CG.f12599d.get();
        byte[] bArr8 = new byte[cg.f12602c];
        System.arraycopy(bArr6, 0, bArr8, 0, i11);
        cipher.init(2, cg.f12600a, new IvParameterSpec(bArr8));
        if (cipher.doFinal(bArrCopyOfRange, i12, i13, bArr7, 0) == i13) {
            return bArr7;
        }
        throw new GeneralSecurityException("stored output's length does not match input's length");
    }
}
