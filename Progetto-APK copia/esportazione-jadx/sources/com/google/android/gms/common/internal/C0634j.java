package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0634j extends M3.a {
    public static final Parcelable.Creator<C0634j> CREATOR = new C3.H(26);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0642s f11853G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f11854H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f11855I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int[] f11856J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f11857K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int[] f11858L;

    public C0634j(C0642s c0642s, boolean z7, boolean z8, int[] iArr, int i8, int[] iArr2) {
        this.f11853G = c0642s;
        this.f11854H = z7;
        this.f11855I = z8;
        this.f11856J = iArr;
        this.f11857K = i8;
        this.f11858L = iArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.P(parcel, 1, this.f11853G, i8);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f11854H ? 1 : 0);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f11855I ? 1 : 0);
        AbstractC2987b.M(parcel, 4, this.f11856J);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f11857K);
        AbstractC2987b.M(parcel, 6, this.f11858L);
        AbstractC2987b.p0(iX, parcel);
    }
}
