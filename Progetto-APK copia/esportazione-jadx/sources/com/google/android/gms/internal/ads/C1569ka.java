package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ka, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1569ka extends M3.a {
    public static final Parcelable.Creator<C1569ka> CREATOR = new E0(27);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f19616G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Bundle f19617H;

    public C1569ka(String str, Bundle bundle) {
        this.f19616G = str;
        this.f19617H = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f19616G);
        AbstractC2987b.J(parcel, 2, this.f19617H);
        AbstractC2987b.p0(iX, parcel);
    }
}
