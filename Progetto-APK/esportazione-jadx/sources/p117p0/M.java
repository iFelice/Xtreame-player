package p117p0;

import A4.e;
import B4.c;
import Q3.b;
import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Display;
import android.view.WindowManager;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import com.google.android.gms.common.api.d;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.H1;
import com.google.api.Endpoint;
import com.google.api.Service;
import com.google.protobuf.U2;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import okhttp3.HttpUrl;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.videolan.libvlc.media.MediaPlayer;
import p094m0.AbstractC3123f;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p094m0.Y;
import p190y4.k;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public abstract class M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f28050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f28051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long[] f28052c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f28053d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f28054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pattern f28055f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Pattern f28056g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static HashMap f28057h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f28058i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String[] f28059j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f28060k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f28061l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f28062m;

    static {
        int i8 = Build.VERSION.SDK_INT;
        String str = Build.DEVICE;
        String str2 = Build.MANUFACTURER;
        f28050a = str + ", " + Build.MODEL + ", " + str2 + ", " + i8;
        f28051b = new byte[0];
        f28052c = new long[0];
        f28053d = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f28054e = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        f28055f = Pattern.compile("%([A-Fa-f0-9]{2})");
        f28056g = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f28058i = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f28059j = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f28060k = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f28061l = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        f28062m = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, WebSocketProtocol.PAYLOAD_SHORT, 121, 108, 107, 98, Endpoint.TARGET_FIELD_NUMBER, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, ModuleDescriptor.MODULE_VERSION, 132, 131, 222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    public static int A(int i8, ByteOrder byteOrder) {
        if (i8 == 8) {
            return 3;
        }
        if (i8 == 16) {
            return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 2 : 268435456;
        }
        if (i8 == 24) {
            return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 21 : 1342177280;
        }
        if (i8 != 32) {
            return 0;
        }
        return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 22 : 1610612736;
    }

    public static C3136t B(int i8, int i9, int i10) {
        C3135s c3135s = new C3135s();
        c3135s.f26996n = O.p("audio/raw");
        c3135s.f26973F = i9;
        c3135s.f26974G = i10;
        c3135s.f26975H = i8;
        return c3135s.a();
    }

    public static long C(long j8, float f8) {
        return f8 == 1.0f ? j8 : Math.round(j8 / ((double) f8));
    }

    public static String D(StringBuilder sb, Formatter formatter, long j8) {
        long j9 = j8 == -9223372036854775807L ? 0L : j8;
        String str = j9 < 0 ? "-" : HttpUrl.FRAGMENT_ENCODE_SET;
        long jAbs = (Math.abs(j9) + 500) / 1000;
        long j10 = jAbs % 60;
        long j11 = (jAbs / 60) % 60;
        long j12 = jAbs / 3600;
        sb.setLength(0);
        return j12 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j12), Long.valueOf(j11), Long.valueOf(j10)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j11), Long.valueOf(j10)).toString();
    }

    public static String[] E() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        String[] strArrSplit = Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().toLanguageTags().split(",", -1) : new String[]{configuration.locale.toLanguageTag()};
        for (int i8 = 0; i8 < strArrSplit.length; i8++) {
            strArrSplit[i8] = S(strArrSplit[i8]);
        }
        return strArrSplit;
    }

    public static String F(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e8) {
            x.d("Util", "Failed to read system property ".concat(str), e8);
            return null;
        }
    }

    public static String G(int i8) {
        switch (i8) {
            case CompanionAdSlot.FLUID_SIZE /* -2 */:
                return "none";
            case -1:
                return zzbz.UNKNOWN_CONTENT_TYPE;
            case 0:
                return "default";
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return "metadata";
            case 6:
                return "camera motion";
            default:
                return i8 >= 10000 ? A0.O.y("custom (", i8, ")") : "?";
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003e  */
    /* JADX WARN: Code duplicated, block: B:16:0x0042  */
    public static boolean H(Y y7) {
        boolean z7;
        AbstractC3123f abstractC3123f;
        B0.O o4 = (B0.O) y7;
        int iC = o4.C();
        if (iC != 1 || !((AbstractC3123f) y7).c(2)) {
            z7 = false;
            if (iC == 4) {
                AbstractC3123f abstractC3123f2 = (AbstractC3123f) y7;
                if (abstractC3123f2.c(4)) {
                    abstractC3123f2.i(((B0.O) abstractC3123f2).t(), -9223372036854775807L, false);
                }
            }
            abstractC3123f = (AbstractC3123f) y7;
            if (abstractC3123f.c(1)) {
                return z7;
            }
            abstractC3123f.h();
            return true;
        }
        o4.K();
        z7 = true;
        abstractC3123f = (AbstractC3123f) y7;
        if (abstractC3123f.c(1)) {
            return z7;
        }
        abstractC3123f.h();
        return true;
    }

    public static int I(Uri uri) {
        int iJ;
        String scheme = uri.getScheme();
        if (scheme != null && (k.B("rtsp", scheme) || k.B("rtspt", scheme))) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf >= 0 && (iJ = J(lastPathSegment.substring(iLastIndexOf + 1))) != 4) {
            return iJ;
        }
        String path = uri.getPath();
        path.getClass();
        Matcher matcher = f28056g.matcher(path);
        if (!matcher.matches()) {
            return 4;
        }
        String strGroup = matcher.group(2);
        if (strGroup != null) {
            if (strGroup.contains("format=mpd-time-csf")) {
                return 0;
            }
            if (strGroup.contains("format=m3u8-aapl")) {
                return 2;
            }
        }
        return 1;
    }

    public static int J(String str) {
        String strH0 = k.h0(str);
        strH0.getClass();
        switch (strH0) {
            case "ism":
            case "isml":
                return 1;
            case "mpd":
                return 0;
            case "m3u8":
                return 2;
            default:
                return 4;
        }
    }

    public static boolean K(E e8, E e9, Inflater inflater) {
        if (e8.a() == 0) {
            return false;
        }
        if (e9.f28035a.length < e8.a()) {
            e9.c(e8.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(e8.f28035a, e8.f28036b, e8.a());
        int iInflate = 0;
        while (true) {
            try {
                byte[] bArr = e9.f28035a;
                iInflate += inflater.inflate(bArr, iInflate, bArr.length - iInflate);
                if (inflater.finished()) {
                    e9.K(iInflate);
                    inflater.reset();
                    return true;
                }
                if (!inflater.needsDictionary() && !inflater.needsInput()) {
                    byte[] bArr2 = e9.f28035a;
                    if (iInflate == bArr2.length) {
                        e9.c(bArr2.length * 2);
                    }
                }
                inflater.reset();
                return false;
            } catch (DataFormatException unused) {
                inflater.reset();
                return false;
            } catch (Throwable th) {
                inflater.reset();
                throw th;
            }
        }
    }

    public static void L(int i8) {
        Integer.toString(i8, 36);
    }

    public static boolean M(int i8) {
        return i8 == 3 || i8 == 2 || i8 == 268435456 || i8 == 21 || i8 == 1342177280 || i8 == 22 || i8 == 1610612736 || i8 == 4;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    public static boolean N(Context context) {
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 29 && context.getApplicationInfo().targetSdkVersion >= 29) {
            if (i8 != 30) {
                if (i8 == 34) {
                }
                return false;
            }
            String str = Build.MODEL;
            if (!k.B(str, "moto g(20)") && !k.B(str, "rmx3231")) {
                if (i8 == 34 || !k.B(Build.MODEL, "sm-x200")) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean O(int i8) {
        return i8 == 10 || i8 == 13;
    }

    public static boolean P(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static String Q(Context context, String str) {
        InputStream inputStreamOpen = null;
        try {
            inputStreamOpen = context.getAssets().open(str);
            return o(e.b(inputStreamOpen));
        } finally {
            g(inputStreamOpen);
        }
    }

    public static long R(long j8) {
        return (j8 == -9223372036854775807L || j8 == Long.MIN_VALUE) ? j8 : j8 * 1000;
    }

    public static String S(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals("und")) {
            str = strReplace;
        }
        String strH0 = k.h0(str);
        int i8 = 0;
        String str2 = strH0.split("-", 2)[0];
        if (f28057h == null) {
            String[] iSOLanguages = Locale.getISOLanguages();
            int length = iSOLanguages.length;
            String[] strArr = f28058i;
            HashMap map = new HashMap(length + strArr.length);
            for (String str3 : iSOLanguages) {
                try {
                    String iSO3Language = new Locale(str3).getISO3Language();
                    if (!TextUtils.isEmpty(iSO3Language)) {
                        map.put(iSO3Language, str3);
                    }
                } catch (MissingResourceException unused) {
                }
            }
            for (int i9 = 0; i9 < strArr.length; i9 += 2) {
                map.put(strArr[i9], strArr[i9 + 1]);
            }
            f28057h = map;
        }
        String str4 = (String) f28057h.get(str2);
        if (str4 != null) {
            StringBuilder sbO = U2.o(str4);
            sbO.append(strH0.substring(str2.length()));
            strH0 = sbO.toString();
            str2 = str4;
        }
        if (!"no".equals(str2) && !"i".equals(str2) && !"zh".equals(str2)) {
            return strH0;
        }
        while (true) {
            String[] strArr2 = f28059j;
            if (i8 >= strArr2.length) {
                return strH0;
            }
            if (strH0.startsWith(strArr2[i8])) {
                return strArr2[i8 + 1] + strH0.substring(strArr2[i8].length());
            }
            i8 += 2;
        }
    }

    public static Object[] T(int i8, Object[] objArr) {
        H1.d(i8 <= objArr.length);
        return Arrays.copyOf(objArr, i8);
    }

    public static long U(String str) throws P {
        Matcher matcher = f28053d.matcher(str);
        if (!matcher.matches()) {
            throw P.a("Invalid date/time format: " + str, null);
        }
        int i8 = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            i8 = Integer.parseInt(matcher.group(13)) + (Integer.parseInt(matcher.group(12)) * 60);
            if ("-".equals(matcher.group(11))) {
                i8 *= -1;
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        return i8 != 0 ? timeInMillis - (((long) i8) * 60000) : timeInMillis;
    }

    public static void V(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (looper.getThread().isAlive()) {
            if (looper == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    public static void W(int i8, int i9, ArrayList arrayList) {
        if (i8 < 0 || i9 > arrayList.size() || i8 > i9) {
            throw new IllegalArgumentException();
        }
        if (i8 != i9) {
            arrayList.subList(i8, i9).clear();
        }
    }

    public static long X(int i8, long j8) {
        return Z(j8, 1000000L, i8, RoundingMode.DOWN);
    }

    public static void Y(long j8, long[] jArr) {
        RoundingMode roundingMode = RoundingMode.DOWN;
        int i8 = 0;
        if (j8 >= 1000000 && j8 % 1000000 == 0) {
            long jD = b.d(j8, 1000000L, RoundingMode.UNNECESSARY);
            while (i8 < jArr.length) {
                jArr[i8] = b.d(jArr[i8], jD, roundingMode);
                i8++;
            }
            return;
        }
        if (j8 < 1000000 && 1000000 % j8 == 0) {
            long jD2 = b.d(1000000L, j8, RoundingMode.UNNECESSARY);
            while (i8 < jArr.length) {
                jArr[i8] = b.x(jArr[i8], jD2);
                i8++;
            }
            return;
        }
        for (int i9 = 0; i9 < jArr.length; i9++) {
            long j9 = jArr[i9];
            if (j9 != 0) {
                if (j8 >= j9 && j8 % j9 == 0) {
                    jArr[i9] = b.d(1000000L, b.d(j8, j9, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j8 >= j9 || j9 % j8 != 0) {
                    jArr[i9] = a0(j9, 1000000L, j8, roundingMode);
                } else {
                    jArr[i9] = b.x(1000000L, b.d(j9, j8, RoundingMode.UNNECESSARY));
                }
            }
        }
    }

    public static long Z(long j8, long j9, long j10, RoundingMode roundingMode) {
        if (j8 == 0 || j9 == 0) {
            return 0L;
        }
        if (j10 >= j9 && j10 % j9 == 0) {
            return b.d(j8, b.d(j10, j9, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (j10 < j9 && j9 % j10 == 0) {
            return b.x(j8, b.d(j9, j10, RoundingMode.UNNECESSARY));
        }
        if (j10 < j8 || j10 % j8 != 0) {
            return (j10 >= j8 || j8 % j10 != 0) ? a0(j8, j9, j10, roundingMode) : b.x(j9, b.d(j8, j10, RoundingMode.UNNECESSARY));
        }
        return b.d(j9, b.d(j10, j8, RoundingMode.UNNECESSARY), roundingMode);
    }

    public static int a(long[] jArr, long j8, boolean z7) {
        int i8;
        int iBinarySearch = Arrays.binarySearch(jArr, j8);
        if (iBinarySearch < 0) {
            return ~iBinarySearch;
        }
        while (true) {
            i8 = iBinarySearch + 1;
            if (i8 >= jArr.length || jArr[i8] != j8) {
                break;
            }
            iBinarySearch = i8;
        }
        return z7 ? iBinarySearch : i8;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x0095  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff  */
    /* JADX WARN: Instruction removed from duplicated block: B:67:0x00ff, please report this as an issue */
    public static long a0(long j8, long j9, long j10, RoundingMode roundingMode) {
        long j11;
        double dRint;
        boolean z7;
        long jX = b.x(j8, j9);
        if (jX != Long.MAX_VALUE && jX != Long.MIN_VALUE) {
            return b.d(jX, j10, roundingMode);
        }
        long jH = b.h(Math.abs(j9), Math.abs(j10));
        RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
        long jD = b.d(j9, jH, roundingMode2);
        long jD2 = b.d(j10, jH, roundingMode2);
        long jH2 = b.h(Math.abs(j8), Math.abs(jD2));
        long jD3 = b.d(j8, jH2, roundingMode2);
        long jD4 = b.d(jD2, jH2, roundingMode2);
        long jX2 = b.x(jD3, jD);
        if (jX2 != Long.MAX_VALUE && jX2 != Long.MIN_VALUE) {
            return b.d(jX2, jD4, roundingMode);
        }
        double d6 = jD3 * (jD / jD4);
        if (d6 > 9.223372036854776E18d) {
            return Long.MAX_VALUE;
        }
        if (d6 < -9.223372036854776E18d) {
            return Long.MIN_VALUE;
        }
        int i8 = c.f1215a;
        if (!k.P(d6)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (B4.b.f1214a[roundingMode.ordinal()]) {
            case 1:
                Cw.i(c.a(d6));
                dRint = d6;
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + roundingMode);
            case 2:
                if (d6 >= 0.0d || c.a(d6)) {
                    dRint = d6;
                } else {
                    j11 = ((long) d6) - 1;
                    dRint = j11;
                }
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + roundingMode);
            case 3:
                if (d6 <= 0.0d || c.a(d6)) {
                    dRint = d6;
                } else {
                    j11 = ((long) d6) + 1;
                    dRint = j11;
                }
                if ((-9.223372036854776E18d) - dRint < 1.0d) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7 && (dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + roundingMode);
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
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + roundingMode);
            case 5:
                if (c.a(d6)) {
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
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + roundingMode);
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
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + roundingMode);
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
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + roundingMode);
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
                throw new ArithmeticException("rounded value is out of range for input " + d6 + " and rounding mode " + roundingMode);
            default:
                throw new AssertionError();
        }
    }

    public static int b(y yVar, long j8) {
        int i8 = yVar.f28127a - 1;
        int i9 = 0;
        while (i9 <= i8) {
            int i10 = (i9 + i8) >>> 1;
            if (yVar.c(i10) < j8) {
                i9 = i10 + 1;
            } else {
                i8 = i10 - 1;
            }
        }
        int i11 = i8 + 1;
        if (i11 < yVar.f28127a && yVar.c(i11) == j8) {
            return i11;
        }
        if (i8 == -1) {
            return 0;
        }
        return i8;
    }

    public static boolean b0(Y y7, boolean z7) {
        if (y7 == null) {
            return true;
        }
        B0.O o4 = (B0.O) y7;
        if (!o4.B() || o4.C() == 1 || o4.C() == 4) {
            return true;
        }
        if (z7) {
            o4.c0();
            if (o4.f778N0.f1105n != 0) {
                o4.c0();
                if (o4.f778N0.f1105n != 4) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int c(H h8, Long l4, boolean z7) {
        int i8;
        int iBinarySearch = Collections.binarySearch(h8, l4);
        if (iBinarySearch < 0) {
            i8 = -(iBinarySearch + 2);
        } else {
            while (true) {
                int i9 = iBinarySearch - 1;
                if (i9 < 0 || ((Comparable) h8.get(i9)).compareTo(l4) != 0) {
                    break;
                }
                iBinarySearch = i9;
            }
            i8 = iBinarySearch;
        }
        return z7 ? Math.max(0, i8) : i8;
    }

    public static String[] c0(String str) {
        return str.split(MqttTopic.TOPIC_LEVEL_SEPARATOR, -1);
    }

    public static int d(int[] iArr, int i8, boolean z7, boolean z8) {
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

    public static String[] d0(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : str.trim().split("(\\s*,\\s*)", -1);
    }

    public static int e(long[] jArr, long j8, boolean z7) {
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

    public static long e0(long j8) {
        return (j8 == -9223372036854775807L || j8 == Long.MIN_VALUE) ? j8 : j8 / 1000;
    }

    public static int f(int i8, int i9) {
        return ((i8 + i9) - 1) / i9;
    }

    public static void g(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static float h(float f8, float f9, float f10) {
        return Math.max(f9, Math.min(f8, f10));
    }

    public static int i(int i8, int i9, int i10) {
        return Math.max(i9, Math.min(i8, i10));
    }

    public static long j(long j8, long j9, long j10) {
        return Math.max(j9, Math.min(j8, j10));
    }

    public static boolean k(SparseArray sparseArray, int i8) {
        return sparseArray.indexOfKey(i8) >= 0;
    }

    public static boolean l(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (Objects.equals(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    public static int m(int i8, byte[] bArr, int i9, int i10) {
        while (i8 < i9) {
            i10 = f28060k[((i10 >>> 24) ^ (bArr[i8] & 255)) & 255] ^ (i10 << 8);
            i8++;
        }
        return i10;
    }

    public static Handler n(Handler.Callback callback) {
        Looper looperMyLooper = Looper.myLooper();
        H1.j(looperMyLooper);
        return new Handler(looperMyLooper, callback);
    }

    public static String o(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public static int p(int i8) {
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
                        switch (i8) {
                            case 20:
                                return 30;
                            case 21:
                            case 22:
                                return 31;
                            default:
                                return d.API_PRIORITY_OTHER;
                        }
                }
        }
    }

    public static AudioFormat q(int i8, int i9, int i10) {
        return new AudioFormat.Builder().setSampleRate(i8).setChannelMask(i9).setEncoding(i10).build();
    }

    public static int r(int i8) {
        if (i8 == 10) {
            return Build.VERSION.SDK_INT >= 32 ? 737532 : 6396;
        }
        if (i8 == 12) {
            return 743676;
        }
        if (i8 == 24) {
            return Build.VERSION.SDK_INT >= 32 ? 67108860 : 0;
        }
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
            default:
                return 0;
        }
    }

    public static int s(int i8) {
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

    public static int t(int i8, String str) {
        int i9 = 0;
        for (String str2 : d0(str)) {
            if (i8 == O.i(O.e(str2))) {
                i9++;
            }
        }
        return i9;
    }

    public static String u(int i8, String str) {
        String[] strArrD0 = d0(str);
        if (strArrD0.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrD0) {
            if (i8 == O.i(O.e(str2))) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public static Point v(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getClass();
            display = windowManager.getDefaultDisplay();
        }
        if (display.getDisplayId() == 0 && P(context)) {
            String strF = Build.VERSION.SDK_INT < 28 ? F("sys.display-size") : F("vendor.display-size");
            if (!TextUtils.isEmpty(strF)) {
                try {
                    String[] strArrSplit = strF.trim().split("x", -1);
                    if (strArrSplit.length == 2) {
                        int i8 = Integer.parseInt(strArrSplit[0]);
                        int i9 = Integer.parseInt(strArrSplit[1]);
                        if (i8 > 0 && i9 > 0) {
                            return new Point(i8, i9);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                x.c("Util", "Invalid display size: " + strF);
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        if (Build.VERSION.SDK_INT < 23) {
            display.getRealSize(point);
            return point;
        }
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
        return point;
    }

    public static int w(int i8) {
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

    public static int x(String str) {
        String[] strArrSplit;
        int length;
        if (str == null || (length = (strArrSplit = str.split("_", -1)).length) < 2) {
            return 0;
        }
        String str2 = strArrSplit[length - 1];
        boolean z7 = length >= 3 && "neg".equals(strArrSplit[length - 2]);
        try {
            str2.getClass();
            int i8 = Integer.parseInt(str2);
            return z7 ? -i8 : i8;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static long y(long j8, float f8) {
        return f8 == 1.0f ? j8 : Math.round(j8 * ((double) f8));
    }

    public static long z(long j8) {
        return j8 == -9223372036854775807L ? System.currentTimeMillis() : j8 + SystemClock.elapsedRealtime();
    }
}
