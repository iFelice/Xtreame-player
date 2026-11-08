package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Cd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0683Cd extends AbstractBinderC2328z5 implements InterfaceC1728nd {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f12636G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f12637H;

    public BinderC0683Cd(String str, int i8) {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
        this.f12636G = str;
        this.f12637H = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1728nd
    public final int J() {
        return this.f12637H;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            parcel2.writeNoException();
            parcel2.writeString(this.f12636G);
            return true;
        }
        if (i8 != 2) {
            return false;
        }
        parcel2.writeNoException();
        parcel2.writeInt(this.f12637H);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1728nd
    public final String zzf() {
        return this.f12636G;
    }
}
