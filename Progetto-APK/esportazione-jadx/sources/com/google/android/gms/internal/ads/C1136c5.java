package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import java.util.List;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.c5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1136c5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f18174h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f18175i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f18176j;

    public C1136c5(V4 v5, V3 v7, int i8, Context context) {
        super(v5, "mh3tdFapbE/sJv8Vo+tGtSqGob+34XuR/yQkwrU1NOisAE1Jls0cSJi5Lk8Oid+3", "sgSNHgqJ9EwYu8w2dMx3zRGSIiO9D1spUgPO3F51srA=", v7, i8, 31);
        this.f18175i = null;
        this.f18176j = context;
    }

    private final void c() {
        if (((View) this.f18176j) == null) {
            return;
        }
        Boolean bool = (Boolean) C3099q.f26624d.f26627c.a(Q7.f15949u2);
        boolean zBooleanValue = bool.booleanValue();
        Object[] objArr = (Object[]) this.f21036e.invoke(null, (View) this.f18176j, (Activity) this.f18175i, bool);
        synchronized (this.f21035d) {
            try {
                V3 v5 = this.f21035d;
                long jLongValue = ((Long) objArr[0]).longValue();
                v5.d();
                C1496j4.X((C1496j4) v5.f20255H, jLongValue);
                V3 v7 = this.f21035d;
                long jLongValue2 = ((Long) objArr[1]).longValue();
                v7.d();
                C1496j4.Y((C1496j4) v7.f20255H, jLongValue2);
                if (zBooleanValue) {
                    V3 v8 = this.f21035d;
                    String str = (String) objArr[2];
                    v8.d();
                    C1496j4.Z((C1496j4) v8.f20255H, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        switch (this.f18174h) {
            case 0:
                c();
                return;
            default:
                V3 v5 = this.f21035d;
                v5.d();
                C1496j4.P0((C1496j4) v5.f20255H, -1L);
                V3 v7 = this.f21035d;
                v7.d();
                C1496j4.Q0((C1496j4) v7.f20255H, -1L);
                Context context = (Context) this.f18176j;
                if (context == null) {
                    context = this.f21032a.f16939a;
                }
                if (((List) this.f18175i) == null) {
                    this.f18175i = (List) this.f21036e.invoke(null, context);
                }
                List list = (List) this.f18175i;
                if (list == null || list.size() != 2) {
                    return;
                }
                synchronized (this.f21035d) {
                    V3 v8 = this.f21035d;
                    long jLongValue = ((Long) ((List) this.f18175i).get(0)).longValue();
                    v8.d();
                    C1496j4.P0((C1496j4) v8.f20255H, jLongValue);
                    V3 v9 = this.f21035d;
                    long jLongValue2 = ((Long) ((List) this.f18175i).get(1)).longValue();
                    v9.d();
                    C1496j4.Q0((C1496j4) v9.f20255H, jLongValue2);
                    break;
                }
                return;
        }
    }

    public C1136c5(V4 v5, V3 v7, int i8, View view, Activity activity) {
        super(v5, "3ikNbWzMTIqU222KtrzzFiiUcpXtNPU8upxs9wXDAJYxbW4sx23+rx4eBiJjRteZ", "TdQDsqdcAU8jyTN6NihYJULAUxAJpTfNWWUTPnMXLns=", v7, i8, 62);
        this.f18176j = view;
        this.f18175i = activity;
    }
}
