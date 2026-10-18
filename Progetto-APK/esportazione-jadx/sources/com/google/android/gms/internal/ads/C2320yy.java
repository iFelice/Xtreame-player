package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2320yy extends M3.a {
    public static final Parcelable.Creator<C2320yy> CREATOR = new C2350zc(17);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f22098G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f22099H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f22100I;

    public C2320yy(int i8, String str, String str2) {
        this.f22098G = i8;
        this.f22099H = str;
        this.f22100I = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f22098G);
        AbstractC2987b.Q(parcel, 2, this.f22099H);
        AbstractC2987b.Q(parcel, 3, this.f22100I);
        AbstractC2987b.p0(iX, parcel);
    }
}
