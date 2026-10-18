package com.google.android.gms.internal.ads;

import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
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
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.y2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2273y2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f21987a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f21988b = Pattern.compile("(\\S+?):(\\S+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f21989c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Map f21990d;

    static {
        HashMap map = new HashMap();
        p148t.a.e(255, 255, 255, map, "white");
        p148t.a.e(0, 255, 0, map, "lime");
        p148t.a.e(0, 255, 255, map, "cyan");
        p148t.a.e(255, 0, 0, map, "red");
        p148t.a.e(255, 255, 0, map, "yellow");
        p148t.a.e(255, 0, 255, map, "magenta");
        p148t.a.e(0, 0, 255, map, "blue");
        p148t.a.e(0, 0, 0, map, "black");
        f21989c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        p148t.a.e(255, 255, 255, map2, "bg_white");
        p148t.a.e(0, 255, 0, map2, "bg_lime");
        p148t.a.e(0, 255, 255, map2, "bg_cyan");
        p148t.a.e(255, 0, 0, map2, "bg_red");
        p148t.a.e(255, 255, 0, map2, "bg_yellow");
        p148t.a.e(255, 0, 255, map2, "bg_magenta");
        p148t.a.e(0, 0, 255, map2, "bg_blue");
        p148t.a.e(0, 0, 0, map2, "bg_black");
        f21990d = Collections.unmodifiableMap(map2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x009f A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:37:0x00c5  */
    public static SpannedString a(String str, String str2, List list) {
        char c8;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int length = str2.length();
            String strTrim = HttpUrl.FRAGMENT_ENCODE_SET;
            if (i9 >= length) {
                while (!arrayDeque.isEmpty()) {
                    e(str, (C2169w2) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
                }
                e(str, new C2169w2(HttpUrl.FRAGMENT_ENCODE_SET, i8, HttpUrl.FRAGMENT_ENCODE_SET, Collections.emptySet()), Collections.emptyList(), spannableStringBuilder, list);
                return SpannedString.valueOf(spannableStringBuilder);
            }
            int length2 = i9 + 1;
            char cCharAt = str2.charAt(i9);
            if (cCharAt == '&') {
                int iIndexOf = str2.indexOf(59, length2);
                int iIndexOf2 = str2.indexOf(32, length2);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    String strSubstring = str2.substring(length2, iIndexOf);
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
                            Zo.f("WebvttCueParser", "ignoring unsupported entity: '&" + strSubstring + ";'");
                            break;
                    }
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i9 = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
                i8 = 0;
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
            } else if (length2 < str2.length()) {
                char cCharAt2 = str2.charAt(length2);
                int iIndexOf3 = str2.indexOf(62, length2);
                length2 = iIndexOf3 == -1 ? str2.length() : iIndexOf3 + 1;
                int i10 = length2 - 2;
                boolean z7 = str2.charAt(i10) == '/';
                int i11 = i9 + (cCharAt2 == '/' ? 2 : 1);
                if (!z7) {
                    i10 = length2 - 1;
                }
                String strSubstring2 = str2.substring(i11, i10);
                if (!strSubstring2.trim().isEmpty()) {
                    String strTrim2 = strSubstring2.trim();
                    p113o3.r.J(!strTrim2.isEmpty());
                    int i12 = Et.f13234a;
                    String str3 = strTrim2.split("[ \\.]", 2)[0];
                    str3.getClass();
                    switch (str3) {
                        case "b":
                        case "c":
                        case "i":
                        case "u":
                        case "v":
                        case "rt":
                        case "lang":
                        case "ruby":
                            if (cCharAt2 != '/') {
                                if (!z7) {
                                    int length3 = spannableStringBuilder.length();
                                    String strTrim3 = strSubstring2.trim();
                                    p113o3.r.J(!strTrim3.isEmpty());
                                    int iIndexOf4 = strTrim3.indexOf(" ");
                                    if (iIndexOf4 == -1) {
                                        c8 = 0;
                                    } else {
                                        strTrim = strTrim3.substring(iIndexOf4).trim();
                                        c8 = 0;
                                        strTrim3 = strTrim3.substring(0, iIndexOf4);
                                    }
                                    String[] strArrSplit = strTrim3.split("\\.", -1);
                                    String str4 = strArrSplit[c8];
                                    HashSet hashSet = new HashSet();
                                    for (int i13 = 1; i13 < strArrSplit.length; i13++) {
                                        hashSet.add(strArrSplit[i13]);
                                    }
                                    arrayDeque.push(new C2169w2(str4, length3, strTrim, hashSet));
                                }
                                break;
                            } else {
                                while (!arrayDeque.isEmpty()) {
                                    C2169w2 c2169w2 = (C2169w2) arrayDeque.pop();
                                    e(str, c2169w2, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new C2117v2(c2169w2, spannableStringBuilder.length()));
                                    }
                                    if (c2169w2.f21635a.equals(str3)) {
                                        break;
                                    }
                                }
                                break;
                            }
                        default:
                            break;
                    }
                }
            }
            i9 = length2;
            i8 = 0;
        }
    }

    public static int b(List list, String str, C2169w2 c2169w2) {
        ArrayList arrayListD = d(list, str, c2169w2);
        for (int i8 = 0; i8 < arrayListD.size(); i8++) {
            int i9 = ((C2221x2) arrayListD.get(i8)).f21825H.f20853o;
            if (i9 != -1) {
                return i9;
            }
        }
        return -1;
    }

    public static C2013t2 c(String str, Matcher matcher, C1534jr c1534jr, ArrayList arrayList) {
        p195z1.g gVar = new p195z1.g();
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            gVar.f31734a = AbstractC2987b.k0(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            gVar.f31735b = AbstractC2987b.k0(strGroup2);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            f(strGroup3, gVar);
            StringBuilder sb = new StringBuilder();
            String strI = c1534jr.I(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(strI)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strI.trim());
                strI = c1534jr.I(StandardCharsets.UTF_8);
            }
            gVar.f31736c = a(str, sb.toString(), arrayList);
            return new C2013t2(gVar.b().a(), gVar.f31734a, gVar.f31735b);
        } catch (NumberFormatException unused) {
            Zo.f("WebvttCueParser", "Skipping cue with bad header: ".concat(String.valueOf(matcher.group())));
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    public static ArrayList d(List list, String str, C2169w2 c2169w2) {
        int size;
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < list.size(); i8++) {
            C1961s2 c1961s2 = (C1961s2) list.get(i8);
            String str2 = c2169w2.f21635a;
            if (!c1961s2.f20839a.isEmpty() || !c1961s2.f20840b.isEmpty() || !c1961s2.f20841c.isEmpty() || !c1961s2.f20842d.isEmpty()) {
                int iA = C1961s2.a(C1961s2.a(C1961s2.a(0, 1073741824, c1961s2.f20839a, str), 2, c1961s2.f20840b, str2), 4, c1961s2.f20842d, c2169w2.f21637c);
                if (iA != -1) {
                    if (c2169w2.f21638d.containsAll(c1961s2.f20841c)) {
                        size = iA + (c1961s2.f20841c.size() * 4);
                    } else {
                        size = 0;
                    }
                } else {
                    size = 0;
                }
            } else if (TextUtils.isEmpty(str2)) {
                size = 1;
            } else {
                size = 0;
            }
            if (size > 0) {
                arrayList.add(new C2221x2(size, c1961s2));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0087  */
    /* JADX WARN: Code duplicated, block: B:83:0x0188  */
    public static void e(String str, C2169w2 c2169w2, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        byte b8;
        int i8;
        int i9;
        int i10 = c2169w2.f21636b;
        int length = spannableStringBuilder.length();
        String str2 = c2169w2.f21635a;
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
                                        b8 = 6;
                                    } else {
                                        b8 = -1;
                                    }
                                } else if (str2.equals("u")) {
                                    b8 = 3;
                                } else {
                                    b8 = -1;
                                }
                            } else if (str2.equals("c")) {
                                b8 = 4;
                            } else {
                                b8 = -1;
                            }
                        } else if (str2.equals("b")) {
                            b8 = 0;
                        } else {
                            b8 = -1;
                        }
                    } else if (str2.equals("ruby")) {
                        b8 = 2;
                    } else {
                        b8 = -1;
                    }
                } else if (str2.equals("lang")) {
                    b8 = 5;
                } else {
                    b8 = -1;
                }
            } else if (str2.equals("i")) {
                b8 = 1;
            } else {
                b8 = -1;
            }
        } else if (str2.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
            b8 = 7;
        } else {
            b8 = -1;
        }
        switch (b8) {
            case 0:
                spannableStringBuilder.setSpan(new StyleSpan(1), i10, length, 33);
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(2), i10, length, 33);
                break;
            case 2:
                int iB = b(list2, str, c2169w2);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                Collections.sort(arrayList, C2117v2.f21426c);
                int i12 = c2169w2.f21636b;
                int i13 = 0;
                int length2 = 0;
                while (i13 < arrayList.size()) {
                    if ("rt".equals(((C2117v2) arrayList.get(i13)).f21427a.f21635a)) {
                        C2117v2 c2117v2 = (C2117v2) arrayList.get(i13);
                        int iB2 = b(list2, str, c2117v2.f21427a);
                        if (iB2 == i11) {
                            iB2 = iB != i11 ? iB : 1;
                        }
                        int i14 = c2117v2.f21427a.f21636b - length2;
                        int i15 = c2117v2.f21428b - length2;
                        CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i14, i15);
                        spannableStringBuilder.delete(i14, i15);
                        spannableStringBuilder.setSpan(new C0675Bk(charSequenceSubSequence.toString(), iB2), i12, i14, 33);
                        length2 = charSequenceSubSequence.length() + length2;
                        i12 = i14;
                    }
                    i13++;
                    i11 = -1;
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                break;
            case 4:
                for (String str3 : c2169w2.f21638d) {
                    Map map = f21989c;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i10, length, 33);
                    } else {
                        Map map2 = f21990d;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i10, length, 33);
                        }
                    }
                }
                break;
            case 5:
            case 6:
            case 7:
                break;
            default:
                return;
        }
        ArrayList arrayListD = d(list2, str, c2169w2);
        for (int i16 = 0; i16 < arrayListD.size(); i16++) {
            C1961s2 c1961s2 = ((C2221x2) arrayListD.get(i16)).f21825H;
            if (c1961s2 != null) {
                int i17 = c1961s2.f20849k;
                if (i17 == -1 && c1961s2.f20850l == -1) {
                    i8 = 1;
                } else if (((i17 == 1 ? (char) 1 : (char) 0) | (c1961s2.f20850l == 1 ? (char) 2 : (char) 0)) != -1) {
                    int i18 = c1961s2.f20849k;
                    if (i18 == -1 && c1961s2.f20850l == -1) {
                        i9 = -1;
                        i8 = 1;
                    } else {
                        i8 = 1;
                        i9 = (i18 == 1 ? 1 : 0) | (c1961s2.f20850l == 1 ? 2 : 0);
                    }
                    S3.e.z(spannableStringBuilder, new StyleSpan(i9), i10, length);
                } else {
                    i8 = 1;
                }
                if (c1961s2.f20848j == i8) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                }
                if (c1961s2.f20845g) {
                    if (!c1961s2.f20845g) {
                        throw new IllegalStateException("Font color not defined");
                    }
                    S3.e.z(spannableStringBuilder, new ForegroundColorSpan(c1961s2.f20844f), i10, length);
                }
                if (c1961s2.f20847i) {
                    if (!c1961s2.f20847i) {
                        throw new IllegalStateException("Background color not defined.");
                    }
                    S3.e.z(spannableStringBuilder, new BackgroundColorSpan(c1961s2.f20846h), i10, length);
                }
                if (c1961s2.f20843e != null) {
                    S3.e.z(spannableStringBuilder, new TypefaceSpan(c1961s2.f20843e), i10, length);
                }
                int i19 = c1961s2.f20851m;
                if (i19 == 1) {
                    S3.e.z(spannableStringBuilder, new AbsoluteSizeSpan((int) c1961s2.f20852n, true), i10, length);
                } else if (i19 == 2) {
                    S3.e.z(spannableStringBuilder, new RelativeSizeSpan(c1961s2.f20852n), i10, length);
                } else if (i19 == 3) {
                    S3.e.z(spannableStringBuilder, new RelativeSizeSpan(c1961s2.f20852n / 100.0f), i10, length);
                }
                if (c1961s2.f20854p) {
                    spannableStringBuilder.setSpan(new C2254xk(), i10, length, 33);
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x017f  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:65:0x0118  */
    public static void f(String str, p195z1.g gVar) {
        int i8;
        Matcher matcher = f21988b.matcher(str);
        while (matcher.find()) {
            int i9 = 1;
            String strGroup = matcher.group(1);
            strGroup.getClass();
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            try {
                if ("line".equals(strGroup)) {
                    int iIndexOf = strGroup2.indexOf(44);
                    if (iIndexOf != -1) {
                        String strSubstring = strGroup2.substring(iIndexOf + 1);
                        strSubstring.getClass();
                        switch (strSubstring) {
                            case "center":
                            case "middle":
                                i8 = 1;
                                break;
                            case "end":
                                i8 = 2;
                                break;
                            case "start":
                                i8 = 0;
                                break;
                            default:
                                Zo.f("WebvttCueParser", "Invalid anchor value: ".concat(strSubstring));
                                i8 = Integer.MIN_VALUE;
                                break;
                        }
                        gVar.f31740g = i8;
                        strGroup2 = strGroup2.substring(0, iIndexOf);
                    }
                    if (strGroup2.endsWith("%")) {
                        gVar.f31738e = AbstractC2987b.V(strGroup2);
                        gVar.f31739f = 0;
                    } else {
                        gVar.f31738e = Integer.parseInt(strGroup2);
                        gVar.f31739f = 1;
                    }
                } else if ("align".equals(strGroup)) {
                    switch (strGroup2) {
                        case "center":
                        case "middle":
                            i9 = 2;
                            break;
                        case "end":
                            i9 = 3;
                            break;
                        case "left":
                            i9 = 4;
                            break;
                        case "right":
                            i9 = 5;
                            break;
                        case "start":
                            break;
                        default:
                            Zo.f("WebvttCueParser", "Invalid alignment value: ".concat(strGroup2));
                            i9 = 2;
                            break;
                    }
                    gVar.f31737d = i9;
                } else if ("position".equals(strGroup)) {
                    int iIndexOf2 = strGroup2.indexOf(44);
                    if (iIndexOf2 != -1) {
                        String strSubstring2 = strGroup2.substring(iIndexOf2 + 1);
                        strSubstring2.getClass();
                        switch (strSubstring2.hashCode()) {
                            case -1842484672:
                                if (!strSubstring2.equals("line-left")) {
                                }
                                break;
                            case -1364013995:
                                if (!strSubstring2.equals("center")) {
                                }
                                break;
                            case -1276788989:
                                if (!strSubstring2.equals("line-right")) {
                                }
                                break;
                            case -1074341483:
                                if (!strSubstring2.equals("middle")) {
                                }
                                break;
                            case 100571:
                                if (!strSubstring2.equals("end")) {
                                }
                                break;
                            case 109757538:
                                if (!strSubstring2.equals("start")) {
                                }
                                break;
                            default:
                                break;
                        }
                        /*  JADX ERROR: Method code generation error
                            java.lang.NullPointerException: Switch insn not found in header
                            	at java.base/java.util.Objects.requireNonNull(Objects.java:246)
                            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:226)
                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                            	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                            	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                            	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                            	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                            	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                            	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
                            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
                            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
                            	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
                            	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
                            	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                            	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                            	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                            	at jadx.core.ProcessClass.process(ProcessClass.java:89)
                            	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
                            	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
                            	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
                            	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
                            */
                        /*
                            Method dump skipped, instruction units count: 606
                            To view this dump change 'Code comments level' option to 'DEBUG'
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.AbstractC2273y2.f(java.lang.String, z1.g):void");
                    }
                }
