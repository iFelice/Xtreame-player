package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Un, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0956Un implements InterfaceC0886Pn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BinderC1587ks f16885b;

    public C0956Un(long j8, Context context, C0900Qn c0900Qn, C0671Bg c0671Bg, String str) {
        this.f16884a = j8;
        C0791Jg c0791Jg = new C0791Jg(c0671Bg.f12432c);
        context.getClass();
        c0791Jg.f14179b = context;
        c0791Jg.f14181d = new p090l3.d1();
        str.getClass();
        c0791Jg.f14180c = str;
        BinderC1587ks binderC1587ks = (BinderC1587ks) ((MJ) c0791Jg.a().f26616h).zzb();
        this.f16885b = binderC1587ks;
        binderC1587ks.C0(new BinderC0942Tn(this, c0900Qn));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0886Pn
    public final void a(p090l3.b1 b1Var) {
        this.f16885b.h3(b1Var);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0886Pn
    public final void zza() {
        this.f16885b.f();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0886Pn
    public final void zzc() {
        this.f16885b.D2(new R3.b(null));
    }
}
