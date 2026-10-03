package Z6;

import com.google.protobuf.U2;
import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import java.util.TreeSet;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Locale f8505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f8506c = new HashMap();

    public l(Locale locale) {
        this.f8505b = Y6.a.a(locale);
        StringBuilder sbO = U2.o("((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}");
        TreeSet<String> treeSet = new TreeSet(m.f8508N);
        for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
            String str = strArr[0];
            if (!str.equalsIgnoreCase("GMT")) {
                TimeZone timeZone = TimeZone.getTimeZone(str);
                k kVar = new k(timeZone, false);
                k kVar2 = kVar;
                for (int i8 = 1; i8 < strArr.length; i8++) {
                    if (i8 == 3) {
                        kVar2 = new k(timeZone, true);
                    } else if (i8 == 5) {
                        kVar2 = kVar;
                    }
                    String str2 = strArr[i8];
                    if (str2 != null) {
                        String lowerCase = str2.toLowerCase(locale);
                        if (treeSet.add(lowerCase)) {
                            this.f8506c.put(lowerCase, kVar2);
                        }
                    }
                }
            }
        }
        for (String str3 : treeSet) {
            sbO.append('|');
            m.c(sbO, str3);
        }
        sbO.append(")");
        this.f8500a = Pattern.compile(sbO.toString());
    }

    @Override // Z6.h
    public final void c(Calendar calendar, String str) {
        F fA = D.a(str);
        if (fA != null) {
            calendar.setTimeZone(fA);
            return;
        }
        String lowerCase = str.toLowerCase(this.f8505b);
        HashMap map = this.f8506c;
        k kVar = (k) map.get(lowerCase);
        if (kVar == null) {
            kVar = (k) map.get(lowerCase + '.');
        }
        calendar.set(16, kVar.f8504b);
        calendar.set(15, kVar.f8503a.getRawOffset());
    }

    @Override // Z6.h
    public final String toString() {
        return "TimeZoneStrategy [locale=" + this.f8505b + ", tzNames=" + this.f8506c + ", pattern=" + this.f8500a + "]";
    }
}
