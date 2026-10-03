package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class V extends M3.a {
    public static final Parcelable.Creator<V> CREATOR = new J3.v(3);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f23011G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f23012H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f23013I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f23014J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f23015K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f23016L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Bundle f23017M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final String f23018N;

    public V(long j8, long j9, boolean z7, String str, String str2, String str3, Bundle bundle, String str4) {
        this.f23011G = j8;
        this.f23012H = j9;
        this.f23013I = z7;
        this.f23014J = str;
        this.f23015K = str2;
        this.f23016L = str3;
        this.f23017M = bundle;
        this.f23018N = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 8);
        parcel.writeLong(this.f23011G);
        AbstractC2987b.v0(parcel, 2, 8);
        parcel.writeLong(this.f23012H);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f23013I ? 1 : 0);
        AbstractC2987b.Q(parcel, 4, this.f23014J);
        AbstractC2987b.Q(parcel, 5, this.f23015K);
        AbstractC2987b.Q(parcel, 6, this.f23016L);
        AbstractC2987b.J(parcel, 7, this.f23017M);
        AbstractC2987b.Q(parcel, 8, this.f23018N);
        AbstractC2987b.p0(iX, parcel);
    }
}
