package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1311fa extends M3.a {
    public static final Parcelable.Creator<C1311fa> CREATOR = new E0(26);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f18761G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f18762H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f18763I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f18764J;

    public C1311fa(String str, int i8, String str2, boolean z7) {
        this.f18761G = str;
        this.f18762H = z7;
        this.f18763I = i8;
        this.f18764J = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f18761G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f18762H ? 1 : 0);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f18763I);
        AbstractC2987b.Q(parcel, 4, this.f18764J);
        AbstractC2987b.p0(iX, parcel);
    }
}
