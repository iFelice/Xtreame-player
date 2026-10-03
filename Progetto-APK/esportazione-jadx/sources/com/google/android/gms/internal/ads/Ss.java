package com.google.android.gms.internal.ads;

import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class Ss implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f16541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Yv f16542c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Parcelable f16543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f16544e;

    public /* synthetic */ Ss(C1936re c1936re, Yv yv, Parcelable parcelable, Object obj, int i8) {
        this.f16540a = i8;
        this.f16541b = c1936re;
        this.f16542c = yv;
        this.f16543d = parcelable;
        this.f16544e = obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        switch (this.f16540a) {
            case 0:
                return 9;
            default:
                return 26;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        int i8 = this.f16540a;
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f16541b;
        switch (i8) {
            case 0:
                return ((IB) interfaceExecutorServiceC1504jC).b(new CallableC1419he(this, 9));
            default:
                return ((IB) interfaceExecutorServiceC1504jC).b(new CallableC1419he(this, 19));
        }
    }
}
