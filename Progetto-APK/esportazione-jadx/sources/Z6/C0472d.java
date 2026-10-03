package Z6;

import com.google.protobuf.U2;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: Z6.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0472d extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Locale f8493c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f8494d;

    public C0472d(int i8, Calendar calendar, Locale locale) {
        this.f8492b = i8;
        this.f8493c = Y6.a.a(locale);
        StringBuilder sbO = U2.o("((?iu)");
        HashMap map = new HashMap();
        Locale localeA = Y6.a.a(locale);
        Map<String, Integer> displayNames = calendar.getDisplayNames(i8, 0, localeA);
        TreeSet treeSet = new TreeSet(m.f8508N);
        for (Map.Entry<String, Integer> entry : displayNames.entrySet()) {
            String lowerCase = entry.getKey().toLowerCase(localeA);
            if (treeSet.add(lowerCase)) {
                map.put(lowerCase, entry.getValue());
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            m.c(sbO, (String) it.next());
            sbO.append('|');
        }
        this.f8494d = map;
        sbO.setLength(sbO.length() - 1);
        sbO.append(")");
        this.f8500a = Pattern.compile(sbO.toString());
    }

    @Override // Z6.h
    public final void c(Calendar calendar, String str) {
        String lowerCase = str.toLowerCase(this.f8493c);
        HashMap map = this.f8494d;
        Integer num = (Integer) map.get(lowerCase);
        if (num == null) {
            num = (Integer) map.get(lowerCase + '.');
        }
        calendar.set(this.f8492b, num.intValue());
    }

    @Override // Z6.h
    public final String toString() {
        return "CaseInsensitiveTextStrategy [field=" + this.f8492b + ", locale=" + this.f8493c + ", lKeyValues=" + this.f8494d + ", pattern=" + this.f8500a + "]";
    }
}
