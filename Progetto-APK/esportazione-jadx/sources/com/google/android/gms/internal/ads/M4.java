package com.google.android.gms.internal.ads;

import android.util.Base64;
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

/* JADX INFO: loaded from: classes.dex */
public final class M4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Cipher f14621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f14622b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f14623c = new Object();

    public static String a(byte[] bArr, byte[] bArr2) throws L4 {
        byte[] bArrDoFinal;
        byte[] iv;
        int length = bArr.length;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f14622b) {
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
            return Base64.encodeToString(bArr3, 2);
        } catch (InvalidKeyException e8) {
            throw new L4(e8);
        } catch (NoSuchAlgorithmException e9) {
            throw new L4(e9);
        } catch (BadPaddingException e10) {
            throw new L4(e10);
        } catch (IllegalBlockSizeException e11) {
            throw new L4(e11);
        } catch (NoSuchPaddingException e12) {
            throw new L4(e12);
        }
    }

    public static byte[] b(byte[] bArr, String str) throws L4 {
        byte[] bArrDoFinal;
        int length = bArr.length;
        try {
            byte[] bArrDecode = Base64.decode(str, 2);
            if (bArrDecode.length == 0 && str.length() > 0) {
                throw new IllegalArgumentException("Unable to decode ".concat(str));
            }
            int length2 = bArrDecode.length;
            if (length2 <= 16) {
                throw new L4();
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length2);
            byteBufferAllocate.put(bArrDecode);
            byteBufferAllocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[length2 - 16];
            byteBufferAllocate.get(bArr2);
            byteBufferAllocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f14622b) {
                c().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                bArrDoFinal = c().doFinal(bArr3);
            }
            return bArrDoFinal;
        } catch (IllegalArgumentException e8) {
            throw new L4(e8);
        } catch (InvalidAlgorithmParameterException e9) {
            throw new L4(e9);
        } catch (InvalidKeyException e10) {
            throw new L4(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new L4(e11);
        } catch (BadPaddingException e12) {
            throw new L4(e12);
        } catch (IllegalBlockSizeException e13) {
            throw new L4(e13);
        } catch (NoSuchPaddingException e14) {
            throw new L4(e14);
        }
    }

    public static final Cipher c() {
        Cipher cipher;
        synchronized (f14623c) {
            try {
                if (f14621a == null) {
                    f14621a = Cipher.getInstance("AES/CBC/PKCS5Padding");
                }
                cipher = f14621a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cipher;
    }
}
