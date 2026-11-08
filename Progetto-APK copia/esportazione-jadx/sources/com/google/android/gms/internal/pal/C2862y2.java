package com.google.android.gms.internal.pal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.y2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2862y2 extends M3.a {
    public static final Parcelable.Creator<C2862y2> CREATOR = new C2870z2(0);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f24073G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f24074H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f24075I;

    public C2862y2(int i8, String str, String str2) {
        this.f24073G = i8;
        this.f24074H = str;
        this.f24075I = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f24073G);
        AbstractC2987b.Q(parcel, 2, this.f24074H);
        AbstractC2987b.Q(parcel, 3, this.f24075I);
        AbstractC2987b.p0(iX, parcel);
    }
}
