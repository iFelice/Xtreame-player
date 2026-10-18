package Q6;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class m implements Serializable, Comparable {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final m f6065J = new m(new byte[0]);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final byte[] f6066G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient int f6067H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public transient String f6068I;

    public m(byte[] bArr) {
        q0.h(bArr, "data");
        this.f6066G = bArr;
    }

    public static final m g(byte... bArr) {
        q0.h(bArr, "data");
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        q0.g(bArrCopyOf, "copyOf(this, size)");
        return new m(bArrCopyOf);
    }

    public String a() {
        byte[] bArr = AbstractC0328a.f6046a;
        byte[] bArr2 = this.f6066G;
        q0.h(bArr2, "<this>");
        q0.h(bArr, "map");
        byte[] bArr3 = new byte[((bArr2.length + 2) / 3) * 4];
        int length = bArr2.length - (bArr2.length % 3);
        int i8 = 0;
        int i9 = 0;
        while (i8 < length) {
            byte b8 = bArr2[i8];
            int i10 = i8 + 2;
            byte b9 = bArr2[i8 + 1];
            i8 += 3;
            byte b10 = bArr2[i10];
            bArr3[i9] = bArr[(b8 & 255) >> 2];
            bArr3[i9 + 1] = bArr[((b8 & 3) << 4) | ((b9 & 255) >> 4)];
            int i11 = i9 + 3;
            bArr3[i9 + 2] = bArr[((b9 & 15) << 2) | ((b10 & 255) >> 6)];
            i9 += 4;
            bArr3[i11] = bArr[b10 & 63];
        }
        int length2 = bArr2.length - length;
        if (length2 == 1) {
            byte b11 = bArr2[i8];
            bArr3[i9] = bArr[(b11 & 255) >> 2];
            bArr3[i9 + 1] = bArr[(b11 & 3) << 4];
            bArr3[i9 + 2] = 61;
            bArr3[i9 + 3] = 61;
        } else if (length2 == 2) {
            int i12 = i8 + 1;
            byte b12 = bArr2[i8];
            byte b13 = bArr2[i12];
            bArr3[i9] = bArr[(b12 & 255) >> 2];
            bArr3[i9 + 1] = bArr[((b12 & 3) << 4) | ((b13 & 255) >> 4)];
            bArr3[i9 + 2] = bArr[(b13 & 15) << 2];
            bArr3[i9 + 3] = 61;
        }
        return new String(bArr3, I6.a.f4021a);
    }

    public m b(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.f6066G, 0, c());
        byte[] bArrDigest = messageDigest.digest();
        q0.e(bArrDigest);
        return new m(bArrDigest);
    }

    public int c() {
        return this.f6066G.length;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002e A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x002c A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        m mVar = (m) obj;
        q0.h(mVar, "other");
        int iC = c();
        int iC2 = mVar.c();
        int iMin = Math.min(iC, iC2);
        for (int i8 = 0; i8 < iMin; i8++) {
            int iF = f(i8) & 255;
            int iF2 = mVar.f(i8) & 255;
            if (iF != iF2) {
                if (iF < iF2) {
                    return -1;
                }
                return 1;
            }
        }
        if (iC == iC2) {
            return 0;
        }
        if (iC < iC2) {
            return -1;
        }
        return 1;
    }

    public String d() {
        byte[] bArr = this.f6066G;
        char[] cArr = new char[bArr.length * 2];
        int i8 = 0;
        for (byte b8 : bArr) {
            int i9 = i8 + 1;
            char[] cArr2 = R6.b.f6314a;
            cArr[i8] = cArr2[(b8 >> 4) & 15];
            i8 += 2;
            cArr[i9] = cArr2[b8 & 15];
        }
        return new String(cArr);
    }

    public byte[] e() {
        return this.f6066G;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            int iC = mVar.c();
            byte[] bArr = this.f6066G;
            if (iC == bArr.length && mVar.h(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public byte f(int i8) {
        return this.f6066G[i8];
    }

    public boolean h(int i8, byte[] bArr, int i9, int i10) {
        q0.h(bArr, "other");
        if (i8 >= 0) {
            byte[] bArr2 = this.f6066G;
            if (i8 <= bArr2.length - i10 && i9 >= 0 && i9 <= bArr.length - i10 && AbstractC0329b.a(i8, i9, i10, bArr2, bArr)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i8 = this.f6067H;
        if (i8 != 0) {
            return i8;
        }
        int iHashCode = Arrays.hashCode(this.f6066G);
        this.f6067H = iHashCode;
        return iHashCode;
    }

    public boolean i(m mVar, int i8) {
        q0.h(mVar, "other");
        return mVar.h(0, this.f6066G, 0, i8);
    }

    public m j() {
        int i8 = 0;
        while (true) {
            byte[] bArr = this.f6066G;
            if (i8 >= bArr.length) {
                return this;
            }
            byte b8 = bArr[i8];
            if (b8 >= 65 && b8 <= 90) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                q0.g(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i8] = (byte) (b8 + 32);
                for (int i9 = i8 + 1; i9 < bArrCopyOf.length; i9++) {
                    byte b9 = bArrCopyOf[i9];
                    if (b9 >= 65 && b9 <= 90) {
                        bArrCopyOf[i9] = (byte) (b9 + 32);
                    }
                }
                return new m(bArrCopyOf);
            }
            i8++;
        }
    }

    public final String k() {
        String str = this.f6068I;
        if (str != null) {
            return str;
        }
        byte[] bArrE = e();
        q0.h(bArrE, "<this>");
        String str2 = new String(bArrE, I6.a.f4021a);
        this.f6068I = str2;
        return str2;
    }

    public void l(j jVar, int i8) {
        q0.h(jVar, "buffer");
        jVar.l0(0, this.f6066G, i8);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x003c A[EDGE_INSN: B:22:0x003c->B:180:0x01a6 BREAK  A[LOOP:0: B:6:0x000f->B:238:0x000f]] */
    public String toString() {
        m mVar;
        byte b8;
        int i8;
        byte[] bArr = this.f6066G;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int length = bArr.length;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        loop0: while (i9 < length) {
            byte b9 = bArr[i9];
            if (b9 < 0) {
                if ((b9 >> 5) != -2) {
                    if ((b9 >> 4) != -2) {
                        if ((b9 >> 3) != -2) {
                            if (i11 == 64) {
                                break;
                            }
                            i10 = -1;
                            break;
                        }
                        int i12 = i9 + 3;
                        if (length > i12) {
                            byte b10 = bArr[i9 + 1];
                            if ((b10 & 192) != 128) {
                                if (i11 == 64) {
                                    break;
                                }
                                i10 = -1;
                                break;
                            }
                            byte b11 = bArr[i9 + 2];
                            if ((b11 & 192) != 128) {
                                if (i11 == 64) {
                                    break;
                                }
                                i10 = -1;
                                break;
                            }
                            byte b12 = bArr[i12];
                            if ((b12 & 192) != 128) {
                                if (i11 == 64) {
                                    break;
                                }
                                i10 = -1;
                                break;
                            }
                            int i13 = (((b12 ^ 3678080) ^ (b11 << 6)) ^ (b10 << MqttWireMessage.MESSAGE_TYPE_PINGREQ)) ^ (b9 << 18);
                            if (i13 <= 1114111) {
                                if (55296 <= i13 && i13 < 57344) {
                                    if (i11 == 64) {
                                        break;
                                    }
                                    i10 = -1;
                                    break;
                                }
                                if (i13 >= 65536) {
                                    i8 = i11 + 1;
                                    if (i11 == 64) {
                                        break;
                                    }
                                    if ((i13 != 10 && i13 != 13 && ((i13 >= 0 && i13 < 32) || (127 <= i13 && i13 < 160))) || i13 == 65533) {
                                        i10 = -1;
                                        break;
                                    }
                                    i10 += i13 < 65536 ? 1 : 2;
                                    i9 += 4;
                                    i11 = i8;
                                } else {
                                    if (i11 == 64) {
                                        break;
                                    }
                                    i10 = -1;
                                    break;
                                }
                            } else {
                                if (i11 == 64) {
                                    break;
                                }
                                i10 = -1;
                                break;
                            }
                        } else {
                            if (i11 == 64) {
                                break;
                            }
                            i10 = -1;
                            break;
                        }
                    } else {
                        int i14 = i9 + 2;
                        if (length > i14) {
                            byte b13 = bArr[i9 + 1];
                            if ((b13 & 192) != 128) {
                                if (i11 == 64) {
                                    break;
                                }
                                i10 = -1;
                                break;
                            }
                            byte b14 = bArr[i14];
                            if ((b14 & 192) != 128) {
                                if (i11 == 64) {
                                    break;
                                }
                                i10 = -1;
                                break;
                            }
                            int i15 = ((b14 ^ (-123008)) ^ (b13 << 6)) ^ (b9 << MqttWireMessage.MESSAGE_TYPE_PINGREQ);
                            if (i15 >= 2048) {
                                if (55296 <= i15 && i15 < 57344) {
                                    if (i11 == 64) {
                                        break;
                                    }
                                    i10 = -1;
                                    break;
                                }
                                i8 = i11 + 1;
                                if (i11 == 64) {
                                    break;
                                }
                                if ((i15 != 10 && i15 != 13 && ((i15 >= 0 && i15 < 32) || (127 <= i15 && i15 < 160))) || i15 == 65533) {
                                    i10 = -1;
                                    break;
                                }
                                i10 += i15 < 65536 ? 1 : 2;
                                i9 += 3;
                                i11 = i8;
                            } else {
                                if (i11 == 64) {
                                    break;
                                }
                                i10 = -1;
                                break;
                            }
                        } else {
                            if (i11 == 64) {
                                break;
                            }
                            i10 = -1;
                            break;
                        }
                    }
                } else {
                    int i16 = i9 + 1;
                    if (length > i16) {
                        byte b15 = bArr[i16];
                        if ((b15 & 192) != 128) {
                            if (i11 == 64) {
                                break;
                            }
                            i10 = -1;
                            break;
                        }
                        int i17 = (b15 ^ 3968) ^ (b9 << 6);
                        if (i17 >= 128) {
                            i8 = i11 + 1;
                            if (i11 == 64) {
                                break;
                            }
                            if ((i17 != 10 && i17 != 13 && ((i17 >= 0 && i17 < 32) || (127 <= i17 && i17 < 160))) || i17 == 65533) {
                                i10 = -1;
                                break;
                            }
                            i10 += i17 < 65536 ? 1 : 2;
                            i9 += 2;
                            i11 = i8;
                        } else {
                            if (i11 == 64) {
                                break;
                            }
                            i10 = -1;
                            break;
                        }
                    } else {
                        if (i11 == 64) {
                            break;
                        }
                        i10 = -1;
                        break;
                    }
                }
            } else {
                int i18 = i11 + 1;
                if (i11 == 64) {
                    break;
                }
                if ((b9 == 10 || b9 == 13 || ((b9 < 0 || b9 >= 32) && (127 > b9 || b9 >= 160))) && b9 != 65533) {
                    i10 += b9 < 65536 ? 1 : 2;
                    i9++;
                    while (true) {
                        i11 = i18;
                        if (i9 < length && (b8 = bArr[i9]) >= 0) {
                            i9++;
                            i18 = i11 + 1;
                            if (i11 == 64) {
                                break loop0;
                            }
                            if ((b8 == 10 || b8 == 13 || ((b8 < 0 || b8 >= 32) && (127 > b8 || b8 >= 160))) && b8 != 65533) {
                                i10 += b8 < 65536 ? 1 : 2;
                            }
                        }
                    }
                }
                i10 = -1;
                break;
            }
        }
        if (i10 != -1) {
            String strK = k();
            String strSubstring = strK.substring(0, i10);
            q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String strR0 = I6.k.R0(I6.k.R0(I6.k.R0(strSubstring, "\\", "\\\\"), "\n", "\\n"), "\r", "\\r");
            if (i10 >= strK.length()) {
                return "[text=" + strR0 + ']';
            }
            return "[size=" + bArr.length + " text=" + strR0 + "…]";
        }
        if (bArr.length <= 64) {
            return "[hex=" + d() + ']';
        }
        StringBuilder sb = new StringBuilder("[size=");
        sb.append(bArr.length);
        sb.append(" hex=");
        if (64 > bArr.length) {
            throw new IllegalArgumentException(("endIndex > length(" + bArr.length + ')').toString());
        }
        if (64 == bArr.length) {
            mVar = this;
        } else {
            S3.e.b(64, bArr.length);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 64);
            q0.g(bArrCopyOfRange, "copyOfRange(...)");
            mVar = new m(bArrCopyOfRange);
        }
        sb.append(mVar.d());
        sb.append("…]");
        return sb.toString();
    }
}
