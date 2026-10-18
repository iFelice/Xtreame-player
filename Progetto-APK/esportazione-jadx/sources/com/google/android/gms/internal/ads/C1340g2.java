package com.google.android.gms.internal.ads;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1340g2 implements W1 {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Pattern f18888M = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f18889G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1288f2 f18890H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public LinkedHashMap f18892J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public float f18893K = -3.4028235E38f;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public float f18894L = -3.4028235E38f;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C1534jr f18891I = new C1534jr();

    public C1340g2(List list) {
        if (list == null || list.isEmpty()) {
            this.f18889G = false;
            this.f18890H = null;
            return;
        }
        this.f18889G = true;
        String str = new String((byte[]) list.get(0), StandardCharsets.UTF_8);
        p113o3.r.J(str.startsWith("Format:"));
        C1288f2 c1288f2A = C1288f2.a(str);
        c1288f2A.getClass();
        this.f18890H = c1288f2A;
        c(new C1534jr((byte[]) list.get(1)), AbstractC2113uz.f21413c);
    }

    public static int a(long j8, ArrayList arrayList, ArrayList arrayList2) {
        int i8;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                i8 = 0;
                break;
            }
            if (((Long) arrayList.get(size)).longValue() == j8) {
                return size;
            }
            if (((Long) arrayList.get(size)).longValue() < j8) {
                i8 = size + 1;
                break;
            }
        }
        arrayList.add(i8, Long.valueOf(j8));
        arrayList2.add(i8, i8 == 0 ? new ArrayList() : new ArrayList((Collection) arrayList2.get(i8 - 1)));
        return i8;
    }

    public static long b(String str) {
        Matcher matcher = f18888M.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String strGroup = matcher.group(1);
        int i8 = Et.f13234a;
        long j8 = Long.parseLong(strGroup) * 3600000000L;
        long j9 = Long.parseLong(matcher.group(2)) * 60000000;
        return j8 + j9 + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(4)) * 10000);
    }

    /* JADX WARN: Code duplicated, block: B:178:0x031c  */
    public final void c(C1534jr c1534jr, Charset charset) {
        C1444i2 c1444i2;
        int i8;
        float f8;
        int i9;
        int i10;
        while (true) {
            String strI = c1534jr.I(charset);
            if (strI == null) {
                return;
            }
            char c8 = '[';
            if ("[Script Info]".equalsIgnoreCase(strI)) {
                while (true) {
                    String strI2 = c1534jr.I(charset);
                    if (strI2 == null) {
                        break;
                    }
                    if (c1534jr.o() != 0) {
                        p113o3.r.L(C1534jr.f19514f.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
                        if (((char) (c1534jr.n(charset) >> 16)) == '[') {
                            break;
                        }
                    }
                    String[] strArrSplit = strI2.split(":");
                    if (strArrSplit.length == 2) {
                        String strM = p113o3.r.m(strArrSplit[0].trim());
                        strM.getClass();
                        if (strM.equals("playresx")) {
                            this.f18893K = Float.parseFloat(strArrSplit[1].trim());
                        } else if (strM.equals("playresy")) {
                            try {
                                this.f18894L = Float.parseFloat(strArrSplit[1].trim());
                            } catch (NumberFormatException unused) {
                            }
                        }
                    }
                }
            } else if ("[V4+ Styles]".equalsIgnoreCase(strI)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (true) {
                    p158u1.b bVar = null;
                    while (true) {
                        String strI3 = c1534jr.I(charset);
                        if (strI3 != null) {
                            if (c1534jr.o() != 0) {
                                p113o3.r.L(C1534jr.f19514f.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
                                if (((char) (c1534jr.n(charset) >> 16)) == c8) {
                                }
                            }
                            if (strI3.startsWith("Format:")) {
                                String[] strArrSplit2 = TextUtils.split(strI3.substring(7), ",");
                                int i11 = 0;
                                int i12 = -1;
                                int i13 = -1;
                                int i14 = -1;
                                int i15 = -1;
                                int i16 = -1;
                                int i17 = -1;
                                int i18 = -1;
                                int i19 = -1;
                                int i20 = -1;
                                int i21 = -1;
                                while (true) {
                                    int length = strArrSplit2.length;
                                    if (i11 < length) {
                                        String strM2 = p113o3.r.m(strArrSplit2[i11].trim());
                                        strM2.getClass();
                                        strM2.hashCode();
                                        switch (strM2) {
                                            case "italic":
                                                i18 = i11;
                                                break;
                                            case "underline":
                                                i19 = i11;
                                                break;
                                            case "strikeout":
                                                i20 = i11;
                                                break;
                                            case "primarycolour":
                                                i14 = i11;
                                                break;
                                            case "bold":
                                                i17 = i11;
                                                break;
                                            case "name":
                                                i12 = i11;
                                                break;
                                            case "fontsize":
                                                i16 = i11;
                                                break;
                                            case "borderstyle":
                                                i21 = i11;
                                                break;
                                            case "alignment":
                                                i13 = i11;
                                                break;
                                            case "outlinecolour":
                                                i15 = i11;
                                                break;
                                        }
                                        i11++;
                                    } else if (i12 != -1) {
                                        bVar = new p158u1.b(i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, length);
                                    }
                                }
                            } else {
                                if (strI3.startsWith("Style:")) {
                                    if (bVar == null) {
                                        Zo.f("SsaParser", "Skipping 'Style:' line before 'Format:' line: ".concat(strI3));
                                    } else {
                                        p113o3.r.J(strI3.startsWith("Style:"));
                                        String[] strArrSplit3 = TextUtils.split(strI3.substring(6), ",");
                                        int length2 = strArrSplit3.length;
                                        int i22 = bVar.f30430k;
                                        if (length2 != i22) {
                                            Locale locale = Locale.US;
                                            StringBuilder sbD = A0.O.D("Skipping malformed 'Style:' line (expected ", i22, " values, found ", length2, "): '");
                                            sbD.append(strI3);
                                            sbD.append("'");
                                            Zo.f("SsaStyle", sbD.toString());
                                        } else {
                                            try {
                                                String strTrim = strArrSplit3[bVar.f30420a].trim();
                                                int i23 = bVar.f30421b;
                                                if (i23 != -1) {
                                                    String strTrim2 = strArrSplit3[i23].trim();
                                                    try {
                                                        int i24 = Integer.parseInt(strTrim2.trim());
                                                        switch (i24) {
                                                            case 1:
                                                            case 2:
                                                            case 3:
                                                            case 4:
                                                            case 5:
                                                            case 6:
                                                            case 7:
                                                            case 8:
                                                            case 9:
                                                                i10 = i24;
                                                                break;
                                                            default:
                                                                Zo.f("SsaStyle", "Ignoring unknown alignment: ".concat(String.valueOf(strTrim2)));
                                                                i10 = -1;
                                                                break;
                                                        }
                                                    } catch (NumberFormatException unused2) {
                                                    }
                                                    i8 = i10;
                                                } else {
                                                    i8 = -1;
                                                }
                                                int i25 = bVar.f30422c;
                                                Integer numA = i25 != -1 ? C1444i2.a(strArrSplit3[i25].trim()) : null;
                                                int i26 = bVar.f30423d;
                                                Integer numA2 = i26 != -1 ? C1444i2.a(strArrSplit3[i26].trim()) : null;
                                                int i27 = bVar.f30424e;
                                                if (i27 != -1) {
                                                    try {
                                                        String strTrim3 = strArrSplit3[i27].trim();
                                                        try {
                                                            f8 = Float.parseFloat(strTrim3);
                                                        } catch (NumberFormatException e8) {
                                                            Zo.g("SsaStyle", "Failed to parse font size: '" + strTrim3 + "'", e8);
                                                            f8 = -3.4028235E38f;
                                                        }
                                                    } catch (RuntimeException e9) {
                                                        e = e9;
                                                        Zo.g("SsaStyle", "Skipping malformed 'Style:' line: '" + strI3 + "'", e);
                                                        c1444i2 = null;
                                                    }
                                                } else {
                                                    f8 = -3.4028235E38f;
                                                }
                                                int i28 = bVar.f30425f;
                                                boolean z7 = i28 != -1 && C1444i2.b(strArrSplit3[i28].trim());
                                                int i29 = bVar.f30426g;
                                                boolean z8 = i29 != -1 && C1444i2.b(strArrSplit3[i29].trim());
                                                int i30 = bVar.f30427h;
                                                boolean z9 = i30 != -1 && C1444i2.b(strArrSplit3[i30].trim());
                                                int i31 = bVar.f30428i;
                                                boolean z10 = i31 != -1 && C1444i2.b(strArrSplit3[i31].trim());
                                                int i32 = bVar.f30429j;
                                                if (i32 != -1) {
                                                    String strTrim4 = strArrSplit3[i32].trim();
                                                    try {
                                                        int i33 = Integer.parseInt(strTrim4.trim());
                                                        if (i33 == 1 || i33 == 3) {
                                                            i9 = i33;
                                                        } else {
                                                            Zo.f("SsaStyle", "Ignoring unknown BorderStyle: ".concat(String.valueOf(strTrim4)));
                                                        }
                                                    } catch (NumberFormatException unused3) {
                                                    }
                                                    c1444i2 = new C1444i2(strTrim, i8, numA, numA2, f8, z7, z8, z9, z10, i9);
                                                    if (c1444i2 != null) {
                                                        linkedHashMap.put(c1444i2.f19222a, c1444i2);
                                                    }
                                                }
                                                i9 = -1;
                                                c1444i2 = new C1444i2(strTrim, i8, numA, numA2, f8, z7, z8, z9, z10, i9);
                                            } catch (RuntimeException e10) {
                                                e = e10;
                                            }
                                            if (c1444i2 != null) {
                                                linkedHashMap.put(c1444i2.f19222a, c1444i2);
                                            }
                                        }
                                        c1444i2 = null;
                                        if (c1444i2 != null) {
                                            linkedHashMap.put(c1444i2.f19222a, c1444i2);
                                        }
                                    }
                                }
                                c8 = '[';
                            }
                        }
                    }
                }
                this.f18892J = linkedHashMap;
            } else if ("[V4 Styles]".equalsIgnoreCase(strI)) {
                Zo.e("SsaParser", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strI)) {
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:174:0x037b  */
    /* JADX WARN: Code duplicated, block: B:202:0x0196 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x03aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x0160  */
    /* JADX WARN: Code duplicated, block: B:68:0x016e A[Catch: RuntimeException -> 0x018f, TRY_LEAVE, TryCatch #3 {RuntimeException -> 0x018f, blocks: (B:66:0x0162, B:68:0x016e, B:70:0x0176, B:72:0x0181), top: B:188:0x0162 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0181 A[Catch: RuntimeException -> 0x018f, TRY_ENTER, TRY_LEAVE, TryCatch #3 {RuntimeException -> 0x018f, blocks: (B:66:0x0162, B:68:0x016e, B:70:0x0176, B:72:0x0181), top: B:188:0x0162 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0191  */
    /* JADX WARN: Code duplicated, block: B:78:0x0195  */
    @Override // com.google.android.gms.internal.ads.W1
    public final void d(byte[] bArr, int i8, int i9, p149t0.d dVar) {
        int i10;
        Charset charset;
        C1288f2 c1288f2;
        long j8;
        int i11;
        int i12;
        float f8;
        Layout.Alignment alignment;
        int i13;
        int i14;
        float f9;
        float f10;
        float f11;
        float f12;
        int i15;
        int i16;
        int i17;
        Integer num;
        Charset charset2;
        C1288f2 c1288f3;
        Matcher matcher;
        int i18;
        int i19;
        String strGroup;
        PointF pointF;
        String strGroup2;
        String strGroup3;
        int i20;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        C1534jr c1534jr = this.f18891I;
        c1534jr.h(i8 + i9, bArr);
        c1534jr.j(i8);
        Charset charsetC = c1534jr.c();
        if (charsetC == null) {
            charsetC = AbstractC2113uz.f21413c;
        }
        boolean z7 = this.f18889G;
        if (!z7) {
            c(c1534jr, charsetC);
        }
        C1288f2 c1288f2A = z7 ? this.f18890H : null;
        while (true) {
            String strI = c1534jr.I(charsetC);
            int i21 = 1;
            if (strI == null) {
                int i22 = 0;
                while (i22 < arrayList.size()) {
                    List list = (List) arrayList.get(i22);
                    if (!list.isEmpty()) {
                        if (i22 != arrayList.size() - 1) {
                            throw new IllegalStateException();
                        }
                        dVar.mo4zza(new S1(list, ((Long) arrayList2.get(i22)).longValue(), ((Long) arrayList2.get(i22 + 1)).longValue() - ((Long) arrayList2.get(i22)).longValue()));
                        i10 = 1;
                    } else if (i22 != 0) {
                        i10 = 1;
                    } else {
                        i22 = 0;
                        if (i22 != arrayList.size() - 1) {
                            throw new IllegalStateException();
                        }
                        dVar.mo4zza(new S1(list, ((Long) arrayList2.get(i22)).longValue(), ((Long) arrayList2.get(i22 + 1)).longValue() - ((Long) arrayList2.get(i22)).longValue()));
                        i10 = 1;
                    }
                    i22 += i10;
                }
                return;
            }
            if (strI.startsWith("Format:")) {
                c1288f2A = C1288f2.a(strI);
            } else {
                if (strI.startsWith("Dialogue:")) {
                    if (c1288f2A == null) {
                        Zo.f("SsaParser", "Skipping dialogue line before complete format: ".concat(strI));
                    } else {
                        p113o3.r.J(strI.startsWith("Dialogue:"));
                        String strSubstring = strI.substring(9);
                        int i23 = c1288f2A.f18715e;
                        String[] strArrSplit = strSubstring.split(",", i23);
                        if (strArrSplit.length != i23) {
                            Zo.f("SsaParser", "Skipping dialogue line with fewer columns than format: ".concat(strI));
                        } else {
                            long jB = b(strArrSplit[c1288f2A.f18711a]);
                            if (jB == -9223372036854775807L) {
                                Zo.f("SsaParser", "Skipping invalid timing: ".concat(strI));
                            } else {
                                long jB2 = b(strArrSplit[c1288f2A.f18712b]);
                                if (jB2 == -9223372036854775807L) {
                                    Zo.f("SsaParser", "Skipping invalid timing: ".concat(strI));
                                } else {
                                    LinkedHashMap linkedHashMap = this.f18892J;
                                    C1444i2 c1444i2 = (linkedHashMap == null || (i20 = c1288f2A.f18713c) == -1) ? null : (C1444i2) linkedHashMap.get(strArrSplit[i20].trim());
                                    String str = strArrSplit[c1288f2A.f18714d];
                                    Matcher matcher2 = C1392h2.f19047a.matcher(str);
                                    int i24 = -1;
                                    PointF pointF2 = null;
                                    while (matcher2.find()) {
                                        String strGroup4 = matcher2.group(i21);
                                        strGroup4.getClass();
                                        try {
                                            try {
                                                Matcher matcher3 = C1392h2.f19048b.matcher(strGroup4);
                                                Matcher matcher4 = C1392h2.f19049c.matcher(strGroup4);
                                                boolean zFind = matcher3.find();
                                                boolean zFind2 = matcher4.find();
                                                if (zFind) {
                                                    if (zFind2) {
                                                        charset2 = charsetC;
                                                        try {
                                                            StringBuilder sb = new StringBuilder();
                                                            c1288f3 = c1288f2A;
                                                            try {
                                                                sb.append("Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='");
                                                                sb.append(strGroup4);
                                                                sb.append("'");
                                                                Zo.e("SsaStyle.Overrides", sb.toString());
                                                            } catch (RuntimeException unused) {
                                                            }
                                                        } catch (RuntimeException unused2) {
                                                            c1288f3 = c1288f2A;
                                                        }
                                                    } else {
                                                        charset2 = charsetC;
                                                        c1288f3 = c1288f2A;
                                                    }
                                                    strGroup3 = matcher3.group(1);
                                                    strGroup2 = matcher3.group(2);
                                                } else {
                                                    charset2 = charsetC;
                                                    c1288f3 = c1288f2A;
                                                    if (zFind2) {
                                                        String strGroup5 = matcher4.group(1);
                                                        strGroup2 = matcher4.group(2);
                                                        strGroup3 = strGroup5;
                                                    } else {
                                                        pointF = null;
                                                    }
                                                    if (pointF != null) {
                                                        pointF2 = pointF;
                                                    }
                                                    matcher = C1392h2.f19050d.matcher(strGroup4);
                                                    if (matcher.find()) {
                                                        strGroup = matcher.group(1);
                                                        strGroup.getClass();
                                                        try {
                                                            i19 = Integer.parseInt(strGroup.trim());
                                                            switch (i19) {
                                                                case 1:
                                                                case 2:
                                                                case 3:
                                                                case 4:
                                                                case 5:
                                                                case 6:
                                                                case 7:
                                                                case 8:
                                                                case 9:
                                                                    break;
                                                                default:
                                                                    Zo.f("SsaStyle", "Ignoring unknown alignment: ".concat(strGroup));
                                                                    i19 = -1;
                                                                    break;
                                                            }
                                                        } catch (NumberFormatException unused3) {
                                                        }
                                                        i18 = -1;
                                                    } else {
                                                        i18 = -1;
                                                        i19 = -1;
                                                    }
                                                    if (i19 != i18) {
                                                        i24 = i19;
                                                    }
                                                    charsetC = charset2;
                                                    c1288f2A = c1288f3;
                                                    i21 = 1;
                                                }
                                                strGroup3.getClass();
                                                float f13 = Float.parseFloat(strGroup3.trim());
                                                strGroup2.getClass();
                                                pointF = new PointF(f13, Float.parseFloat(strGroup2.trim()));
                                                if (pointF != null) {
                                                    pointF2 = pointF;
                                                }
                                            } catch (RuntimeException unused4) {
                                                charset2 = charsetC;
                                            }
                                            matcher = C1392h2.f19050d.matcher(strGroup4);
                                            if (matcher.find()) {
                                                strGroup = matcher.group(1);
                                                strGroup.getClass();
                                                i19 = Integer.parseInt(strGroup.trim());
                                                switch (i19) {
                                                    case 1:
                                                    case 2:
                                                    case 3:
                                                    case 4:
                                                    case 5:
                                                    case 6:
                                                    case 7:
                                                    case 8:
                                                    case 9:
                                                        break;
                                                    default:
                                                        Zo.f("SsaStyle", "Ignoring unknown alignment: ".concat(strGroup));
                                                        i19 = -1;
                                                        break;
                                                }
                                                i18 = -1;
                                            } else {
                                                i18 = -1;
                                                i19 = -1;
                                            }
                                            if (i19 != i18) {
                                                i24 = i19;
                                            }
                                        } catch (RuntimeException unused5) {
                                        }
                                        charsetC = charset2;
                                        c1288f2A = c1288f3;
                                        i21 = 1;
                                    }
                                    charset = charsetC;
                                    c1288f2 = c1288f2A;
                                    String strReplace = C1392h2.f19047a.matcher(str).replaceAll(HttpUrl.FRAGMENT_ENCODE_SET).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                    float f14 = this.f18893K;
                                    float f15 = this.f18894L;
                                    SpannableString spannableString = new SpannableString(strReplace);
                                    if (c1444i2 != null) {
                                        Integer num2 = c1444i2.f19224c;
                                        if (num2 != null) {
                                            spannableString.setSpan(new ForegroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                        }
                                        if (c1444i2.f19231j == 3 && (num = c1444i2.f19225d) != null) {
                                            spannableString.setSpan(new BackgroundColorSpan(num.intValue()), 0, spannableString.length(), 33);
                                        }
                                        float f16 = c1444i2.f19226e;
                                        if (f16 == -3.4028235E38f || f15 == -3.4028235E38f) {
                                            f12 = -3.4028235E38f;
                                            i15 = Integer.MIN_VALUE;
                                        } else {
                                            f12 = f16 / f15;
                                            i15 = 1;
                                        }
                                        boolean z8 = c1444i2.f19227f;
                                        boolean z9 = c1444i2.f19228g;
                                        if (!z8) {
                                            j8 = jB2;
                                            i16 = 33;
                                            i17 = 0;
                                            if (z9) {
                                                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                            }
                                        } else if (z9) {
                                            j8 = jB2;
                                            i16 = 33;
                                            i17 = 0;
                                            spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                        } else {
                                            j8 = jB2;
                                            i16 = 33;
                                            i17 = 0;
                                            spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                        }
                                        if (c1444i2.f19229h) {
                                            spannableString.setSpan(new UnderlineSpan(), i17, spannableString.length(), i16);
                                        }
                                        if (c1444i2.f19230i) {
                                            spannableString.setSpan(new StrikethroughSpan(), i17, spannableString.length(), i16);
                                        }
                                        f8 = f12;
                                        i11 = i15;
                                        i12 = -1;
                                    } else {
                                        j8 = jB2;
                                        i11 = Integer.MIN_VALUE;
                                        i12 = -1;
                                        f8 = -3.4028235E38f;
                                    }
                                    if (i24 == i12) {
                                        i24 = c1444i2 != null ? c1444i2.f19223b : -1;
                                    }
                                    switch (i24) {
                                        case 0:
                                        default:
                                            p000a.r.p("Unknown alignment: ", i24, "SsaParser");
                                        case -1:
                                            alignment = null;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            alignment = Layout.Alignment.ALIGN_NORMAL;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            alignment = Layout.Alignment.ALIGN_CENTER;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                            break;
                                    }
                                    switch (i24) {
                                        case 0:
                                        default:
                                            p000a.r.p("Unknown alignment: ", i24, "SsaParser");
                                        case -1:
                                            i13 = Integer.MIN_VALUE;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            i13 = 0;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            i13 = 1;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            i13 = 2;
                                            break;
                                    }
                                    switch (i24) {
                                        case 0:
                                        default:
                                            p000a.r.p("Unknown alignment: ", i24, "SsaParser");
                                        case -1:
                                            i14 = Integer.MIN_VALUE;
                                            break;
                                        case 1:
                                        case 2:
                                        case 3:
                                            i14 = 2;
                                            break;
                                        case 4:
                                        case 5:
                                        case 6:
                                            i14 = 1;
                                            break;
                                        case 7:
                                        case 8:
                                        case 9:
                                            i14 = 0;
                                            break;
                                    }
                                    float f17 = -3.4028235E38f;
                                    if (pointF2 == 0 || f15 == -3.4028235E38f || f14 == -3.4028235E38f) {
                                        if (i13 == 0) {
                                            f9 = 0.05f;
                                        } else if (i13 != 1) {
                                            f9 = i13 != 2 ? -3.4028235E38f : 0.95f;
                                        } else {
                                            f9 = 0.5f;
                                        }
                                        if (i14 == 0) {
                                            f17 = 0.05f;
                                        } else if (i14 == 1) {
                                            f17 = 0.5f;
                                        } else if (i14 == 2) {
                                            f17 = 0.95f;
                                        }
                                        f10 = f17;
                                        f11 = f9;
                                    } else {
                                        float f18 = pointF2.x / f14;
                                        f10 = pointF2.y / f15;
                                        f11 = f18;
                                    }
                                    C1063ak c1063ak = new C1063ak(spannableString, alignment, null, null, f10, 0, i14, f11, i13, i11, f8, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, 0.0f);
                                    int iA = a(j8, arrayList2, arrayList);
                                    for (int iA2 = a(jB, arrayList2, arrayList); iA2 < iA; iA2++) {
                                        ((List) arrayList.get(iA2)).add(c1063ak);
                                    }
                                }
                            }
                        }
                    }
                    charset = charsetC;
                    c1288f2 = c1288f2A;
                } else {
                    charset = charsetC;
                    c1288f2 = c1288f2A;
                }
                charsetC = charset;
                c1288f2A = c1288f2;
            }
        }
    }
}
