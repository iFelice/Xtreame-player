package p195z1;

import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;
import p094m0.P;
import p117p0.E;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f31749a = Pattern.compile("^NOTE([ \t].*)?$");

    public static boolean a(E e8) {
        e8.getClass();
        String strM = e8.m(StandardCharsets.UTF_8);
        return strM != null && strM.startsWith("WEBVTT");
    }

    public static float b(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long c(String str) {
        String str2 = M.f28050a;
        String[] strArrSplit = str.split("\\.", 2);
        long j8 = 0;
        for (String str3 : strArrSplit[0].split(":", -1)) {
            j8 = (j8 * 60) + Long.parseLong(str3);
        }
        long j9 = j8 * 1000;
        if (strArrSplit.length == 2) {
            String strTrim = strArrSplit[1].trim();
            if (strTrim.length() != 3) {
                throw new IllegalArgumentException("Expected 3 decimal places, got: ".concat(strTrim));
            }
            j9 += Long.parseLong(strTrim);
        }
        return j9 * 1000;
    }

    public static void d(E e8) {
        int i8 = e8.f28036b;
        if (a(e8)) {
            return;
        }
        e8.L(i8);
        throw P.a("Expected WEBVTT. Got " + e8.m(StandardCharsets.UTF_8), null);
    }
}
