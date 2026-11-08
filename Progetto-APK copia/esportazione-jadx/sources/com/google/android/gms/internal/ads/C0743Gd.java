package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Gd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0743Gd extends M3.a {
    public static final Parcelable.Creator<C0743Gd> CREATOR = new C2350zc(10);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f13561G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f13562H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f13563I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f13564J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final List f13565K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f13566L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f13567M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final List f13568N;

    public C0743Gd(String str, String str2, boolean z7, boolean z8, List list, boolean z9, boolean z10, List list2) {
        this.f13561G = str;
        this.f13562H = str2;
        this.f13563I = z7;
        this.f13564J = z8;
        this.f13565K = list;
        this.f13566L = z9;
        this.f13567M = z10;
        this.f13568N = list2 == null ? new ArrayList() : list2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f13561G);
        AbstractC2987b.Q(parcel, 3, this.f13562H);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f13563I ? 1 : 0);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f13564J ? 1 : 0);
        AbstractC2987b.S(parcel, 6, this.f13565K);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f13566L ? 1 : 0);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f13567M ? 1 : 0);
        AbstractC2987b.S(parcel, 9, this.f13568N);
        AbstractC2987b.p0(iX, parcel);
    }
}
