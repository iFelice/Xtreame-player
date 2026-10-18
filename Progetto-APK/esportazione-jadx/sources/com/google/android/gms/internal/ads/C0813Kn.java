package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Kn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0813Kn {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f14407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0783In f14408f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f14404b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f14405c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f14406d = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p113o3.L f14403a = p083k3.l.f25980A.f25987g.d();

    public C0813Kn(String str, C0783In c0783In) {
        this.f14407e = str;
        this.f14408f = c0783In;
    }

    public final synchronized void a(String str, String str2) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15710R1)).booleanValue()) {
            HashMap mapE = e();
            mapE.put("action", "adapter_init_finished");
            mapE.put("ancn", str);
            mapE.put("rqe", str2);
            this.f14404b.add(mapE);
        }
    }

    public final synchronized void b(String str) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15710R1)).booleanValue()) {
            HashMap mapE = e();
            mapE.put("action", "adapter_init_started");
            mapE.put("ancn", str);
            this.f14404b.add(mapE);
        }
    }

    public final synchronized void c(String str) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15710R1)).booleanValue()) {
            HashMap mapE = e();
            mapE.put("action", "adapter_init_finished");
            mapE.put("ancn", str);
            this.f14404b.add(mapE);
        }
    }

    public final synchronized void d() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15710R1)).booleanValue() && !this.f14405c) {
            HashMap mapE = e();
            mapE.put("action", "init_started");
            this.f14404b.add(mapE);
            this.f14405c = true;
        }
    }

    public final HashMap e() {
        C0783In c0783In = this.f14408f;
        c0783In.getClass();
        HashMap map = new HashMap(c0783In.f14203a);
        p083k3.l.f25980A.f25990j.getClass();
        map.put("tms", Long.toString(SystemClock.elapsedRealtime(), 10));
        map.put("tid", this.f14403a.r() ? HttpUrl.FRAGMENT_ENCODE_SET : this.f14407e);
        return map;
    }
}
