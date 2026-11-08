package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.at, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1072at implements InterfaceC2108uu {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f17982k = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f17986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0838Mi f17987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1539jw f17988f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Yv f17989g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p113o3.L f17990h = p083k3.l.f25980A.f25987g.d();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0693Cn f17991i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C0895Qi f17992j;

    public C1072at(Context context, String str, String str2, C0838Mi c0838Mi, C1539jw c1539jw, Yv yv, C0693Cn c0693Cn, C0895Qi c0895Qi, long j8) {
        this.f17983a = context;
        this.f17984b = str;
        this.f17985c = str2;
        this.f17987e = c0838Mi;
        this.f17988f = c1539jw;
        this.f17989g = yv;
        this.f17991i = c0693Cn;
        this.f17992j = c0895Qi;
        this.f17986d = j8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        Bundle bundle = new Bundle();
        C0693Cn c0693Cn = this.f17991i;
        c0693Cn.f12691a.put("seq_num", this.f17984b);
        J7 j8 = Q7.f15734U1;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            p083k3.l.f25980A.f25990j.getClass();
            c0693Cn.a("tsacc", String.valueOf(System.currentTimeMillis() - this.f17986d));
            c0693Cn.a("foreground", true != p113o3.O.e(this.f17983a) ? "1" : "0");
        }
        if (((Boolean) c3099q.f26627c.a(Q7.f15827f5)).booleanValue()) {
            this.f17987e.c(this.f17989g.f17677d);
            bundle.putAll(this.f17988f.a());
        }
        return Cw.N1(new Zs(0, this, bundle));
    }
}
