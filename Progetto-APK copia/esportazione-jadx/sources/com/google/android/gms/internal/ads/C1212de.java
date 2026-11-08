package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.de, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1212de extends M3.a {
    public static final Parcelable.Creator<C1212de> CREATOR = new C2350zc(11);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f18337G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f18338H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p090l3.d1 f18339I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p090l3.b1 f18340J;

    public C1212de(String str, String str2, p090l3.d1 d1Var, p090l3.b1 b1Var) {
        this.f18337G = str;
        this.f18338H = str2;
        this.f18339I = d1Var;
        this.f18340J = b1Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f18337G);
        AbstractC2987b.Q(parcel, 2, this.f18338H);
        AbstractC2987b.P(parcel, 3, this.f18339I, i8);
        AbstractC2987b.P(parcel, 4, this.f18340J, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
