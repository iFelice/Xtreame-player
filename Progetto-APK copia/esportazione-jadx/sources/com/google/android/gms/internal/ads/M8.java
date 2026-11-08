package com.google.android.gms.internal.ads;

import D0.C0117g;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class M8 extends M3.a {
    public static final Parcelable.Creator<M8> CREATOR = new E0(22);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f14643G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f14644H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f14645I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f14646J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f14647K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p090l3.Y0 f14648L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f14649M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f14650N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f14651O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final boolean f14652P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f14653Q;

    public M8(int i8, boolean z7, int i9, boolean z8, int i10, p090l3.Y0 y7, boolean z9, int i11, int i12, boolean z10, int i13) {
        this.f14643G = i8;
        this.f14644H = z7;
        this.f14645I = i9;
        this.f14646J = z8;
        this.f14647K = i10;
        this.f14648L = y7;
        this.f14649M = z9;
        this.f14650N = i11;
        this.f14652P = z10;
        this.f14651O = i12;
        this.f14653Q = i13;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f14643G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f14644H ? 1 : 0);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f14645I);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f14646J ? 1 : 0);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f14647K);
        AbstractC2987b.P(parcel, 6, this.f14648L, i8);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f14649M ? 1 : 0);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f14650N);
        AbstractC2987b.v0(parcel, 9, 4);
        parcel.writeInt(this.f14651O);
        AbstractC2987b.v0(parcel, 10, 4);
        parcel.writeInt(this.f14652P ? 1 : 0);
        AbstractC2987b.v0(parcel, 11, 4);
        parcel.writeInt(this.f14653Q);
        AbstractC2987b.p0(iX, parcel);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public M8(p067i3.c cVar) {
        boolean z7 = cVar.f25563a;
        int i8 = cVar.f25564b;
        boolean z8 = cVar.f25566d;
        int i9 = cVar.f25567e;
        C0117g c0117g = cVar.f25568f;
        this(4, z7, i8, z8, i9, c0117g != null ? new p090l3.Y0(c0117g) : null, cVar.f25569g, cVar.f25565c, 0, false, 0);
    }
}
