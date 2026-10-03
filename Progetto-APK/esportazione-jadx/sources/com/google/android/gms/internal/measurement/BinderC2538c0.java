package com.google.android.gms.internal.measurement;

import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2538c0 extends AbstractBinderC2653x implements P {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Runnable f23108G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC2538c0(Runnable runnable) {
        super("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
        this.f23108G = runnable;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC2653x
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 2) {
            return false;
        }
        b();
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.P
    public final void b() {
        this.f23108G.run();
    }
}
