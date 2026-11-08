package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class Y extends AbstractRunnableC2574i0 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f23053K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ C2598m0 f23054L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ Object f23055M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Y(C2598m0 c2598m0, Object obj, int i8) {
        super(c2598m0, true);
        this.f23053K = i8;
        this.f23055M = obj;
        this.f23054L = c2598m0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void a() {
        switch (this.f23053K) {
            case 0:
                K k8 = this.f23054L.f23206f;
                com.bumptech.glide.c.h(k8);
                k8.setConditionalUserProperty((Bundle) this.f23055M, this.f23160G);
                break;
            case 1:
                K k9 = this.f23054L.f23206f;
                com.bumptech.glide.c.h(k9);
                k9.retrieveAndUploadBatches(new BinderC2538c0((Runnable) this.f23055M));
                break;
            default:
                K k10 = this.f23054L.f23206f;
                com.bumptech.glide.c.h(k10);
                k10.registerOnMeasurementEventListener((AbstractBinderC2580j0) this.f23055M);
                break;
        }
    }
}
