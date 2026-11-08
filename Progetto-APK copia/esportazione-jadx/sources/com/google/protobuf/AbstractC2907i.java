package com.google.protobuf;

import com.google.android.gms.internal.ads.SG;
import java.nio.ByteBuffer;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: renamed from: com.google.protobuf.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2907i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2926m2 f24453a = new C2926m2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2930n2 f24454b = new C2930n2();

    public static int A(byte[] bArr, int i8, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        C2921l1 c2921l1 = (C2921l1) interfaceC2956u1;
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a + iN;
        while (iN < i9) {
            iN = N(bArr, iN, sg);
            c2921l1.i(AbstractC2961w.c(sg.f16417a));
        }
        if (iN == i9) {
            return iN;
        }
        throw C2966x1.g();
    }

    public static int B(byte[] bArr, int i8, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        F1 f8 = (F1) interfaceC2956u1;
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a + iN;
        while (iN < i9) {
            iN = P(bArr, iN, sg);
            f8.i(AbstractC2961w.d(sg.f16418b));
        }
        if (iN == i9) {
            return iN;
        }
        throw C2966x1.g();
    }

    public static int C(byte[] bArr, int i8, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        C2921l1 c2921l1 = (C2921l1) interfaceC2956u1;
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a + iN;
        while (iN < i9) {
            iN = N(bArr, iN, sg);
            c2921l1.i(sg.f16417a);
        }
        if (iN == i9) {
            return iN;
        }
        throw C2966x1.g();
    }

    public static int D(byte[] bArr, int i8, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        F1 f8 = (F1) interfaceC2956u1;
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a + iN;
        while (iN < i9) {
            iN = P(bArr, iN, sg);
            f8.i(sg.f16418b);
        }
        if (iN == i9) {
            return iN;
        }
        throw C2966x1.g();
    }

    public static int E(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) {
        C2921l1 c2921l1 = (C2921l1) interfaceC2956u1;
        int iN = N(bArr, i9, sg);
        c2921l1.i(AbstractC2961w.c(sg.f16417a));
        while (iN < i10) {
            int iN2 = N(bArr, iN, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iN = N(bArr, iN2, sg);
            c2921l1.i(AbstractC2961w.c(sg.f16417a));
        }
        return iN;
    }

    public static int F(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) {
        F1 f8 = (F1) interfaceC2956u1;
        int iP = P(bArr, i9, sg);
        f8.i(AbstractC2961w.d(sg.f16418b));
        while (iP < i10) {
            int iN = N(bArr, iP, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iP = P(bArr, iN, sg);
            f8.i(AbstractC2961w.d(sg.f16418b));
        }
        return iP;
    }

    public static int G(byte[] bArr, int i8, SG sg) throws C2966x1 {
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a;
        if (i9 < 0) {
            throw C2966x1.e();
        }
        if (i9 == 0) {
            sg.f16419c = HttpUrl.FRAGMENT_ENCODE_SET;
            return iN;
        }
        sg.f16419c = new String(bArr, iN, i9, AbstractC2960v1.f24524a);
        return iN + i9;
    }

    public static int H(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        int iN = N(bArr, i9, sg);
        int i11 = sg.f16417a;
        if (i11 < 0) {
            throw C2966x1.e();
        }
        if (i11 == 0) {
            interfaceC2956u1.add(HttpUrl.FRAGMENT_ENCODE_SET);
        } else {
            interfaceC2956u1.add(new String(bArr, iN, i11, AbstractC2960v1.f24524a));
            iN += i11;
        }
        while (iN < i10) {
            int iN2 = N(bArr, iN, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iN = N(bArr, iN2, sg);
            int i12 = sg.f16417a;
            if (i12 < 0) {
                throw C2966x1.e();
            }
            if (i12 == 0) {
                interfaceC2956u1.add(HttpUrl.FRAGMENT_ENCODE_SET);
            } else {
                interfaceC2956u1.add(new String(bArr, iN, i12, AbstractC2960v1.f24524a));
                iN += i12;
            }
        }
        return iN;
    }

    public static int I(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        int iN = N(bArr, i9, sg);
        int i11 = sg.f16417a;
        if (i11 < 0) {
            throw C2966x1.e();
        }
        if (i11 == 0) {
            interfaceC2956u1.add(HttpUrl.FRAGMENT_ENCODE_SET);
        } else {
            int i12 = iN + i11;
            if (K2.f24269a.b0(bArr, iN, i12) != 0) {
                throw C2966x1.b();
            }
            interfaceC2956u1.add(new String(bArr, iN, i11, AbstractC2960v1.f24524a));
            iN = i12;
        }
        while (iN < i10) {
            int iN2 = N(bArr, iN, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iN = N(bArr, iN2, sg);
            int i13 = sg.f16417a;
            if (i13 < 0) {
                throw C2966x1.e();
            }
            if (i13 == 0) {
                interfaceC2956u1.add(HttpUrl.FRAGMENT_ENCODE_SET);
            } else {
                int i14 = iN + i13;
                if (K2.f24269a.b0(bArr, iN, i14) != 0) {
                    throw C2966x1.b();
                }
                interfaceC2956u1.add(new String(bArr, iN, i13, AbstractC2960v1.f24524a));
                iN = i14;
            }
        }
        return iN;
    }

    public static int J(byte[] bArr, int i8, SG sg) throws C2966x1 {
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a;
        if (i9 < 0) {
            throw C2966x1.e();
        }
        if (i9 == 0) {
            sg.f16419c = HttpUrl.FRAGMENT_ENCODE_SET;
            return iN;
        }
        sg.f16419c = K2.f24269a.Y(iN, bArr, i9);
        return iN + i9;
    }

    public static int K(int i8, byte[] bArr, int i9, int i10, A2 a8, SG sg) throws C2966x1 {
        if ((i8 >>> 3) == 0) {
            throw C2966x1.a();
        }
        int i11 = i8 & 7;
        if (i11 == 0) {
            int iP = P(bArr, i9, sg);
            a8.f(i8, Long.valueOf(sg.f16418b));
            return iP;
        }
        if (i11 == 1) {
            a8.f(i8, Long.valueOf(n(i9, bArr)));
            return i9 + 8;
        }
        if (i11 == 2) {
            int iN = N(bArr, i9, sg);
            int i12 = sg.f16417a;
            if (i12 < 0) {
                throw C2966x1.e();
            }
            if (i12 > bArr.length - iN) {
                throw C2966x1.g();
            }
            if (i12 == 0) {
                a8.f(i8, r.f24491H);
            } else {
                a8.f(i8, r.i(iN, bArr, i12));
            }
            return iN + i12;
        }
        if (i11 != 3) {
            if (i11 != 5) {
                throw C2966x1.a();
            }
            a8.f(i8, Integer.valueOf(l(i9, bArr)));
            return i9 + 4;
        }
        A2 a9 = new A2();
        int i13 = (i8 & (-8)) | 4;
        int i14 = sg.f16420d + 1;
        sg.f16420d = i14;
        if (i14 >= 100) {
            throw new C2966x1("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i15 = 0;
        while (i9 < i10) {
            int iN2 = N(bArr, i9, sg);
            int i16 = sg.f16417a;
            if (i16 == i13) {
                i15 = i16;
                i9 = iN2;
                break;
            }
            i15 = i16;
            i9 = K(i16, bArr, iN2, i10, a9, sg);
        }
        sg.f16420d--;
        if (i9 > i10 || i15 != i13) {
            throw C2966x1.f();
        }
        a8.f(i8, a9);
        return i9;
    }

    public static String L(ByteBuffer byteBuffer, int i8, int i9) throws C2966x1 {
        if ((i8 | i9 | ((byteBuffer.limit() - i8) - i9)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i8), Integer.valueOf(i9)));
        }
        int i10 = i8 + i9;
        char[] cArr = new char[i9];
        int i11 = 0;
        while (i8 < i10) {
            byte b8 = byteBuffer.get(i8);
            if (!b(b8)) {
                break;
            }
            i8++;
            cArr[i11] = (char) b8;
            i11++;
        }
        int i12 = i11;
        while (i8 < i10) {
            int i13 = i8 + 1;
            byte b9 = byteBuffer.get(i8);
            if (b(b9)) {
                int i14 = i12 + 1;
                cArr[i12] = (char) b9;
                while (i13 < i10) {
                    byte b10 = byteBuffer.get(i13);
                    if (!b(b10)) {
                        break;
                    }
                    i13++;
                    cArr[i14] = (char) b10;
                    i14++;
                }
                i12 = i14;
                i8 = i13;
            } else if (b9 < -32) {
                if (i13 >= i10) {
                    throw C2966x1.b();
                }
                i8 += 2;
                c(b9, byteBuffer.get(i13), cArr, i12);
                i12++;
            } else if (b9 < -16) {
                if (i13 >= i10 - 1) {
                    throw C2966x1.b();
                }
                int i15 = i8 + 2;
                i8 += 3;
                d(b9, byteBuffer.get(i13), byteBuffer.get(i15), cArr, i12);
                i12++;
            } else {
                if (i13 >= i10 - 2) {
                    throw C2966x1.b();
                }
                byte b11 = byteBuffer.get(i13);
                int i16 = i8 + 3;
                byte b12 = byteBuffer.get(i8 + 2);
                i8 += 4;
                a(b9, b11, b12, byteBuffer.get(i16), cArr, i12);
                i12 += 2;
            }
        }
        return new String(cArr, 0, i12);
    }

    public static int M(int i8, byte[] bArr, int i9, SG sg) {
        int i10 = i8 & 127;
        int i11 = i9 + 1;
        byte b8 = bArr[i9];
        if (b8 >= 0) {
            sg.f16417a = i10 | (b8 << 7);
            return i11;
        }
        int i12 = i10 | ((b8 & 127) << 7);
        int i13 = i9 + 2;
        byte b9 = bArr[i11];
        if (b9 >= 0) {
            sg.f16417a = i12 | (b9 << MqttWireMessage.MESSAGE_TYPE_DISCONNECT);
            return i13;
        }
        int i14 = i12 | ((b9 & 127) << 14);
        int i15 = i9 + 3;
        byte b10 = bArr[i13];
        if (b10 >= 0) {
            sg.f16417a = i14 | (b10 << 21);
            return i15;
        }
        int i16 = i14 | ((b10 & 127) << 21);
        int i17 = i9 + 4;
        byte b11 = bArr[i15];
        if (b11 >= 0) {
            sg.f16417a = i16 | (b11 << 28);
            return i17;
        }
        int i18 = i16 | ((b11 & 127) << 28);
        while (true) {
            int i19 = i17 + 1;
            if (bArr[i17] >= 0) {
                sg.f16417a = i18;
                return i19;
            }
            i17 = i19;
        }
    }

    public static int N(byte[] bArr, int i8, SG sg) {
        int i9 = i8 + 1;
        byte b8 = bArr[i8];
        if (b8 < 0) {
            return M(b8, bArr, i9, sg);
        }
        sg.f16417a = b8;
        return i9;
    }

    public static int O(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) {
        C2921l1 c2921l1 = (C2921l1) interfaceC2956u1;
        int iN = N(bArr, i9, sg);
        c2921l1.i(sg.f16417a);
        while (iN < i10) {
            int iN2 = N(bArr, iN, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iN = N(bArr, iN2, sg);
            c2921l1.i(sg.f16417a);
        }
        return iN;
    }

    public static int P(byte[] bArr, int i8, SG sg) {
        int i9 = i8 + 1;
        long j8 = bArr[i8];
        if (j8 >= 0) {
            sg.f16418b = j8;
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
        sg.f16418b = j9;
        return i10;
    }

    public static int Q(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) {
        F1 f8 = (F1) interfaceC2956u1;
        int iP = P(bArr, i9, sg);
        f8.i(sg.f16418b);
        while (iP < i10) {
            int iN = N(bArr, iP, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iP = P(bArr, iN, sg);
            f8.i(sg.f16418b);
        }
        return iP;
    }

    public static String R(r rVar) {
        StringBuilder sb = new StringBuilder(rVar.size());
        for (int i8 = 0; i8 < rVar.size(); i8++) {
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

    public static boolean S(byte b8) {
        return b8 > -65;
    }

    public static int T(Object obj, InterfaceC2914j2 interfaceC2914j2, byte[] bArr, int i8, int i9, int i10, SG sg) throws C2966x1 {
        T1 t7 = (T1) interfaceC2914j2;
        int i11 = sg.f16420d + 1;
        sg.f16420d = i11;
        if (i11 >= 100) {
            throw new C2966x1("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int I7 = t7.I(obj, bArr, i8, i9, i10, sg);
        sg.f16420d--;
        sg.f16419c = obj;
        return I7;
    }

    public static int U(Object obj, InterfaceC2914j2 interfaceC2914j2, byte[] bArr, int i8, int i9, SG sg) throws C2966x1 {
        int iM = i8 + 1;
        int i10 = bArr[i8];
        if (i10 < 0) {
            iM = M(i10, bArr, iM, sg);
            i10 = sg.f16417a;
        }
        int i11 = iM;
        if (i10 < 0 || i10 > i9 - i11) {
            throw C2966x1.g();
        }
        int i12 = sg.f16420d + 1;
        sg.f16420d = i12;
        if (i12 >= 100) {
            throw new C2966x1("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i13 = i10 + i11;
        interfaceC2914j2.a(obj, bArr, i11, i13, sg);
        sg.f16420d--;
        sg.f16419c = obj;
        return i13;
    }

    public static Object V(AbstractC2961w abstractC2961w, S2 s7, int i8) {
        switch (s7.ordinal()) {
            case 0:
                return Double.valueOf(abstractC2961w.o());
            case 1:
                return Float.valueOf(abstractC2961w.s());
            case 2:
                return Long.valueOf(abstractC2961w.v());
            case 3:
                return Long.valueOf(abstractC2961w.H());
            case 4:
                return Integer.valueOf(abstractC2961w.u());
            case 5:
                return Long.valueOf(abstractC2961w.r());
            case 6:
                return Integer.valueOf(abstractC2961w.q());
            case 7:
                return Boolean.valueOf(abstractC2961w.m());
            case 8:
                return U2.c(i8, abstractC2961w);
            case 9:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 10:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 11:
                return abstractC2961w.n();
            case 12:
                return Integer.valueOf(abstractC2961w.G());
            case 13:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            case 14:
                return Integer.valueOf(abstractC2961w.z());
            case 15:
                return Long.valueOf(abstractC2961w.A());
            case 16:
                return Integer.valueOf(abstractC2961w.B());
            case 17:
                return Long.valueOf(abstractC2961w.C());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int W(int i8, byte[] bArr, int i9, int i10, SG sg) throws C2966x1 {
        if ((i8 >>> 3) == 0) {
            throw C2966x1.a();
        }
        int i11 = i8 & 7;
        if (i11 == 0) {
            return P(bArr, i9, sg);
        }
        if (i11 == 1) {
            return i9 + 8;
        }
        if (i11 == 2) {
            return N(bArr, i9, sg) + sg.f16417a;
        }
        if (i11 != 3) {
            if (i11 == 5) {
                return i9 + 4;
            }
            throw C2966x1.a();
        }
        int i12 = (i8 & (-8)) | 4;
        int i13 = 0;
        while (i9 < i10) {
            i9 = N(bArr, i9, sg);
            i13 = sg.f16417a;
            if (i13 == i12) {
                break;
            }
            i9 = W(i13, bArr, i9, i10, sg);
        }
        if (i9 > i10 || i13 != i12) {
            throw C2966x1.f();
        }
        return i9;
    }

    public static void a(byte b8, byte b9, byte b10, byte b11, char[] cArr, int i8) throws C2966x1 {
        if (!S(b9)) {
            if ((((b9 + 112) + (b8 << 28)) >> 30) == 0 && !S(b10) && !S(b11)) {
                int i9 = ((b8 & 7) << 18) | ((b9 & 63) << 12) | ((b10 & 63) << 6) | (b11 & 63);
                cArr[i8] = (char) ((i9 >>> 10) + 55232);
                cArr[i8 + 1] = (char) ((i9 & 1023) + 56320);
                return;
            }
        }
        throw C2966x1.b();
    }

    public static boolean b(byte b8) {
        return b8 >= 0;
    }

    public static void c(byte b8, byte b9, char[] cArr, int i8) throws C2966x1 {
        if (b8 < -62 || S(b9)) {
            throw C2966x1.b();
        }
        cArr[i8] = (char) (((b8 & 31) << 6) | (b9 & 63));
    }

    public static void d(byte b8, byte b9, byte b10, char[] cArr, int i8) throws C2966x1 {
        if (S(b9) || ((b8 == -32 && b9 < -96) || ((b8 == -19 && b9 >= -96) || S(b10)))) {
            throw C2966x1.b();
        }
        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
    }

    public static int e(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) {
        C2915k c2915k = (C2915k) interfaceC2956u1;
        int iP = P(bArr, i9, sg);
        c2915k.i(sg.f16418b != 0);
        while (iP < i10) {
            int iN = N(bArr, iP, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iP = P(bArr, iN, sg);
            c2915k.i(sg.f16418b != 0);
        }
        return iP;
    }

    public static int f(byte[] bArr, int i8, SG sg) throws C2966x1 {
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a;
        if (i9 < 0) {
            throw C2966x1.e();
        }
        if (i9 > bArr.length - iN) {
            throw C2966x1.g();
        }
        if (i9 == 0) {
            sg.f16419c = r.f24491H;
            return iN;
        }
        sg.f16419c = r.i(iN, bArr, i9);
        return iN + i9;
    }

    public static int g(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        int iN = N(bArr, i9, sg);
        int i11 = sg.f16417a;
        if (i11 < 0) {
            throw C2966x1.e();
        }
        if (i11 > bArr.length - iN) {
            throw C2966x1.g();
        }
        if (i11 == 0) {
            interfaceC2956u1.add(r.f24491H);
        } else {
            interfaceC2956u1.add(r.i(iN, bArr, i11));
            iN += i11;
        }
        while (iN < i10) {
            int iN2 = N(bArr, iN, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iN = N(bArr, iN2, sg);
            int i12 = sg.f16417a;
            if (i12 < 0) {
                throw C2966x1.e();
            }
            if (i12 > bArr.length - iN) {
                throw C2966x1.g();
            }
            if (i12 == 0) {
                interfaceC2956u1.add(r.f24491H);
            } else {
                interfaceC2956u1.add(r.i(iN, bArr, i12));
                iN += i12;
            }
        }
        return iN;
    }

    public static double h(int i8, byte[] bArr) {
        return Double.longBitsToDouble(n(i8, bArr));
    }

    public static int i(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) {
        D0 d6 = (D0) interfaceC2956u1;
        d6.i(h(i9, bArr));
        int i11 = i9 + 8;
        while (i11 < i10) {
            int iN = N(bArr, i11, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            d6.i(Double.longBitsToDouble(n(iN, bArr)));
            i11 = iN + 8;
        }
        return i11;
    }

    public static int j(int i8, byte[] bArr, int i9, int i10, GeneratedMessageLite$ExtendableMessage generatedMessageLite$ExtendableMessage, C2901g1 c2901g1, B2 b8, SG sg) throws C2966x1 {
        int iP;
        W0 w7 = generatedMessageLite$ExtendableMessage.extensions;
        int i11 = i8 >>> 3;
        C2897f1 c2897f1 = c2901g1.f24438d;
        boolean z7 = c2897f1.f24428J;
        S2 s7 = c2897f1.f24427I;
        if (z7 && c2897f1.f24429K) {
            switch (s7.ordinal()) {
                case 0:
                    D0 d6 = new D0(new double[10], 0, true);
                    int iW = w(bArr, i9, d6, sg);
                    w7.p(c2897f1, d6);
                    return iW;
                case 1:
                    Y0 y7 = new Y0(new float[10], 0, true);
                    int iZ = z(bArr, i9, y7, sg);
                    w7.p(c2897f1, y7);
                    return iZ;
                case 2:
                case 3:
                    F1 f8 = new F1();
                    int iD = D(bArr, i9, f8, sg);
                    w7.p(c2897f1, f8);
                    return iD;
                case 4:
                case 12:
                    C2921l1 c2921l1 = new C2921l1();
                    int iC = C(bArr, i9, c2921l1, sg);
                    w7.p(c2897f1, c2921l1);
                    return iC;
                case 5:
                case 15:
                    F1 f9 = new F1();
                    int iY = y(bArr, i9, f9, sg);
                    w7.p(c2897f1, f9);
                    return iY;
                case 6:
                case 14:
                    C2921l1 c2921l2 = new C2921l1();
                    int iX = x(bArr, i9, c2921l2, sg);
                    w7.p(c2897f1, c2921l2);
                    return iX;
                case 7:
                    C2915k c2915k = new C2915k(new boolean[10], 0, true);
                    int iV = v(bArr, i9, c2915k, sg);
                    w7.p(c2897f1, c2915k);
                    return iV;
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    throw new IllegalStateException("Type cannot be packed: " + c2897f1.f24427I);
                case 13:
                    C2921l1 c2921l3 = new C2921l1();
                    int iC2 = C(bArr, i9, c2921l3, sg);
                    AbstractC2918k2.z(generatedMessageLite$ExtendableMessage, i11, c2921l3, c2897f1.f24425G, null, b8);
                    w7.p(c2897f1, c2921l3);
                    return iC2;
                case 16:
                    C2921l1 c2921l4 = new C2921l1();
                    int iA = A(bArr, i9, c2921l4, sg);
                    w7.p(c2897f1, c2921l4);
                    return iA;
                case 17:
                    F1 f10 = new F1();
                    int iB = B(bArr, i9, f10, sg);
                    w7.p(c2897f1, f10);
                    return iB;
            }
        }
        Object objValueOf = null;
        if (s7 != S2.f24306M) {
            int iOrdinal = s7.ordinal();
            Q1 q7 = c2901g1.f24437c;
            switch (iOrdinal) {
                case 0:
                    objValueOf = Double.valueOf(h(i9, bArr));
                    iP = i9 + 8;
                    break;
                case 1:
                    objValueOf = Float.valueOf(p(i9, bArr));
                    iP = i9 + 4;
                    break;
                case 2:
                case 3:
                    iP = P(bArr, i9, sg);
                    objValueOf = Long.valueOf(sg.f16418b);
                    break;
                case 4:
                case 12:
                    iP = N(bArr, i9, sg);
                    objValueOf = Integer.valueOf(sg.f16417a);
                    break;
                case 5:
                case 15:
                    objValueOf = Long.valueOf(n(i9, bArr));
                    iP = i9 + 8;
                    break;
                case 6:
                case 14:
                    objValueOf = Integer.valueOf(l(i9, bArr));
                    iP = i9 + 4;
                    break;
                case 7:
                    iP = P(bArr, i9, sg);
                    objValueOf = Boolean.valueOf(sg.f16418b != 0);
                    break;
                case 8:
                    iP = G(bArr, i9, sg);
                    objValueOf = sg.f16419c;
                    break;
                case 9:
                    int i12 = (i11 << 3) | 4;
                    InterfaceC2914j2 interfaceC2914j2A = C2902g2.f24439c.a(q7.getClass());
                    if (c2897f1.f24428J) {
                        int iR = r(interfaceC2914j2A, bArr, i9, i10, i12, sg);
                        w7.a(c2897f1, sg.f16419c);
                        return iR;
                    }
                    Object objG = w7.f24386a.get(c2897f1);
                    if (objG == null) {
                        objG = interfaceC2914j2A.i();
                        w7.p(c2897f1, objG);
                    }
                    return T(objG, interfaceC2914j2A, bArr, i9, i10, i12, sg);
                case 10:
                    InterfaceC2914j2 interfaceC2914j2A2 = C2902g2.f24439c.a(q7.getClass());
                    if (c2897f1.f24428J) {
                        int iT = t(interfaceC2914j2A2, bArr, i9, i10, sg);
                        w7.a(c2897f1, sg.f16419c);
                        return iT;
                    }
                    Object objG2 = w7.f24386a.get(c2897f1);
                    if (objG2 == null) {
                        objG2 = interfaceC2914j2A2.i();
                        w7.p(c2897f1, objG2);
                    }
                    return U(objG2, interfaceC2914j2A2, bArr, i9, i10, sg);
                case 11:
                    iP = f(bArr, i9, sg);
                    objValueOf = sg.f16419c;
                    break;
                case 13:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 16:
                    iP = N(bArr, i9, sg);
                    objValueOf = Integer.valueOf(AbstractC2961w.c(sg.f16417a));
                    break;
                case 17:
                    iP = P(bArr, i9, sg);
                    objValueOf = Long.valueOf(AbstractC2961w.d(sg.f16418b));
                    break;
                default:
                    iP = i9;
                    break;
            }
        } else {
            int iN = N(bArr, i9, sg);
            if (c2897f1.f24425G.b(sg.f16417a) == null) {
                AbstractC2918k2.D(generatedMessageLite$ExtendableMessage, i11, sg.f16417a, null, b8);
                return iN;
            }
            objValueOf = Integer.valueOf(sg.f16417a);
            iP = iN;
        }
        if (c2897f1.f24428J) {
            w7.a(c2897f1, objValueOf);
        } else {
            w7.p(c2897f1, objValueOf);
        }
        return iP;
    }

    public static int k(int i8, byte[] bArr, int i9, int i10, Object obj, Q1 q7, B2 b8, SG sg) {
        C2901g1 c2901g1A = ((O0) sg.f16421e).a(i8 >>> 3, q7);
        if (c2901g1A == null) {
            return K(i8, bArr, i9, i10, T1.r(obj), sg);
        }
        GeneratedMessageLite$ExtendableMessage generatedMessageLite$ExtendableMessage = (GeneratedMessageLite$ExtendableMessage) obj;
        generatedMessageLite$ExtendableMessage.ensureExtensionsAreMutable();
        return j(i8, bArr, i9, i10, generatedMessageLite$ExtendableMessage, c2901g1A, b8, sg);
    }

    public static int l(int i8, byte[] bArr) {
        return ((bArr[i8 + 3] & 255) << 24) | (bArr[i8] & 255) | ((bArr[i8 + 1] & 255) << 8) | ((bArr[i8 + 2] & 255) << 16);
    }

    public static int m(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) {
        C2921l1 c2921l1 = (C2921l1) interfaceC2956u1;
        c2921l1.i(l(i9, bArr));
        int i11 = i9 + 4;
        while (i11 < i10) {
            int iN = N(bArr, i11, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            c2921l1.i(l(iN, bArr));
            i11 = iN + 4;
        }
        return i11;
    }

    public static long n(int i8, byte[] bArr) {
        return ((((long) bArr[i8 + 7]) & 255) << 56) | (((long) bArr[i8]) & 255) | ((((long) bArr[i8 + 1]) & 255) << 8) | ((((long) bArr[i8 + 2]) & 255) << 16) | ((((long) bArr[i8 + 3]) & 255) << 24) | ((((long) bArr[i8 + 4]) & 255) << 32) | ((((long) bArr[i8 + 5]) & 255) << 40) | ((((long) bArr[i8 + 6]) & 255) << 48);
    }

    public static int o(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) {
        F1 f8 = (F1) interfaceC2956u1;
        f8.i(n(i9, bArr));
        int i11 = i9 + 8;
        while (i11 < i10) {
            int iN = N(bArr, i11, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            f8.i(n(iN, bArr));
            i11 = iN + 8;
        }
        return i11;
    }

    public static float p(int i8, byte[] bArr) {
        return Float.intBitsToFloat(l(i8, bArr));
    }

    public static int q(int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) {
        Y0 y7 = (Y0) interfaceC2956u1;
        y7.i(p(i9, bArr));
        int i11 = i9 + 4;
        while (i11 < i10) {
            int iN = N(bArr, i11, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            y7.i(Float.intBitsToFloat(l(iN, bArr)));
            i11 = iN + 4;
        }
        return i11;
    }

    public static int r(InterfaceC2914j2 interfaceC2914j2, byte[] bArr, int i8, int i9, int i10, SG sg) throws C2966x1 {
        Object objI = interfaceC2914j2.i();
        int iT = T(objI, interfaceC2914j2, bArr, i8, i9, i10, sg);
        interfaceC2914j2.d(objI);
        sg.f16419c = objI;
        return iT;
    }

    public static int s(InterfaceC2914j2 interfaceC2914j2, int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        int i11 = (i8 & (-8)) | 4;
        int iR = r(interfaceC2914j2, bArr, i9, i10, i11, sg);
        interfaceC2956u1.add(sg.f16419c);
        while (iR < i10) {
            int iN = N(bArr, iR, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iR = r(interfaceC2914j2, bArr, iN, i10, i11, sg);
            interfaceC2956u1.add(sg.f16419c);
        }
        return iR;
    }

    public static int t(InterfaceC2914j2 interfaceC2914j2, byte[] bArr, int i8, int i9, SG sg) throws C2966x1 {
        Object objI = interfaceC2914j2.i();
        int iU = U(objI, interfaceC2914j2, bArr, i8, i9, sg);
        interfaceC2914j2.d(objI);
        sg.f16419c = objI;
        return iU;
    }

    public static int u(InterfaceC2914j2 interfaceC2914j2, int i8, byte[] bArr, int i9, int i10, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        int iT = t(interfaceC2914j2, bArr, i9, i10, sg);
        interfaceC2956u1.add(sg.f16419c);
        while (iT < i10) {
            int iN = N(bArr, iT, sg);
            if (i8 != sg.f16417a) {
                break;
            }
            iT = t(interfaceC2914j2, bArr, iN, i10, sg);
            interfaceC2956u1.add(sg.f16419c);
        }
        return iT;
    }

    public static int v(byte[] bArr, int i8, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        C2915k c2915k = (C2915k) interfaceC2956u1;
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a + iN;
        while (iN < i9) {
            iN = P(bArr, iN, sg);
            c2915k.i(sg.f16418b != 0);
        }
        if (iN == i9) {
            return iN;
        }
        throw C2966x1.g();
    }

    public static int w(byte[] bArr, int i8, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        D0 d6 = (D0) interfaceC2956u1;
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a + iN;
        while (iN < i9) {
            d6.i(Double.longBitsToDouble(n(iN, bArr)));
            iN += 8;
        }
        if (iN == i9) {
            return iN;
        }
        throw C2966x1.g();
    }

    public static int x(byte[] bArr, int i8, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        C2921l1 c2921l1 = (C2921l1) interfaceC2956u1;
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a + iN;
        while (iN < i9) {
            c2921l1.i(l(iN, bArr));
            iN += 4;
        }
        if (iN == i9) {
            return iN;
        }
        throw C2966x1.g();
    }

    public static int y(byte[] bArr, int i8, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        F1 f8 = (F1) interfaceC2956u1;
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a + iN;
        while (iN < i9) {
            f8.i(n(iN, bArr));
            iN += 8;
        }
        if (iN == i9) {
            return iN;
        }
        throw C2966x1.g();
    }

    public static int z(byte[] bArr, int i8, InterfaceC2956u1 interfaceC2956u1, SG sg) throws C2966x1 {
        Y0 y7 = (Y0) interfaceC2956u1;
        int iN = N(bArr, i8, sg);
        int i9 = sg.f16417a + iN;
        while (iN < i9) {
            y7.i(Float.intBitsToFloat(l(iN, bArr)));
            iN += 4;
        }
        if (iN == i9) {
            return iN;
        }
        throw C2966x1.g();
    }

    public abstract void X(int i8, byte[] bArr, int i9);
}
