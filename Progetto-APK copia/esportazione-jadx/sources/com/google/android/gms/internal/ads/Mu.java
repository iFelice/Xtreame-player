package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Mu implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14824a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f14825b;

    public Mu(C1936re c1936re) {
        this.f14825b = c1936re;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        switch (this.f14824a) {
            case 0:
                return 45;
            default:
                return 51;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        int i8 = this.f14824a;
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f14825b;
        switch (i8) {
            case 0:
                return ((IB) interfaceExecutorServiceC1504jC).b(new H7(5, 0));
            default:
                return ((IB) interfaceExecutorServiceC1504jC).b(new H7(6));
        }
    }

    public Mu(C1936re c1936re, int i8) {
        this.f14825b = c1936re;
    }
}
