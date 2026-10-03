package com.google.android.gms.internal.ads;

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

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.m2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1650m2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f19893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f19894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f19895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1806p2 f19896f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String[] f19897g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f19898h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f19899i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C1650m2 f19900j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashMap f19901k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final HashMap f19902l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f19903m;

    public C1650m2(String str, String str2, long j8, long j9, C1806p2 c1806p2, String[] strArr, String str3, String str4, C1650m2 c1650m2) {
        this.f19891a = str;
        this.f19892b = str2;
        this.f19899i = str4;
        this.f19896f = c1806p2;
        this.f19897g = strArr;
        this.f19893c = str2 != null;
        this.f19894d = j8;
        this.f19895e = j9;
        str3.getClass();
        this.f19898h = str3;
        this.f19900j = c1650m2;
        this.f19901k = new HashMap();
        this.f19902l = new HashMap();
    }

    public static C1650m2 b(String str, long j8, long j9, C1806p2 c1806p2, String[] strArr, String str2, String str3, C1650m2 c1650m2) {
        return new C1650m2(str, null, j8, j9, c1806p2, strArr, str2, str3, c1650m2);
    }

    public static C1650m2 c(String str) {
        return new C1650m2(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, HttpUrl.FRAGMENT_ENCODE_SET, null, null);
    }

    public static SpannableStringBuilder f(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            C0704Dj c0704Dj = new C0704Dj();
            c0704Dj.f12852a = new SpannableStringBuilder();
            treeMap.put(str, c0704Dj);
        }
        CharSequence charSequence = ((C0704Dj) treeMap.get(str)).f12852a;
        charSequence.getClass();
        return (SpannableStringBuilder) charSequence;
    }

    public final int a() {
        ArrayList arrayList = this.f19903m;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public final C1650m2 d(int i8) {
        ArrayList arrayList = this.f19903m;
        if (arrayList != null) {
            return (C1650m2) arrayList.get(i8);
        }
        throw new IndexOutOfBoundsException();
    }

    public final boolean e(long j8) {
        long j9 = this.f19895e;
        long j10 = this.f19894d;
        if (j10 == -9223372036854775807L) {
            if (j9 == -9223372036854775807L) {
                return true;
            }
            j10 = -9223372036854775807L;
        }
        if (j10 <= j8 && j9 == -9223372036854775807L) {
            return true;
        }
        if (j10 != -9223372036854775807L || j8 >= j9) {
            return j10 <= j8 && j8 < j9;
        }
        return true;
    }

    public final void g(TreeSet treeSet, boolean z7) {
        String str = this.f19891a;
        boolean zEquals = "p".equals(str);
        boolean zEquals2 = "div".equals(str);
        if (z7 || zEquals || (zEquals2 && this.f19899i != null)) {
            long j8 = this.f19894d;
            if (j8 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j8));
            }
            long j9 = this.f19895e;
            if (j9 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j9));
            }
        }
        if (this.f19903m != null) {
            for (int i8 = 0; i8 < this.f19903m.size(); i8++) {
                C1650m2 c1650m2 = (C1650m2) this.f19903m.get(i8);
                boolean z8 = true;
                if (!z7 && !zEquals) {
                    z8 = false;
                }
                c1650m2.g(treeSet, z8);
            }
        }
    }

    public final void h(long j8, String str, ArrayList arrayList) {
        String str2;
        String str3 = this.f19898h;
        if (!HttpUrl.FRAGMENT_ENCODE_SET.equals(str3)) {
            str = str3;
        }
        if (e(j8) && "div".equals(this.f19891a) && (str2 = this.f19899i) != null) {
            arrayList.add(new Pair(str, str2));
            return;
        }
        for (int i8 = 0; i8 < a(); i8++) {
            d(i8).h(j8, str, arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:140:0x0207  */
    /* JADX WARN: Code duplicated, block: B:143:0x0215  */
    /* JADX WARN: Code duplicated, block: B:145:0x0218  */
    /* JADX WARN: Code duplicated, block: B:147:0x021b  */
    /* JADX WARN: Code duplicated, block: B:148:0x021f  */
    /* JADX WARN: Code duplicated, block: B:150:0x022f  */
    /* JADX WARN: Code duplicated, block: B:162:0x0260  */
    /* JADX WARN: Code duplicated, block: B:165:0x0278  */
    /* JADX WARN: Code duplicated, block: B:166:0x0285  */
    /* JADX WARN: Code duplicated, block: B:169:0x029d  */
    /* JADX WARN: Code duplicated, block: B:171:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:174:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:177:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00bb  */
    public final void i(long j8, Map map, Map map2, String str, TreeMap treeMap) {
        int i8;
        C1650m2 c1650m2;
        C1806p2 c1806p2A;
        int i9;
        Iterator it;
        float f8;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        RelativeSizeSpan[] relativeSizeSpanArr;
        int length;
        float sizeChange;
        int i10;
        RelativeSizeSpan relativeSizeSpan;
        RelativeSizeSpan[] relativeSizeSpanArr2;
        int i11;
        int i12;
        int i13;
        int i14;
        if (e(j8)) {
            String str2 = this.f19898h;
            String str3 = !HttpUrl.FRAGMENT_ENCODE_SET.equals(str2) ? str2 : str;
            Iterator it2 = this.f19902l.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                String str4 = (String) entry.getKey();
                HashMap map3 = this.f19901k;
                int iIntValue = map3.containsKey(str4) ? ((Integer) map3.get(str4)).intValue() : 0;
                int iIntValue2 = ((Integer) entry.getValue()).intValue();
                if (iIntValue != iIntValue2) {
                    C0704Dj c0704Dj = (C0704Dj) treeMap.get(str4);
                    c0704Dj.getClass();
                    C1754o2 c1754o2 = (C1754o2) map2.get(str3);
                    c1754o2.getClass();
                    C1806p2 c1806p2A2 = com.bumptech.glide.c.A(this.f19896f, this.f19897g, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c0704Dj.f12852a;
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        c0704Dj.f12852a = spannableStringBuilder;
                    }
                    if (c1806p2A2 != null) {
                        int i15 = c1806p2A2.f20405h;
                        int i16 = 1;
                        if (((i15 == -1 && c1806p2A2.f20406i == -1) ? -1 : (i15 == 1 ? (char) 1 : (char) 0) | (c1806p2A2.f20406i == 1 ? (char) 2 : (char) 0)) != -1) {
                            int i17 = c1806p2A2.f20405h;
                            if (i17 != -1) {
                                if (i17 == i16) {
                                    i12 = 1;
                                } else {
                                    i12 = 0;
                                }
                                if (c1806p2A2.f20406i == i16) {
                                    i13 = 2;
                                } else {
                                    i13 = 0;
                                }
                                i14 = i12 | i13;
                            } else if (c1806p2A2.f20406i != -1) {
                                i16 = 1;
                                if (i17 == i16) {
                                    i12 = 1;
                                } else {
                                    i12 = 0;
                                }
                                if (c1806p2A2.f20406i == i16) {
                                    i13 = 2;
                                } else {
                                    i13 = 0;
                                }
                                i14 = i12 | i13;
                            } else {
                                i16 = 1;
                                i14 = -1;
                            }
                            StyleSpan styleSpan = new StyleSpan(i14);
                            i8 = 33;
                            spannableStringBuilder.setSpan(styleSpan, iIntValue, iIntValue2, 33);
                        } else {
                            i8 = 33;
                        }
                        if (c1806p2A2.f20403f == i16) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), iIntValue, iIntValue2, i8);
                        }
                        if (c1806p2A2.f20404g == i16) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), iIntValue, iIntValue2, i8);
                        }
                        if (c1806p2A2.f20400c) {
                            if (!c1806p2A2.f20400c) {
                                throw new IllegalStateException("Font color has not been defined.");
                            }
                            S3.e.z(spannableStringBuilder, new ForegroundColorSpan(c1806p2A2.f20399b), iIntValue, iIntValue2);
                        }
                        if (c1806p2A2.f20402e) {
                            if (!c1806p2A2.f20402e) {
                                throw new IllegalStateException("Background color has not been defined.");
                            }
                            S3.e.z(spannableStringBuilder, new BackgroundColorSpan(c1806p2A2.f20401d), iIntValue, iIntValue2);
                        }
                        if (c1806p2A2.f20398a != null) {
                            S3.e.z(spannableStringBuilder, new TypefaceSpan(c1806p2A2.f20398a), iIntValue, iIntValue2);
                        }
                        C1598l2 c1598l2 = c1806p2A2.f20415r;
                        if (c1598l2 != null) {
                            int i18 = c1598l2.f19702a;
                            if (i18 == -1) {
                                int i19 = c1754o2.f20230j;
                                i18 = (i19 == 2 || i19 == 1) ? 3 : 1;
                                i11 = 1;
                            } else {
                                i11 = c1598l2.f19703b;
                            }
                            int i20 = c1598l2.f19704c;
                            if (i20 == -2) {
                                i20 = 1;
                            }
                            S3.e.z(spannableStringBuilder, new C0981Wk(i18, i11, i20), iIntValue, iIntValue2);
                        }
                        int i21 = c1806p2A2.f20410m;
                        if (i21 == 2) {
                            C1650m2 c1650m3 = this.f19900j;
                            while (true) {
                                if (c1650m3 == null) {
                                    c1650m3 = null;
                                    break;
                                }
                                C1806p2 c1806p2A3 = com.bumptech.glide.c.A(c1650m3.f19896f, c1650m3.f19897g, map);
                                if (c1806p2A3 != null && c1806p2A3.f20410m == 1) {
                                    break;
                                } else {
                                    c1650m3 = c1650m3.f19900j;
                                }
                            }
                            if (c1650m3 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(c1650m3);
                                while (true) {
                                    if (arrayDeque.isEmpty()) {
                                        c1650m2 = null;
                                        break;
                                    }
                                    C1650m2 c1650m4 = (C1650m2) arrayDeque.pop();
                                    C1806p2 c1806p2A4 = com.bumptech.glide.c.A(c1650m4.f19896f, c1650m4.f19897g, map);
                                    if (c1806p2A4 != null && c1806p2A4.f20410m == 3) {
                                        c1650m2 = c1650m4;
                                        break;
                                    }
                                    for (int iA = c1650m4.a() - 1; iA >= 0; iA--) {
                                        arrayDeque.push(c1650m4.d(iA));
                                    }
                                }
                                if (c1650m2 != null) {
                                    if (c1650m2.a() != 1 || c1650m2.d(0).f19892b == null) {
                                        Zo.e("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                                    } else {
                                        String str5 = c1650m2.d(0).f19892b;
                                        int i22 = Et.f13234a;
                                        C1806p2 c1806p2A5 = com.bumptech.glide.c.A(c1650m2.f19896f, c1650m2.f19897g, map);
                                        int i23 = c1806p2A5 != null ? c1806p2A5.f20411n : -1;
                                        if (i23 == -1 && (c1806p2A = com.bumptech.glide.c.A(c1650m3.f19896f, c1650m3.f19897g, map)) != null) {
                                            i23 = c1806p2A.f20411n;
                                        }
                                        spannableStringBuilder.setSpan(new C0675Bk(str5, i23), iIntValue, iIntValue2, 33);
                                    }
                                }
                            }
                            if (c1806p2A2.f20414q == 1) {
                                S3.e.z(spannableStringBuilder, new C2254xk(), iIntValue, iIntValue2);
                            }
                            i9 = c1806p2A2.f20407j;
                            if (i9 != 1) {
                                it = it2;
                                S3.e.z(spannableStringBuilder, new AbsoluteSizeSpan((int) c1806p2A2.f20408k, true), iIntValue, iIntValue2);
                            } else if (i9 != 2) {
                                it = it2;
                                S3.e.z(spannableStringBuilder, new RelativeSizeSpan(c1806p2A2.f20408k), iIntValue, iIntValue2);
                            } else if (i9 != 3) {
                                it = it2;
                            } else {
                                float f9 = c1806p2A2.f20408k / 100.0f;
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
                                    if (spannableStringBuilder.getSpanStart(relativeSizeSpan) == iIntValue || spannableStringBuilder.getSpanEnd(relativeSizeSpan) != iIntValue2) {
                                        relativeSizeSpanArr2 = relativeSizeSpanArr;
                                    } else {
                                        relativeSizeSpanArr2 = relativeSizeSpanArr;
                                        if (spannableStringBuilder.getSpanFlags(relativeSizeSpan) == 33) {
                                            spannableStringBuilder.removeSpan(relativeSizeSpan);
                                        }
                                    }
                                    i10++;
                                    it2 = it3;
                                    relativeSizeSpanArr = relativeSizeSpanArr2;
                                }
                                it = it2;
                                spannableStringBuilder.setSpan(new RelativeSizeSpan(sizeChange), iIntValue, iIntValue2, 33);
                            }
                            if ("p".equals(this.f19891a)) {
                                f8 = c1806p2A2.f20416s;
                                if (f8 != Float.MAX_VALUE) {
                                    c0704Dj.f12866o = (f8 * (-90.0f)) / 100.0f;
                                }
                                alignment = c1806p2A2.f20412o;
                                if (alignment != null) {
                                    c0704Dj.f12854c = alignment;
                                }
                                alignment2 = c1806p2A2.f20413p;
                                if (alignment2 != null) {
                                    c0704Dj.f12855d = alignment2;
                                }
                            }
                            it2 = it;
                        } else if (i21 == 3 || i21 == 4) {
                            spannableStringBuilder.setSpan(new C1546k2(), iIntValue, iIntValue2, 33);
                        }
                        if (c1806p2A2.f20414q == 1) {
                            S3.e.z(spannableStringBuilder, new C2254xk(), iIntValue, iIntValue2);
                        }
                        i9 = c1806p2A2.f20407j;
                        if (i9 != 1) {
                            it = it2;
                            S3.e.z(spannableStringBuilder, new AbsoluteSizeSpan((int) c1806p2A2.f20408k, true), iIntValue, iIntValue2);
                        } else if (i9 != 2) {
                            it = it2;
                            S3.e.z(spannableStringBuilder, new RelativeSizeSpan(c1806p2A2.f20408k), iIntValue, iIntValue2);
                        } else if (i9 != 3) {
                            it = it2;
                        } else {
                            float f10 = c1806p2A2.f20408k / 100.0f;
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
                                if (spannableStringBuilder.getSpanStart(relativeSizeSpan) == iIntValue) {
                                    relativeSizeSpanArr2 = relativeSizeSpanArr;
                                } else {
                                    relativeSizeSpanArr2 = relativeSizeSpanArr;
                                }
                                i10++;
                                it2 = it4;
                                relativeSizeSpanArr = relativeSizeSpanArr2;
                            }
                            it = it2;
                            spannableStringBuilder.setSpan(new RelativeSizeSpan(sizeChange), iIntValue, iIntValue2, 33);
                        }
                        if ("p".equals(this.f19891a)) {
                            f8 = c1806p2A2.f20416s;
                            if (f8 != Float.MAX_VALUE) {
                                c0704Dj.f12866o = (f8 * (-90.0f)) / 100.0f;
                            }
                            alignment = c1806p2A2.f20412o;
                            if (alignment != null) {
                                c0704Dj.f12854c = alignment;
                            }
                            alignment2 = c1806p2A2.f20413p;
                            if (alignment2 != null) {
                                c0704Dj.f12855d = alignment2;
                            }
                        }
                        it2 = it;
                    } else {
                        continue;
                    }
                }
            }
            for (int i24 = 0; i24 < a(); i24++) {
                d(i24).i(j8, map, map2, str3, treeMap);
            }
        }
    }

    public final void j(long j8, boolean z7, String str, TreeMap treeMap) {
        HashMap map = this.f19901k;
        map.clear();
        HashMap map2 = this.f19902l;
        map2.clear();
        String str2 = this.f19891a;
        if ("metadata".equals(str2)) {
            return;
        }
        String str3 = this.f19898h;
        String str4 = !HttpUrl.FRAGMENT_ENCODE_SET.equals(str3) ? str3 : str;
        if (this.f19893c && z7) {
            SpannableStringBuilder spannableStringBuilderF = f(str4, treeMap);
            String str5 = this.f19892b;
            str5.getClass();
            spannableStringBuilderF.append((CharSequence) str5);
            return;
        }
        if ("br".equals(str2) && z7) {
            f(str4, treeMap).append('\n');
            return;
        }
        if (e(j8)) {
            for (Map.Entry entry : treeMap.entrySet()) {
                String str6 = (String) entry.getKey();
                CharSequence charSequence = ((C0704Dj) entry.getValue()).f12852a;
                charSequence.getClass();
                map.put(str6, Integer.valueOf(charSequence.length()));
            }
            boolean zEquals = "p".equals(str2);
            for (int i8 = 0; i8 < a(); i8++) {
                d(i8).j(j8, z7 || zEquals, str4, treeMap);
            }
            if (zEquals) {
                SpannableStringBuilder spannableStringBuilderF2 = f(str4, treeMap);
                int length = spannableStringBuilderF2.length();
                do {
                    length--;
                    if (length < 0) {
                        break;
                    }
                } while (spannableStringBuilderF2.charAt(length) == ' ');
                if (length >= 0 && spannableStringBuilderF2.charAt(length) != '\n') {
                    spannableStringBuilderF2.append('\n');
                }
            }
            for (Map.Entry entry2 : treeMap.entrySet()) {
                String str7 = (String) entry2.getKey();
                CharSequence charSequence2 = ((C0704Dj) entry2.getValue()).f12852a;
                charSequence2.getClass();
                map2.put(str7, Integer.valueOf(charSequence2.length()));
            }
        }
    }
}
