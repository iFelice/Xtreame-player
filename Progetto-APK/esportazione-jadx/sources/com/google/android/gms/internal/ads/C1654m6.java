package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.m6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1654m6 extends M3.a {
    public static final Parcelable.Creator<C1654m6> CREATOR = new E0(20);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public ParcelFileDescriptor f19906G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f19907H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f19908I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final long f19909J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f19910K;

    public C1654m6(ParcelFileDescriptor parcelFileDescriptor, boolean z7, boolean z8, long j8, boolean z9) {
        this.f19906G = parcelFileDescriptor;
        this.f19907H = z7;
        this.f19908I = z8;
        this.f19909J = j8;
        this.f19910K = z9;
    }

    public final synchronized long i() {
        return this.f19909J;
    }

    public final synchronized ParcelFileDescriptor.AutoCloseInputStream l() {
        if (this.f19906G == null) {
            return null;
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.f19906G);
        this.f19906G = null;
        return autoCloseInputStream;
    }

    public final synchronized boolean n() {
        return this.f19907H;
    }

    public final synchronized boolean o() {
        return this.f19906G != null;
    }

    public final synchronized boolean p() {
        return this.f19908I;
    }

    public final synchronized boolean q() {
        return this.f19910K;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        ParcelFileDescriptor parcelFileDescriptor;
        int iX = AbstractC2987b.X(20293, parcel);
        synchronized (this) {
            parcelFileDescriptor = this.f19906G;
        }
        AbstractC2987b.P(parcel, 2, parcelFileDescriptor, i8);
        boolean zN = n();
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(zN ? 1 : 0);
        boolean zP = p();
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(zP ? 1 : 0);
        long jI = i();
        AbstractC2987b.v0(parcel, 5, 8);
        parcel.writeLong(jI);
        boolean zQ = q();
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(zQ ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }

    public C1654m6() {
        this(null, false, false, 0L, false);
    }
}
