package H5;

import com.google.api.Service;
import java.math.BigInteger;
import org.videolan.libvlc.media.MediaPlayer;
import p156u.h;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f3775a = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final char[] f3776b = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BigInteger[] f3777c;

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        f3777c = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = bigIntegerValueOf;
        int i8 = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = f3777c;
            if (i8 >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i8] = bigIntegerArr2[i8 - 1].multiply(bigIntegerValueOf);
            i8++;
        }
    }

    public static String a(int[] iArr, int i8) throws p130q5.e {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i9 = 0; i9 < i8; i9++) {
            bigIntegerAdd = bigIntegerAdd.add(f3777c[(i8 - i9) - 1].multiply(BigInteger.valueOf(iArr[i9])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) == '1') {
            return string.substring(1);
        }
        throw p130q5.e.a();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0032  */
    /* JADX WARN: Code duplicated, block: B:32:0x0038 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x0007 A[SYNTHETIC] */
    public static int b(int[] iArr, int i8, StringBuilder sb) {
        int[] iArr2 = new int[15];
        boolean z7 = false;
        while (true) {
            int i9 = 0;
            while (true) {
                int i10 = iArr[0];
                if (i8 < i10 && !z7) {
                    int i11 = i8 + 1;
                    int i12 = iArr[i8];
                    if (i11 == i10) {
                        z7 = true;
                    }
                    if (i12 < 900) {
                        iArr2[i9] = i12;
                        i9++;
                    } else {
                        if (i12 != 900 && i12 != 901 && i12 != 928) {
                            switch (i12) {
                            }
                            if (i9 % 15 != 0 || i12 == 902 || z7) {
                                if (i9 > 0) {
                                    break;
                                }
                            }
                        }
                        z7 = true;
                        if (i9 % 15 != 0) {
                        }
                        if (i9 > 0) {
                            break;
                        }
                    }
                    i8 = i11;
                    if (i9 % 15 != 0) {
                    }
                    if (i9 > 0) {
                        break;
                    }
                }
            }
            sb.append(a(iArr2, i9));
        }
        return i8;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0093  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ab A[PHI: r8
      0x00ab: PHI (r8v12 int) = (r8v2 int), (r8v2 int), (r8v18 int) binds: [B:85:0x00ff, B:70:0x00d5, B:53:0x00aa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x00d9  */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0035. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0038. Please report as an issue. */
    public static int c(int[] iArr, int i8, StringBuilder sb) {
        int i9;
        char c8;
        char c9;
        int i10 = 1;
        int i11 = (iArr[0] - i8) << 1;
        int[] iArr2 = new int[i11];
        int[] iArr3 = new int[i11];
        int i12 = i8;
        boolean z7 = false;
        int i13 = 0;
        while (i12 < iArr[0] && !z7) {
            int i14 = i12 + 1;
            int i15 = iArr[i12];
            if (i15 < 900) {
                iArr2[i13] = i15 / 30;
                iArr2[i13 + 1] = i15 % 30;
                i13 += 2;
            } else if (i15 != 913) {
                if (i15 != 928) {
                    switch (i15) {
                        case MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR /* 900 */:
                            iArr2[i13] = 900;
                            i13++;
                            break;
                        case MediaPlayer.MEDIA_INFO_UNSUPPORTED_SUBTITLE /* 901 */:
                        case MediaPlayer.MEDIA_INFO_SUBTITLE_TIMED_OUT /* 902 */:
                            break;
                        default:
                            switch (i15) {
                                case 922:
                                case 923:
                                case 924:
                                    break;
                                default:
                                    break;
                            }
                            break;
                    }
                }
                z7 = true;
            } else {
                iArr2[i13] = 913;
                i12 += 2;
                iArr3[i13] = iArr[i14];
                i13++;
            }
            i12 = i14;
        }
        int i16 = 0;
        int i17 = 1;
        i17 = 1;
        while (i16 < i13) {
            int i18 = iArr2[i16];
            int iB = h.b(i17);
            if (iB != 0) {
                if (iB != i10) {
                    if (iB != 2) {
                        char[] cArr = f3775a;
                        if (iB != 3) {
                            if (iB != 4) {
                                if (iB == 5) {
                                    if (i18 < 29) {
                                        c9 = cArr[i18];
                                        i17 = i17;
                                        c8 = c9;
                                    } else if (i18 == 29 || i18 == 900) {
                                        c8 = 0;
                                        i17 = 1;
                                    } else if (i18 == 913) {
                                        sb.append((char) iArr3[i16]);
                                    }
                                }
                                c8 = 0;
                            } else if (i18 < 26) {
                                c8 = (char) (i18 + 65);
                                i17 = i17;
                            } else if (i18 != 26) {
                                if (i18 == 900) {
                                    i17 = 1;
                                }
                                c8 = 0;
                            } else {
                                i17 = i17;
                                c8 = ' ';
                            }
                            i17 = i17;
                            c8 = 0;
                        } else if (i18 < 29) {
                            c9 = cArr[i18];
                            c8 = c9;
                        } else if (i18 == 29 || i18 == 900) {
                            c8 = 0;
                            i17 = 1;
                        } else {
                            if (i18 == 913) {
                                sb.append((char) iArr3[i16]);
                            }
                            c8 = 0;
                        }
                    } else if (i18 < 25) {
                        c9 = f3776b[i18];
                        c8 = c9;
                    } else if (i18 == 900) {
                        c8 = 0;
                        i17 = 1;
                    } else {
                        if (i18 != 913) {
                            switch (i18) {
                                case 25:
                                    c8 = 0;
                                    i17 = 4;
                                    break;
                                case Service.BILLING_FIELD_NUMBER /* 26 */:
                                    c8 = ' ';
                                    break;
                                case 27:
                                    c8 = 0;
                                    i17 = 2;
                                    break;
                                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                    c8 = 0;
                                    i17 = 1;
                                    break;
                                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                    c8 = 0;
                                    i17 = 6;
                                    break;
                            }
                        } else {
                            sb.append((char) iArr3[i16]);
                        }
                        c8 = 0;
                    }
                } else if (i18 < 26) {
                    i9 = i18 + 97;
                    c8 = (char) i9;
                } else {
                    if (i18 == 900) {
                        i17 = 1;
                    } else if (i18 != 913) {
                        switch (i18) {
                            case Service.BILLING_FIELD_NUMBER /* 26 */:
                                c8 = ' ';
                                break;
                            case 27:
                                i17 = i17;
                                c8 = 0;
                                i17 = 5;
                                break;
                            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                c8 = 0;
                                i17 = 3;
                                break;
                            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                c8 = 0;
                                i17 = 6;
                                break;
                        }
                    } else {
                        sb.append((char) iArr3[i16]);
                    }
                    c8 = 0;
                }
            } else if (i18 < 26) {
                i9 = i18 + 65;
                c8 = (char) i9;
            } else {
                if (i18 == 900) {
                    i17 = 1;
                } else if (i18 != 913) {
                    switch (i18) {
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            c8 = ' ';
                            break;
                        case 27:
                            c8 = 0;
                            i17 = 2;
                            break;
                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                            c8 = 0;
                            i17 = 3;
                            break;
                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                            c8 = 0;
                            i17 = 6;
                            break;
                    }
                } else {
                    sb.append((char) iArr3[i16]);
                }
                c8 = 0;
            }
            if (c8 != 0) {
                sb.append(c8);
            }
            i16++;
            i10 = 1;
        }
        return i12;
    }
}
