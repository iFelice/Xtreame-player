package p146s5;

import Z3.C0433o;
import java.util.Arrays;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p130q5.e;
import p130q5.l;
import p156u.h;
import p176w5.b;
import p176w5.d;
import p184x5.c;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f30129b = {"CTRL_PS", " ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f30130c = {"CTRL_PS", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String[] f30131d = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f30132e = {HttpUrl.FRAGMENT_ENCODE_SET, "\r", "\r\n", ". ", ", ", ": ", "!", "\"", MqttTopic.MULTI_LEVEL_WILDCARD, "$", "%", "&", "'", "(", ")", "*", MqttTopic.SINGLE_LEVEL_WILDCARD, ",", "-", ".", MqttTopic.TOPIC_LEVEL_SEPARATOR, ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f30133f = {"CTRL_PS", " ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p138r5.a f30134a;

    public static int b(boolean[] zArr, int i8, int i9) {
        int i10 = 0;
        for (int i11 = i8; i11 < i8 + i9; i11++) {
            i10 <<= 1;
            if (zArr[i11]) {
                i10 |= 1;
            }
        }
        return i10;
    }

    public final d a(p138r5.a aVar) throws e {
        int i8;
        p184x5.a aVar2;
        String str;
        this.f30134a = aVar;
        b bVar = (b) aVar.f22390H;
        boolean z7 = aVar.f29852K;
        int i9 = z7 ? 11 : 14;
        int i10 = aVar.f29854M;
        int i11 = i9 + (i10 << 2);
        int[] iArr = new int[i11];
        int i12 = ((z7 ? 88 : 112) + (i10 << 4)) * i10;
        boolean[] zArr = new boolean[i12];
        int i13 = 2;
        if (z7) {
            for (int i14 = 0; i14 < i11; i14++) {
                iArr[i14] = i14;
            }
        } else {
            int i15 = i11 / 2;
            int i16 = ((((i15 - 1) / 15) * 2) + (i11 + 1)) / 2;
            for (int i17 = 0; i17 < i15; i17++) {
                int i18 = (i17 / 15) + i17;
                iArr[(i15 - i17) - 1] = (i16 - i18) - 1;
                iArr[i15 + i17] = i18 + i16 + 1;
            }
        }
        int i19 = 0;
        int i20 = 0;
        while (true) {
            i8 = 12;
            if (i19 >= i10) {
                break;
            }
            int i21 = ((i10 - i19) << i13) + (z7 ? 9 : 12);
            int i22 = i19 << 1;
            int i23 = (i11 - 1) - i22;
            int i24 = 0;
            while (i24 < i21) {
                int i25 = i24 << 1;
                int i26 = 0;
                while (i26 < i13) {
                    int i27 = i22 + i26;
                    int i28 = i22 + i24;
                    zArr[i20 + i25 + i26] = bVar.b(iArr[i27], iArr[i28]);
                    int i29 = i23 - i26;
                    zArr[(i21 * 2) + i20 + i25 + i26] = bVar.b(iArr[i28], iArr[i29]);
                    int i30 = i23 - i24;
                    zArr[(i21 * 4) + i20 + i25 + i26] = bVar.b(iArr[i29], iArr[i30]);
                    zArr[(i21 * 6) + i20 + i25 + i26] = bVar.b(iArr[i30], iArr[i27]);
                    i26++;
                    z7 = z7;
                    i10 = i10;
                    i13 = 2;
                }
                i24++;
                i13 = 2;
            }
            i20 += i21 << 3;
            i19++;
            i10 = i10;
            i13 = 2;
        }
        p138r5.a aVar3 = this.f30134a;
        int i31 = aVar3.f29854M;
        int i32 = 8;
        if (i31 <= 2) {
            aVar2 = p184x5.a.f31205j;
            i8 = 6;
        } else if (i31 <= 8) {
            aVar2 = p184x5.a.f31209n;
            i8 = 8;
        } else if (i31 <= 22) {
            aVar2 = p184x5.a.f31204i;
            i8 = 10;
        } else {
            aVar2 = p184x5.a.f31203h;
        }
        int i33 = i12 / i8;
        int i34 = aVar3.f29853L;
        if (i33 < i34) {
            throw e.a();
        }
        int i35 = i12 % i8;
        int[] iArr2 = new int[i33];
        int i36 = 0;
        while (i36 < i33) {
            iArr2[i36] = b(zArr, i35, i8);
            i36++;
            i35 += i8;
        }
        try {
            new C0433o(aVar2, 19).e(iArr2, i33 - i34);
            int i37 = 1;
            int i38 = 1 << i8;
            int i39 = i38 - 1;
            int i40 = 0;
            int i41 = 0;
            while (i40 < i34) {
                int i42 = iArr2[i40];
                if (i42 == 0 || i42 == i39) {
                    throw e.a();
                }
                if (i42 == i37 || i42 == i38 - 2) {
                    i41++;
                }
                i40++;
                i37 = 1;
            }
            int i43 = (i34 * i8) - i41;
            boolean[] zArr2 = new boolean[i43];
            int i44 = 0;
            for (int i45 = 0; i45 < i34; i45++) {
                int i46 = iArr2[i45];
                int i47 = 1;
                if (i46 == 1 || i46 == i38 - 2) {
                    Arrays.fill(zArr2, i44, (i44 + i8) - 1, i46 > 1);
                    i44 = (i8 - 1) + i44;
                } else {
                    int i48 = i8 - 1;
                    while (i48 >= 0) {
                        int i49 = i44 + 1;
                        zArr2[i44] = (i46 & (i47 << i48)) != 0;
                        i48--;
                        i44 = i49;
                        i47 = 1;
                    }
                }
            }
            int i50 = (i43 + 7) / 8;
            byte[] bArr = new byte[i50];
            for (int i51 = 0; i51 < i50; i51++) {
                int i52 = i51 << 3;
                int i53 = i43 - i52;
                bArr[i51] = (byte) (i53 >= 8 ? b(zArr2, i52, 8) : b(zArr2, i52, i53) << (8 - i53));
            }
            StringBuilder sb = new StringBuilder(20);
            int i54 = 1;
            int i55 = 1;
            int i56 = 0;
            while (i56 < i43) {
                if (i54 != 6) {
                    int i57 = i54 == 4 ? 4 : 5;
                    if (i43 - i56 < i57) {
                        break;
                    }
                    int iB = b(zArr2, i56, i57);
                    i56 += i57;
                    int iB2 = h.b(i54);
                    if (iB2 == 0) {
                        str = f30129b[iB];
                    } else if (iB2 == 1) {
                        str = f30130c[iB];
                    } else if (iB2 == 2) {
                        str = f30131d[iB];
                    } else if (iB2 == 3) {
                        str = f30133f[iB];
                    } else {
                        if (iB2 != 4) {
                            throw new IllegalStateException("Bad table");
                        }
                        str = f30132e[iB];
                    }
                    if (str.startsWith("CTRL_")) {
                        char cCharAt = str.charAt(5);
                        if (cCharAt == 'B') {
                            i55 = 6;
                        } else if (cCharAt == 'D') {
                            i55 = 4;
                        } else if (cCharAt == 'P') {
                            i55 = 5;
                        } else if (cCharAt != 'L') {
                            i55 = cCharAt != 'M' ? 1 : 3;
                        } else {
                            i55 = 2;
                        }
                        if (str.charAt(6) != 'L') {
                            int i58 = i55;
                            i55 = i54;
                            i54 = i58;
                        }
                        i32 = 8;
                    } else {
                        sb.append(str);
                    }
                    i54 = i55;
                    i32 = 8;
                } else {
                    if (i43 - i56 < 5) {
                        break;
                    }
                    int iB3 = b(zArr2, i56, 5);
                    int i59 = i56 + 5;
                    if (iB3 == 0) {
                        if (i43 - i59 < 11) {
                            break;
                        }
                        iB3 = b(zArr2, i59, 11) + 31;
                        i59 = i56 + 16;
                    }
                    int i60 = 0;
                    while (true) {
                        if (i60 >= iB3) {
                            i56 = i59;
                            break;
                        }
                        if (i43 - i59 < i32) {
                            i56 = i43;
                            break;
                        }
                        sb.append((char) b(zArr2, i59, i32));
                        i59 += 8;
                        i60++;
                    }
                    i54 = i55;
                }
            }
            return new d(bArr, sb.toString(), null, null);
        } catch (c e8) {
            e eVar = e.f29616I;
            if (l.f29627G) {
                throw new e(e8);
            }
            throw e.f29616I;
        }
    }
}
