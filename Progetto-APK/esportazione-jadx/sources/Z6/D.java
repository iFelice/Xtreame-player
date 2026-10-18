package Z6;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public abstract class D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f8481a = Pattern.compile("^(?:(?i)GMT)?([+-])?(\\d\\d?)?(:?(\\d\\d?))?$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final F f8482b = new F(false, 0, 0);

    public static F a(String str) {
        boolean zEquals = "Z".equals(str);
        F f8 = f8482b;
        if (zEquals || "UTC".equals(str)) {
            return f8;
        }
        Matcher matcher = f8481a.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(2);
        boolean z7 = false;
        int i8 = strGroup != null ? Integer.parseInt(strGroup) : 0;
        String strGroup2 = matcher.group(4);
        int i9 = strGroup2 != null ? Integer.parseInt(strGroup2) : 0;
        if (i8 == 0 && i9 == 0) {
            return f8;
        }
        String strGroup3 = matcher.group(1);
        if (strGroup3 != null && strGroup3.charAt(0) == '-') {
            z7 = true;
        }
        return new F(z7, i8, i9);
    }
}
