package com.google.android.gms.internal.measurement;

import android.app.Activity;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.k0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2586k0 extends AbstractRunnableC2574i0 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f23174K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Activity f23175L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ C2592l0 f23176M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2586k0(C2592l0 c2592l0, Activity activity, int i8) {
        super((C2598m0) c2592l0.f23192H, true);
        this.f23174K = i8;
        if (i8 == 1) {
            this.f23175L = activity;
            this.f23176M = c2592l0;
            super((C2598m0) c2592l0.f23192H, true);
            return;
        }
        if (i8 == 2) {
            this.f23175L = activity;
            this.f23176M = c2592l0;
            super((C2598m0) c2592l0.f23192H, true);
        } else if (i8 == 3) {
            this.f23175L = activity;
            this.f23176M = c2592l0;
            super((C2598m0) c2592l0.f23192H, true);
        } else if (i8 != 4) {
            this.f23175L = activity;
            this.f23176M = c2592l0;
        } else {
            this.f23175L = activity;
            this.f23176M = c2592l0;
            super((C2598m0) c2592l0.f23192H, true);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void a() {
        switch (this.f23174K) {
            case 0:
                K k8 = ((C2598m0) this.f23176M.f23192H).f23206f;
                com.bumptech.glide.c.h(k8);
                k8.onActivityStartedByScionActivityInfo(W.i(this.f23175L), this.f23161H);
                break;
            case 1:
                K k9 = ((C2598m0) this.f23176M.f23192H).f23206f;
                com.bumptech.glide.c.h(k9);
                k9.onActivityResumedByScionActivityInfo(W.i(this.f23175L), this.f23161H);
                break;
            case 2:
                K k10 = ((C2598m0) this.f23176M.f23192H).f23206f;
                com.bumptech.glide.c.h(k10);
                k10.onActivityPausedByScionActivityInfo(W.i(this.f23175L), this.f23161H);
                break;
            case 3:
                K k11 = ((C2598m0) this.f23176M.f23192H).f23206f;
                com.bumptech.glide.c.h(k11);
                k11.onActivityStoppedByScionActivityInfo(W.i(this.f23175L), this.f23161H);
                break;
            default:
                K k12 = ((C2598m0) this.f23176M.f23192H).f23206f;
                com.bumptech.glide.c.h(k12);
                k12.onActivityDestroyedByScionActivityInfo(W.i(this.f23175L), this.f23161H);
                break;
        }
    }
}
