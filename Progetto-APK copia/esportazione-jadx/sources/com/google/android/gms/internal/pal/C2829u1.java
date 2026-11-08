package com.google.android.gms.internal.pal;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.u1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2829u1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Cipher f24021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f24022b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f24023c = new Object();

    public static String a(byte[] bArr, byte[] bArr2) throws C2821t1 {
        byte[] bArrDoFinal;
        byte[] iv;
        int length = bArr.length;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f24022b) {
                c().init(1, secretKeySpec, (SecureRandom) null);
                bArrDoFinal = c().doFinal(bArr2);
                iv = c().getIV();
            }
            int length2 = bArrDoFinal.length + iv.length;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length2);
            byteBufferAllocate.put(iv).put(bArrDoFinal);
            byteBufferAllocate.flip();
            byte[] bArr3 = new byte[length2];
            byteBufferAllocate.get(bArr3);
            return AbstractC2864y4.p(bArr3, false);
        } catch (InvalidKeyException e8) {
            throw new C2821t1(e8);
        } catch (NoSuchAlgorithmException e9) {
            throw new C2821t1(e9);
        } catch (BadPaddingException e10) {
            throw new C2821t1(e10);
        } catch (IllegalBlockSizeException e11) {
            throw new C2821t1(e11);
        } catch (NoSuchPaddingException e12) {
            throw new C2821t1(e12);
        }
    }

    public static byte[] b(byte[] bArr, String str) {
        byte[] bArrDoFinal;
        int length = bArr.length;
        try {
            byte[] bArrO = AbstractC2864y4.O(str, false);
            int length2 = bArrO.length;
            if (length2 <= 16) {
                throw new C2821t1();
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length2);
            byteBufferAllocate.put(bArrO);
            byteBufferAllocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[length2 - 16];
            byteBufferAllocate.get(bArr2);
            byteBufferAllocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f24022b) {
                c().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                bArrDoFinal = c().doFinal(bArr3);
            }
            return bArrDoFinal;
        } catch (IllegalArgumentException e8) {
            throw new C2821t1(e8);
        } catch (InvalidAlgorithmParameterException e9) {
            throw new C2821t1(e9);
        } catch (InvalidKeyException e10) {
            throw new C2821t1(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new C2821t1(e11);
        } catch (BadPaddingException e12) {
            throw new C2821t1(e12);
        } catch (IllegalBlockSizeException e13) {
            throw new C2821t1(e13);
        } catch (NoSuchPaddingException e14) {
            throw new C2821t1(e14);
        }
    }

    public static final Cipher c() {
        Cipher cipher;
        synchronized (f24023c) {
            try {
                if (f24021a == null) {
                    f24021a = Cipher.getInstance("AES/CBC/PKCS5Padding");
                }
                cipher = f24021a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cipher;
    }
}
