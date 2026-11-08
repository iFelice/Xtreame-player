package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class Z extends AbstractRunnableC2574i0 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f23059K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ String f23060L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ String f23061M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ C2598m0 f23062N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ Object f23063O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Z(C2598m0 c2598m0, String str, String str2, Object obj, int i8) {
        super(c2598m0, true);
        this.f23059K = i8;
        this.f23060L = str;
        this.f23061M = str2;
        this.f23063O = obj;
        this.f23062N = c2598m0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void a() {
        switch (this.f23059K) {
            case 0:
                K k8 = this.f23062N.f23206f;
                com.bumptech.glide.c.h(k8);
                k8.clearConditionalUserProperty(this.f23060L, this.f23061M, (Bundle) this.f23063O);
                break;
            case 1:
                K k9 = this.f23062N.f23206f;
                com.bumptech.glide.c.h(k9);
                k9.getConditionalUserProperties(this.f23060L, this.f23061M, (H) this.f23063O);
                break;
            default:
                K k10 = this.f23062N.f23206f;
                com.bumptech.glide.c.h(k10);
                k10.setCurrentScreenByScionActivityInfo((W) this.f23063O, this.f23060L, this.f23061M, this.f23160G);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void b() {
        switch (this.f23059K) {
            case 1:
                ((H) this.f23063O).V0(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z(C2598m0 c2598m0, W w7, String str, String str2) {
        super(c2598m0, true);
        this.f23059K = 2;
        this.f23063O = w7;
        this.f23060L = str;
        this.f23061M = str2;
        this.f23062N = c2598m0;
    }
}
