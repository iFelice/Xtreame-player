package com.google.android.gms.internal.pal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.Provider;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2684c implements InterfaceC2697d4, L6 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f23740G;

    public C2684c(int i8) {
        this.f23740G = 3;
    }

    public static boolean c(int i8, byte[] bArr, int i9) {
        while (i8 < i9 && bArr[i8] >= 0) {
            i8++;
        }
        if (i8 < i9) {
            while (i8 < i9) {
                int i10 = i8 + 1;
                int iA = bArr[i8];
                if (iA < 0) {
                    if (iA < -32) {
                        if (i10 >= i9) {
                            if (iA == 0) {
                                break;
                            }
                        } else if (iA >= -62) {
                            i8 += 2;
                            if (bArr[i10] > -65) {
                            }
                        }
                        return false;
                    }
                    if (iA < -16) {
                        if (i10 >= i9 - 1) {
                            iA = AbstractC2852x0.a(bArr, i10, i9);
                            if (iA == 0) {
                                break;
                            }
                        } else {
                            int i11 = i8 + 2;
                            byte b8 = bArr[i10];
                            if (b8 <= -65 && ((iA != -32 || b8 >= -96) && (iA != -19 || b8 < -96))) {
                                i8 += 3;
                                if (bArr[i11] > -65) {
                                }
                            }
                        }
                        return false;
                    }
                    if (i10 >= i9 - 2) {
                        iA = AbstractC2852x0.a(bArr, i10, i9);
                        if (iA == 0) {
                            break;
                        }
                    } else {
                        int i12 = i8 + 2;
                        byte b9 = bArr[i10];
                        if (b9 <= -65) {
                            if ((((b9 + 112) + (iA << 28)) >> 30) == 0) {
                                int i13 = i8 + 3;
                                if (bArr[i12] <= -65) {
                                    i8 += 4;
                                    if (bArr[i13] > -65) {
                                    }
                                }
                            }
                        }
                    }
                    return false;
                }
                i8 = i10;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2697d4
    public final byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws GeneralSecurityException {
        if (bArr.length != 32) {
            throw new InvalidAlgorithmParameterException("Unexpected key length: 32");
        }
        S3 s7 = new S3(bArr, 0);
        int length = bArr3.length;
        if (length > 2147483631) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length + 16);
        s7.m(byteBufferAllocate, bArr2, bArr3, bArr4);
        return byteBufferAllocate.array();
    }

    public final /* bridge */ /* synthetic */ Object b(String str, Provider provider) {
        switch (this.f23740G) {
            case 18:
                return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
            case 19:
                return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
            case 20:
                return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
            case 21:
                return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
            case 22:
                return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
            default:
                return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2697d4
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2697d4
    public final byte[] zzb() {
        return AbstractC2737i4.f23867k;
    }

    public /* synthetic */ C2684c(int i8, int i9) {
        this.f23740G = i8;
    }
}
