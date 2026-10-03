package p195z1;

import Z3.H;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.gms.internal.measurement.H1;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p110o0.e;
import p110o0.g;
import p110o0.i;
import p117p0.E;
import p117p0.M;
import p117p0.x;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f31745a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*)?$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f31746b = Pattern.compile("(\\S+?):(\\S+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f31747c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Map f31748d;

    static {
        HashMap map = new HashMap();
        a.e(255, 255, 255, map, "white");
        a.e(0, 255, 0, map, "lime");
        a.e(0, 255, 255, map, "cyan");
        a.e(255, 0, 0, map, "red");
        a.e(255, 255, 0, map, "yellow");
        a.e(255, 0, 255, map, "magenta");
        a.e(0, 0, 255, map, "blue");
        a.e(0, 0, 0, map, "black");
        f31747c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        a.e(255, 255, 255, map2, "bg_white");
        a.e(0, 255, 0, map2, "bg_lime");
        a.e(0, 255, 255, map2, "bg_cyan");
        a.e(255, 0, 0, map2, "bg_red");
        a.e(255, 255, 0, map2, "bg_yellow");
        a.e(255, 0, 255, map2, "bg_magenta");
        a.e(0, 0, 255, map2, "bg_blue");
        a.e(0, 0, 0, map2, "bg_black");
        f31748d = Collections.unmodifiableMap(map2);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0039  */
    /* JADX WARN: Code duplicated, block: B:91:0x019b  */
    public static void a(SpannableStringBuilder spannableStringBuilder, e eVar, String str, List list, List list2) {
        byte b8;
        int i8;
        int i9;
        int i10 = eVar.f31729b;
        int length = spannableStringBuilder.length();
        String str2 = eVar.f31728a;
        str2.getClass();
        int iHashCode = str2.hashCode();
        int i11 = -1;
        if (iHashCode != 0) {
            if (iHashCode != 105) {
                if (iHashCode != 3314158) {
                    if (iHashCode != 3511770) {
                        if (iHashCode != 98) {
                            if (iHashCode != 99) {
                                if (iHashCode != 117) {
                                    if (iHashCode == 118 && str2.equals("v")) {
                                        b8 = 5;
                                    } else {
                                        b8 = -1;
                                    }
                                } else if (str2.equals("u")) {
                                    b8 = 4;
                                } else {
                                    b8 = -1;
                                }
                            } else if (str2.equals("c")) {
                                b8 = 2;
                            } else {
                                b8 = -1;
                            }
                        } else if (str2.equals("b")) {
                            b8 = 1;
                        } else {
                            b8 = -1;
                        }
                    } else if (str2.equals("ruby")) {
                        b8 = 7;
                    } else {
                        b8 = -1;
                    }
                } else if (str2.equals("lang")) {
                    b8 = 6;
                } else {
                    b8 = -1;
                }
            } else if (str2.equals("i")) {
                b8 = 3;
            } else {
                b8 = -1;
            }
        } else if (str2.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
            b8 = 0;
        } else {
            b8 = -1;
        }
        switch (b8) {
            case 0:
            case 6:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i10, length, 33);
                break;
            case 2:
                for (String str3 : eVar.f31731d) {
                    Map map = f31747c;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i10, length, 33);
                    } else {
                        Map map2 = f31748d;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i10, length, 33);
                        }
                    }
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i10, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                break;
            case 5:
                spannableStringBuilder.setSpan(new i(eVar.f31730c), i10, length, 33);
                break;
            case 7:
                int iC = c(list2, str, eVar);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                Collections.sort(arrayList, d.f31725c);
                int i12 = eVar.f31729b;
                int i13 = 0;
                int length2 = 0;
                while (i13 < arrayList.size()) {
                    if ("rt".equals(((d) arrayList.get(i13)).f31726a.f31728a)) {
                        d dVar = (d) arrayList.get(i13);
                        int iC2 = c(list2, str, dVar.f31726a);
                        if (iC2 == i11) {
                            iC2 = iC != i11 ? iC : 1;
                        }
                        int i14 = dVar.f31726a.f31729b - length2;
                        int i15 = dVar.f31727b - length2;
                        CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i14, i15);
                        spannableStringBuilder.delete(i14, i15);
                        spannableStringBuilder.setSpan(new g(charSequenceSubSequence.toString(), iC2), i12, i14, 33);
                        length2 = charSequenceSubSequence.length() + length2;
                        i12 = i14;
                    }
                    i13++;
                    i11 = -1;
                }
                break;
            default:
                return;
        }
        ArrayList arrayListB = b(list2, str, eVar);
        for (int i16 = 0; i16 < arrayListB.size(); i16++) {
            b bVar = ((f) arrayListB.get(i16)).f31733H;
            if (bVar != null) {
                int i17 = bVar.f31716l;
                if (i17 == -1 && bVar.f31717m == -1) {
                    i8 = 1;
                } else if (((i17 == 1 ? (char) 1 : (char) 0) | (bVar.f31717m == 1 ? (char) 2 : (char) 0)) != -1) {
                    int i18 = bVar.f31716l;
                    if (i18 == -1 && bVar.f31717m == -1) {
                        i9 = -1;
                        i8 = 1;
                    } else {
                        i8 = 1;
                        i9 = (i18 == 1 ? 1 : 0) | (bVar.f31717m == 1 ? 2 : 0);
                    }
                    H.a(spannableStringBuilder, new StyleSpan(i9), i10, length);
                } else {
                    i8 = 1;
                }
                if (bVar.f31714j == i8) {
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i10, length, 33);
                }
                if (bVar.f31715k == i8) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                }
                if (bVar.f31711g) {
                    if (!bVar.f31711g) {
                        throw new IllegalStateException("Font color not defined");
                    }
                    H.a(spannableStringBuilder, new ForegroundColorSpan(bVar.f31710f), i10, length);
                }
                if (bVar.f31713i) {
                    if (!bVar.f31713i) {
                        throw new IllegalStateException("Background color not defined.");
                    }
                    H.a(spannableStringBuilder, new BackgroundColorSpan(bVar.f31712h), i10, length);
                }
                if (bVar.f31709e != null) {
                    H.a(spannableStringBuilder, new TypefaceSpan(bVar.f31709e), i10, length);
                }
                int i19 = bVar.f31718n;
                if (i19 == 1) {
                    H.a(spannableStringBuilder, new AbsoluteSizeSpan((int) bVar.f31719o, true), i10, length);
                } else if (i19 == 2) {
                    H.a(spannableStringBuilder, new RelativeSizeSpan(bVar.f31719o), i10, length);
                } else if (i19 == 3) {
                    H.a(spannableStringBuilder, new RelativeSizeSpan(bVar.f31719o / 100.0f), i10, length);
                }
                if (bVar.f31721q) {
                    spannableStringBuilder.setSpan(new e(), i10, length, 33);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x006a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5, types: [int] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    public static ArrayList b(List list, String str, e eVar) {
        ?? r7;
        int size;
        boolean zIsEmpty;
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < list.size(); i8++) {
            b bVar = (b) list.get(i8);
            String str2 = eVar.f31728a;
            if (bVar.f31705a.isEmpty() && bVar.f31706b.isEmpty() && bVar.f31707c.isEmpty() && bVar.f31708d.isEmpty()) {
                zIsEmpty = TextUtils.isEmpty(str2);
            } else {
                int iA = b.a(b.a(b.a(0, 1073741824, bVar.f31705a, str), 2, bVar.f31706b, str2), 4, bVar.f31708d, eVar.f31730c);
                if (iA != -1) {
                    if (eVar.f31731d.containsAll(bVar.f31707c)) {
                        size = iA + (bVar.f31707c.size() * 4);
                    } else {
                        r7 = 0;
                    }
                } else {
                    r7 = 0;
                }
            }
            if (r7 > 0) {
                r7 = size;
                r7 = zIsEmpty;
                arrayList.add(new f(r7, bVar));
            } else {
                r7 = size;
                r7 = zIsEmpty;
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static int c(List list, String str, e eVar) {
        ArrayList arrayListB = b(list, str, eVar);
        for (int i8 = 0; i8 < arrayListB.size(); i8++) {
            int i9 = ((f) arrayListB.get(i8)).f31733H.f31720p;
            if (i9 != -1) {
                return i9;
            }
        }
        return -1;
    }

    public static c d(String str, Matcher matcher, E e8, ArrayList arrayList) {
        g gVar = new g();
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            gVar.f31734a = i.c(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            gVar.f31735b = i.c(strGroup2);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            e(strGroup3, gVar);
            StringBuilder sb = new StringBuilder();
            String strM = e8.m(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(strM)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strM.trim());
                strM = e8.m(StandardCharsets.UTF_8);
            }
            gVar.f31736c = f(str, sb.toString(), arrayList);
            return new c(gVar.a().a(), gVar.f31734a, gVar.f31735b);
        } catch (IllegalArgumentException unused) {
            x.f("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:54:0x00bf  */
    public static void e(String str, g gVar) {
        int i8;
        int i9;
        Matcher matcher = f31746b.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i10 = 2;
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            try {
                if ("line".equals(strGroup)) {
                    g(strGroup2, gVar);
                } else {
                    if ("align".equals(strGroup)) {
                        switch (strGroup2) {
                            case "center":
                            case "middle":
                                i8 = 2;
                                break;
                            case "end":
                                i8 = 3;
                                break;
                            case "left":
                                i8 = 4;
                                break;
                            case "right":
                                i8 = 5;
                                break;
                            case "start":
                                i8 = 1;
                                break;
                            default:
                                x.f("WebvttCueParser", "Invalid alignment value: ".concat(strGroup2));
                                i8 = 2;
                                break;
                        }
                        gVar.f31737d = i8;
                    } else if ("position".equals(strGroup)) {
                        int iIndexOf = strGroup2.indexOf(44);
                        if (iIndexOf != -1) {
                            String strSubstring = strGroup2.substring(iIndexOf + 1);
                            strSubstring.getClass();
                            switch (strSubstring) {
                                case "line-left":
                                case "start":
                                    i10 = 0;
                                    break;
                                case "center":
                                case "middle":
                                    i10 = 1;
                                    break;
                                case "line-right":
                                case "end":
                                    break;
                                default:
                                    x.f("WebvttCueParser", "Invalid anchor value: ".concat(strSubstring));
                                    i10 = Integer.MIN_VALUE;
                                    break;
                            }
                            gVar.f31742i = i10;
                            strGroup2 = strGroup2.substring(0, iIndexOf);
                        }
                        gVar.f31741h = i.b(strGroup2);
                    } else if ("size".equals(strGroup)) {
                        gVar.f31743j = i.b(strGroup2);
                    } else if ("vertical".equals(strGroup)) {
                        if (strGroup2.equals("lr")) {
                            i9 = 2;
                        } else if (strGroup2.equals("rl")) {
                            i9 = 1;
                        } else {
                            x.f("WebvttCueParser", "Invalid 'vertical' value: ".concat(strGroup2));
                            i9 = Integer.MIN_VALUE;
                        }
                        gVar.f31744k = i9;
                    } else {
                        x.f("WebvttCueParser", "Unknown cue setting " + strGroup + ":" + strGroup2);
                    }
                }
            } catch (NumberFormatException unused) {
                x.f("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x00a0  */
    public static SpannedString f(String str, String str2, List list) {
        char c8;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i8 = 0;
        while (true) {
            int length = str2.length();
            String strTrim = HttpUrl.FRAGMENT_ENCODE_SET;
            if (i8 >= length) {
                while (!arrayDeque.isEmpty()) {
                    a(spannableStringBuilder, (e) arrayDeque.pop(), str, arrayList, list);
                }
                a(spannableStringBuilder, new e(HttpUrl.FRAGMENT_ENCODE_SET, 0, HttpUrl.FRAGMENT_ENCODE_SET, Collections.emptySet()), str, Collections.emptyList(), list);
                return SpannedString.valueOf(spannableStringBuilder);
            }
            char cCharAt = str2.charAt(i8);
            byte b8 = 2;
            if (cCharAt == '&') {
                i8++;
                int iIndexOf = str2.indexOf(59, i8);
                int iIndexOf2 = str2.indexOf(32, i8);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    String strSubstring = str2.substring(i8, iIndexOf);
                    strSubstring.getClass();
                    switch (strSubstring) {
                        case "gt":
                            spannableStringBuilder.append('>');
                            break;
                        case "lt":
                            spannableStringBuilder.append('<');
                            break;
                        case "amp":
                            spannableStringBuilder.append('&');
                            break;
                        case "nbsp":
                            spannableStringBuilder.append(' ');
                            break;
                        default:
                            x.f("WebvttCueParser", "ignoring unsupported entity: '&" + strSubstring + ";'");
                            break;
                    }
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i8 = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i8++;
            } else {
                int length2 = i8 + 1;
                if (length2 < str2.length()) {
                    boolean z7 = str2.charAt(length2) == '/';
                    int iIndexOf3 = str2.indexOf(62, length2);
                    length2 = iIndexOf3 == -1 ? str2.length() : iIndexOf3 + 1;
                    int i9 = length2 - 2;
                    boolean z8 = str2.charAt(i9) == '/';
                    int i10 = i8 + (z7 ? 2 : 1);
                    if (!z8) {
                        i9 = length2 - 1;
                    }
                    String strSubstring2 = str2.substring(i10, i9);
                    if (!strSubstring2.trim().isEmpty()) {
                        String strTrim2 = strSubstring2.trim();
                        H1.d(!strTrim2.isEmpty());
                        String str3 = M.f28050a;
                        String str4 = strTrim2.split("[ \\.]", 2)[0];
                        str4.getClass();
                        switch (str4.hashCode()) {
                            case 98:
                                if (str4.equals("b")) {
                                    b8 = 0;
                                } else {
                                    b8 = -1;
                                }
                                break;
                            case 99:
                                if (str4.equals("c")) {
                                    b8 = 1;
                                } else {
                                    b8 = -1;
                                }
                                break;
                            case 105:
                                if (!str4.equals("i")) {
                                    b8 = -1;
                                }
                                break;
                            case 117:
                                if (str4.equals("u")) {
                                    b8 = 3;
                                } else {
                                    b8 = -1;
                                }
                                break;
                            case 118:
                                if (str4.equals("v")) {
                                    b8 = 4;
                                } else {
                                    b8 = -1;
                                }
                                break;
                            case 3650:
                                if (str4.equals("rt")) {
                                    b8 = 5;
                                } else {
                                    b8 = -1;
                                }
                                break;
                            case 3314158:
                                if (str4.equals("lang")) {
                                    b8 = 6;
                                } else {
                                    b8 = -1;
                                }
                                break;
                            case 3511770:
                                if (str4.equals("ruby")) {
                                    b8 = 7;
                                } else {
                                    b8 = -1;
                                }
                                break;
                            default:
                                b8 = -1;
                                break;
                        }
                        switch (b8) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                if (z7) {
                                    while (!arrayDeque.isEmpty()) {
                                        e eVar = (e) arrayDeque.pop();
                                        a(spannableStringBuilder, eVar, str, arrayList, list);
                                        if (arrayDeque.isEmpty()) {
                                            arrayList.clear();
                                        } else {
                                            arrayList.add(new d(eVar, spannableStringBuilder.length()));
                                        }
                                        if (eVar.f31728a.equals(str4)) {
                                            break;
                                        }
                                    }
                                } else if (!z8) {
                                    int length3 = spannableStringBuilder.length();
                                    String strTrim3 = strSubstring2.trim();
                                    H1.d(!strTrim3.isEmpty());
                                    int iIndexOf4 = strTrim3.indexOf(" ");
                                    if (iIndexOf4 == -1) {
                                        c8 = 0;
                                    } else {
                                        strTrim = strTrim3.substring(iIndexOf4).trim();
                                        c8 = 0;
                                        strTrim3 = strTrim3.substring(0, iIndexOf4);
                                    }
                                    String[] strArrSplit = strTrim3.split("\\.", -1);
                                    String str5 = strArrSplit[c8];
                                    HashSet hashSet = new HashSet();
                                    for (int i11 = 1; i11 < strArrSplit.length; i11++) {
                                        hashSet.add(strArrSplit[i11]);
                                    }
                                    arrayDeque.push(new e(str5, length3, strTrim, hashSet));
                                }
                                break;
                        }
                    }
                }
                i8 = length2;
            }
        }
    }

    public static void g(String str, g gVar) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            String strSubstring = str.substring(iIndexOf + 1);
            strSubstring.getClass();
            int i8 = 2;
            switch (strSubstring) {
                case "center":
                case "middle":
                    i8 = 1;
                    break;
                case "end":
                    break;
                case "start":
                    i8 = 0;
                    break;
                default:
                    x.f("WebvttCueParser", "Invalid anchor value: ".concat(strSubstring));
                    i8 = Integer.MIN_VALUE;
                    break;
            }
            gVar.f31740g = i8;
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            gVar.f31738e = i.b(str);
            gVar.f31739f = 0;
        } else {
            gVar.f31738e = Integer.parseInt(str);
            gVar.f31739f = 1;
        }
    }
}
