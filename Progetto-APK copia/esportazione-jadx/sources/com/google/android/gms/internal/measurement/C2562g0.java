package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.g0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2562g0 extends AbstractRunnableC2574i0 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f23131K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Object f23132L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ Object f23133M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ Object f23134N;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2562g0(C2592l0 c2592l0, Activity activity, H h8) {
        super((C2598m0) c2592l0.f23192H, true);
        this.f23131K = 3;
        this.f23132L = activity;
        this.f23134N = h8;
        this.f23133M = c2592l0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void a() {
        Bundle bundle = null;
        switch (this.f23131K) {
            case 0:
                K k8 = ((C2598m0) this.f23133M).f23206f;
                com.bumptech.glide.c.h(k8);
                k8.logHealthData(5, (String) this.f23132L, new R3.b(this.f23134N), new R3.b(null), new R3.b(null));
                break;
            case 1:
                K k9 = ((C2598m0) this.f23133M).f23206f;
                com.bumptech.glide.c.h(k9);
                k9.getMaxUserProperties((String) this.f23132L, (H) this.f23134N);
                break;
            case 2:
                Bundle bundle2 = (Bundle) this.f23132L;
                if (bundle2 != null) {
                    bundle = new Bundle();
                    if (bundle2.containsKey("com.google.app_measurement.screen_service")) {
                        Object obj = bundle2.get("com.google.app_measurement.screen_service");
                        if (obj instanceof Bundle) {
                            bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                        }
                    }
                }
                K k10 = ((C2598m0) ((C2592l0) this.f23133M).f23192H).f23206f;
                com.bumptech.glide.c.h(k10);
                Activity activity = (Activity) this.f23134N;
                k10.onActivityCreatedByScionActivityInfo(W.i(activity), bundle, this.f23161H);
                break;
            default:
                K k11 = ((C2598m0) ((C2592l0) this.f23133M).f23192H).f23206f;
                com.bumptech.glide.c.h(k11);
                k11.onActivitySaveInstanceStateByScionActivityInfo(W.i((Activity) this.f23132L), (H) this.f23134N, this.f23161H);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void b() {
        switch (this.f23131K) {
            case 1:
                ((H) this.f23134N).V0(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2562g0(C2592l0 c2592l0, Bundle bundle, Activity activity) {
        super((C2598m0) c2592l0.f23192H, true);
        this.f23131K = 2;
        this.f23132L = bundle;
        this.f23134N = activity;
        this.f23133M = c2592l0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2562g0(C2598m0 c2598m0, Object obj) {
        super(c2598m0, false);
        this.f23131K = 0;
        this.f23132L = "Error with data collection. Data lost.";
        this.f23134N = obj;
        this.f23133M = c2598m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2562g0(C2598m0 c2598m0, String str, H h8) {
        super(c2598m0, true);
        this.f23131K = 1;
        this.f23132L = str;
        this.f23134N = h8;
        this.f23133M = c2598m0;
    }
}
