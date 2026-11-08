package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0641q extends M3.a {
    public static final Parcelable.Creator<C0641q> CREATOR = new C3.H(20);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f11881G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f11882H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f11883I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final long f11884J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final long f11885K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f11886L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f11887M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f11888N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f11889O;

    public C0641q(int i8, int i9, int i10, long j8, long j9, String str, String str2, int i11, int i12) {
        this.f11881G = i8;
        this.f11882H = i9;
        this.f11883I = i10;
        this.f11884J = j8;
        this.f11885K = j9;
        this.f11886L = str;
        this.f11887M = str2;
        this.f11888N = i11;
        this.f11889O = i12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f11881G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f11882H);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f11883I);
        AbstractC2987b.v0(parcel, 4, 8);
        parcel.writeLong(this.f11884J);
        AbstractC2987b.v0(parcel, 5, 8);
        parcel.writeLong(this.f11885K);
        AbstractC2987b.Q(parcel, 6, this.f11886L);
        AbstractC2987b.Q(parcel, 7, this.f11887M);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f11888N);
        AbstractC2987b.v0(parcel, 9, 4);
        parcel.writeInt(this.f11889O);
        AbstractC2987b.p0(iX, parcel);
    }
}
