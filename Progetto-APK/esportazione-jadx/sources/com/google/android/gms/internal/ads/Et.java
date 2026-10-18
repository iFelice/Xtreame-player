package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.content.Context;
import android.media.AudioFormat;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.api.Endpoint;
import com.google.api.Service;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.regex.Pattern;
import okhttp3.internal.ws.WebSocketProtocol;
import org.videolan.libvlc.media.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public abstract class Et {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f13234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f13235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f13236c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f13237d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f13238e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f13239f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Pattern f13240g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static HashMap f13241h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f13242i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String[] f13243j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f13244k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f13245l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f13246m;

    static {
        int i8 = Build.VERSION.SDK_INT;
        f13234a = i8;
        String str = Build.DEVICE;
        f13235b = str;
        String str2 = Build.MANUFACTURER;
        f13236c = str2;
        String str3 = Build.MODEL;
        f13237d = str3;
        f13238e = str + ", " + str3 + ", " + str2 + ", " + i8;
        f13239f = new byte[0];
        f13240g = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f13242i = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f13243j = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f13244k = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f13245l = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        f13246m = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, WebSocketProtocol.PAYLOAD_SHORT, 121, 108, 107, 98, Endpoint.TARGET_FIELD_NUMBER, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, ModuleDescriptor.MODULE_VERSION, 132, 131, 222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    public static String a(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals("und")) {
            str = strReplace;
        }
        String strM = p113o3.r.m(str);
        int i8 = 0;
        String str2 = strM.split("-", 2)[0];
        if (f13241h == null) {
            String[] iSOLanguages = Locale.getISOLanguages();
            int length = iSOLanguages.length;
            String[] strArr = f13242i;
            int length2 = strArr.length;
            HashMap map = new HashMap(length + 88);
            for (String str3 : iSOLanguages) {
                try {
                    String iSO3Language = new Locale(str3).getISO3Language();
                    if (!TextUtils.isEmpty(iSO3Language)) {
                        map.put(iSO3Language, str3);
                    }
                } catch (MissingResourceException unused) {
                }
            }
            for (int i9 = 0; i9 < 88; i9 += 2) {
                map.put(strArr[i9], strArr[i9 + 1]);
            }
            f13241h = map;
        }
        String str4 = (String) f13241h.get(str2);
        if (str4 != null) {
            strM = str4.concat(String.valueOf(strM.substring(str2.length())));
            str2 = str4;
        }
        if (!"no".equals(str2) && !"i".equals(str2) && !"zh".equals(str2)) {
            return strM;
        }
        while (true) {
            String[] strArr2 = f13243j;
            int length3 = strArr2.length;
            if (i8 >= 18) {
                return strM;
            }
            if (strM.startsWith(strArr2[i8])) {
                return String.valueOf(strArr2[i8 + 1]).concat(String.valueOf(strM.substring(strArr2[i8].length())));
            }
            i8 += 2;
        }
    }

    public static void b(long j8, long[] jArr) {
        int i8 = 0;
        RoundingMode roundingMode = RoundingMode.FLOOR;
        if (j8 >= 1000000 && j8 % 1000000 == 0) {
            long jZ0 = Cw.z0(j8, 1000000L, RoundingMode.UNNECESSARY);
            while (i8 < jArr.length) {
                jArr[i8] = Cw.z0(jArr[i8], jZ0, roundingMode);
                i8++;
            }
            return;
        }
        if (j8 < 1000000 && 1000000 % j8 == 0) {
            long jZ1 = Cw.z0(1000000L, j8, RoundingMode.UNNECESSARY);
            while (i8 < jArr.length) {
                jArr[i8] = Cw.m1(jArr[i8], jZ1);
                i8++;
            }
            return;
        }
        for (int i9 = 0; i9 < jArr.length; i9++) {
            long j9 = jArr[i9];
            if (j9 != 0) {
                if (j8 >= j9 && j8 % j9 == 0) {
                    jArr[i9] = Cw.z0(1000000L, Cw.z0(j8, j9, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j8 >= j9 || j9 % j8 != 0) {
                    jArr[i9] = h(j9, 1000000L, j8, roundingMode);
                } else {
                    jArr[i9] = Cw.m1(1000000L, Cw.z0(j9, j8, RoundingMode.UNNECESSARY));
                }
            }
        }
    }

    public static boolean c(int i8) {
        return i8 == 3 || i8 == 2 || i8 == 268435456 || i8 == 21 || i8 == 1342177280 || i8 == 22 || i8 == 1610612736 || i8 == 4;
    }

    public static boolean d(Context context) {
        int i8 = f13234a;
        if (i8 < 29 || context.getApplicationInfo().targetSdkVersion < 29) {
            return true;
        }
        String str = f13237d;
        if (i8 == 30 && (p113o3.r.F(str, "moto g(20)") || p113o3.r.F(str, "rmx3231"))) {
            return true;
        }
        return i8 == 34 && p113o3.r.F(str, "sm-x200");
    }

    public static boolean e(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static void f(Handler handler, Runnable runnable) {
        if (handler.getLooper().getThread().isAlive()) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    public static Object[] g(int i8, Object[] objArr) {
        p113o3.r.J(i8 <= objArr.length);
        return Arrays.copyOf(objArr, i8);
    }

    /* JADX WARN: Code duplicated, block: B:61:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:71:0x0100  */
    /* JADX WARN: Instruction removed from duplicated block: B:71:0x0100, please report this as an issue */
    public static long h(long j8, long j9, long j10, RoundingMode roundingMode) {
        double dRint;
        long j11;
        long j12;
        boolean z7;
        long jM1 = Cw.m1(j8, j9);
        if (jM1 != Long.MAX_VALUE && jM1 != Long.MIN_VALUE) {
            return Cw.z0(jM1, j10, roundingMode);
        }
        long jX0 = Cw.X0(Math.abs(j9), Math.abs(j10));
        RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
        long jZ0 = Cw.z0(j9, jX0, roundingMode2);
        long jZ1 = Cw.z0(j10, jX0, roundingMode2);
        long jX1 = Cw.X0(Math.abs(j8), Math.abs(jZ1));
        long jZ2 = Cw.z0(j8, jX1, roundingMode2);
        long jZ3 = Cw.z0(jZ1, jX1, roundingMode2);
        long jM2 = Cw.m1(jZ2, jZ0);
        if (jM2 != Long.MAX_VALUE && jM2 != Long.MIN_VALUE) {
            return Cw.z0(jM2, jZ3, roundingMode);
        }
        double d6 = (jZ0 / jZ3) * jZ2;
        if (d6 > 9.223372036854776E18d) {
            return Long.MAX_VALUE;
        }
        if (d6 < -9.223372036854776E18d) {
            return Long.MIN_VALUE;
        }
        int i8 = AbstractC1659mB.f19917a;
        if (!Cw.P0(d6)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (AbstractC1607lB.f19722a[roundingMode.ordinal()]) {
            case 1:
                if (!AbstractC1659mB.b(d6)) {
                    throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                }
                dRint = d6;
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + String.valueOf(roundingMode));
            case 2:
                if (d6 >= 0.0d || AbstractC1659mB.b(d6)) {
                    dRint = d6;
                } else {
                    j11 = (long) d6;
                    j12 = -1;
                    dRint = j11 + j12;
                }
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + String.valueOf(roundingMode));
            case 3:
                if (d6 <= 0.0d || AbstractC1659mB.b(d6)) {
                    dRint = d6;
                } else {
                    j11 = (long) d6;
                    j12 = 1;
                    dRint = j11 + j12;
                }
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + String.valueOf(roundingMode));
            case 4:
                dRint = d6;
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + String.valueOf(roundingMode));
            case 5:
                if (AbstractC1659mB.b(d6)) {
                    dRint = d6;
                } else {
                    dRint = ((long) d6) + ((long) (d6 > 0.0d ? 1 : -1));
                }
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + String.valueOf(roundingMode));
            case 6:
                dRint = Math.rint(d6);
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + String.valueOf(roundingMode));
            case 7:
                dRint = Math.rint(d6);
                if (Math.abs(d6 - dRint) == 0.5d) {
                    dRint = Math.copySign(0.5d, d6) + d6;
                }
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + String.valueOf(roundingMode));
            case 8:
                dRint = Math.rint(d6);
                if (Math.abs(d6 - dRint) == 0.5d) {
                    dRint = d6;
                }
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + String.valueOf(roundingMode));
            default:
                throw new AssertionError();
        }
    }

    public static String i(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e8) {
            Zo.d("Util", "Failed to read system property ".concat(str), e8);
            return null;
        }
    }

    public static int j(int[] iArr, int i8, boolean z7, boolean z8) {
        int i9;
        int i10;
        int iBinarySearch = Arrays.binarySearch(iArr, i8);
        if (iBinarySearch < 0) {
            i10 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i9 = iBinarySearch - 1;
                if (i9 < 0 || iArr[i9] != i8) {
                    break;
                }
                iBinarySearch = i9;
            }
            i10 = z7 ? iBinarySearch : i9;
        }
        return z8 ? Math.max(0, i10) : i10;
    }

    public static int k(long[] jArr, long j8, boolean z7) {
        int i8;
        int iBinarySearch = Arrays.binarySearch(jArr, j8);
        if (iBinarySearch < 0) {
            i8 = -(iBinarySearch + 2);
        } else {
            while (true) {
                int i9 = iBinarySearch - 1;
                if (i9 < 0 || jArr[i9] != j8) {
                    break;
                }
                iBinarySearch = i9;
            }
            i8 = iBinarySearch;
        }
        return z7 ? Math.max(0, i8) : i8;
    }

    public static int l(int i8, byte[] bArr, int i9, int i10) {
        while (i8 < i9) {
            i10 = f13244k[(i10 >>> 24) ^ (bArr[i8] & 255)] ^ (i10 << 8);
            i8++;
        }
        return i10;
    }

    public static int m(int i8) {
        if (i8 == 20) {
            return 30;
        }
        if (i8 == 22) {
            return 31;
        }
        if (i8 == 30) {
            return 34;
        }
        switch (i8) {
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case 6:
                return 21;
            case 7:
            case 8:
                return 23;
            case 9:
            case 10:
            case 11:
            case 12:
                return 28;
            default:
                switch (i8) {
                    case 14:
                        return 25;
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        return 28;
                    default:
                        return com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:12:0x0015 A[RETURN] */
    public static int n(int i8) {
        switch (i8) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                return 6396;
            case 9:
            case 11:
            default:
                return 0;
            case 10:
                if (f13234a >= 32) {
                    return 737532;
                }
                return 6396;
            case 12:
                return 743676;
        }
    }

    public static int o(int i8) {
        if (i8 != 2) {
            if (i8 == 3) {
                return 1;
            }
            if (i8 != 4) {
                if (i8 != 21) {
                    if (i8 != 22) {
                        if (i8 != 268435456) {
                            if (i8 != 1342177280) {
                                if (i8 != 1610612736) {
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    }
                }
                return 3;
            }
            return 4;
        }
        return 2;
    }

    public static int p(int i8) {
        if (i8 == 2 || i8 == 4) {
            return 6005;
        }
        if (i8 == 10) {
            return 6004;
        }
        if (i8 == 7) {
            return 6005;
        }
        if (i8 == 8) {
            return 6003;
        }
        switch (i8) {
            case 15:
                return 6003;
            case 16:
            case 18:
                return 6005;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return 6004;
            default:
                switch (i8) {
                    case 24:
                    case 25:
                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                    case 27:
                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                        return 6002;
                    default:
                        return 6006;
                }
        }
    }

    public static int q(String str) {
        String[] strArrSplit;
        int length;
        int i8 = 0;
        if (str == null || (length = (strArrSplit = str.split("_", -1)).length) < 2) {
            return 0;
        }
        String str2 = strArrSplit[length - 1];
        boolean z7 = length >= 3 && "neg".equals(strArrSplit[length + (-2)]);
        str2.getClass();
        try {
            i8 = Integer.parseInt(str2);
            if (z7) {
                return -i8;
            }
        } catch (NumberFormatException unused) {
        }
        return i8;
    }

    public static int r(int i8) {
        if (i8 == 8) {
            return 3;
        }
        if (i8 == 16) {
            return 2;
        }
        if (i8 != 24) {
            return i8 != 32 ? 0 : 22;
        }
        return 21;
    }

    public static long s(long j8, float f8) {
        return f8 == 1.0f ? j8 : Math.round(j8 * ((double) f8));
    }

    public static long t(long j8) {
        return (j8 == -9223372036854775807L || j8 == Long.MIN_VALUE) ? j8 : j8 * 1000;
    }

    public static long u(int i8, long j8) {
        return v(j8, 1000000L, i8, RoundingMode.FLOOR);
    }

    public static long v(long j8, long j9, long j10, RoundingMode roundingMode) {
        if (j8 == 0 || j9 == 0) {
            return 0L;
        }
        if (j10 >= j9 && j10 % j9 == 0) {
            return Cw.z0(j8, Cw.z0(j10, j9, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (j10 < j9 && j9 % j10 == 0) {
            return Cw.m1(j8, Cw.z0(j9, j10, RoundingMode.UNNECESSARY));
        }
        if (j10 < j8 || j10 % j8 != 0) {
            return (j10 >= j8 || j8 % j10 != 0) ? h(j8, j9, j10, roundingMode) : Cw.m1(j9, Cw.z0(j8, j10, RoundingMode.UNNECESSARY));
        }
        return Cw.z0(j9, Cw.z0(j10, j8, RoundingMode.UNNECESSARY), roundingMode);
    }

    public static long w(long j8) {
        return (j8 == -9223372036854775807L || j8 == Long.MIN_VALUE) ? j8 : j8 / 1000;
    }

    public static AudioFormat x(int i8, int i9, int i10) {
        return new AudioFormat.Builder().setSampleRate(i8).setChannelMask(i9).setEncoding(i10).build();
    }
}
