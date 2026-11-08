package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2162vw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f21616a = new HashMap();

    public final C2110uw a(EnumC1747nw enumC1747nw, Context context, C1591kw c1591kw, Xu xu) {
        C1799ow c1799ow;
        HashMap map = this.f21616a;
        C2110uw c2110uw = (C2110uw) map.get(enumC1747nw);
        if (c2110uw != null) {
            return c2110uw;
        }
        if (enumC1747nw == EnumC1747nw.f20208G) {
            J7 j8 = Q7.f15706Q5;
            C3099q c3099q = C3099q.f26624d;
            int iIntValue = ((Integer) c3099q.f26627c.a(j8)).intValue();
            J7 j9 = Q7.f15753W5;
            O7 o7 = c3099q.f26627c;
            c1799ow = new C1799ow(context, enumC1747nw, iIntValue, ((Integer) o7.a(j9)).intValue(), ((Integer) o7.a(Q7.f15768Y5)).intValue(), (String) o7.a(Q7.f15784a6), (String) o7.a(Q7.f15722S5), (String) o7.a(Q7.f15737U5));
        } else if (enumC1747nw == EnumC1747nw.f20209H) {
            J7 j10 = Q7.f15714R5;
            C3099q c3099q2 = C3099q.f26624d;
            int iIntValue2 = ((Integer) c3099q2.f26627c.a(j10)).intValue();
            J7 j11 = Q7.f15761X5;
            O7 o8 = c3099q2.f26627c;
            c1799ow = new C1799ow(context, enumC1747nw, iIntValue2, ((Integer) o8.a(j11)).intValue(), ((Integer) o8.a(Q7.f15775Z5)).intValue(), (String) o8.a(Q7.f15793b6), (String) o8.a(Q7.f15730T5), (String) o8.a(Q7.f15745V5));
        } else if (enumC1747nw == EnumC1747nw.f20210I) {
            J7 j12 = Q7.f15819e6;
            C3099q c3099q3 = C3099q.f26624d;
            int iIntValue3 = ((Integer) c3099q3.f26627c.a(j12)).intValue();
            J7 j13 = Q7.f15837g6;
            O7 o9 = c3099q3.f26627c;
            c1799ow = new C1799ow(context, enumC1747nw, iIntValue3, ((Integer) o9.a(j13)).intValue(), ((Integer) o9.a(Q7.f15846h6)).intValue(), (String) o9.a(Q7.f15802c6), (String) o9.a(Q7.d6), (String) o9.a(Q7.f15828f6));
        } else {
            c1799ow = null;
        }
        p004a3.b bVar = new p004a3.b(c1799ow);
        C2110uw c2110uw2 = new C2110uw(bVar, new C2266xw(bVar, c1591kw, xu));
        map.put(enumC1747nw, c2110uw2);
        return c2110uw2;
    }
}
