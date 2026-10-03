package com.google.android.gms.internal.measurement;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2532b0 extends AbstractRunnableC2574i0 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f23089K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ String f23090L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ C2598m0 f23091M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2532b0(C2598m0 c2598m0, String str, int i8) {
        super(c2598m0, true);
        this.f23089K = i8;
        this.f23090L = str;
        this.f23091M = c2598m0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC2574i0
    public final void a() {
        switch (this.f23089K) {
            case 0:
                K k8 = this.f23091M.f23206f;
                com.bumptech.glide.c.h(k8);
                k8.beginAdUnitExposure(this.f23090L, this.f23161H);
                break;
            default:
                K k9 = this.f23091M.f23206f;
                com.bumptech.glide.c.h(k9);
                k9.endAdUnitExposure(this.f23090L, this.f23161H);
                break;
        }
    }
}
