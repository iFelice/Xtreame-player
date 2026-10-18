package p158u1;

import A0.O;
import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p117p0.E;
import p117p0.InterfaceC3172j;
import p117p0.M;
import p117p0.x;
import p126q1.d;
import p126q1.l;
import p126q1.m;
import p142s1.b;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class a implements m {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Pattern f30413M = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f30414G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final b f30415H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public LinkedHashMap f30417J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public float f30418K = -3.4028235E38f;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public float f30419L = -3.4028235E38f;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final E f30416I = new E();

    public a(List list) {
        if (list == null || list.isEmpty()) {
            this.f30414G = false;
            this.f30415H = null;
            return;
        }
        this.f30414G = true;
        String strO = M.o((byte[]) list.get(0));
        H1.d(strO.startsWith("Format:"));
        b bVarA = b.a(strO);
        bVarA.getClass();
        this.f30415H = bVarA;
        e(new E((byte[]) list.get(1)), StandardCharsets.UTF_8);
    }

    public static int d(long j8, ArrayList arrayList, ArrayList arrayList2) {
        int i8;
        int size = arrayList.size() - 1;
        while (true) {
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
            size--;
        }
        arrayList.add(i8, Long.valueOf(j8));
        arrayList2.add(i8, i8 == 0 ? new ArrayList() : new ArrayList((Collection) arrayList2.get(i8 - 1)));
        return i8;
    }

    public static long f(String str) {
        Matcher matcher = f30413M.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String strGroup = matcher.group(1);
        String str2 = M.f28050a;
        return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(2)) * 60000000) + (Long.parseLong(strGroup) * 3600000000L);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0242  */
    /* JADX WARN: Code duplicated, block: B:103:0x0249  */
    /* JADX WARN: Code duplicated, block: B:104:0x024c A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:105:0x024f  */
    /* JADX WARN: Code duplicated, block: B:107:0x0254  */
    /* JADX WARN: Code duplicated, block: B:108:0x0257  */
    /* JADX WARN: Code duplicated, block: B:111:0x025f  */
    /* JADX WARN: Code duplicated, block: B:112:0x0262 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:113:0x0265  */
    /* JADX WARN: Code duplicated, block: B:114:0x0267  */
    /* JADX WARN: Code duplicated, block: B:115:0x0269  */
    /* JADX WARN: Code duplicated, block: B:117:0x026d  */
    /* JADX WARN: Code duplicated, block: B:118:0x0271  */
    /* JADX WARN: Code duplicated, block: B:119:0x0273  */
    /* JADX WARN: Code duplicated, block: B:120:0x0275  */
    /* JADX WARN: Code duplicated, block: B:128:0x028e  */
    /* JADX WARN: Code duplicated, block: B:130:0x0298  */
    /* JADX WARN: Code duplicated, block: B:132:0x029b  */
    /* JADX WARN: Code duplicated, block: B:134:0x029e  */
    /* JADX WARN: Code duplicated, block: B:135:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:136:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:137:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:139:0x02b1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:140:0x02b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:142:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:143:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:144:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:148:0x02ec A[LOOP:2: B:147:0x02ea->B:148:0x02ec, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:202:0x0146 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0114  */
    /* JADX WARN: Code duplicated, block: B:53:0x0124  */
    /* JADX WARN: Code duplicated, block: B:56:0x0131 A[Catch: RuntimeException -> 0x013f, TRY_LEAVE, TryCatch #2 {RuntimeException -> 0x013f, blocks: (B:54:0x0125, B:56:0x0131), top: B:190:0x0125 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0141  */
    /* JADX WARN: Code duplicated, block: B:61:0x0145  */
    /* JADX WARN: Code duplicated, block: B:65:0x0181  */
    /* JADX WARN: Code duplicated, block: B:67:0x0185  */
    /* JADX WARN: Code duplicated, block: B:68:0x019b  */
    /* JADX WARN: Code duplicated, block: B:79:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:84:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:87:0x01ff A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:88:0x0201  */
    /* JADX WARN: Code duplicated, block: B:91:0x0212  */
    /* JADX WARN: Code duplicated, block: B:94:0x0222  */
    /* JADX WARN: Code duplicated, block: B:96:0x0234  */
    /* JADX WARN: Code duplicated, block: B:98:0x023e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0240 A[DONT_INVERT] */
    @Override // p126q1.m
    public final void b(byte[] bArr, int i8, int i9, l lVar, InterfaceC3172j interfaceC3172j) {
        Charset charset;
        E e8;
        int i10;
        d dVar;
        Matcher matcher;
        PointF pointF;
        int i11;
        SpannableString spannableString;
        int i12;
        int i13;
        float f8;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        int i14;
        int i15;
        float f9;
        int i16;
        int i17;
        float f10;
        float f11;
        float f12;
        p110o0.b bVar;
        int iD;
        int iD2;
        Integer num;
        float f13;
        int i18;
        float f14;
        boolean z7;
        boolean z8;
        int i19;
        int i20;
        int i21;
        Integer num2;
        Matcher matcher2;
        int iA;
        PointF pointFA;
        a aVar = this;
        l lVar2 = lVar;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        E e9 = aVar.f30416I;
        e9.J(i8 + i9, bArr);
        e9.L(i8);
        Charset charsetH = e9.H();
        if (charsetH == null) {
            charsetH = StandardCharsets.UTF_8;
        }
        boolean z9 = aVar.f30414G;
        if (!z9) {
            aVar.e(e9, charsetH);
        }
        b bVarA = z9 ? aVar.f30415H : null;
        while (true) {
            String strM = e9.m(charsetH);
            if (strM == null) {
                l lVar3 = lVar2;
                long j8 = lVar3.f29557a;
                ArrayList arrayList3 = (j8 == -9223372036854775807L || !lVar3.f29558b) ? null : new ArrayList();
                for (int i22 = 0; i22 < arrayList.size(); i22++) {
                    List list = (List) arrayList.get(i22);
                    if (!list.isEmpty() || i22 == 0) {
                        if (i22 == arrayList.size() - 1) {
                            throw new IllegalStateException();
                        }
                        long jLongValue = ((Long) arrayList2.get(i22)).longValue();
                        long jLongValue2 = ((Long) arrayList2.get(i22 + 1)).longValue();
                        p126q1.a aVar2 = new p126q1.a(list, jLongValue, jLongValue2 - jLongValue);
                        if (j8 == -9223372036854775807L || jLongValue2 >= j8) {
                            interfaceC3172j.accept(aVar2);
                        } else if (arrayList3 != null) {
                            arrayList3.add(aVar2);
                        }
                    }
                }
                if (arrayList3 != null) {
                    Iterator it = arrayList3.iterator();
                    while (it.hasNext()) {
                        interfaceC3172j.accept((p126q1.a) it.next());
                    }
                    return;
                }
                return;
            }
            if (strM.startsWith("Format:")) {
                bVarA = b.a(strM);
            } else {
                if (strM.startsWith("Dialogue:")) {
                    if (bVarA == null) {
                        x.f("SsaParser", "Skipping dialogue line before complete format: ".concat(strM));
                    } else {
                        H1.d(strM.startsWith("Dialogue:"));
                        String strSubstring = strM.substring(9);
                        int i23 = bVarA.f30024f;
                        String[] strArrSplit = strSubstring.split(",", i23);
                        if (strArrSplit.length != i23) {
                            x.f("SsaParser", "Skipping dialogue line with fewer columns than format: ".concat(strM));
                        } else {
                            int i24 = bVarA.f30019a;
                            if (i24 != -1) {
                                try {
                                    i10 = Integer.parseInt(strArrSplit[i24].trim());
                                } catch (RuntimeException unused) {
                                    x.f("SsaParser", "Fail to parse layer: " + strArrSplit[i24]);
                                    i10 = 0;
                                }
                            } else {
                                i10 = 0;
                            }
                            long jF = f(strArrSplit[bVarA.f30020b]);
                            if (jF == -9223372036854775807L) {
                                x.f("SsaParser", "Skipping invalid timing: ".concat(strM));
                            } else {
                                long jF2 = f(strArrSplit[bVarA.f30021c]);
                                if (jF2 == -9223372036854775807L || jF2 <= jF) {
                                    charset = charsetH;
                                    e8 = e9;
                                    x.f("SsaParser", "Skipping invalid timing: ".concat(strM));
                                } else {
                                    LinkedHashMap linkedHashMap = aVar.f30417J;
                                    if (linkedHashMap != null) {
                                        int i25 = bVarA.f30022d;
                                        charset = charsetH;
                                        dVar = i25 != -1 ? (d) linkedHashMap.get(strArrSplit[i25].trim()) : null;
                                        String str = strArrSplit[bVarA.f30023e];
                                        matcher = c.f30431a.matcher(str);
                                        pointF = null;
                                        i11 = -1;
                                        while (matcher.find()) {
                                            E e10 = e9;
                                            String strGroup = matcher.group(1);
                                            strGroup.getClass();
                                            try {
                                                pointFA = c.a(strGroup);
                                                if (pointFA != null) {
                                                    pointF = pointFA;
                                                }
                                            } catch (RuntimeException unused2) {
                                            }
                                            try {
                                                matcher2 = c.f30434d.matcher(strGroup);
                                                if (matcher2.find()) {
                                                    String strGroup2 = matcher2.group(1);
                                                    strGroup2.getClass();
                                                    iA = d.a(strGroup2);
                                                } else {
                                                    iA = -1;
                                                }
                                                if (iA != -1) {
                                                    i11 = iA;
                                                }
                                            } catch (RuntimeException unused3) {
                                            }
                                            e9 = e10;
                                        }
                                        e8 = e9;
                                        String strReplace = c.f30431a.matcher(str).replaceAll(HttpUrl.FRAGMENT_ENCODE_SET).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                        float f15 = aVar.f30418K;
                                        float f16 = aVar.f30419L;
                                        spannableString = new SpannableString(strReplace);
                                        if (dVar != null) {
                                            num = dVar.f30437c;
                                            if (num != null) {
                                                spannableString.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableString.length(), 33);
                                            }
                                            if (dVar.f30444j == 3 && (num2 = dVar.f30438d) != null) {
                                                spannableString.setSpan(new BackgroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                            }
                                            f13 = dVar.f30439e;
                                            if (f13 != -3.4028235E38f || f16 == -3.4028235E38f) {
                                                i18 = Integer.MIN_VALUE;
                                                f14 = -3.4028235E38f;
                                            } else {
                                                f14 = f13 / f16;
                                                i18 = 1;
                                            }
                                            z7 = dVar.f30441g;
                                            z8 = dVar.f30440f;
                                            if (z8 || !z7) {
                                                i19 = i18;
                                                i20 = 33;
                                                i21 = 0;
                                                if (z8) {
                                                    spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                                } else if (z7) {
                                                    spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                                }
                                            } else {
                                                i19 = i18;
                                                i20 = 33;
                                                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                                i21 = 0;
                                            }
                                            if (dVar.f30442h) {
                                                spannableString.setSpan(new UnderlineSpan(), i21, spannableString.length(), i20);
                                            }
                                            if (dVar.f30443i) {
                                                spannableString.setSpan(new StrikethroughSpan(), i21, spannableString.length(), i20);
                                            }
                                            f8 = f14;
                                            i13 = i19;
                                            i12 = -1;
                                        } else {
                                            jF2 = jF2;
                                            i12 = -1;
                                            i13 = Integer.MIN_VALUE;
                                            f8 = -3.4028235E38f;
                                        }
                                        if (i11 != i12) {
                                            i12 = i11;
                                        } else if (dVar != null) {
                                            i12 = dVar.f30436b;
                                        }
                                        switch (i12) {
                                            case 0:
                                            default:
                                                U2.v("Unknown alignment: ", i12, "SsaParser");
                                            case -1:
                                                alignment2 = null;
                                                break;
                                            case 1:
                                            case 4:
                                            case 7:
                                                alignment = Layout.Alignment.ALIGN_NORMAL;
                                                alignment2 = alignment;
                                                break;
                                            case 2:
                                            case 5:
                                            case 8:
                                                alignment = Layout.Alignment.ALIGN_CENTER;
                                                alignment2 = alignment;
                                                break;
                                            case 3:
                                            case 6:
                                            case 9:
                                                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                                alignment2 = alignment;
                                                break;
                                        }
                                        i14 = Integer.MIN_VALUE;
                                        switch (i12) {
                                            case 0:
                                            default:
                                                U2.v("Unknown alignment: ", i12, "SsaParser");
                                            case -1:
                                                i15 = Integer.MIN_VALUE;
                                                break;
                                            case 1:
                                            case 4:
                                            case 7:
                                                i15 = 0;
                                                break;
                                            case 2:
                                            case 5:
                                            case 8:
                                                i15 = 1;
                                                break;
                                            case 3:
                                            case 6:
                                            case 9:
                                                i15 = 2;
                                                break;
                                        }
                                        switch (i12) {
                                            case -1:
                                                break;
                                            case 0:
                                            default:
                                                U2.v("Unknown alignment: ", i12, "SsaParser");
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
                                        f9 = -3.4028235E38f;
                                        if (pointF != null || f16 == -3.4028235E38f || f15 == -3.4028235E38f) {
                                            if (i15 != 0) {
                                                i16 = 1;
                                                if (i15 != 1) {
                                                    i17 = 2;
                                                    if (i15 != 2) {
                                                        f10 = -3.4028235E38f;
                                                    } else {
                                                        f10 = 0.95f;
                                                    }
                                                } else {
                                                    i17 = 2;
                                                    f10 = 0.5f;
                                                }
                                            } else {
                                                i16 = 1;
                                                i17 = 2;
                                                f10 = 0.05f;
                                            }
                                            if (i14 == 0) {
                                                f9 = 0.05f;
                                            } else if (i14 == i16) {
                                                f9 = 0.5f;
                                            } else if (i14 == i17) {
                                                f9 = 0.95f;
                                            }
                                            f11 = f9;
                                            f12 = f10;
                                        } else {
                                            f12 = pointF.x / f15;
                                            f11 = pointF.y / f16;
                                        }
                                        bVar = new p110o0.b(spannableString, alignment2, null, null, f11, 0, i14, f12, i15, i13, f8, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, i10);
                                        iD2 = d(jF2, arrayList2, arrayList);
                                        for (iD = d(jF, arrayList2, arrayList); iD < iD2; iD++) {
                                            ((List) arrayList.get(iD)).add(bVar);
                                        }
                                    } else {
                                        charset = charsetH;
                                    }
                                    String str2 = strArrSplit[bVarA.f30023e];
                                    matcher = c.f30431a.matcher(str2);
                                    pointF = null;
                                    i11 = -1;
                                    while (matcher.find()) {
                                        E e11 = e9;
                                        String strGroup3 = matcher.group(1);
                                        strGroup3.getClass();
                                        pointFA = c.a(strGroup3);
                                        if (pointFA != null) {
                                            pointF = pointFA;
                                        }
                                        matcher2 = c.f30434d.matcher(strGroup3);
                                        if (matcher2.find()) {
                                            String strGroup4 = matcher2.group(1);
                                            strGroup4.getClass();
                                            iA = d.a(strGroup4);
                                        } else {
                                            iA = -1;
                                        }
                                        if (iA != -1) {
                                            i11 = iA;
                                        }
                                        e9 = e11;
                                    }
                                    e8 = e9;
                                    String strReplace2 = c.f30431a.matcher(str2).replaceAll(HttpUrl.FRAGMENT_ENCODE_SET).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                    float f17 = aVar.f30418K;
                                    float f18 = aVar.f30419L;
                                    spannableString = new SpannableString(strReplace2);
                                    if (dVar != null) {
                                        num = dVar.f30437c;
                                        if (num != null) {
                                            spannableString.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableString.length(), 33);
                                        }
                                        if (dVar.f30444j == 3) {
                                            spannableString.setSpan(new BackgroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                        }
                                        f13 = dVar.f30439e;
                                        if (f13 != -3.4028235E38f) {
                                            i18 = Integer.MIN_VALUE;
                                            f14 = -3.4028235E38f;
                                        } else {
                                            i18 = Integer.MIN_VALUE;
                                            f14 = -3.4028235E38f;
                                        }
                                        z7 = dVar.f30441g;
                                        z8 = dVar.f30440f;
                                        if (z8) {
                                            i19 = i18;
                                            i20 = 33;
                                            i21 = 0;
                                            if (z8) {
                                                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                            } else if (z7) {
                                                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                            }
                                        } else {
                                            i19 = i18;
                                            i20 = 33;
                                            i21 = 0;
                                            if (z8) {
                                                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                            } else if (z7) {
                                                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                            }
                                        }
                                        if (dVar.f30442h) {
                                            spannableString.setSpan(new UnderlineSpan(), i21, spannableString.length(), i20);
                                        }
                                        if (dVar.f30443i) {
                                            spannableString.setSpan(new StrikethroughSpan(), i21, spannableString.length(), i20);
                                        }
                                        f8 = f14;
                                        i13 = i19;
                                        i12 = -1;
                                    } else {
                                        jF2 = jF2;
                                        i12 = -1;
                                        i13 = Integer.MIN_VALUE;
                                        f8 = -3.4028235E38f;
                                    }
                                    if (i11 != i12) {
                                        i12 = i11;
                                    } else if (dVar != null) {
                                        i12 = dVar.f30436b;
                                    }
                                    switch (i12) {
                                        case 0:
                                        default:
                                            U2.v("Unknown alignment: ", i12, "SsaParser");
                                        case -1:
                                            alignment2 = null;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            alignment = Layout.Alignment.ALIGN_NORMAL;
                                            alignment2 = alignment;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            alignment = Layout.Alignment.ALIGN_CENTER;
                                            alignment2 = alignment;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                            alignment2 = alignment;
                                            break;
                                    }
                                    i14 = Integer.MIN_VALUE;
                                    switch (i12) {
                                        case 0:
                                        default:
                                            U2.v("Unknown alignment: ", i12, "SsaParser");
                                        case -1:
                                            i15 = Integer.MIN_VALUE;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            i15 = 0;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            i15 = 1;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            i15 = 2;
                                            break;
                                    }
                                    switch (i12) {
                                        case -1:
                                            break;
                                        case 0:
                                        default:
                                            U2.v("Unknown alignment: ", i12, "SsaParser");
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
                                    f9 = -3.4028235E38f;
                                    if (pointF != null) {
                                        if (i15 != 0) {
                                            i16 = 1;
                                            if (i15 != 1) {
                                                i17 = 2;
                                                if (i15 != 2) {
                                                    f10 = -3.4028235E38f;
                                                } else {
                                                    f10 = 0.95f;
                                                }
                                            } else {
                                                i17 = 2;
                                                f10 = 0.5f;
                                            }
                                        } else {
                                            i16 = 1;
                                            i17 = 2;
                                            f10 = 0.05f;
                                        }
                                        if (i14 == 0) {
                                            f9 = 0.05f;
                                        } else if (i14 == i16) {
                                            f9 = 0.5f;
                                        } else if (i14 == i17) {
                                            f9 = 0.95f;
                                        }
                                        f11 = f9;
                                        f12 = f10;
                                    } else {
                                        if (i15 != 0) {
                                            i16 = 1;
                                            if (i15 != 1) {
                                                i17 = 2;
                                                if (i15 != 2) {
                                                    f10 = -3.4028235E38f;
                                                } else {
                                                    f10 = 0.95f;
                                                }
                                            } else {
                                                i17 = 2;
                                                f10 = 0.5f;
                                            }
                                        } else {
                                            i16 = 1;
                                            i17 = 2;
                                            f10 = 0.05f;
                                        }
                                        if (i14 == 0) {
                                            f9 = 0.05f;
                                        } else if (i14 == i16) {
                                            f9 = 0.5f;
                                        } else if (i14 == i17) {
                                            f9 = 0.95f;
                                        }
                                        f11 = f9;
                                        f12 = f10;
                                    }
                                    bVar = new p110o0.b(spannableString, alignment2, null, null, f11, 0, i14, f12, i15, i13, f8, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, i10);
                                    iD2 = d(jF2, arrayList2, arrayList);
                                    while (iD < iD2) {
                                        ((List) arrayList.get(iD)).add(bVar);
                                    }
                                }
                            }
                        }
                    }
                    charset = charsetH;
                    e8 = e9;
                } else {
                    charset = charsetH;
                    e8 = e9;
                }
                aVar = this;
                lVar2 = lVar;
                charsetH = charset;
                bVarA = bVarA;
                e9 = e8;
            }
        }
    }

    @Override // p126q1.m
    public final /* synthetic */ d c(int i8, byte[] bArr, int i9) {
        return U2.b(this, bArr, i8, i9);
    }

    /* JADX WARN: Code duplicated, block: B:173:0x02e9  */
    public final void e(E e8, Charset charset) {
        int i8;
        d dVar;
        float f8;
        int i9;
        int i10;
        while (true) {
            String strM = e8.m(charset);
            if (strM == null) {
                return;
            }
            int i11 = 91;
            if ("[Script Info]".equalsIgnoreCase(strM)) {
                while (true) {
                    String strM2 = e8.m(charset);
                    if (strM2 == null || !(e8.a() == 0 || (i8 = e8.i(charset)) == 0 || k.y(i8 >>> 8) != 91)) {
                        break;
                    }
                    String[] strArrSplit = strM2.split(":");
                    if (strArrSplit.length == 2) {
                        String strH0 = k.h0(strArrSplit[0].trim());
                        strH0.getClass();
                        if (strH0.equals("playresx")) {
                            this.f30418K = Float.parseFloat(strArrSplit[1].trim());
                        } else if (strH0.equals("playresy")) {
                            try {
                                this.f30419L = Float.parseFloat(strArrSplit[1].trim());
                            } catch (NumberFormatException unused) {
                            }
                        }
                    }
                }
            } else if ("[V4+ Styles]".equalsIgnoreCase(strM)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (true) {
                    b bVar = null;
                    while (true) {
                        String strM3 = e8.m(charset);
                        if (strM3 != null && (e8.a() == 0 || (i10 = e8.i(charset)) == 0 || k.y(i10 >>> 8) != i11)) {
                            int i12 = -1;
                            if (strM3.startsWith("Format:")) {
                                String[] strArrSplit2 = TextUtils.split(strM3.substring(7), ",");
                                int i13 = -1;
                                int i14 = -1;
                                int i15 = -1;
                                int i16 = -1;
                                int i17 = -1;
                                int i18 = -1;
                                int i19 = -1;
                                int i20 = -1;
                                int i21 = -1;
                                int i22 = -1;
                                for (int i23 = 0; i23 < strArrSplit2.length; i23++) {
                                    String strH1 = k.h0(strArrSplit2[i23].trim());
                                    strH1.getClass();
                                    strH1.hashCode();
                                    switch (strH1) {
                                        case "italic":
                                            i19 = i23;
                                            break;
                                        case "underline":
                                            i20 = i23;
                                            break;
                                        case "strikeout":
                                            i21 = i23;
                                            break;
                                        case "primarycolour":
                                            i15 = i23;
                                            break;
                                        case "bold":
                                            i18 = i23;
                                            break;
                                        case "name":
                                            i13 = i23;
                                            break;
                                        case "fontsize":
                                            i17 = i23;
                                            break;
                                        case "borderstyle":
                                            i22 = i23;
                                            break;
                                        case "alignment":
                                            i14 = i23;
                                            break;
                                        case "outlinecolour":
                                            i16 = i23;
                                            break;
                                    }
                                }
                                if (i13 != -1) {
                                    bVar = new b(i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, strArrSplit2.length);
                                }
                            } else {
                                if (strM3.startsWith("Style:")) {
                                    if (bVar == null) {
                                        x.f("SsaParser", "Skipping 'Style:' line before 'Format:' line: ".concat(strM3));
                                    } else {
                                        H1.d(strM3.startsWith("Style:"));
                                        String[] strArrSplit3 = TextUtils.split(strM3.substring(6), ",");
                                        int length = strArrSplit3.length;
                                        int i24 = bVar.f30430k;
                                        if (length != i24) {
                                            int length2 = strArrSplit3.length;
                                            String str = M.f28050a;
                                            Locale locale = Locale.US;
                                            StringBuilder sbD = O.D("Skipping malformed 'Style:' line (expected ", i24, " values, found ", length2, "): '");
                                            sbD.append(strM3);
                                            sbD.append("'");
                                            x.f("SsaStyle", sbD.toString());
                                        } else {
                                            try {
                                                String strTrim = strArrSplit3[bVar.f30420a].trim();
                                                int i25 = bVar.f30421b;
                                                int iA = i25 != -1 ? d.a(strArrSplit3[i25].trim()) : -1;
                                                int i26 = bVar.f30422c;
                                                Integer numC = i26 != -1 ? d.c(strArrSplit3[i26].trim()) : null;
                                                int i27 = bVar.f30423d;
                                                Integer numC2 = i27 != -1 ? d.c(strArrSplit3[i27].trim()) : null;
                                                int i28 = bVar.f30424e;
                                                float f9 = -3.4028235E38f;
                                                if (i28 != -1) {
                                                    String strTrim2 = strArrSplit3[i28].trim();
                                                    try {
                                                        f9 = Float.parseFloat(strTrim2);
                                                    } catch (NumberFormatException e9) {
                                                        x.g("SsaStyle", "Failed to parse font size: '" + strTrim2 + "'", e9);
                                                    }
                                                    f8 = f9;
                                                } else {
                                                    f8 = -3.4028235E38f;
                                                }
                                                int i29 = bVar.f30425f;
                                                boolean z7 = i29 != -1 && d.b(strArrSplit3[i29].trim());
                                                int i30 = bVar.f30426g;
                                                boolean z8 = i30 != -1 && d.b(strArrSplit3[i30].trim());
                                                int i31 = bVar.f30427h;
                                                boolean z9 = i31 != -1 && d.b(strArrSplit3[i31].trim());
                                                int i32 = bVar.f30428i;
                                                boolean z10 = i32 != -1 && d.b(strArrSplit3[i32].trim());
                                                int i33 = bVar.f30429j;
                                                if (i33 != -1) {
                                                    String strTrim3 = strArrSplit3[i33].trim();
                                                    try {
                                                        int i34 = Integer.parseInt(strTrim3.trim());
                                                        if (i34 == 1 || i34 == 3) {
                                                            i12 = i34;
                                                        } else {
                                                            x.f("SsaStyle", "Ignoring unknown BorderStyle: " + strTrim3);
                                                        }
                                                    } catch (NumberFormatException unused2) {
                                                    }
                                                    i9 = i12;
                                                } else {
                                                    i9 = -1;
                                                }
                                                dVar = new d(strTrim, iA, numC, numC2, f8, z7, z8, z9, z10, i9);
                                            } catch (RuntimeException e10) {
                                                x.g("SsaStyle", "Skipping malformed 'Style:' line: '" + strM3 + "'", e10);
                                                dVar = null;
                                            }
                                            if (dVar != null) {
                                                linkedHashMap.put(dVar.f30435a, dVar);
                                            }
                                        }
                                        dVar = null;
                                        if (dVar != null) {
                                            linkedHashMap.put(dVar.f30435a, dVar);
                                        }
                                    }
                                }
                                i11 = 91;
                            }
                        }
                    }
                }
                this.f30417J = linkedHashMap;
            } else if ("[V4 Styles]".equalsIgnoreCase(strM)) {
                x.e("SsaParser", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strM)) {
                return;
            }
        }
    }

    @Override // p126q1.m
    public final int g() {
        return 1;
    }

    @Override // p126q1.m
    public final /* synthetic */ void a() {
    }
}
