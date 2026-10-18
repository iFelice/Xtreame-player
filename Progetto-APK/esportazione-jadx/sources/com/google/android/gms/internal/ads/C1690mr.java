package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1690mr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final P3.a f20004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1794or f20005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1488ix f20006c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f20007d = new LinkedHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f20008e = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15913p6)).booleanValue();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C2104uq f20009f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f20010g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f20011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f20012i;

    public C1690mr(P3.a aVar, C1794or c1794or, C2104uq c2104uq, C1488ix c1488ix) {
        this.f20004a = aVar;
        this.f20005b = c1794or;
        this.f20009f = c2104uq;
        this.f20006c = c1488ix;
    }

    public static boolean h(C1690mr c1690mr, Ov ov) {
        synchronized (c1690mr) {
            C1638lr c1638lr = (C1638lr) c1690mr.f20007d.get(ov);
            return c1638lr != null && c1638lr.f19861c == 8;
        }
    }

    public final synchronized long a() {
        return this.f20011h;
    }

    public final synchronized void b(Tv tv, Ov ov, D4.b bVar, C1438hx c1438hx) {
        Qv qv = (Qv) tv.f16755b.f21883I;
        ((P3.b) this.f20004a).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String str = ov.f15290w;
        if (str != null) {
            this.f20007d.put(ov, new C1638lr(str, ov.f15257f0, 9, 0L, null));
            Cw.h2(bVar, new C1586kr(this, jElapsedRealtime, qv, ov, str, c1438hx, tv), AbstractC1988se.f20911f);
        }
    }

    public final synchronized String c() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Iterator it = this.f20007d.entrySet().iterator();
            while (it.hasNext()) {
                C1638lr c1638lr = (C1638lr) ((Map.Entry) it.next()).getValue();
                if (c1638lr.f19861c != Integer.MAX_VALUE) {
                    arrayList.add(c1638lr.toString());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return TextUtils.join("_", arrayList);
    }

    public final synchronized void d(Ov ov) {
        try {
            ((P3.b) this.f20004a).getClass();
            this.f20011h = SystemClock.elapsedRealtime() - this.f20012i;
            if (ov != null) {
                this.f20009f.a(ov);
            }
            this.f20010g = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void e(List list) {
        ((P3.b) this.f20004a).getClass();
        this.f20012i = SystemClock.elapsedRealtime();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Ov ov = (Ov) it.next();
            if (!TextUtils.isEmpty(ov.f15290w)) {
                this.f20007d.put(ov, new C1638lr(ov.f15290w, ov.f15257f0, com.google.android.gms.common.api.d.API_PRIORITY_OTHER, 0L, null));
            }
        }
    }

    public final synchronized void f() {
        ((P3.b) this.f20004a).getClass();
        this.f20012i = SystemClock.elapsedRealtime();
    }

    public final synchronized void g(Ov ov) {
        C1638lr c1638lr = (C1638lr) this.f20007d.get(ov);
        if (c1638lr == null || this.f20010g) {
            return;
        }
        c1638lr.f19861c = 8;
    }
}
