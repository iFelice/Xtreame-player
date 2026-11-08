package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.SystemClock;
import android.util.Pair;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.b8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1088b8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f18017a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f18018b = Arrays.asList(((String) C3099q.f26624d.f26627c.a(Q7.f9)).split(","));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1139c8 f18019c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1088b8 f18020d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0783In f18021e;

    public C1088b8(C1139c8 c1139c8, C1088b8 c1088b8, C0783In c0783In) {
        this.f18020d = c1088b8;
        this.f18019c = c1139c8;
        this.f18021e = c0783In;
    }

    public final void a() {
        C1088b8 c1088b8 = this.f18020d;
        if (c1088b8 != null) {
            c1088b8.a();
        }
    }

    public final Bundle b() {
        C1088b8 c1088b8 = this.f18020d;
        if (c1088b8 != null) {
            return c1088b8.b();
        }
        return null;
    }

    public final void c(int i8, int i9) {
        C1088b8 c1088b8 = this.f18020d;
        if (c1088b8 != null) {
            c1088b8.c(i8, i9);
        }
    }

    public final void d() {
        this.f18017a.set(false);
        C1088b8 c1088b8 = this.f18020d;
        if (c1088b8 != null) {
            c1088b8.d();
        }
    }

    public final void e(int i8) {
        this.f18017a.set(false);
        C1088b8 c1088b8 = this.f18020d;
        if (c1088b8 != null) {
            c1088b8.e(i8);
        }
        p083k3.l lVar = p083k3.l.f25980A;
        lVar.f25990j.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        C1139c8 c1139c8 = this.f18019c;
        c1139c8.f18187j = jCurrentTimeMillis;
        List list = this.f18018b;
        if (list == null || !list.contains(String.valueOf(i8))) {
            return;
        }
        lVar.f25990j.getClass();
        c1139c8.f18186i = SystemClock.elapsedRealtime() + ((long) ((Integer) C3099q.f26624d.f26627c.a(Q7.c9)).intValue());
        if (c1139c8.f18182e == null) {
            c1139c8.f18182e = new RunnableC0878Pf(c1139c8, 10);
        }
        c1139c8.d();
        U2.m.m(this.f18021e, "pact_action", new Pair("pe", "pact_reqpmc"));
    }

    public final void f(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("gpa", -1) == 0) {
                this.f18017a.set(true);
                U2.m.m(this.f18021e, "pact_action", new Pair("pe", "pact_con"));
                this.f18019c.c(jSONObject.getString("paw_id"));
            }
        } catch (JSONException e8) {
            p113o3.I.l("Message is not in JSON format: ", e8);
        }
        C1088b8 c1088b8 = this.f18020d;
        if (c1088b8 != null) {
            c1088b8.f(str);
        }
    }

    public final void g(int i8, boolean z7) {
        C1088b8 c1088b8 = this.f18020d;
        if (c1088b8 != null) {
            c1088b8.g(i8, z7);
        }
    }
}
