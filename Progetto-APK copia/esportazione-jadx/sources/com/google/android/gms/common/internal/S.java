package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class S extends M3.a {
    public static final Parcelable.Creator<S> CREATOR = new C3.H(25);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Bundle f11811G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public J3.d[] f11812H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f11813I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C0634j f11814J;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.J(parcel, 1, this.f11811G);
        AbstractC2987b.T(parcel, 2, this.f11812H, i8);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f11813I);
        AbstractC2987b.P(parcel, 4, this.f11814J, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
