package org.eclipse.paho.client.mqttv3.internal.security;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleBase64Encoder {
    private static final String PWDCHARS_STRING = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    private static final char[] PWDCHARS_ARRAY = PWDCHARS_STRING.toCharArray();

    public static byte[] decode(String str) {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        byte[] bArr = new byte[(length * 3) / 4];
        int i8 = 0;
        int i9 = 0;
        while (true) {
            if (length < 4) {
                break;
            }
            long jFrom64 = from64(bytes, i8, 4);
            length -= 4;
            i8 += 4;
            for (int i10 = 2; i10 >= 0; i10--) {
                bArr[i9 + i10] = (byte) (jFrom64 & 255);
                jFrom64 >>= 8;
            }
            i9 += 3;
        }
        if (length == 3) {
            long jFrom65 = from64(bytes, i8, 3);
            for (int i11 = 1; i11 >= 0; i11--) {
                bArr[i9 + i11] = (byte) (jFrom65 & 255);
                jFrom65 >>= 8;
            }
        }
        if (length == 2) {
            bArr[i9] = (byte) (from64(bytes, i8, 2) & 255);
        }
        return bArr;
    }

    public static String encode(byte[] bArr) {
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer(((length + 2) / 3) * 4);
        int i8 = 0;
        while (length >= 3) {
            stringBuffer.append(to64(((bArr[i8] & 255) << 16) | ((bArr[i8 + 1] & 255) << 8) | (bArr[i8 + 2] & 255), 4));
            i8 += 3;
            length -= 3;
        }
        if (length == 2) {
            stringBuffer.append(to64(((bArr[i8] & 255) << 8) | (bArr[i8 + 1] & 255), 3));
        }
        if (length == 1) {
            stringBuffer.append(to64(bArr[i8] & 255, 2));
        }
        return stringBuffer.toString();
    }

    private static final long from64(byte[] bArr, int i8, int i9) {
        int i10 = 0;
        long j8 = 0;
        while (i9 > 0) {
            i9--;
            int i11 = i8 + 1;
            byte b8 = bArr[i8];
            long j9 = b8 == 47 ? 1L : 0L;
            if (b8 >= 48 && b8 <= 57) {
                j9 = b8 - 46;
            }
            if (b8 >= 65 && b8 <= 90) {
                j9 = b8 - 53;
            }
            if (b8 >= 97 && b8 <= 122) {
                j9 = b8 - 59;
            }
            j8 += j9 << i10;
            i10 += 6;
            i8 = i11;
        }
        return j8;
    }

    private static final String to64(long j8, int i8) {
        StringBuffer stringBuffer = new StringBuffer(i8);
        while (i8 > 0) {
            i8--;
            stringBuffer.append(PWDCHARS_ARRAY[(int) (63 & j8)]);
            j8 >>= 6;
        }
        return stringBuffer.toString();
    }
}
