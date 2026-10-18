package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ju, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1537ju implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f19521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f19522c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Context f19523d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Yv f19524e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AbstractC1317fg f19525f;

    public C1537ju(C1936re c1936re, ScheduledExecutorService scheduledExecutorService, String str, Context context, Yv yv, AbstractC1317fg abstractC1317fg) {
        this.f19521b = c1936re;
        this.f19522c = scheduledExecutorService;
        this.f19520a = str;
        this.f19523d = context;
        this.f19524e = yv;
        this.f19525f = abstractC1317fg;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 33;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15580A6)).booleanValue() || this.f19524e.f17691r) ? Cw.N1(new Cs(null, 3)) : Cw.W1(new C1331fu(this, 1), this.f19521b);
    }
}
