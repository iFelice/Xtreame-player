package p172w1;

import Q3.b;
import Z3.H;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Pair;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import okhttp3.HttpUrl;
import p110o0.a;
import p110o0.e;
import p110o0.g;
import p110o0.h;
import p117p0.M;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f30922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f30923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f30924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final g f30925f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String[] f30926g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f30927h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f30928i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c f30929j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashMap f30930k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final HashMap f30931l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f30932m;

    public c(String str, String str2, long j8, long j9, g gVar, String[] strArr, String str3, String str4, c cVar) {
        this.f30920a = str;
        this.f30921b = str2;
        this.f30928i = str4;
        this.f30925f = gVar;
        this.f30926g = strArr;
        this.f30922c = str2 != null;
        this.f30923d = j8;
        this.f30924e = j9;
        str3.getClass();
        this.f30927h = str3;
        this.f30929j = cVar;
        this.f30930k = new HashMap();
        this.f30931l = new HashMap();
    }

    public static c a(String str) {
        return new c(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, HttpUrl.FRAGMENT_ENCODE_SET, null, null);
    }

    public static SpannableStringBuilder e(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            a aVar = new a();
            aVar.f27597a = new SpannableStringBuilder();
            aVar.f27598b = null;
            treeMap.put(str, aVar);
        }
        CharSequence charSequence = ((a) treeMap.get(str)).f27597a;
        charSequence.getClass();
        return (SpannableStringBuilder) charSequence;
    }

    public final c b(int i8) {
        ArrayList arrayList = this.f30932m;
        if (arrayList != null) {
            return (c) arrayList.get(i8);
        }
        throw new IndexOutOfBoundsException();
    }

    public final int c() {
        ArrayList arrayList = this.f30932m;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public final void d(TreeSet treeSet, boolean z7) {
        String str = this.f30920a;
        boolean zEquals = "p".equals(str);
        boolean zEquals2 = "div".equals(str);
        if (z7 || zEquals || (zEquals2 && this.f30928i != null)) {
            long j8 = this.f30923d;
            if (j8 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j8));
            }
            long j9 = this.f30924e;
            if (j9 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j9));
            }
        }
        if (this.f30932m == null) {
            return;
        }
        for (int i8 = 0; i8 < this.f30932m.size(); i8++) {
            ((c) this.f30932m.get(i8)).d(treeSet, z7 || zEquals);
        }
    }

    public final boolean f(long j8) {
        long j9 = this.f30924e;
        long j10 = this.f30923d;
        return (j10 == -9223372036854775807L && j9 == -9223372036854775807L) || (j10 <= j8 && j9 == -9223372036854775807L) || ((j10 == -9223372036854775807L && j8 < j9) || (j10 <= j8 && j8 < j9));
    }

    public final void g(long j8, String str, ArrayList arrayList) {
        String str2;
        String str3 = this.f30927h;
        if (!HttpUrl.FRAGMENT_ENCODE_SET.equals(str3)) {
            str = str3;
        }
        if (f(j8) && "div".equals(this.f30920a) && (str2 = this.f30928i) != null) {
            arrayList.add(new Pair(str, str2));
            return;
        }
        for (int i8 = 0; i8 < c(); i8++) {
            b(i8).g(j8, str, arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:143:0x020a  */
    /* JADX WARN: Code duplicated, block: B:146:0x0218  */
    /* JADX WARN: Code duplicated, block: B:148:0x021b  */
    /* JADX WARN: Code duplicated, block: B:150:0x021e  */
    /* JADX WARN: Code duplicated, block: B:151:0x0222  */
    /* JADX WARN: Code duplicated, block: B:153:0x0232  */
    /* JADX WARN: Code duplicated, block: B:165:0x0261  */
    /* JADX WARN: Code duplicated, block: B:168:0x0279  */
    /* JADX WARN: Code duplicated, block: B:169:0x0286  */
    /* JADX WARN: Code duplicated, block: B:172:0x029e  */
    /* JADX WARN: Code duplicated, block: B:174:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:177:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:180:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:193:0x02c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x02c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00bb  */
    public final void h(long j8, Map map, Map map2, String str, TreeMap treeMap) {
        Iterator it;
        int i8;
        c cVar;
        g gVarV;
        int i9;
        float f8;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        RelativeSizeSpan[] relativeSizeSpanArr;
        int length;
        float sizeChange;
        int i10;
        RelativeSizeSpan relativeSizeSpan;
        int i11;
        int i12;
        int i13;
        int i14;
        if (f(j8)) {
            String str2 = this.f30927h;
            String str3 = HttpUrl.FRAGMENT_ENCODE_SET.equals(str2) ? str : str2;
            Iterator it2 = this.f30931l.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                String str4 = (String) entry.getKey();
                HashMap map3 = this.f30930k;
                int iIntValue = map3.containsKey(str4) ? ((Integer) map3.get(str4)).intValue() : 0;
                int iIntValue2 = ((Integer) entry.getValue()).intValue();
                if (iIntValue != iIntValue2) {
                    a aVar = (a) treeMap.get(str4);
                    aVar.getClass();
                    f fVar = (f) map2.get(str3);
                    fVar.getClass();
                    g gVarV2 = b.v(this.f30925f, this.f30926g, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) aVar.f27597a;
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        aVar.f27597a = spannableStringBuilder;
                        aVar.f27598b = null;
                    }
                    if (gVarV2 != null) {
                        int i15 = gVarV2.f30962h;
                        int i16 = 1;
                        if (((i15 == -1 && gVarV2.f30963i == -1) ? -1 : (i15 == 1 ? (char) 1 : (char) 0) | (gVarV2.f30963i == 1 ? (char) 2 : (char) 0)) != -1) {
                            int i17 = gVarV2.f30962h;
                            if (i17 != -1) {
                                if (i17 == i16) {
                                    i12 = 1;
                                } else {
                                    i12 = 0;
                                }
                                if (gVarV2.f30963i == i16) {
                                    i13 = 2;
                                } else {
                                    i13 = 0;
                                }
                                i14 = i12 | i13;
                            } else if (gVarV2.f30963i == -1) {
                                i16 = 1;
                                i14 = -1;
                            } else {
                                i16 = 1;
                                if (i17 == i16) {
                                    i12 = 1;
                                } else {
                                    i12 = 0;
                                }
                                if (gVarV2.f30963i == i16) {
                                    i13 = 2;
                                } else {
                                    i13 = 0;
                                }
                                i14 = i12 | i13;
                            }
                            StyleSpan styleSpan = new StyleSpan(i14);
                            i8 = 33;
                            spannableStringBuilder.setSpan(styleSpan, iIntValue, iIntValue2, 33);
                        } else {
                            i8 = 33;
                        }
                        if (gVarV2.f30960f == i16) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), iIntValue, iIntValue2, i8);
                        }
                        if (gVarV2.f30961g == i16) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), iIntValue, iIntValue2, i8);
                        }
                        if (gVarV2.f30957c) {
                            if (!gVarV2.f30957c) {
                                throw new IllegalStateException("Font color has not been defined.");
                            }
                            H.a(spannableStringBuilder, new ForegroundColorSpan(gVarV2.f30956b), iIntValue, iIntValue2);
                        }
                        if (gVarV2.f30959e) {
                            if (!gVarV2.f30959e) {
                                throw new IllegalStateException("Background color has not been defined.");
                            }
                            H.a(spannableStringBuilder, new BackgroundColorSpan(gVarV2.f30958d), iIntValue, iIntValue2);
                        }
                        if (gVarV2.f30955a != null) {
                            H.a(spannableStringBuilder, new TypefaceSpan(gVarV2.f30955a), iIntValue, iIntValue2);
                        }
                        b bVar = gVarV2.f30972r;
                        if (bVar != null) {
                            int i18 = bVar.f30917a;
                            if (i18 == -1) {
                                int i19 = fVar.f30954j;
                                i18 = (i19 == 2 || i19 == 1) ? 3 : 1;
                                i11 = 1;
                            } else {
                                i11 = bVar.f30918b;
                            }
                            int i20 = bVar.f30919c;
                            if (i20 == -2) {
                                i20 = 1;
                            }
                            H.a(spannableStringBuilder, new h(i18, i11, i20), iIntValue, iIntValue2);
                        }
                        int i21 = gVarV2.f30967m;
                        if (i21 == 2) {
                            c cVar2 = this.f30929j;
                            while (true) {
                                if (cVar2 == null) {
                                    cVar2 = null;
                                    break;
                                }
                                g gVarV3 = b.v(cVar2.f30925f, cVar2.f30926g, map);
                                if (gVarV3 != null && gVarV3.f30967m == 1) {
                                    break;
                                } else {
                                    cVar2 = cVar2.f30929j;
                                }
                            }
                            if (cVar2 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(cVar2);
                                while (true) {
                                    if (arrayDeque.isEmpty()) {
                                        cVar = null;
                                        break;
                                    }
                                    cVar = (c) arrayDeque.pop();
                                    g gVarV4 = b.v(cVar.f30925f, cVar.f30926g, map);
                                    if (gVarV4 != null && gVarV4.f30967m == 3) {
                                        break;
                                    }
                                    for (int iC = cVar.c() - 1; iC >= 0; iC--) {
                                        arrayDeque.push(cVar.b(iC));
                                    }
                                }
                                if (cVar != null) {
                                    if (cVar.c() != 1 || cVar.b(0).f30921b == null) {
                                        x.e("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                                    } else {
                                        String str5 = cVar.b(0).f30921b;
                                        String str6 = M.f28050a;
                                        g gVarV5 = b.v(cVar.f30925f, cVar.f30926g, map);
                                        int i22 = gVarV5 != null ? gVarV5.f30968n : -1;
                                        if (i22 == -1 && (gVarV = b.v(cVar2.f30925f, cVar2.f30926g, map)) != null) {
                                            i22 = gVarV.f30968n;
                                        }
                                        spannableStringBuilder.setSpan(new g(str5, i22), iIntValue, iIntValue2, 33);
                                    }
                                }
                            }
                            if (gVarV2.f30971q == 1) {
                                H.a(spannableStringBuilder, new e(), iIntValue, iIntValue2);
                            }
                            i9 = gVarV2.f30964j;
                            if (i9 != 1) {
                                it = it2;
                                H.a(spannableStringBuilder, new AbsoluteSizeSpan((int) gVarV2.f30965k, true), iIntValue, iIntValue2);
                            } else if (i9 != 2) {
                                it = it2;
                                H.a(spannableStringBuilder, new RelativeSizeSpan(gVarV2.f30965k), iIntValue, iIntValue2);
                            } else if (i9 != 3) {
                                it = it2;
                            } else {
                                float f9 = gVarV2.f30965k / 100.0f;
                                relativeSizeSpanArr = (RelativeSizeSpan[]) spannableStringBuilder.getSpans(iIntValue, iIntValue2, RelativeSizeSpan.class);
                                length = relativeSizeSpanArr.length;
                                sizeChange = f9;
                                i10 = 0;
                                while (i10 < length) {
                                    relativeSizeSpan = relativeSizeSpanArr[i10];
                                    Iterator it3 = it2;
                                    if (spannableStringBuilder.getSpanStart(relativeSizeSpan) <= iIntValue && spannableStringBuilder.getSpanEnd(relativeSizeSpan) >= iIntValue2) {
                                        sizeChange = relativeSizeSpan.getSizeChange() * sizeChange;
                                    }
                                    if (spannableStringBuilder.getSpanStart(relativeSizeSpan) != iIntValue && spannableStringBuilder.getSpanEnd(relativeSizeSpan) == iIntValue2) {
                                        if (spannableStringBuilder.getSpanFlags(relativeSizeSpan) == 33) {
                                            spannableStringBuilder.removeSpan(relativeSizeSpan);
                                        }
                                    }
                                    i10++;
                                    it2 = it3;
                                }
                                it = it2;
                                spannableStringBuilder.setSpan(new RelativeSizeSpan(sizeChange), iIntValue, iIntValue2, 33);
                            }
                            if ("p".equals(this.f30920a)) {
                                f8 = gVarV2.f30973s;
                                if (f8 != Float.MAX_VALUE) {
                                    aVar.f27613q = (f8 * (-90.0f)) / 100.0f;
                                }
                                alignment = gVarV2.f30969o;
                                if (alignment != null) {
                                    aVar.f27599c = alignment;
                                }
                                alignment2 = gVarV2.f30970p;
                                if (alignment2 != null) {
                                    aVar.f27600d = alignment2;
                                }
                            }
                        } else if (i21 == 3 || i21 == 4) {
                            spannableStringBuilder.setSpan(new a(), iIntValue, iIntValue2, 33);
                        }
                        if (gVarV2.f30971q == 1) {
                            H.a(spannableStringBuilder, new e(), iIntValue, iIntValue2);
                        }
                        i9 = gVarV2.f30964j;
                        if (i9 != 1) {
                            it = it2;
                            H.a(spannableStringBuilder, new AbsoluteSizeSpan((int) gVarV2.f30965k, true), iIntValue, iIntValue2);
                        } else if (i9 != 2) {
                            it = it2;
                            H.a(spannableStringBuilder, new RelativeSizeSpan(gVarV2.f30965k), iIntValue, iIntValue2);
                        } else if (i9 != 3) {
                            it = it2;
                        } else {
                            float f10 = gVarV2.f30965k / 100.0f;
                            relativeSizeSpanArr = (RelativeSizeSpan[]) spannableStringBuilder.getSpans(iIntValue, iIntValue2, RelativeSizeSpan.class);
                            length = relativeSizeSpanArr.length;
                            sizeChange = f10;
                            i10 = 0;
                            while (i10 < length) {
                                relativeSizeSpan = relativeSizeSpanArr[i10];
                                Iterator it4 = it2;
                                if (spannableStringBuilder.getSpanStart(relativeSizeSpan) <= iIntValue) {
                                    sizeChange = relativeSizeSpan.getSizeChange() * sizeChange;
                                }
                                if (spannableStringBuilder.getSpanStart(relativeSizeSpan) != iIntValue) {
                                }
                                i10++;
                                it2 = it4;
                            }
                            it = it2;
                            spannableStringBuilder.setSpan(new RelativeSizeSpan(sizeChange), iIntValue, iIntValue2, 33);
                        }
                        if ("p".equals(this.f30920a)) {
                            f8 = gVarV2.f30973s;
                            if (f8 != Float.MAX_VALUE) {
                                aVar.f27613q = (f8 * (-90.0f)) / 100.0f;
                            }
                            alignment = gVarV2.f30969o;
                            if (alignment != null) {
                                aVar.f27599c = alignment;
                            }
                            alignment2 = gVarV2.f30970p;
                            if (alignment2 != null) {
                                aVar.f27600d = alignment2;
                            }
                        }
                    }
                    it2 = it;
                }
                it = it2;
                it2 = it;
            }
            for (int i23 = 0; i23 < c(); i23++) {
                b(i23).h(j8, map, map2, str3, treeMap);
            }
        }
    }

    public final void i(long j8, boolean z7, String str, TreeMap treeMap) {
        HashMap map = this.f30930k;
        map.clear();
        HashMap map2 = this.f30931l;
        map2.clear();
        String str2 = this.f30920a;
        if ("metadata".equals(str2)) {
            return;
        }
        String str3 = this.f30927h;
        String str4 = HttpUrl.FRAGMENT_ENCODE_SET.equals(str3) ? str : str3;
        if (this.f30922c && z7) {
            SpannableStringBuilder spannableStringBuilderE = e(str4, treeMap);
            String str5 = this.f30921b;
            str5.getClass();
            spannableStringBuilderE.append((CharSequence) str5);
            return;
        }
        if ("br".equals(str2) && z7) {
            e(str4, treeMap).append('\n');
            return;
        }
        if (f(j8)) {
            for (Map.Entry entry : treeMap.entrySet()) {
                String str6 = (String) entry.getKey();
                CharSequence charSequence = ((a) entry.getValue()).f27597a;
                charSequence.getClass();
                map.put(str6, Integer.valueOf(charSequence.length()));
            }
            boolean zEquals = "p".equals(str2);
            for (int i8 = 0; i8 < c(); i8++) {
                b(i8).i(j8, z7 || zEquals, str4, treeMap);
            }
            if (zEquals) {
                SpannableStringBuilder spannableStringBuilderE2 = e(str4, treeMap);
                int length = spannableStringBuilderE2.length() - 1;
                while (length >= 0 && spannableStringBuilderE2.charAt(length) == ' ') {
                    length--;
                }
                if (length >= 0 && spannableStringBuilderE2.charAt(length) != '\n') {
                    spannableStringBuilderE2.append('\n');
                }
            }
            for (Map.Entry entry2 : treeMap.entrySet()) {
                String str7 = (String) entry2.getKey();
                CharSequence charSequence2 = ((a) entry2.getValue()).f27597a;
                charSequence2.getClass();
                map2.put(str7, Integer.valueOf(charSequence2.length()));
            }
        }
    }
}
