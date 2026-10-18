package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.l5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1601l5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Map f19707h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f19708i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f19709j;

    public C1601l5(V4 v5, V3 v7, int i8, HashMap map, View view, Context context) {
        super(v5, "8HOKLqLOucCjn3kWyyKimNsF6Dcutdd9y3ap015kDIWZNsgYbLJqzHSzKo+jDSQ4", "ikPkuPQbpnIYaQGo6Ao4zzPX0Qaf9HhmEZeT4ZfFQOg=", v7, i8, 85);
        this.f19707h = map;
        this.f19708i = view;
        this.f19709j = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        Map map = this.f19707h;
        long jLongValue = map.containsKey(1) ? ((Long) map.get(1)).longValue() : Long.MIN_VALUE;
        Map map2 = this.f19707h;
        long[] jArr = {jLongValue, map2.containsKey(2) ? ((Long) map2.get(2)).longValue() : Long.MIN_VALUE};
        Context context = this.f19709j;
        if (context == null) {
            context = this.f21032a.f16939a;
        }
        long[] jArr2 = (long[]) this.f21036e.invoke(null, jArr, context, this.f19708i);
        long j8 = jArr2[0];
        this.f19707h.put(1, Long.valueOf(jArr2[1]));
        long j9 = jArr2[2];
        this.f19707h.put(2, Long.valueOf(jArr2[3]));
        synchronized (this.f21035d) {
            V3 v5 = this.f21035d;
            v5.d();
            C1496j4.d0((C1496j4) v5.f20255H, j8);
            V3 v7 = this.f21035d;
            v7.d();
            C1496j4.e0((C1496j4) v7.f20255H, j9);
        }
    }
}
