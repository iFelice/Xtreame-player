package com.google.android.gms.internal.ads;

import A0.C0022w;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class D3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f12765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f12766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f12767c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f12768d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f12769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f12770f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f12771g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f12772h;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.List] */
    public D3(String str, p135r2.b bVar) {
        String str2 = bVar.f29782b;
        long j8 = bVar.f29783c;
        long j9 = bVar.f29784d;
        long j10 = bVar.f29785e;
        long j11 = bVar.f29786f;
        ?? arrayList = bVar.f29788h;
        if (arrayList == 0) {
            Map map = bVar.f29787g;
            arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new C1859q3((String) entry.getKey(), (String) entry.getValue()));
            }
        }
        this(str, str2, j8, j9, j10, j11, arrayList);
    }

    public static D3 a(C1453iB c1453iB) throws IOException {
        if (C0022w.d(c1453iB) != 538247942) {
            throw new IOException();
        }
        String strG = C0022w.g(c1453iB);
        String strG2 = C0022w.g(c1453iB);
        long jE = C0022w.e(c1453iB);
        long jE2 = C0022w.e(c1453iB);
        long jE3 = C0022w.e(c1453iB);
        long jE4 = C0022w.e(c1453iB);
        int iD = C0022w.d(c1453iB);
        if (iD < 0) {
            throw new IOException(p000a.r.f("readHeaderList size=", iD));
        }
        List listEmptyList = iD == 0 ? Collections.emptyList() : new ArrayList();
        for (int i8 = 0; i8 < iD; i8++) {
            listEmptyList.add(new C1859q3(C0022w.g(c1453iB).intern(), C0022w.g(c1453iB).intern()));
        }
        return new D3(strG, strG2, jE, jE2, jE3, jE4, listEmptyList);
    }

    public D3(String str, String str2, long j8, long j9, long j10, long j11, List list) {
        this.f12766b = str;
        this.f12767c = true == HttpUrl.FRAGMENT_ENCODE_SET.equals(str2) ? null : str2;
        this.f12768d = j8;
        this.f12769e = j9;
        this.f12770f = j10;
        this.f12771g = j11;
        this.f12772h = list;
    }
}
