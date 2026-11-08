package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Bd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0668Bd extends M3.a {
    public static final Parcelable.Creator<C0668Bd> CREATOR = new C2350zc(9);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f12382G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f12383H;

    public C0668Bd(String str, String str2) {
        this.f12382G = str;
        this.f12383H = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f12382G);
        AbstractC2987b.Q(parcel, 2, this.f12383H);
        AbstractC2987b.p0(iX, parcel);
    }
}
