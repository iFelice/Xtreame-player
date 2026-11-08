package com.google.android.gms.internal.ads;

import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public abstract class K7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f14304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f14305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f14306d;

    public K7(int i8, String str, Object obj, Object obj2) {
        this.f14303a = i8;
        this.f14304b = str;
        this.f14305c = obj;
        this.f14306d = obj2;
        C3099q.f26624d.f26625a.f3091a.add(this);
    }

    public static J7 b(String str, int i8, int i9) {
        return new J7(str, Integer.valueOf(i8), Integer.valueOf(i9), 1);
    }

    public static J7 c(String str, long j8, long j9) {
        return new J7(str, Long.valueOf(j8), Long.valueOf(j9), 2);
    }

    public static void d() {
        C3099q.f26624d.f26625a.f3092b.add(new J7("gads:sdk_core_constants:experiment_id", (Object) null, (Object) null, 4));
    }

    public abstract Object a(JSONObject jSONObject);

    public final Object e() {
        return C3099q.f26624d.f26627c.f15141i ? this.f14306d : this.f14305c;
    }
}
