package p141s0;

import android.text.TextUtils;
import java.net.CookieHandler;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p117p0.x;
import p148t.a;
import z4.i0;

/* JADX INFO: loaded from: classes.dex */
public abstract class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f29899a = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f29900b = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    public static String a(long j8, long j9) {
        if (j8 == 0 && j9 == -1) {
            return null;
        }
        StringBuilder sbD = a.d("bytes=", j8, "-");
        if (j9 != -1) {
            sbD.append((j8 + j9) - 1);
        }
        return sbD.toString();
    }

    public static long b(String str, String str2) {
        long j8;
        if (TextUtils.isEmpty(str)) {
            j8 = -1;
        } else {
            try {
                j8 = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                x.c("HttpUtil", "Unexpected Content-Length [" + str + "]");
                j8 = -1;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return j8;
        }
        Matcher matcher = f29899a.matcher(str2);
        if (!matcher.matches()) {
            return j8;
        }
        try {
            String strGroup = matcher.group(2);
            strGroup.getClass();
            long j9 = Long.parseLong(strGroup);
            String strGroup2 = matcher.group(1);
            strGroup2.getClass();
            long j10 = (j9 - Long.parseLong(strGroup2)) + 1;
            if (j8 < 0) {
                return j10;
            }
            if (j8 == j10) {
                return j8;
            }
            x.f("HttpUtil", "Inconsistent headers [" + str + "] [" + str2 + "]");
            return Math.max(j8, j10);
        } catch (NumberFormatException unused2) {
            x.c("HttpUtil", "Unexpected Content-Range [" + str2 + "]");
            return j8;
        }
    }

    public static String c(String str, Map map, CookieHandler cookieHandler) {
        List<String> list;
        if (cookieHandler == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        Map<String, List<String>> map2 = i0.f31862M;
        try {
            map2 = cookieHandler.get(new URI(str), map);
        } catch (Exception e8) {
            x.g("HttpUtil", "Failed to read cookies from CookieHandler", e8);
        }
        StringBuilder sb = new StringBuilder();
        if (map2.containsKey("Cookie") && (list = map2.get("Cookie")) != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append("; ");
            }
        }
        String string = sb.toString();
        int length = string.length();
        while (length > 0) {
            int iCodePointBefore = Character.codePointBefore(string, length);
            if (!Character.isWhitespace(iCodePointBefore)) {
                break;
            }
            length -= Character.charCount(iCodePointBefore);
        }
        return string.substring(0, length);
    }

    public static long d(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = f29900b.matcher(str);
        if (!matcher.matches()) {
            return -1L;
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        return Long.parseLong(strGroup);
    }

    public static void e(String str, Map map, CookieHandler cookieHandler) {
        if (cookieHandler == null) {
            return;
        }
        try {
            cookieHandler.put(new URI(str), map);
        } catch (Exception e8) {
            x.g("HttpUtil", "Failed to store cookies in CookieHandler", e8);
        }
    }
}
