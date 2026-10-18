package C5;

import java.util.Arrays;
import java.util.Map;
import okhttp3.internal.http.StatusLine;
import org.videolan.libvlc.MediaPlayer;
import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char[] f1645c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f1647e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringBuilder f1648a = new StringBuilder(20);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f1649b = new int[6];

    static {
        int[] iArr = {MediaPlayer.Event.ESAdded, 328, 324, 322, 296, 292, 290, 336, MediaPlayer.Event.Vout, MediaPlayer.Event.EncounteredError, 424, 420, 418, 404, 402, 394, 360, 356, 354, StatusLine.HTTP_PERM_REDIRECT, 282, 344, 332, 326, 300, MediaPlayer.Event.ESSelected, 436, 434, 428, 422, 406, 410, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        f1646d = iArr;
        f1647e = iArr[47];
    }

    public static void i(StringBuilder sb, int i8, int i9) throws p130q5.b {
        int iIndexOf = 0;
        int i10 = 1;
        for (int i11 = i8 - 1; i11 >= 0; i11--) {
            iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(sb.charAt(i11)) * i10;
            i10++;
            if (i10 > i9) {
                i10 = 1;
            }
        }
        if (sb.charAt(i8) != f1645c[iIndexOf % 47]) {
            throw p130q5.b.a();
        }
    }

    public static int j(int[] iArr) {
        int i8 = 0;
        for (int i9 : iArr) {
            i8 += i9;
        }
        int length = iArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int iRound = Math.round((iArr[i11] * 9.0f) / i8);
            if (iRound <= 0 || iRound > 4) {
                return -1;
            }
            if ((i11 & 1) == 0) {
                for (int i12 = 0; i12 < iRound; i12++) {
                    i10 = (i10 << 1) | 1;
                }
            } else {
                i10 <<= iRound;
            }
        }
        return i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:42:0x00d9  */
    @Override // C5.j
    public final p130q5.m d(int i8, p176w5.a aVar, Map map) throws p130q5.i, p130q5.b, p130q5.e {
        int i9;
        char c8;
        int i10 = 2;
        int i11 = aVar.f31090H;
        int iE = aVar.e(0);
        int[] iArr = this.f1649b;
        Arrays.fill(iArr, 0);
        int length = iArr.length;
        int i12 = iE;
        boolean z7 = false;
        int i13 = 0;
        while (iE < i11) {
            if (aVar.d(iE) != z7) {
                iArr[i13] = iArr[i13] + 1;
            } else {
                if (i13 != length - 1) {
                    i13++;
                } else if (j(iArr) == f1647e) {
                    int[] iArr2 = {i12, iE};
                    int iE2 = aVar.e(iArr2[1]);
                    int i14 = aVar.f31090H;
                    Arrays.fill(iArr, 0);
                    StringBuilder sb = this.f1648a;
                    sb.setLength(0);
                    while (true) {
                        j.g(iE2, aVar, iArr);
                        int iJ = j(iArr);
                        if (iJ < 0) {
                            throw p130q5.i.f29623I;
                        }
                        int i15 = 0;
                        while (true) {
                            int[] iArr3 = f1646d;
                            if (i15 >= iArr3.length) {
                                throw p130q5.i.f29623I;
                            }
                            if (iArr3[i15] == iJ) {
                                break;
                            }
                            i15++;
                            i10 = 2;
                        }
                        char c9 = f1645c[i15];
                        sb.append(c9);
                        int i16 = iE2;
                        for (int i17 : iArr) {
                            i16 += i17;
                        }
                        int iE3 = aVar.e(i16);
                        if (c9 == '*') {
                            sb.deleteCharAt(sb.length() - 1);
                            int i18 = 0;
                            for (int i19 : iArr) {
                                i18 += i19;
                            }
                            if (iE3 == i14 || !aVar.d(iE3)) {
                                throw p130q5.i.f29623I;
                            }
                            if (sb.length() < i10) {
                                throw p130q5.i.f29623I;
                            }
                            int length2 = sb.length();
                            i(sb, length2 - 2, 20);
                            i(sb, length2 - 1, 15);
                            sb.setLength(sb.length() - i10);
                            int length3 = sb.length();
                            StringBuilder sb2 = new StringBuilder(length3);
                            int i20 = 0;
                            while (i20 < length3) {
                                char cCharAt = sb.charAt(i20);
                                if (cCharAt >= 'a' && cCharAt <= 'd') {
                                    if (i20 >= length3 - 1) {
                                        throw p130q5.e.a();
                                    }
                                    i20++;
                                    char cCharAt2 = sb.charAt(i20);
                                    switch (cCharAt) {
                                        case 'a':
                                            if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                                                throw p130q5.e.a();
                                            }
                                            i9 = cCharAt2 - '@';
                                            c8 = (char) i9;
                                            sb2.append(c8);
                                            break;
                                            break;
                                        case 'b':
                                            if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                                                i9 = cCharAt2 - '&';
                                            } else if (cCharAt2 >= 'F' && cCharAt2 <= 'J') {
                                                i9 = cCharAt2 - 11;
                                            } else if (cCharAt2 < 'K' || cCharAt2 > 'O') {
                                                if (cCharAt2 >= 'P' && cCharAt2 <= 'T') {
                                                    i9 = cCharAt2 + '+';
                                                } else if (cCharAt2 == 'U') {
                                                    c8 = 0;
                                                } else if (cCharAt2 == 'V') {
                                                    c8 = '@';
                                                } else if (cCharAt2 == 'W') {
                                                    c8 = '`';
                                                } else {
                                                    if (cCharAt2 < 'X' || cCharAt2 > 'Z') {
                                                        throw p130q5.e.a();
                                                    }
                                                    c8 = 127;
                                                }
                                                sb2.append(c8);
                                            } else {
                                                i9 = cCharAt2 + 16;
                                            }
                                            c8 = (char) i9;
                                            sb2.append(c8);
                                            break;
                                        case 'c':
                                            if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                                                i9 = cCharAt2 - ' ';
                                                c8 = (char) i9;
                                            } else {
                                                if (cCharAt2 != 'Z') {
                                                    throw p130q5.e.a();
                                                }
                                                c8 = ':';
                                            }
                                            sb2.append(c8);
                                            break;
                                        case 'd':
                                            if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                                                throw p130q5.e.a();
                                            }
                                            i9 = cCharAt2 + ' ';
                                            c8 = (char) i9;
                                            sb2.append(c8);
                                            break;
                                            break;
                                        default:
                                            c8 = 0;
                                            sb2.append(c8);
                                            break;
                                    }
                                } else {
                                    sb2.append(cCharAt);
                                }
                                i20++;
                            }
                            String string = sb2.toString();
                            float f8 = i8;
                            return new p130q5.m(string, null, new o[]{new o((iArr2[1] + iArr2[0]) / 2.0f, f8), new o((i18 / 2.0f) + iE2, f8)}, p130q5.a.f29581J);
                        }
                        iE2 = iE3;
                    }
                } else {
                    i12 += iArr[0] + iArr[1];
                    int i21 = i13 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i21);
                    iArr[i21] = 0;
                    iArr[i13] = 0;
                    i13--;
                }
                iArr[i13] = 1;
                z7 = !z7;
            }
            iE++;
            i10 = 2;
        }
        throw p130q5.i.f29623I;
    }
}
