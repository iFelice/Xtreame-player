package com.google.android.gms.internal.pal;

import A0.C0022w;
import android.os.StrictMode;
import android.util.Base64;
import androidx.leanback.widget.C0484j;
import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECField;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.KeyAgreement;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.y4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2864y4 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final C2767m2 f24077G = new C2767m2("gads:adshield:enable_adshield_instrumentation", Boolean.FALSE);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final J3.d f24078H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final J3.d[] f24079I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final byte[] f24080J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final byte[][] f24081K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final int[] f24082L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final int[] f24083M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final int[] f24084N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final int[] f24085O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static InterfaceC2792p3 f24086P;

    static {
        J3.d dVar = new J3.d(2L, "ADS_ID");
        f24078H = dVar;
        f24079I = new J3.d[]{dVar, new J3.d(1L, "MAKE_REQUEST_WITH_SIGNALS")};
        f24080J = new byte[0];
        f24081K = new byte[][]{new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new byte[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new byte[]{-32, -21, 122, 124, 59, 65, -72, -82, 22, 86, -29, -6, -15, -97, -60, 106, -38, 9, -115, -21, -100, 50, -79, -3, -122, 98, 5, 22, 95, 73, -72, 0}, new byte[]{95, -100, -107, -68, -93, 80, -116, 36, -79, -48, -79, 85, -100, -125, -17, 91, 4, 68, 92, -60, 88, 28, -114, -122, -40, 34, 78, -35, -48, -97, 17, 87}, new byte[]{-20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 127}, new byte[]{-19, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 127}, new byte[]{-18, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 127}};
        f24082L = new int[]{0, 3, 6, 9, 12, 16, 19, 22, 25, 28};
        f24083M = new int[]{0, 2, 3, 5, 6, 0, 1, 3, 4, 6};
        f24084N = new int[]{67108863, 33554431};
        f24085O = new int[]{26, 25};
    }

    public static int A(int i8) {
        if (i8 != 1) {
            return i8 - 2;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static byte[] A0(long[] jArr) {
        int[] iArr;
        int i8;
        int[] iArr2;
        long[] jArrCopyOf = Arrays.copyOf(jArr, 10);
        int i9 = 0;
        while (true) {
            iArr = f24085O;
            if (i9 >= 2) {
                break;
            }
            int i10 = 0;
            while (i10 < 9) {
                long j8 = jArrCopyOf[i10];
                int i11 = iArr[i10 & 1];
                int i12 = -((int) (((j8 >> 31) & j8) >> i11));
                jArrCopyOf[i10] = j8 + ((long) (i12 << i11));
                i10++;
                jArrCopyOf[i10] = jArrCopyOf[i10] - ((long) i12);
            }
            long j9 = jArrCopyOf[9];
            int i13 = -((int) (((j9 >> 31) & j9) >> 25));
            jArrCopyOf[9] = j9 + ((long) (i13 << 25));
            jArrCopyOf[0] = jArrCopyOf[0] - ((long) (i13 * 19));
            i9++;
        }
        long j10 = jArrCopyOf[0];
        int i14 = -((int) (((j10 >> 31) & j10) >> 26));
        jArrCopyOf[0] = j10 + ((long) (i14 << 26));
        jArrCopyOf[1] = jArrCopyOf[1] - ((long) i14);
        int i15 = 0;
        while (true) {
            iArr2 = f24084N;
            if (i15 >= 2) {
                break;
            }
            int i16 = 0;
            while (i16 < 9) {
                long j11 = jArrCopyOf[i16];
                int i17 = i16 & 1;
                int i18 = iArr[i17];
                jArrCopyOf[i16] = ((long) iArr2[i17]) & j11;
                i16++;
                jArrCopyOf[i16] = jArrCopyOf[i16] + ((long) ((int) (j11 >> i18)));
                iArr2 = iArr2;
            }
            i15++;
        }
        long j12 = jArrCopyOf[9];
        jArrCopyOf[9] = 33554431 & j12;
        long j13 = jArrCopyOf[0] + ((long) (((int) (j12 >> 25)) * 19));
        jArrCopyOf[0] = j13;
        int i19 = ~((((int) j13) - 67108845) >> 31);
        for (int i20 = 1; i20 < 10; i20++) {
            int i21 = ~(((int) jArrCopyOf[i20]) ^ iArr2[i20 & 1]);
            int i22 = i21 & (i21 << 16);
            int i23 = i22 & (i22 << 8);
            int i24 = i23 & (i23 << 4);
            int i25 = i24 & (i24 << 2);
            i19 &= (i25 & (i25 + i25)) >> 31;
        }
        jArrCopyOf[0] = jArrCopyOf[0] - ((long) (67108845 & i19));
        long j14 = 33554431 & i19;
        jArrCopyOf[1] = jArrCopyOf[1] - j14;
        for (i8 = 2; i8 < 10; i8 += 2) {
            jArrCopyOf[i8] = jArrCopyOf[i8] - ((long) (67108863 & i19));
            int i26 = i8 + 1;
            jArrCopyOf[i26] = jArrCopyOf[i26] - j14;
        }
        for (int i27 = 0; i27 < 10; i27++) {
            jArrCopyOf[i27] = jArrCopyOf[i27] << f24083M[i27];
        }
        byte[] bArr = new byte[32];
        for (int i28 = 0; i28 < 10; i28++) {
            int i29 = f24082L[i28];
            byte b8 = bArr[i29];
            long j15 = jArrCopyOf[i28];
            bArr[i29] = (byte) (((long) b8) | (j15 & 255));
            int i30 = i29 + 1;
            bArr[i30] = (byte) (((long) bArr[i30]) | ((j15 >> 8) & 255));
            int i31 = i29 + 2;
            bArr[i31] = (byte) (((long) bArr[i31]) | ((j15 >> 16) & 255));
            int i32 = i29 + 3;
            bArr[i32] = (byte) (((j15 >> 24) & 255) | ((long) bArr[i32]));
        }
        return bArr;
    }

    public static /* synthetic */ String B(int i8) {
        if (i8 == 2) {
            return "KEM_UNKNOWN";
        }
        if (i8 == 3) {
            return "DHKEM_X25519_HKDF_SHA256";
        }
        if (i8 == 4) {
            return "DHKEM_P256_HKDF_SHA256";
        }
        if (i8 != 5) {
            return i8 != 6 ? "UNRECOGNIZED" : "DHKEM_P521_HKDF_SHA512";
        }
        return "DHKEM_P384_HKDF_SHA384";
    }

    public static int B0(int i8, byte[] bArr, int i9, C0022w c0022w) {
        int i10 = i8 & 127;
        int i11 = i9 + 1;
        byte b8 = bArr[i9];
        if (b8 >= 0) {
            c0022w.f220b = i10 | (b8 << 7);
            return i11;
        }
        int i12 = i10 | ((b8 & 127) << 7);
        int i13 = i9 + 2;
        byte b9 = bArr[i11];
        if (b9 >= 0) {
            c0022w.f220b = i12 | (b9 << MqttWireMessage.MESSAGE_TYPE_DISCONNECT);
            return i13;
        }
        int i14 = i12 | ((b9 & 127) << 14);
        int i15 = i9 + 3;
        byte b10 = bArr[i13];
        if (b10 >= 0) {
            c0022w.f220b = i14 | (b10 << 21);
            return i15;
        }
        int i16 = i14 | ((b10 & 127) << 21);
        int i17 = i9 + 4;
        byte b11 = bArr[i15];
        if (b11 >= 0) {
            c0022w.f220b = i16 | (b11 << 28);
            return i17;
        }
        int i18 = i16 | ((b11 & 127) << 28);
        while (true) {
            int i19 = i17 + 1;
            if (bArr[i17] >= 0) {
                c0022w.f220b = i18;
                return i19;
            }
            i17 = i19;
        }
    }

    public static int C(int i8) {
        if (i8 == 0) {
            return 2;
        }
        if (i8 == 1) {
            return 3;
        }
        if (i8 == 2) {
            return 4;
        }
        if (i8 == 3) {
            return 5;
        }
        if (i8 != 4) {
            return i8 != 5 ? 0 : 7;
        }
        return 6;
    }

    public static ECParameterSpec C0(int i8) {
        int i9 = i8 - 1;
        if (i9 != 0) {
            return i9 != 1 ? G0("6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151", "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449", "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00", "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650") : G0("39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319", "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643", "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef", "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f");
        }
        return G0("115792089210356248762697446949407573530086143415290314195533631308867097853951", "115792089210356248762697446949407573529996955224135760342422259061068512044369", "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b", "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5");
    }

    public static int D(byte[] bArr, int i8) {
        return ((bArr[i8 + 3] & 255) << 24) | (bArr[i8] & 255) | ((bArr[i8 + 1] & 255) << 8) | ((bArr[i8 + 2] & 255) << 16);
    }

    public static int D0(int i8, byte[] bArr, int i9, int i10, I i11, C0022w c0022w) {
        F f8 = (F) i11;
        int iY0 = y0(bArr, i9, c0022w);
        f8.b(c0022w.f220b);
        while (iY0 < i10) {
            int iY1 = y0(bArr, iY0, c0022w);
            if (i8 != c0022w.f220b) {
                break;
            }
            iY0 = y0(bArr, iY1, c0022w);
            f8.b(c0022w.f220b);
        }
        return iY0;
    }

    public static byte[] E0(EllipticCurve ellipticCurve, int i8, ECPoint eCPoint) throws GeneralSecurityException {
        f0(eCPoint, ellipticCurve);
        int iBitLength = (I(ellipticCurve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
        int i9 = i8 - 1;
        if (i9 == 0) {
            int i10 = iBitLength + iBitLength + 1;
            byte[] bArr = new byte[i10];
            byte[] byteArray = eCPoint.getAffineX().toByteArray();
            byte[] byteArray2 = eCPoint.getAffineY().toByteArray();
            int length = byteArray2.length;
            System.arraycopy(byteArray2, 0, bArr, i10 - length, length);
            int length2 = byteArray.length;
            System.arraycopy(byteArray, 0, bArr, (iBitLength + 1) - length2, length2);
            bArr[0] = 4;
            return bArr;
        }
        if (i9 != 2) {
            int i11 = iBitLength + 1;
            byte[] bArr2 = new byte[i11];
            byte[] byteArray3 = eCPoint.getAffineX().toByteArray();
            int length3 = byteArray3.length;
            System.arraycopy(byteArray3, 0, bArr2, i11 - length3, length3);
            bArr2[0] = true == eCPoint.getAffineY().testBit(0) ? (byte) 3 : (byte) 2;
            return bArr2;
        }
        int i12 = iBitLength + iBitLength;
        byte[] bArr3 = new byte[i12];
        byte[] byteArray4 = eCPoint.getAffineX().toByteArray();
        int length4 = byteArray4.length;
        if (length4 > iBitLength) {
            byteArray4 = Arrays.copyOfRange(byteArray4, length4 - iBitLength, length4);
        }
        byte[] byteArray5 = eCPoint.getAffineY().toByteArray();
        int length5 = byteArray5.length;
        if (length5 > iBitLength) {
            byteArray5 = Arrays.copyOfRange(byteArray5, length5 - iBitLength, length5);
        }
        int length6 = byteArray5.length;
        System.arraycopy(byteArray5, 0, bArr3, i12 - length6, length6);
        int length7 = byteArray4.length;
        System.arraycopy(byteArray4, 0, bArr3, iBitLength - length7, length7);
        return bArr3;
    }

    public static InterfaceC2721g4 F(Y5 y7) {
        if (y7.q() == 3) {
            return new C2805r1(new C2805r1("HmacSha256", 8), 9);
        }
        if (y7.q() == 4) {
            return K.k.i(1);
        }
        if (y7.q() == 5) {
            return K.k.i(2);
        }
        if (y7.q() == 6) {
            return K.k.i(3);
        }
        throw new IllegalArgumentException("Unrecognized HPKE KEM identifier");
    }

    public static int F0(byte[] bArr, int i8, C0022w c0022w) {
        int i9 = i8 + 1;
        long j8 = bArr[i8];
        if (j8 >= 0) {
            c0022w.f219a = j8;
            return i9;
        }
        int i10 = i8 + 2;
        byte b8 = bArr[i9];
        long j9 = (j8 & 127) | (((long) (b8 & 127)) << 7);
        int i11 = 7;
        while (b8 < 0) {
            int i12 = i10 + 1;
            byte b9 = bArr[i10];
            i11 += 7;
            j9 |= ((long) (b9 & 127)) << i11;
            b8 = b9;
            i10 = i12;
        }
        c0022w.f219a = j9;
        return i10;
    }

    public static String G(int i8) throws NoSuchAlgorithmException {
        int i9 = i8 - 2;
        if (i9 == 1) {
            return "HmacSha1";
        }
        if (i9 == 2) {
            return "HmacSha384";
        }
        if (i9 == 3) {
            return "HmacSha256";
        }
        if (i9 == 4) {
            return "HmacSha512";
        }
        if (i9 == 5) {
            return "HmacSha224";
        }
        if (i8 != 1) {
            throw new NoSuchAlgorithmException("hash unsupported for HMAC: ".concat(Integer.toString(i9)));
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static ECParameterSpec G0(String str, String str2, String str3, String str4, String str5) {
        BigInteger bigInteger = new BigInteger(str);
        return new ECParameterSpec(new EllipticCurve(new ECFieldFp(bigInteger), bigInteger.subtract(new BigInteger("3")), new BigInteger(str3, 16)), new ECPoint(new BigInteger(str4, 16), new BigInteger(str5, 16)), new BigInteger(str2), 1);
    }

    public static String H(String str, Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String string;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            length = objArr.length;
            if (i9 >= length) {
                break;
            }
            Object obj = objArr[i9];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e8) {
                    String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(str2), (Throwable) e8);
                    StringBuilder sbP = com.google.protobuf.U2.p("<", str2, " threw ");
                    sbP.append(e8.getClass().getName());
                    sbP.append(">");
                    string = sbP.toString();
                }
            }
            objArr[i9] = string;
            i9++;
        }
        StringBuilder sb = new StringBuilder((length * 16) + str.length());
        int i10 = 0;
        while (true) {
            length2 = objArr.length;
            if (i8 >= length2 || (iIndexOf = str.indexOf("%s", i10)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i10, iIndexOf);
            sb.append(objArr[i8]);
            i10 = iIndexOf + 2;
            i8++;
        }
        sb.append((CharSequence) str, i10, str.length());
        if (i8 < length2) {
            sb.append(" [");
            sb.append(objArr[i8]);
            for (int i11 = i8 + 1; i11 < objArr.length; i11++) {
                sb.append(", ");
                sb.append(objArr[i11]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static long H0(byte[] bArr, int i8) {
        return ((((long) bArr[i8 + 7]) & 255) << 56) | (((long) bArr[i8]) & 255) | ((((long) bArr[i8 + 1]) & 255) << 8) | ((((long) bArr[i8 + 2]) & 255) << 16) | ((((long) bArr[i8 + 3]) & 255) << 24) | ((((long) bArr[i8 + 4]) & 255) << 32) | ((((long) bArr[i8 + 5]) & 255) << 40) | ((((long) bArr[i8 + 6]) & 255) << 48);
    }

    public static BigInteger I(EllipticCurve ellipticCurve) throws GeneralSecurityException {
        ECField field = ellipticCurve.getField();
        if (field instanceof ECFieldFp) {
            return ((ECFieldFp) field).getP();
        }
        throw new GeneralSecurityException("Only curves over prime order fields are supported");
    }

    public static void J(int i8, int i9) {
        if (i8 < 0 || i8 > i9) {
            throw new IndexOutOfBoundsException(b0(i8, i9, "index"));
        }
    }

    public static final void K(StringBuilder sb, int i8, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                K(sb, i8, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                K(sb, i8, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i9 = 0;
        for (int i10 = 0; i10 < i8; i10++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            C2796q c2796q = r.f23990H;
            sb.append(n(new C2796q(((String) obj).getBytes(J.f23560a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof r) {
            sb.append(": \"");
            sb.append(n((r) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof D) {
            sb.append(" {");
            d0((D) obj, sb, i8 + 2);
            sb.append("\n");
            while (i9 < i8) {
                sb.append(' ');
                i9++;
            }
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i11 = i8 + 2;
        K(sb, i11, "key", entry.getKey());
        K(sb, i11, "value", entry.getValue());
        sb.append("\n");
        while (i9 < i8) {
            sb.append(' ');
            i9++;
        }
        sb.append("}");
    }

    public static void L(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr[0] = jArr2[0] * jArr3[0];
        long j8 = jArr2[0];
        long j9 = jArr3[1] * j8;
        long j10 = jArr2[1];
        long j11 = jArr3[0];
        jArr[1] = (j10 * j11) + j9;
        long j12 = jArr2[1];
        long j13 = jArr3[1];
        jArr[2] = (jArr2[2] * j11) + (jArr3[2] * j8) + ((j12 + j12) * j13);
        long j14 = jArr3[2];
        long j15 = jArr2[2];
        jArr[3] = (jArr2[3] * j11) + (jArr3[3] * j8) + (j15 * j13) + (j12 * j14);
        long j16 = jArr3[3];
        long j17 = jArr2[3];
        long j18 = (j17 * j13) + (j12 * j16);
        jArr[4] = (jArr2[4] * j11) + (jArr3[4] * j8) + j18 + j18 + (j15 * j14);
        long j19 = jArr3[4];
        long j20 = (j12 * j19) + (j17 * j14) + (j15 * j16);
        long j21 = jArr2[4];
        jArr[5] = (jArr2[5] * j11) + (jArr3[5] * j8) + (j21 * j13) + j20;
        long j22 = jArr3[5];
        long j23 = jArr2[5];
        long j24 = (j23 * j13) + (j12 * j22) + (j17 * j16);
        jArr[6] = (jArr2[6] * j11) + (jArr3[6] * j8) + (j21 * j14) + (j15 * j19) + j24 + j24;
        long j25 = (j23 * j14) + (j15 * j22) + (j21 * j16) + (j17 * j19);
        long j26 = jArr3[6];
        long j27 = (j12 * j26) + j25;
        long j28 = jArr2[6];
        jArr[7] = (jArr2[7] * j11) + (jArr3[7] * j8) + (j28 * j13) + j27;
        long j29 = jArr3[7];
        long j30 = (j12 * j29) + (j23 * j16) + (j17 * j22);
        long j31 = jArr2[7];
        long j32 = (j31 * j13) + j30;
        jArr[8] = (jArr2[8] * j11) + (jArr3[8] * j8) + (j28 * j14) + (j15 * j26) + j32 + j32 + (j21 * j19);
        long j33 = (j31 * j14) + (j15 * j29) + (j28 * j16) + (j17 * j26) + (j23 * j19) + (j21 * j22);
        long j34 = jArr3[8];
        long j35 = (j12 * j34) + j33;
        long j36 = jArr2[8];
        jArr[9] = (jArr2[9] * j11) + (j8 * jArr3[9]) + (j36 * j13) + j35;
        long j37 = (j31 * j16) + (j17 * j29) + (j23 * j22);
        long j38 = jArr3[9];
        long j39 = jArr2[9];
        long j40 = (j13 * j39) + (j12 * j38) + j37;
        long j41 = j28 * j19;
        jArr[10] = (j36 * j14) + (j15 * j34) + j41 + (j21 * j26) + j40 + j40;
        long j42 = j15 * j38;
        long j43 = j14 * j39;
        jArr[11] = j43 + j42 + (j36 * j16) + (j17 * j34) + (j31 * j19) + (j21 * j29) + (j28 * j22) + (j23 * j26);
        long j44 = j17 * j38;
        long j45 = j16 * j39;
        long j46 = j45 + j44 + (j31 * j22) + (j23 * j29);
        long j47 = j36 * j19;
        jArr[12] = j47 + (j21 * j34) + j46 + j46 + (j28 * j26);
        long j48 = j21 * j38;
        long j49 = j19 * j39;
        jArr[13] = j49 + j48 + (j36 * j22) + (j23 * j34) + (j31 * j26) + (j28 * j29);
        long j50 = j22 * j39;
        long j51 = j50 + (j23 * j38) + (j31 * j29);
        long j52 = j36 * j26;
        jArr[14] = j52 + (j28 * j34) + j51 + j51;
        long j53 = j28 * j38;
        long j54 = j26 * j39;
        jArr[15] = j54 + j53 + (j36 * j29) + (j31 * j34);
        long j55 = (j29 * j39) + (j31 * j38);
        jArr[16] = j55 + j55 + (j36 * j34);
        jArr[17] = (j34 * j39) + (j36 * j38);
        jArr[18] = (j39 + j39) * j38;
    }

    public static final boolean M(byte[] bArr, byte[] bArr2) {
        if (bArr != null && bArr.length == bArr2.length) {
            int i8 = 0;
            for (int i9 = 0; i9 < bArr.length; i9++) {
                i8 |= bArr[i9] ^ bArr2[i9];
            }
            if (i8 == 0) {
                return true;
            }
        }
        return false;
    }

    public static byte[] N() {
        byte[] bArrA = O6.a(32);
        bArrA[0] = (byte) (bArrA[0] | 7);
        int i8 = bArrA[31] & 63;
        bArrA[31] = (byte) i8;
        bArrA[31] = (byte) (i8 | 128);
        return bArrA;
    }

    public static byte[] O(String str, boolean z7) {
        byte[] bArrDecode = Base64.decode(str, true != z7 ? 2 : 11);
        if (bArrDecode.length != 0 || str.length() <= 0) {
            return bArrDecode;
        }
        throw new IllegalArgumentException("Unable to decode ".concat(str));
    }

    public static byte[] P(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("value must be a block.");
        }
        byte[] bArr2 = new byte[16];
        for (int i8 = 0; i8 < 16; i8++) {
            byte b8 = bArr[i8];
            byte b9 = (byte) ((b8 + b8) & 254);
            bArr2[i8] = b9;
            if (i8 < 15) {
                bArr2[i8] = (byte) (((bArr[i8 + 1] >> 7) & 1) | b9);
            }
        }
        bArr2[15] = (byte) (((byte) ((bArr[0] >> 7) & 135)) ^ bArr2[15]);
        return bArr2;
    }

    public static int Q(int i8) throws GeneralSecurityException {
        int i9 = i8 - 2;
        if (i9 == 2) {
            return 1;
        }
        if (i9 == 3) {
            return 2;
        }
        if (i9 == 4) {
            return 3;
        }
        if (i8 != 1) {
            throw new GeneralSecurityException("unknown curve type: ".concat(Integer.toString(i9)));
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static int R(InterfaceC2749k0 interfaceC2749k0, byte[] bArr, int i8, int i9, int i10, C0022w c0022w) {
        C2685c0 c2685c0 = (C2685c0) interfaceC2749k0;
        Object objZze = c2685c0.zze();
        int iW = c2685c0.w(objZze, bArr, i8, i9, i10, c0022w);
        c2685c0.zzf(objZze);
        c0022w.f221c = objZze;
        return iW;
    }

    public static long S(int i8, byte[] bArr) {
        return ((long) (((bArr[i8 + 3] & 255) << 24) | (bArr[i8] & 255) | ((bArr[i8 + 1] & 255) << 8) | ((bArr[i8 + 2] & 255) << 16))) & 4294967295L;
    }

    public static C2805r1 T(Y5 y7) {
        int i8 = 8;
        if (y7.p() == 3) {
            return new C2805r1("HmacSha256", i8);
        }
        if (y7.p() == 4) {
            return new C2805r1("HmacSha384", i8);
        }
        if (y7.p() == 5) {
            return new C2805r1("HmacSha512", i8);
        }
        throw new IllegalArgumentException("Unrecognized HPKE KDF identifier");
    }

    public static final String U(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i8 = 0; i8 < str.length(); i8++) {
            char cCharAt = str.charAt(i8);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }

    public static void V(int i8, int i9, int i10) {
        String strB0;
        if (i8 < 0 || i9 < i8 || i9 > i10) {
            if (i8 < 0 || i8 > i10) {
                strB0 = b0(i8, i10, "start index");
            } else {
                strB0 = (i9 < 0 || i9 > i10) ? b0(i9, i10, "end index") : H("end index (%s) must not be less than start index (%s)", Integer.valueOf(i9), Integer.valueOf(i8));
            }
            throw new IndexOutOfBoundsException(strB0);
        }
    }

    public static byte[] X(byte[] bArr) throws InvalidKeyException {
        if (bArr.length != 32) {
            throw new InvalidKeyException("Private key must have 32 bytes.");
        }
        byte[] bArr2 = new byte[32];
        bArr2[0] = 9;
        return z(bArr, bArr2);
    }

    public static byte[] Y(byte[]... bArr) throws GeneralSecurityException {
        int i8 = 0;
        for (byte[] bArr2 : bArr) {
            int length = bArr2.length;
            if (i8 > com.google.android.gms.common.api.d.API_PRIORITY_OTHER - length) {
                throw new GeneralSecurityException("exceeded size limit");
            }
            i8 += length;
        }
        byte[] bArr3 = new byte[i8];
        int i9 = 0;
        for (byte[] bArr4 : bArr) {
            int length2 = bArr4.length;
            System.arraycopy(bArr4, 0, bArr3, i9, length2);
            i9 += length2;
        }
        return bArr3;
    }

    public static int Z(int i8) throws GeneralSecurityException {
        int i9 = i8 - 2;
        if (i9 == 1) {
            return 1;
        }
        if (i9 == 2) {
            return 2;
        }
        if (i9 == 3) {
            return 3;
        }
        if (i8 != 1) {
            throw new GeneralSecurityException("unknown point format: ".concat(Integer.toString(i9)));
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static int a0(InterfaceC2749k0 interfaceC2749k0, byte[] bArr, int i8, int i9, C0022w c0022w) throws L {
        int iB0 = i8 + 1;
        int i10 = bArr[i8];
        if (i10 < 0) {
            iB0 = B0(i10, bArr, iB0, c0022w);
            i10 = c0022w.f220b;
        }
        int i11 = iB0;
        if (i10 < 0 || i10 > i9 - i11) {
            throw L.e();
        }
        Object objZze = interfaceC2749k0.zze();
        int i12 = i10 + i11;
        interfaceC2749k0.a(objZze, bArr, i11, i12, c0022w);
        interfaceC2749k0.zzf(objZze);
        c0022w.f221c = objZze;
        return i12;
    }

    public static int b(int i8) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i8) * (-862048943)), 15)) * 461845907);
    }

    public static String b0(int i8, int i9, String str) {
        if (i8 < 0) {
            return H("%s (%s) must not be negative", str, Integer.valueOf(i8));
        }
        if (i9 >= 0) {
            return H("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i8), Integer.valueOf(i9));
        }
        throw new IllegalArgumentException(p000a.r.f("negative size: ", i9));
    }

    public static int c(byte[] bArr, int i8, C0022w c0022w) throws L {
        int iY0 = y0(bArr, i8, c0022w);
        int i9 = c0022w.f220b;
        if (i9 < 0) {
            throw L.c();
        }
        if (i9 > bArr.length - iY0) {
            throw L.e();
        }
        if (i9 == 0) {
            c0022w.f221c = r.f23990H;
            return iY0;
        }
        c0022w.f221c = r.o(iY0, bArr, i9);
        return iY0 + i9;
    }

    public static void c0(int i8, long j8, byte[] bArr) {
        int i9 = 0;
        while (i9 < 4) {
            bArr[i8 + i9] = (byte) (255 & j8);
            i9++;
            j8 >>= 8;
        }
    }

    public static long d(int i8, long j8) {
        long j9 = i8;
        long j10 = j8 * j9;
        if (j10 / j9 == j8) {
            return j10;
        }
        StringBuilder sb = new StringBuilder(67);
        sb.append("Multiplication overflows a long: ");
        sb.append(j8);
        sb.append(" * ");
        sb.append(i8);
        throw new ArithmeticException(sb.toString());
    }

    public static void d0(AbstractC2740j abstractC2740j, StringBuilder sb, int i8) {
        boolean zEquals;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : abstractC2740j.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String strSubstring = str.startsWith("get") ? str.substring(3) : str;
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List")) {
                String strConcat = String.valueOf(strSubstring.substring(0, 1).toLowerCase()).concat(String.valueOf(strSubstring.substring(1, strSubstring.length() - 4)));
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    K(sb, i8, U(strConcat), D.e(abstractC2740j, method2, new Object[0]));
                }
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map")) {
                String strConcat2 = String.valueOf(strSubstring.substring(0, 1).toLowerCase()).concat(String.valueOf(strSubstring.substring(1, strSubstring.length() - 3)));
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    K(sb, i8, U(strConcat2), D.e(abstractC2740j, method3, new Object[0]));
                }
            }
            if (((Method) map2.get("set".concat(strSubstring))) != null && (!strSubstring.endsWith("Bytes") || !map.containsKey("get".concat(String.valueOf(strSubstring.substring(0, strSubstring.length() - 5)))))) {
                String strConcat3 = String.valueOf(strSubstring.substring(0, 1).toLowerCase()).concat(String.valueOf(strSubstring.substring(1)));
                Method method4 = (Method) map.get("get".concat(strSubstring));
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objE = D.e(abstractC2740j, method4, new Object[0]);
                    if (method5 == null) {
                        if (objE instanceof Boolean) {
                            if (((Boolean) objE).booleanValue()) {
                                K(sb, i8, U(strConcat3), objE);
                            }
                        } else if (objE instanceof Integer) {
                            if (((Integer) objE).intValue() != 0) {
                                K(sb, i8, U(strConcat3), objE);
                            }
                        } else if (objE instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objE).floatValue()) != 0) {
                                K(sb, i8, U(strConcat3), objE);
                            }
                        } else if (!(objE instanceof Double)) {
                            if (objE instanceof String) {
                                zEquals = objE.equals(HttpUrl.FRAGMENT_ENCODE_SET);
                            } else if (objE instanceof r) {
                                zEquals = objE.equals(r.f23990H);
                            } else if (objE instanceof AbstractC2740j) {
                                if (objE != ((D) ((D) ((AbstractC2740j) objE)).l(6))) {
                                    K(sb, i8, U(strConcat3), objE);
                                }
                            } else if (!(objE instanceof Enum) || ((Enum) objE).ordinal() != 0) {
                                K(sb, i8, U(strConcat3), objE);
                            }
                            if (!zEquals) {
                                K(sb, i8, U(strConcat3), objE);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objE).doubleValue()) != 0) {
                            K(sb, i8, U(strConcat3), objE);
                        }
                    } else if (((Boolean) D.e(abstractC2740j, method5, new Object[0])).booleanValue()) {
                        K(sb, i8, U(strConcat3), objE);
                    }
                }
            }
        }
        C2781o0 c2781o0 = ((D) abstractC2740j).zzc;
        if (c2781o0 != null) {
            for (int i9 = 0; i9 < c2781o0.f23970a; i9++) {
                K(sb, i8, String.valueOf(c2781o0.f23971b[i9] >>> 3), c2781o0.f23972c[i9]);
            }
        }
    }

    public static final C2767m2 e(byte[] bArr) throws GeneralSecurityException {
        try {
            C2771m6 c2771m6P = C2771m6.p(bArr, C2851x.a());
            for (C2763l6 c2763l6 : c2771m6P.q()) {
                if (c2763l6.n().n() == 1 || c2763l6.n().n() == 2 || c2763l6.n().n() == 3) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            if (c2771m6P.m() > 0) {
                return new C2767m2(c2771m6P);
            }
            throw new GeneralSecurityException("empty keyset");
        } catch (L unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }

    public static void f0(ECPoint eCPoint, EllipticCurve ellipticCurve) throws GeneralSecurityException {
        BigInteger bigIntegerI = I(ellipticCurve);
        BigInteger affineX = eCPoint.getAffineX();
        BigInteger affineY = eCPoint.getAffineY();
        if (affineX == null || affineY == null) {
            throw new GeneralSecurityException("point is at infinity");
        }
        if (affineX.signum() == -1 || affineX.compareTo(bigIntegerI) >= 0) {
            throw new GeneralSecurityException("x is out of range");
        }
        if (affineY.signum() == -1 || affineY.compareTo(bigIntegerI) >= 0) {
            throw new GeneralSecurityException("y is out of range");
        }
        if (!affineY.multiply(affineY).mod(bigIntegerI).equals(affineX.multiply(affineX).add(ellipticCurve.getA()).multiply(affineX).add(ellipticCurve.getB()).mod(bigIntegerI))) {
            throw new GeneralSecurityException("Point is not on curve");
        }
    }

    public static C2855x3 g(String str) throws GeneralSecurityException {
        Map mapUnmodifiableMap;
        Logger logger = F3.f23522a;
        synchronized (F3.class) {
            mapUnmodifiableMap = Collections.unmodifiableMap(F3.f23528g);
        }
        C2855x3 c2855x3 = (C2855x3) mapUnmodifiableMap.get(str);
        if (c2855x3 != null) {
            return c2855x3;
        }
        throw new GeneralSecurityException("cannot find key template: ".concat(str));
    }

    public static void g0(long[] jArr) {
        jArr[10] = 0;
        int i8 = 0;
        while (i8 < 10) {
            long j8 = jArr[i8];
            long j9 = j8 / 67108864;
            jArr[i8] = j8 - (j9 << 26);
            int i9 = i8 + 1;
            long j10 = jArr[i9] + j9;
            jArr[i9] = j10;
            long j11 = j10 / 33554432;
            jArr[i9] = j10 - (j11 << 25);
            i8 += 2;
            jArr[i8] = jArr[i8] + j11;
        }
        long j12 = jArr[0];
        long j13 = jArr[10];
        long j14 = j12 + (j13 << 4);
        jArr[0] = j14;
        long j15 = j13 + j13 + j14;
        jArr[0] = j15;
        long j16 = j15 + j13;
        jArr[0] = j16;
        jArr[10] = 0;
        long j17 = j16 / 67108864;
        jArr[0] = j16 - (j17 << 26);
        jArr[1] = jArr[1] + j17;
    }

    public static InterfaceC2697d4 h(Y5 y7) {
        if (y7.o() == 3) {
            return new C0484j(16);
        }
        if (y7.o() == 4) {
            return new C0484j(32);
        }
        if (y7.o() == 5) {
            return new C2684c(9, 0);
        }
        throw new IllegalArgumentException("Unrecognized HPKE AEAD identifier");
    }

    public static final byte[] h0(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length == bArr2.length) {
            return m0(0, 0, length, bArr, bArr2);
        }
        throw new IllegalArgumentException("The lengths of x and y should match.");
    }

    public static int i0(InterfaceC2749k0 interfaceC2749k0, int i8, byte[] bArr, int i9, int i10, I i11, C0022w c0022w) throws L {
        int iA0 = a0(interfaceC2749k0, bArr, i9, i10, c0022w);
        i11.add(c0022w.f221c);
        while (iA0 < i10) {
            int iY0 = y0(bArr, iA0, c0022w);
            if (i8 != c0022w.f220b) {
                break;
            }
            iA0 = a0(interfaceC2749k0, bArr, iY0, i10, c0022w);
            i11.add(c0022w.f221c);
        }
        return iA0;
    }

    public static final Q6 j(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i8 = 0; i8 < str.length(); i8++) {
            char cCharAt = str.charAt(i8);
            if (cCharAt < '!' || cCharAt > '~') {
                throw new Y.r("Not a printable ASCII character: " + cCharAt, 11);
            }
            bArr[i8] = (byte) cCharAt;
        }
        return Q6.a(bArr);
    }

    public static void j0(long[] jArr) {
        long j8 = jArr[8];
        long j9 = jArr[18];
        long j10 = j8 + (j9 << 4);
        jArr[8] = j10;
        long j11 = j9 + j9 + j10;
        jArr[8] = j11;
        jArr[8] = j11 + j9;
        long j12 = jArr[7];
        long j13 = jArr[17];
        long j14 = j12 + (j13 << 4);
        jArr[7] = j14;
        long j15 = j13 + j13 + j14;
        jArr[7] = j15;
        jArr[7] = j15 + j13;
        long j16 = jArr[6];
        long j17 = jArr[16];
        long j18 = j16 + (j17 << 4);
        jArr[6] = j18;
        long j19 = j17 + j17 + j18;
        jArr[6] = j19;
        jArr[6] = j19 + j17;
        long j20 = jArr[5];
        long j21 = jArr[15];
        long j22 = j20 + (j21 << 4);
        jArr[5] = j22;
        long j23 = j21 + j21 + j22;
        jArr[5] = j23;
        jArr[5] = j23 + j21;
        long j24 = jArr[4];
        long j25 = jArr[14];
        long j26 = j24 + (j25 << 4);
        jArr[4] = j26;
        long j27 = j25 + j25 + j26;
        jArr[4] = j27;
        jArr[4] = j27 + j25;
        long j28 = jArr[3];
        long j29 = jArr[13];
        long j30 = j28 + (j29 << 4);
        jArr[3] = j30;
        long j31 = j29 + j29 + j30;
        jArr[3] = j31;
        jArr[3] = j31 + j29;
        long j32 = jArr[2];
        long j33 = jArr[12];
        long j34 = j32 + (j33 << 4);
        jArr[2] = j34;
        long j35 = j33 + j33 + j34;
        jArr[2] = j35;
        jArr[2] = j35 + j33;
        long j36 = jArr[1];
        long j37 = jArr[11];
        long j38 = j36 + (j37 << 4);
        jArr[1] = j38;
        long j39 = j37 + j37 + j38;
        jArr[1] = j39;
        jArr[1] = j39 + j37;
        long j40 = jArr[0];
        long j41 = jArr[10];
        long j42 = j40 + (j41 << 4);
        jArr[0] = j42;
        long j43 = j41 + j41 + j42;
        jArr[0] = j43;
        jArr[0] = j43 + j41;
    }

    public static S6 k(C2708f c2708f) {
        boolean z7;
        try {
            try {
                c2708f.O();
                try {
                    return (S6) AbstractC2700e.f23786a.I0(c2708f);
                } catch (EOFException e8) {
                    e = e8;
                    z7 = false;
                    if (z7) {
                        return U6.f23669G;
                    }
                    throw new T6(e);
                }
            } catch (C2724h e9) {
                throw new T6(e9);
            } catch (IOException e10) {
                throw new T6(e10);
            } catch (NumberFormatException e11) {
                throw new T6(e11);
            }
        } catch (EOFException e12) {
            e = e12;
            z7 = true;
        }
    }

    public static boolean k0(byte b8) {
        return b8 > -65;
    }

    public static Object l(C2805r1 c2805r1) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return c2805r1.c();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static /* synthetic */ String m(int i8) {
        switch (i8) {
            case 1:
                return "BEGIN_ARRAY";
            case 2:
                return "END_ARRAY";
            case 3:
                return "BEGIN_OBJECT";
            case 4:
                return "END_OBJECT";
            case 5:
                return "NAME";
            case 6:
                return "STRING";
            case 7:
                return "NUMBER";
            case 8:
                return "BOOLEAN";
            case 9:
                return "NULL";
            default:
                return "END_DOCUMENT";
        }
    }

    public static final byte[] m0(int i8, int i9, int i10, byte[] bArr, byte[] bArr2) {
        if (bArr.length - i10 < i8 || bArr2.length - i10 < i9) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        byte[] bArr3 = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bArr3[i11] = (byte) (bArr[i11 + i8] ^ bArr2[i11 + i9]);
        }
        return bArr3;
    }

    public static String n(r rVar) {
        StringBuilder sb = new StringBuilder(rVar.i());
        for (int i8 = 0; i8 < rVar.i(); i8++) {
            byte b8 = rVar.b(i8);
            if (b8 == 34) {
                sb.append("\\\"");
            } else if (b8 == 39) {
                sb.append("\\'");
            } else if (b8 != 92) {
                switch (b8) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (b8 < 32 || b8 > 126) {
                            sb.append('\\');
                            sb.append((char) (((b8 >>> 6) & 3) + 48));
                            sb.append((char) (((b8 >>> 3) & 7) + 48));
                            sb.append((char) ((b8 & 7) + 48));
                        } else {
                            sb.append((char) b8);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static int n0(byte[] bArr, int i8, I i9, C0022w c0022w) throws L {
        F f8 = (F) i9;
        int iY0 = y0(bArr, i8, c0022w);
        int i10 = c0022w.f220b + iY0;
        while (iY0 < i10) {
            iY0 = y0(bArr, iY0, c0022w);
            f8.b(c0022w.f220b);
        }
        if (iY0 == i10) {
            return iY0;
        }
        throw L.e();
    }

    public static String o(byte[] bArr) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b8 : bArr) {
            sb.append("0123456789abcdef".charAt((b8 & 255) >> 4));
            sb.append("0123456789abcdef".charAt(b8 & 15));
        }
        return sb.toString();
    }

    public static void o0(ECPrivateKey eCPrivateKey, ECPublicKey eCPublicKey) throws GeneralSecurityException {
        try {
            ECParameterSpec params = eCPublicKey.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            if (params.getCurve().equals(params2.getCurve()) && params.getGenerator().equals(params2.getGenerator()) && params.getOrder().equals(params2.getOrder()) && params.getCofactor() == params2.getCofactor()) {
            } else {
                throw new GeneralSecurityException("invalid public key spec");
            }
        } catch (IllegalArgumentException e8) {
            e = e8;
            throw new GeneralSecurityException(e);
        } catch (NullPointerException e9) {
            e = e9;
            throw new GeneralSecurityException(e);
        }
    }

    public static String p(byte[] bArr, boolean z7) {
        return Base64.encodeToString(bArr, true != z7 ? 2 : 11);
    }

    public static void q(int i8, int i9) {
        String strH;
        if (i8 < 0 || i8 >= i9) {
            if (i8 < 0) {
                strH = H("%s (%s) must not be negative", "index", Integer.valueOf(i8));
            } else {
                if (i9 < 0) {
                    throw new IllegalArgumentException(p000a.r.f("negative size: ", i9));
                }
                strH = H("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i8), Integer.valueOf(i9));
            }
            throw new IndexOutOfBoundsException(strH);
        }
    }

    public static int q0(byte[] bArr, int i8, C0022w c0022w) throws L {
        int iY0 = y0(bArr, i8, c0022w);
        int i9 = c0022w.f220b;
        if (i9 < 0) {
            throw L.c();
        }
        if (i9 == 0) {
            c0022w.f221c = HttpUrl.FRAGMENT_ENCODE_SET;
            return iY0;
        }
        c0022w.f221c = new String(bArr, iY0, i9, J.f23560a);
        return iY0 + i9;
    }

    public static void r(A1 a8) throws GeneralSecurityException {
        Method methodC;
        if (f24086P != null) {
            return;
        }
        String str = (String) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23938o);
        if (str == null || str.length() == 0) {
            str = (a8 == null || (methodC = a8.c("hwvIMOeohSBrCWT4pVkQok22g/l0cZbbqOTmNbjObWwcwhLlaFMNibQmd2cIB1Vb", "24f7+wNdQe8HQwz0gPH2QIzxUp8iQNA20yBU7Dg74Sc=")) == null) ? null : (String) methodC.invoke(null, new Object[0]);
            if (str == null) {
                return;
            }
        }
        try {
            C2767m2 c2767m2E = e(O(str, true));
            for (C2731h6 c2731h6 : Z3.f23718a.n()) {
                if (c2731h6.o().isEmpty()) {
                    throw new GeneralSecurityException("Missing type_url.");
                }
                if (c2731h6.n().isEmpty()) {
                    throw new GeneralSecurityException("Missing primitive_name.");
                }
                if (c2731h6.m().isEmpty()) {
                    throw new GeneralSecurityException("Missing catalogue_name.");
                }
                if (!c2731h6.m().equals("TinkAead") && !c2731h6.m().equals("TinkMac") && !c2731h6.m().equals("TinkHybridDecrypt") && !c2731h6.m().equals("TinkHybridEncrypt") && !c2731h6.m().equals("TinkPublicKeySign") && !c2731h6.m().equals("TinkPublicKeyVerify") && !c2731h6.m().equals("TinkStreamingAead") && !c2731h6.m().equals("TinkDeterministicAead")) {
                    F3.a(c2731h6.m());
                    throw null;
                }
            }
            F3.f(new C2689c4());
            f24086P = (InterfaceC2792p3) c2767m2E.d();
        } catch (IllegalArgumentException | GeneralSecurityException unused) {
        }
    }

    public static void r0(long[] jArr, long[] jArr2) {
        long j8 = jArr2[0];
        long j9 = j8 * j8;
        long j10 = j8 + j8;
        long j11 = jArr2[1];
        long j12 = j10 * j11;
        long j13 = jArr2[2];
        long j14 = (j8 * j13) + (j11 * j11);
        long j15 = jArr2[3];
        long j16 = (j8 * j15) + (j11 * j13);
        long j17 = jArr2[4];
        long j18 = (j10 * j17) + (j11 * 4 * j15) + (j13 * j13);
        long j19 = jArr2[5];
        long j20 = (j8 * j19) + (j11 * j17) + (j13 * j15);
        long j21 = jArr2[6];
        long j22 = ((j11 + j11) * j19) + (j8 * j21) + (j13 * j17) + (j15 * j15);
        long j23 = jArr2[7];
        long j24 = (j8 * j23) + (j11 * j21) + (j13 * j19) + (j15 * j17);
        long j25 = jArr2[8];
        long j26 = (j15 * j19) + (j11 * j23);
        long j27 = j26 + j26 + (j8 * j25) + (j13 * j21);
        long j28 = j27 + j27 + (j17 * j17);
        long j29 = jArr2[9];
        long j30 = (j8 * j29) + (j11 * j25) + (j13 * j23) + (j15 * j21) + (j17 * j19);
        long j31 = (j11 * j29) + (j15 * j23);
        long j32 = j31 + j31 + (j13 * j25) + (j17 * j21) + (j19 * j19);
        long j33 = (j13 * j29) + (j15 * j25) + (j17 * j23) + (j19 * j21);
        long j34 = (j15 * j29) + (j19 * j23);
        long j35 = j34 + j34 + (j17 * j25);
        long j36 = j35 + j35 + (j21 * j21);
        long j37 = (j17 * j29) + (j19 * j25) + (j21 * j23);
        long j38 = ((j19 + j19) * j29) + (j21 * j25) + (j23 * j23);
        long j39 = (j21 * j29) + (j23 * j25);
        long[] jArr3 = {j9, j12, j14 + j14, j16 + j16, j18, j20 + j20, j22 + j22, j24 + j24, j28, j30 + j30, j32 + j32, j33 + j33, j36, j37 + j37, j38 + j38, j39 + j39, (j23 * 4 * j29) + (j25 * j25), (j25 + j25) * j29, (j29 + j29) * j29};
        j0(jArr3);
        g0(jArr3);
        System.arraycopy(jArr3, 0, jArr, 0, 10);
    }

    public static void s(G5 g8) throws GeneralSecurityException {
        C0(Q(g8.p().q()));
        G(g8.p().r());
        if (g8.s() == 2) {
            throw new GeneralSecurityException("unknown EC point format");
        }
        C2723g6 c2723g6O = g8.m().o();
        Logger logger = F3.f23522a;
        synchronized (F3.class) {
            C2767m2 c2767m2Zzb = ((C2839v3) F3.f23523b.get()).d(c2723g6O.p()).zzb();
            if (!((Boolean) F3.f23525d.get(c2723g6O.p())).booleanValue()) {
                throw new GeneralSecurityException("newKey-operation not permitted for key type ".concat(String.valueOf(c2723g6O.p())));
            }
            c2767m2Zzb.a(c2723g6O.o());
        }
    }

    public static byte[] s0(ECPrivateKey eCPrivateKey, ECPublicKey eCPublicKey) throws GeneralSecurityException {
        o0(eCPrivateKey, eCPublicKey);
        ECPoint w7 = eCPublicKey.getW();
        f0(w7, eCPrivateKey.getParams().getCurve());
        PublicKey publicKeyGeneratePublic = ((KeyFactory) J6.f23573i.a("EC")).generatePublic(new ECPublicKeySpec(w7, eCPrivateKey.getParams()));
        KeyAgreement keyAgreement = (KeyAgreement) J6.f23571g.a("ECDH");
        keyAgreement.init(eCPrivateKey);
        try {
            keyAgreement.doPhase(publicKeyGeneratePublic, true);
            byte[] bArrGenerateSecret = keyAgreement.generateSecret();
            EllipticCurve curve = eCPrivateKey.getParams().getCurve();
            BigInteger bigInteger = new BigInteger(1, bArrGenerateSecret);
            if (bigInteger.signum() == -1 || bigInteger.compareTo(I(curve)) >= 0) {
                throw new GeneralSecurityException("shared secret is out of range");
            }
            BigInteger bigIntegerI = I(curve);
            BigInteger bigIntegerMod = bigInteger.multiply(bigInteger).add(curve.getA()).multiply(bigInteger).add(curve.getB()).mod(bigIntegerI);
            if (bigIntegerI.signum() != 1) {
                throw new InvalidAlgorithmParameterException("p must be positive");
            }
            BigInteger bigIntegerMod2 = bigIntegerMod.mod(bigIntegerI);
            BigInteger bigIntegerAdd = BigInteger.ZERO;
            if (!bigIntegerMod2.equals(bigIntegerAdd)) {
                if (bigIntegerI.testBit(0) && bigIntegerI.testBit(1)) {
                    bigIntegerAdd = bigIntegerMod2.modPow(bigIntegerI.add(BigInteger.ONE).shiftRight(2), bigIntegerI);
                } else if (!bigIntegerI.testBit(0) || bigIntegerI.testBit(1)) {
                    bigIntegerAdd = null;
                } else {
                    bigIntegerAdd = BigInteger.ONE;
                    BigInteger bigIntegerShiftRight = bigIntegerI.subtract(bigIntegerAdd).shiftRight(1);
                    int i8 = 0;
                    while (true) {
                        BigInteger bigIntegerMod3 = bigIntegerAdd.multiply(bigIntegerAdd).subtract(bigIntegerMod2).mod(bigIntegerI);
                        if (!bigIntegerMod3.equals(BigInteger.ZERO)) {
                            BigInteger bigIntegerModPow = bigIntegerMod3.modPow(bigIntegerShiftRight, bigIntegerI);
                            BigInteger bigIntegerMod4 = BigInteger.ONE;
                            if (bigIntegerModPow.add(bigIntegerMod4).equals(bigIntegerI)) {
                                BigInteger bigIntegerShiftRight2 = bigIntegerI.add(bigIntegerMod4).shiftRight(1);
                                BigInteger bigIntegerMod5 = bigIntegerAdd;
                                for (int iBitLength = bigIntegerShiftRight2.bitLength() - 2; iBitLength >= 0; iBitLength--) {
                                    BigInteger bigIntegerMultiply = bigIntegerMod5.multiply(bigIntegerMod4);
                                    bigIntegerMod5 = bigIntegerMod5.multiply(bigIntegerMod5).add(bigIntegerMod4.multiply(bigIntegerMod4).mod(bigIntegerI).multiply(bigIntegerMod3)).mod(bigIntegerI);
                                    bigIntegerMod4 = bigIntegerMultiply.add(bigIntegerMultiply).mod(bigIntegerI);
                                    if (bigIntegerShiftRight2.testBit(iBitLength)) {
                                        BigInteger bigIntegerMod6 = bigIntegerMod5.multiply(bigIntegerAdd).add(bigIntegerMod4.multiply(bigIntegerMod3)).mod(bigIntegerI);
                                        bigIntegerMod4 = bigIntegerAdd.multiply(bigIntegerMod4).add(bigIntegerMod5).mod(bigIntegerI);
                                        bigIntegerMod5 = bigIntegerMod6;
                                    }
                                }
                                bigIntegerAdd = bigIntegerMod5;
                            } else {
                                if (!bigIntegerModPow.equals(bigIntegerMod4)) {
                                    throw new InvalidAlgorithmParameterException("p is not prime");
                                }
                                bigIntegerAdd = bigIntegerAdd.add(bigIntegerMod4);
                                i8++;
                                if (i8 == 128 && !bigIntegerI.isProbablePrime(80)) {
                                    throw new InvalidAlgorithmParameterException("p is not prime");
                                }
                            }
                        }
                    }
                }
                if (bigIntegerAdd != null && bigIntegerAdd.multiply(bigIntegerAdd).mod(bigIntegerI).compareTo(bigIntegerMod2) != 0) {
                    throw new GeneralSecurityException("Could not find a modular square root");
                }
            }
            if (!bigIntegerAdd.testBit(0)) {
                bigIntegerI.subtract(bigIntegerAdd).mod(bigIntegerI);
            }
            return bArrGenerateSecret;
        } catch (IllegalStateException e8) {
            throw new GeneralSecurityException(e8);
        }
    }

    public static void t(Object obj, Object obj2) {
        if (obj == null) {
            Objects.toString(obj2);
            throw new NullPointerException("null key in entry: null=".concat(String.valueOf(obj2)));
        }
        if (obj2 != null) {
            return;
        }
        throw new NullPointerException("null value in entry: " + obj + "=null");
    }

    public static int t0(byte[] bArr, int i8, C0022w c0022w) throws L {
        int iY0 = y0(bArr, i8, c0022w);
        int i9 = c0022w.f220b;
        if (i9 < 0) {
            throw L.c();
        }
        if (i9 == 0) {
            c0022w.f221c = HttpUrl.FRAGMENT_ENCODE_SET;
            return iY0;
        }
        c0022w.f221c = AbstractC2852x0.d(bArr, iY0, i9);
        return iY0 + i9;
    }

    public static final void u(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i8) {
        if (i8 < 0 || byteBuffer2.remaining() < i8 || byteBuffer3.remaining() < i8 || byteBuffer.remaining() < i8) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        for (int i9 = 0; i9 < i8; i9++) {
            byteBuffer.put((byte) (byteBuffer2.get() ^ byteBuffer3.get()));
        }
    }

    public static ECPrivateKey u0(int i8, byte[] bArr) {
        return (ECPrivateKey) ((KeyFactory) J6.f23573i.a("EC")).generatePrivate(new ECPrivateKeySpec(new BigInteger(1, bArr), C0(i8)));
    }

    public static void v(p096m2.i iVar) {
        C2847w3 c2847w3;
        ArrayList arrayList = new ArrayList();
        M4 m7 = M4.f23604b;
        Iterator it = ((ConcurrentMap) iVar.f27224H).values().iterator();
        while (it.hasNext()) {
            for (A3 a8 : (List) it.next()) {
                int i8 = a8.f23449e - 2;
                if (i8 == 1) {
                    c2847w3 = C2847w3.f24051b;
                } else if (i8 == 2) {
                    c2847w3 = C2847w3.f24052c;
                } else {
                    if (i8 != 3) {
                        throw new IllegalStateException("Unknown key status");
                    }
                    c2847w3 = C2847w3.f24053d;
                }
                arrayList.add(new N4(c2847w3, a8.f23447c, a8.f23448d));
            }
        }
        A3 a9 = (A3) iVar.f27225I;
        Integer numValueOf = a9 != null ? Integer.valueOf(a9.f23447c) : null;
        if (numValueOf != null) {
            try {
                int iIntValue = numValueOf.intValue();
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    int i10 = i9 + 1;
                    if (((N4) arrayList.get(i9)).f23610b != iIntValue) {
                        i9 = i10;
                    }
                }
                throw new GeneralSecurityException("primary key ID is not present in entries");
            } catch (GeneralSecurityException e8) {
                throw new IllegalStateException(e8);
            }
        }
        Collections.unmodifiableList(arrayList);
    }

    public static void v0(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i8 = 0; i8 < 10; i8++) {
            jArr[i8] = jArr2[i8] - jArr3[i8];
        }
    }

    public static void w(long[] jArr, long[] jArr2, int i8) {
        int i9 = -i8;
        for (int i10 = 0; i10 < 10; i10++) {
            int i11 = (int) jArr[i10];
            int i12 = (((int) jArr2[i10]) ^ i11) & i9;
            jArr[i10] = i11 ^ i12;
            jArr2[i10] = i12 ^ ((int) jArr2[i10]);
        }
    }

    public static int w0(int i8, byte[] bArr, int i9, int i10, C2781o0 c2781o0, C0022w c0022w) throws L {
        if ((i8 >>> 3) == 0) {
            throw new L("Protocol message contained an invalid tag (zero).");
        }
        int i11 = i8 & 7;
        if (i11 == 0) {
            int iF0 = F0(bArr, i9, c0022w);
            c2781o0.c(i8, Long.valueOf(c0022w.f219a));
            return iF0;
        }
        if (i11 == 1) {
            c2781o0.c(i8, Long.valueOf(H0(bArr, i9)));
            return i9 + 8;
        }
        if (i11 == 2) {
            int iY0 = y0(bArr, i9, c0022w);
            int i12 = c0022w.f220b;
            if (i12 < 0) {
                throw L.c();
            }
            if (i12 > bArr.length - iY0) {
                throw L.e();
            }
            if (i12 == 0) {
                c2781o0.c(i8, r.f23990H);
            } else {
                c2781o0.c(i8, r.o(iY0, bArr, i12));
            }
            return iY0 + i12;
        }
        if (i11 != 3) {
            if (i11 != 5) {
                throw new L("Protocol message contained an invalid tag (zero).");
            }
            c2781o0.c(i8, Integer.valueOf(D(bArr, i9)));
            return i9 + 4;
        }
        int i13 = (i8 & (-8)) | 4;
        C2781o0 c2781o0B = C2781o0.b();
        int i14 = 0;
        while (i9 < i10) {
            int iY1 = y0(bArr, i9, c0022w);
            int i15 = c0022w.f220b;
            if (i15 == i13) {
                i14 = i15;
                i9 = iY1;
                break;
            }
            i14 = i15;
            i9 = w0(i15, bArr, iY1, i10, c2781o0B, c0022w);
        }
        if (i9 > i10 || i14 != i13) {
            throw L.d();
        }
        c2781o0.c(i8, c2781o0B);
        return i9;
    }

    public static void x(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[19];
        L(jArr4, jArr2, jArr3);
        j0(jArr4);
        g0(jArr4);
        System.arraycopy(jArr4, 0, jArr, 0, 10);
    }

    public static void x0(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i8 = 0; i8 < 10; i8++) {
            jArr[i8] = jArr2[i8] + jArr3[i8];
        }
    }

    public static boolean y(int i8) {
        Boolean bool;
        if (i8 - 1 == 0) {
            return !U3.a();
        }
        if (U3.a()) {
            try {
                bool = (Boolean) Class.forName("org.conscrypt.Conscrypt").getMethod("isBoringSslFIPSBuild", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
                U3.f23667a.logp(Level.INFO, "com.google.crypto.tink.config.internal.TinkFipsUtil", "checkConscryptIsAvailableAndUsesFipsBoringSsl", "Conscrypt is not available or does not support checking for FIPS build.");
                bool = Boolean.FALSE;
            }
            if (!bool.booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static int y0(byte[] bArr, int i8, C0022w c0022w) {
        int i9 = i8 + 1;
        byte b8 = bArr[i8];
        if (b8 < 0) {
            return B0(b8, bArr, i9, c0022w);
        }
        c0022w.f220b = b8;
        return i9;
    }

    public static byte[] z(byte[] bArr, byte[] bArr2) throws InvalidKeyException {
        if (bArr.length != 32) {
            throw new InvalidKeyException("Private key must have 32 bytes.");
        }
        long[] jArr = new long[11];
        byte[] bArrCopyOf = Arrays.copyOf(bArr, 32);
        bArrCopyOf[0] = (byte) (bArrCopyOf[0] & 248);
        int i8 = bArrCopyOf[31] & 127;
        bArrCopyOf[31] = (byte) i8;
        bArrCopyOf[31] = (byte) (i8 | 64);
        if (bArr2.length != 32) {
            throw new InvalidKeyException("Public key length is not 32-byte");
        }
        byte[] bArrCopyOf2 = Arrays.copyOf(bArr2, 32);
        bArrCopyOf2[31] = (byte) (bArrCopyOf2[31] & 127);
        for (int i9 = 0; i9 < 7; i9++) {
            byte[][] bArr3 = f24081K;
            if (M(bArr3[i9], bArrCopyOf2)) {
                throw new InvalidKeyException("Banned public key: ".concat(o(bArr3[i9])));
            }
        }
        int i10 = 10;
        long[] jArr2 = new long[10];
        for (int i11 = 0; i11 < 10; i11++) {
            int i12 = f24082L[i11];
            jArr2[i11] = (((((long) (bArrCopyOf2[i12 + 3] & 255)) << 24) | ((((long) (bArrCopyOf2[i12] & 255)) | (((long) (bArrCopyOf2[i12 + 1] & 255)) << 8)) | (((long) (bArrCopyOf2[i12 + 2] & 255)) << 16))) >> f24083M[i11]) & ((long) f24084N[i11 & 1]);
        }
        long[] jArr3 = new long[19];
        long[] jArr4 = new long[19];
        jArr4[0] = 1;
        long[] jArr5 = new long[19];
        jArr5[0] = 1;
        long[] jArr6 = new long[19];
        long[] jArr7 = new long[19];
        long[] jArr8 = new long[19];
        jArr8[0] = 1;
        long[] jArr9 = new long[19];
        long[] jArr10 = new long[19];
        jArr10[0] = 1;
        System.arraycopy(jArr2, 0, jArr3, 0, 10);
        int i13 = 0;
        for (int i14 = 32; i13 < i14; i14 = 32) {
            int i15 = bArrCopyOf[31 - i13] & 255;
            int i16 = 8;
            int i17 = 0;
            while (i17 < i16) {
                int i18 = (i15 >> (7 - i17)) & 1;
                w(jArr5, jArr3, i18);
                w(jArr6, jArr4, i18);
                byte[] bArr4 = bArrCopyOf;
                long[] jArrCopyOf = Arrays.copyOf(jArr5, i10);
                int i19 = i15;
                long[] jArr11 = new long[19];
                long[] jArr12 = jArr;
                long[] jArr13 = new long[19];
                int i20 = i13;
                long[] jArr14 = new long[19];
                int i21 = i17;
                long[] jArr15 = new long[19];
                long[] jArr16 = new long[19];
                long[] jArr17 = jArr10;
                long[] jArr18 = new long[19];
                long[] jArr19 = new long[19];
                x0(jArr5, jArr5, jArr6);
                v0(jArr6, jArrCopyOf, jArr6);
                long[] jArrCopyOf2 = Arrays.copyOf(jArr3, 10);
                x0(jArr3, jArr3, jArr4);
                v0(jArr4, jArrCopyOf2, jArr4);
                L(jArr15, jArr3, jArr6);
                L(jArr16, jArr5, jArr4);
                j0(jArr15);
                g0(jArr15);
                j0(jArr16);
                g0(jArr16);
                long[] jArr20 = jArr3;
                System.arraycopy(jArr15, 0, jArrCopyOf2, 0, 10);
                x0(jArr15, jArr15, jArr16);
                v0(jArr16, jArrCopyOf2, jArr16);
                r0(jArr19, jArr15);
                r0(jArr18, jArr16);
                L(jArr16, jArr18, jArr2);
                j0(jArr16);
                g0(jArr16);
                System.arraycopy(jArr19, 0, jArr7, 0, 10);
                System.arraycopy(jArr16, 0, jArr8, 0, 10);
                r0(jArr13, jArr5);
                r0(jArr14, jArr6);
                L(jArr9, jArr13, jArr14);
                j0(jArr9);
                g0(jArr9);
                v0(jArr14, jArr13, jArr14);
                Arrays.fill(jArr11, 10, 18, 0L);
                int i22 = 0;
                for (int i23 = 10; i22 < i23; i23 = 10) {
                    jArr11[i22] = jArr14[i22] * 121665;
                    i22++;
                }
                g0(jArr11);
                x0(jArr11, jArr11, jArr13);
                L(jArr17, jArr14, jArr11);
                j0(jArr17);
                g0(jArr17);
                w(jArr9, jArr7, i18);
                w(jArr17, jArr8, i18);
                i17 = i21 + 1;
                jArr3 = jArr7;
                i15 = i19;
                bArrCopyOf = bArr4;
                jArr = jArr12;
                i13 = i20;
                jArr7 = jArr20;
                i16 = 8;
                i10 = 10;
                long[] jArr21 = jArr6;
                jArr6 = jArr17;
                jArr10 = jArr21;
                long[] jArr22 = jArr5;
                jArr5 = jArr9;
                jArr9 = jArr22;
                long[] jArr23 = jArr4;
                jArr4 = jArr8;
                jArr8 = jArr23;
            }
            i13++;
            i10 = 10;
        }
        long[] jArr24 = jArr;
        long[] jArr25 = new long[10];
        long[] jArr26 = new long[10];
        long[] jArr27 = new long[10];
        long[] jArr28 = new long[10];
        long[] jArr29 = new long[10];
        long[] jArr30 = new long[10];
        long[] jArr31 = new long[10];
        long[] jArr32 = new long[10];
        long[] jArr33 = new long[10];
        long[] jArr34 = new long[10];
        long[] jArr35 = jArr3;
        long[] jArr36 = new long[10];
        r0(jArr26, jArr6);
        r0(jArr36, jArr26);
        r0(jArr34, jArr36);
        x(jArr27, jArr34, jArr6);
        x(jArr28, jArr27, jArr26);
        r0(jArr34, jArr28);
        x(jArr29, jArr34, jArr27);
        r0(jArr34, jArr29);
        r0(jArr36, jArr34);
        r0(jArr34, jArr36);
        r0(jArr36, jArr34);
        r0(jArr34, jArr36);
        x(jArr30, jArr34, jArr29);
        r0(jArr34, jArr30);
        r0(jArr36, jArr34);
        int i24 = 2;
        for (int i25 = 10; i24 < i25; i25 = 10) {
            r0(jArr34, jArr36);
            r0(jArr36, jArr34);
            i24 += 2;
        }
        x(jArr31, jArr36, jArr30);
        r0(jArr34, jArr31);
        r0(jArr36, jArr34);
        for (int i26 = 2; i26 < 20; i26 += 2) {
            r0(jArr34, jArr36);
            r0(jArr36, jArr34);
        }
        x(jArr34, jArr36, jArr31);
        r0(jArr36, jArr34);
        r0(jArr34, jArr36);
        int i27 = 2;
        for (int i28 = 10; i27 < i28; i28 = 10) {
            r0(jArr36, jArr34);
            r0(jArr34, jArr36);
            i27 += 2;
        }
        x(jArr32, jArr34, jArr30);
        r0(jArr34, jArr32);
        r0(jArr36, jArr34);
        for (int i29 = 2; i29 < 50; i29 += 2) {
            r0(jArr34, jArr36);
            r0(jArr36, jArr34);
        }
        x(jArr33, jArr36, jArr32);
        r0(jArr36, jArr33);
        r0(jArr34, jArr36);
        for (int i30 = 2; i30 < 100; i30 += 2) {
            r0(jArr36, jArr34);
            r0(jArr34, jArr36);
        }
        x(jArr36, jArr34, jArr33);
        r0(jArr34, jArr36);
        r0(jArr36, jArr34);
        for (int i31 = 2; i31 < 50; i31 += 2) {
            r0(jArr34, jArr36);
            r0(jArr36, jArr34);
        }
        x(jArr34, jArr36, jArr32);
        r0(jArr36, jArr34);
        r0(jArr34, jArr36);
        r0(jArr36, jArr34);
        r0(jArr34, jArr36);
        r0(jArr36, jArr34);
        x(jArr25, jArr36, jArr28);
        x(jArr24, jArr5, jArr25);
        long[] jArr37 = new long[10];
        long[] jArr38 = new long[10];
        long[] jArr39 = new long[11];
        long[] jArr40 = new long[11];
        long[] jArr41 = new long[11];
        x(jArr37, jArr2, jArr24);
        x0(jArr38, jArr2, jArr24);
        long[] jArr42 = new long[10];
        jArr42[0] = 486662;
        x0(jArr40, jArr38, jArr42);
        x(jArr40, jArr40, jArr4);
        x0(jArr40, jArr40, jArr35);
        x(jArr40, jArr40, jArr37);
        x(jArr40, jArr40, jArr35);
        for (int i32 = 0; i32 < 10; i32++) {
            jArr39[i32] = jArr40[i32] * 4;
        }
        g0(jArr39);
        x(jArr40, jArr37, jArr4);
        v0(jArr40, jArr40, jArr4);
        x(jArr41, jArr38, jArr35);
        x0(jArr40, jArr40, jArr41);
        r0(jArr40, jArr40);
        if (M(A0(jArr39), A0(jArr40))) {
            return A0(jArr24);
        }
        throw new IllegalStateException("Arithmetic error in curve multiplication with the public key: ".concat(o(bArr2)));
    }

    public static ECPublicKey z0(ECParameterSpec eCParameterSpec, byte[] bArr) throws GeneralSecurityException {
        EllipticCurve curve = eCParameterSpec.getCurve();
        int iBitLength = (I(curve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
        int length = bArr.length;
        if (length != iBitLength + iBitLength + 1) {
            throw new GeneralSecurityException("invalid point size");
        }
        if (bArr[0] != 4) {
            throw new GeneralSecurityException("invalid point format");
        }
        int i8 = iBitLength + 1;
        ECPoint eCPoint = new ECPoint(new BigInteger(1, Arrays.copyOfRange(bArr, 1, i8)), new BigInteger(1, Arrays.copyOfRange(bArr, i8, length)));
        f0(eCPoint, curve);
        return (ECPublicKey) ((KeyFactory) J6.f23573i.a("EC")).generatePublic(new ECPublicKeySpec(eCPoint, eCParameterSpec));
    }

    public abstract C2736i3 E(AbstractFutureC2744j3 abstractFutureC2744j3);

    public abstract void W(C2736i3 c2736i3, C2736i3 c2736i4);

    public abstract void e0(C2736i3 c2736i3, Thread thread);

    public abstract C2696d3 f(AbstractFutureC2744j3 abstractFutureC2744j3);

    public abstract AbstractC2864y4 i();

    public abstract boolean l0(AbstractFutureC2744j3 abstractFutureC2744j3, Object obj, Object obj2);

    public abstract boolean p0(AbstractFutureC2744j3 abstractFutureC2744j3, C2736i3 c2736i3, C2736i3 c2736i4);
}
