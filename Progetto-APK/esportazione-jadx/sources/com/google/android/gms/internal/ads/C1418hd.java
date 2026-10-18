package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1418hd extends M3.a {
    public static final Parcelable.Creator<C1418hd> CREATOR = new C2350zc(7);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p090l3.b1 f19108G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f19109H;

    public C1418hd(p090l3.b1 b1Var, String str) {
        this.f19108G = b1Var;
        this.f19109H = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.P(parcel, 2, this.f19108G, i8);
        AbstractC2987b.Q(parcel, 3, this.f19109H);
        AbstractC2987b.p0(iX, parcel);
    }
}
