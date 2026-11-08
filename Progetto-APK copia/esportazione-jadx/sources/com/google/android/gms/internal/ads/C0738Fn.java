package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Fn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0738Fn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0783In f13412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f13413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f13414c;

    public C0738Fn(C0783In c0783In, C1936re c1936re) {
        this.f13412a = c0783In;
        c0783In.getClass();
        this.f13414c = new HashMap(c0783In.f14203a);
        this.f13413b = c1936re;
    }

    public final C0871Om a() {
        C0871Om c0871Om = new C0871Om(this);
        ((Map) c0871Om.f15197I).putAll(((C0738Fn) c0871Om.f15196H).f13414c);
        return c0871Om;
    }

    public final void b() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Va)).booleanValue()) {
            C0871Om c0871OmA = a();
            c0871OmA.n("action", "pecr");
            c0871OmA.u();
        }
    }
}
