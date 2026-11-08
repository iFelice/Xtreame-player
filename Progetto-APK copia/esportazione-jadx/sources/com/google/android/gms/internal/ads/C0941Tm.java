package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p167v3.C3195c;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Tm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0941Tm {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p083k3.a f16727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f16728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0738Fn f16729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f16730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final H4 f16731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p120p3.a f16732g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C1172cq f16734i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C1488ix f16735j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final BinderC1431hq f16736k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Zv f16737l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public KB f16738m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0842Mm f16726a = new C0842Mm();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0968Vl f16733h = new C0968Vl();

    public C0941Tm(CallableC0913Rm callableC0913Rm) {
        this.f16728c = callableC0913Rm.f16353b;
        this.f16730e = callableC0913Rm.f16356e;
        this.f16731f = callableC0913Rm.f16357f;
        this.f16732g = callableC0913Rm.f16358g;
        this.f16727b = callableC0913Rm.f16352a;
        this.f16734i = callableC0913Rm.f16355d;
        this.f16735j = callableC0913Rm.f16359h;
        this.f16729d = callableC0913Rm.f16354c;
        this.f16736k = callableC0913Rm.f16360i;
        this.f16737l = callableC0913Rm.f16361j;
    }

    public final synchronized D4.b a(JSONObject jSONObject, String str) {
        KB kb = this.f16738m;
        if (kb == null) {
            return Cw.N1(null);
        }
        return Cw.d2(kb, new C3195c(this, str, jSONObject), this.f16730e);
    }

    public final synchronized void b(Map map) {
        KB kb = this.f16738m;
        if (kb == null) {
            return;
        }
        Cw.h2(kb, new C0871Om(map), this.f16730e);
    }

    public final synchronized void c(String str, N9 n9) {
        KB kb = this.f16738m;
        if (kb == null) {
            return;
        }
        Cw.h2(kb, new C0857Nm(str, n9, 0), this.f16730e);
    }

    public final synchronized void d(String str, N9 n9) {
        KB kb = this.f16738m;
        if (kb == null) {
            return;
        }
        Cw.h2(kb, new C0857Nm(str, n9, 1), this.f16730e);
    }
}
