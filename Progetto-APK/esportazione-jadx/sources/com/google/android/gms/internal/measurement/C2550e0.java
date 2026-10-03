package com.google.android.gms.internal.measurement;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2550e0 extends AbstractRunnableC2574i0 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f23116K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ H f23117L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ C2598m0 f23118M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2550e0(C2598m0 c2598m0, H h8, int i8) {
        super(c2598m0, true);
        this.f23116K = i8;
        this.f23117L = h8;
        this.f23118M = c2598m0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void a() {
        switch (this.f23116K) {
            case 0:
                K k8 = this.f23118M.f23206f;
                com.bumptech.glide.c.h(k8);
                k8.getGmpAppId(this.f23117L);
                break;
            case 1:
                K k9 = this.f23118M.f23206f;
                com.bumptech.glide.c.h(k9);
                k9.getCachedAppInstanceId(this.f23117L);
                break;
            case 2:
                K k10 = this.f23118M.f23206f;
                com.bumptech.glide.c.h(k10);
                k10.generateEventId(this.f23117L);
                break;
            case 3:
                K k11 = this.f23118M.f23206f;
                com.bumptech.glide.c.h(k11);
                k11.getCurrentScreenName(this.f23117L);
                break;
            default:
                K k12 = this.f23118M.f23206f;
                com.bumptech.glide.c.h(k12);
                k12.getCurrentScreenClass(this.f23117L);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void b() {
        int i8 = this.f23116K;
        H h8 = this.f23117L;
        switch (i8) {
            case 0:
                h8.V0(null);
                break;
            case 1:
                h8.V0(null);
                break;
            case 2:
                h8.V0(null);
                break;
            case 3:
                h8.V0(null);
                break;
            default:
                h8.V0(null);
                break;
        }
    }
}
