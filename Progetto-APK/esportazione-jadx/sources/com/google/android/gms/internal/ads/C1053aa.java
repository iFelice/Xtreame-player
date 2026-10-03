package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1053aa extends M3.a {
    public static final Parcelable.Creator<C1053aa> CREATOR = new E0(24);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f17890G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String[] f17891H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String[] f17892I;

    public C1053aa(String str, String[] strArr, String[] strArr2) {
        this.f17890G = str;
        this.f17891H = strArr;
        this.f17892I = strArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f17890G);
        AbstractC2987b.R(parcel, 2, this.f17891H);
        AbstractC2987b.R(parcel, 3, this.f17892I);
        AbstractC2987b.p0(iX, parcel);
    }
}
