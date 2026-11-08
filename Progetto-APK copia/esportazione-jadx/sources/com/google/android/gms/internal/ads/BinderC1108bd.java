package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1108bd extends AbstractBinderC2328z5 implements InterfaceC1211dd {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f18055G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f18056H;

    public BinderC1108bd(String str, int i8) {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
        this.f18055G = str;
        this.f18056H = i8;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof BinderC1108bd)) {
            BinderC1108bd binderC1108bd = (BinderC1108bd) obj;
            if (U4.a.c(this.f18055G, binderC1108bd.f18055G) && U4.a.c(Integer.valueOf(this.f18056H), Integer.valueOf(binderC1108bd.f18056H))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 == 1) {
            parcel2.writeNoException();
            parcel2.writeString(this.f18055G);
            return true;
        }
        if (i8 != 2) {
            return false;
        }
        parcel2.writeNoException();
        parcel2.writeInt(this.f18056H);
        return true;
    }
}
