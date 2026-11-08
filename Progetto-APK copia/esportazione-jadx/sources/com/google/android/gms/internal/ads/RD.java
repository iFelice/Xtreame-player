package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class RD implements InterfaceC2127vC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f16227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f16228c;

    public RD(int i8, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        this.f16226a = i8;
        if (i8 == 3) {
            this.f16228c = new QD(bArr, 0);
            this.f16227b = bArr2;
            return;
        }
        if (i8 == 4) {
            this.f16228c = new QD(bArr, 1);
            this.f16227b = bArr2;
        } else {
            if (!Cw.f0(1)) {
                throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
            }
            if (((Cipher) LD.f14487f.get()) == null) {
                throw new GeneralSecurityException("JCE does not support algorithm: ChaCha20-Poly1305");
            }
            if (bArr.length != 32) {
                throw new InvalidKeyException("The key length in bytes must be 32.");
            }
            this.f16227b = bArr;
            this.f16228c = bArr2;
        }
    }

    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        return ((QD) this.f16228c).n(ByteBuffer.wrap(bArr, 12, length - 12), Arrays.copyOf(bArr, 12), bArr2);
    }

    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        if (length < 40) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        return ((QD) this.f16228c).n(ByteBuffer.wrap(bArr, 24, length - 24), Arrays.copyOf(bArr, 24), bArr2);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2127vC
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int i8 = this.f16226a;
        Object obj = this.f16228c;
        byte[] bArr3 = this.f16227b;
        switch (i8) {
            case 0:
                if (bArr3.length == 0) {
                    return ((InterfaceC2127vC) obj).zza(bArr, bArr2);
                }
                if (NE.c(bArr3, bArr)) {
                    return ((InterfaceC2127vC) obj).zza(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
                }
                throw new GeneralSecurityException("wrong prefix");
            case 1:
                if (bArr == null) {
                    throw new NullPointerException("ciphertext is null");
                }
                byte[] bArr4 = (byte[]) obj;
                int length = bArr.length;
                if (length < bArr4.length + 40) {
                    throw new GeneralSecurityException("ciphertext too short");
                }
                if (!NE.c(bArr4, bArr)) {
                    throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
                }
                byte[] bArr5 = new byte[24];
                System.arraycopy(bArr, bArr4.length, bArr5, 0, 24);
                int[] iArrC = ND.c(ND.d(bArr3), ND.d(bArr5));
                ByteBuffer byteBufferOrder = ByteBuffer.allocate(iArrC.length * 4).order(ByteOrder.LITTLE_ENDIAN);
                byteBufferOrder.asIntBuffer().put(iArrC);
                SecretKeySpec secretKeySpec = new SecretKeySpec(byteBufferOrder.array(), "ChaCha20");
                byte[] bArr6 = new byte[12];
                System.arraycopy(bArr5, 16, bArr6, 4, 8);
                IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr6);
                Cipher cipher = (Cipher) LD.f14487f.get();
                cipher.init(2, secretKeySpec, ivParameterSpec);
                if (bArr2 != null && bArr2.length != 0) {
                    cipher.updateAAD(bArr2);
                }
                int length2 = bArr4.length;
                return cipher.doFinal(bArr, length2 + 24, (length - length2) - 24);
            case 2:
                if (bArr == null) {
                    throw new NullPointerException("ciphertext is null");
                }
                int length3 = bArr.length;
                if (length3 < bArr3.length + 28) {
                    throw new GeneralSecurityException("ciphertext too short");
                }
                if (!NE.c(bArr3, bArr)) {
                    throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
                }
                K3.X x7 = ID.f13859a;
                Objects.equals(System.getProperty("java.vendor"), "The Android Project");
                GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(128, bArr, bArr3.length, 12);
                Cipher cipher2 = (Cipher) ID.f13859a.get();
                cipher2.init(2, (SecretKey) obj, gCMParameterSpec);
                if (bArr2 != null && bArr2.length != 0) {
                    cipher2.updateAAD(bArr2);
                }
                int length4 = bArr3.length;
                return cipher2.doFinal(bArr, length4 + 12, (length3 - length4) - 12);
            case 3:
                if (bArr3.length == 0) {
                    return a(bArr, bArr2);
                }
                if (!NE.c(bArr3, bArr)) {
                    throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
                }
                return a(Arrays.copyOfRange(bArr, bArr3.length, bArr.length), bArr2);
            default:
                if (bArr3.length == 0) {
                    return b(bArr, bArr2);
                }
                if (!NE.c(bArr3, bArr)) {
                    throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
                }
                return b(Arrays.copyOfRange(bArr, bArr3.length, bArr.length), bArr2);
        }
    }

    public RD(InterfaceC2127vC interfaceC2127vC, byte[] bArr) {
        this.f16226a = 0;
        this.f16228c = interfaceC2127vC;
        int length = bArr.length;
        if (length != 0 && length != 5) {
            throw new IllegalArgumentException("identifier has an invalid length");
        }
        this.f16227b = bArr;
    }

    public RD(byte[] bArr, NG ng) throws GeneralSecurityException {
        this.f16226a = 2;
        if (Cw.f0(2)) {
            K3.X x7 = ID.f13859a;
            Cw.V(bArr.length);
            this.f16228c = new SecretKeySpec(bArr, "AES");
            this.f16227b = ng.b();
            return;
        }
        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
    }
}
