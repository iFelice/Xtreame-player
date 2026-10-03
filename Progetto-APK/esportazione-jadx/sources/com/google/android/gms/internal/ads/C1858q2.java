package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.q2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1858q2 implements T1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1650m2 f20523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f20524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f20525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f20526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f20527e;

    public C1858q2(C1650m2 c1650m2, HashMap map, HashMap map2, HashMap map3) {
        this.f20523a = c1650m2;
        this.f20526d = map2;
        this.f20527e = map3;
        this.f20525c = Collections.unmodifiableMap(map);
        TreeSet treeSet = new TreeSet();
        int i8 = 0;
        c1650m2.g(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i8] = ((Long) it.next()).longValue();
            i8++;
        }
        this.f20524b = jArr;
    }

    @Override // com.google.android.gms.internal.ads.T1
    public final int zza() {
        return this.f20524b.length;
    }

    @Override // com.google.android.gms.internal.ads.T1
    public final long zzb(int i8) {
        return this.f20524b[i8];
    }

    @Override // com.google.android.gms.internal.ads.T1
    public final ArrayList zzc(long j8) {
        C1650m2 c1650m2 = this.f20523a;
        c1650m2.getClass();
        ArrayList arrayList = new ArrayList();
        c1650m2.h(j8, c1650m2.f19898h, arrayList);
        TreeMap treeMap = new TreeMap();
        c1650m2.j(j8, false, c1650m2.f19898h, treeMap);
        Map map = this.f20525c;
        Map map2 = this.f20526d;
        c1650m2.i(j8, map, map2, c1650m2.f19898h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            Pair pair = (Pair) arrayList.get(i8);
            String str = (String) this.f20527e.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                C1754o2 c1754o2 = (C1754o2) map2.get(pair.first);
                c1754o2.getClass();
                arrayList2.add(new C1063ak(null, null, null, bitmapDecodeByteArray, c1754o2.f20223c, 0, c1754o2.f20225e, c1754o2.f20222b, 0, Integer.MIN_VALUE, -3.4028235E38f, c1754o2.f20226f, c1754o2.f20227g, c1754o2.f20230j, 0.0f));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            C1754o2 c1754o3 = (C1754o2) map2.get(entry.getKey());
            c1754o3.getClass();
            C0704Dj c0704Dj = (C0704Dj) entry.getValue();
            CharSequence charSequence = c0704Dj.f12852a;
            charSequence.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequence;
            for (C1546k2 c1546k2 : (C1546k2[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), C1546k2.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(c1546k2), spannableStringBuilder.getSpanEnd(c1546k2), (CharSequence) HttpUrl.FRAGMENT_ENCODE_SET);
            }
            int i9 = 0;
            while (i9 < spannableStringBuilder.length()) {
                int i10 = i9 + 1;
                if (spannableStringBuilder.charAt(i9) == ' ') {
                    int i11 = i10;
                    while (i11 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i11) == ' ') {
                        i11++;
                    }
                    int i12 = i11 - i10;
                    if (i12 > 0) {
                        spannableStringBuilder.delete(i9, i12 + i9);
                    }
                }
                i9 = i10;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            int i13 = 0;
            while (i13 < spannableStringBuilder.length() - 1) {
                int i14 = i13 + 1;
                if (spannableStringBuilder.charAt(i13) == '\n' && spannableStringBuilder.charAt(i14) == ' ') {
                    spannableStringBuilder.delete(i14, i13 + 2);
                }
                i13 = i14;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            int i15 = 0;
            while (i15 < spannableStringBuilder.length() - 1) {
                int i16 = i15 + 1;
                if (spannableStringBuilder.charAt(i15) == ' ' && spannableStringBuilder.charAt(i16) == '\n') {
                    spannableStringBuilder.delete(i15, i16);
                }
                i15 = i16;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            c0704Dj.f12856e = c1754o3.f20223c;
            c0704Dj.f12857f = c1754o3.f20224d;
            c0704Dj.f12858g = c1754o3.f20225e;
            c0704Dj.f12859h = c1754o3.f20222b;
            c0704Dj.f12863l = c1754o3.f20226f;
            c0704Dj.f12862k = c1754o3.f20229i;
            c0704Dj.f12861j = c1754o3.f20228h;
            c0704Dj.f12865n = c1754o3.f20230j;
            arrayList2.add(c0704Dj.a());
        }
        return arrayList2;
    }
}
