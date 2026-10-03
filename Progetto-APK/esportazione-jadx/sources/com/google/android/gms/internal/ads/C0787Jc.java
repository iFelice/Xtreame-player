package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Jc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0787Jc extends M3.a {
    public static final Parcelable.Creator<C0787Jc> CREATOR = new C2350zc(4);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f14163G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f14164H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Bundle f14165I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final byte[] f14166J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f14167K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f14168L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f14169M;

    public C0787Jc(String str, int i8, Bundle bundle, byte[] bArr, boolean z7, String str2, String str3) {
        this.f14163G = str;
        this.f14164H = i8;
        this.f14165I = bundle;
        this.f14166J = bArr;
        this.f14167K = z7;
        this.f14168L = str2;
        this.f14169M = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f14163G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f14164H);
        AbstractC2987b.J(parcel, 3, this.f14165I);
        AbstractC2987b.K(parcel, 4, this.f14166J);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f14167K ? 1 : 0);
        AbstractC2987b.Q(parcel, 6, this.f14168L);
        AbstractC2987b.Q(parcel, 7, this.f14169M);
        AbstractC2987b.p0(iX, parcel);
    }
}
