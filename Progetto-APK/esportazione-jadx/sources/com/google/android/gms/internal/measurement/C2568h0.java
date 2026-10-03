package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2568h0 extends AbstractRunnableC2574i0 {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ String f23146L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ String f23147M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ Bundle f23148N;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final /* synthetic */ C2598m0 f23151Q;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Long f23145K = null;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ boolean f23149O = true;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final /* synthetic */ boolean f23150P = true;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2568h0(C2598m0 c2598m0, String str, String str2, Bundle bundle) {
        super(c2598m0, true);
        this.f23146L = str;
        this.f23147M = str2;
        this.f23148N = bundle;
        this.f23151Q = c2598m0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void a() {
        Long l4 = this.f23145K;
        long jLongValue = l4 == null ? this.f23160G : l4.longValue();
        K k8 = this.f23151Q.f23206f;
        com.bumptech.glide.c.h(k8);
        k8.logEvent(this.f23146L, this.f23147M, this.f23148N, this.f23149O, this.f23150P, jLongValue);
    }
}
