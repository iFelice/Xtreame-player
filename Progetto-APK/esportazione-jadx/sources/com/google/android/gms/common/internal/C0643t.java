package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0643t extends M3.a {
    public static final Parcelable.Creator<C0643t> CREATOR = new C3.H(19);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f11898G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public List f11899H;

    public C0643t(int i8, List list) {
        this.f11898G = i8;
        this.f11899H = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f11898G);
        AbstractC2987b.U(parcel, 2, this.f11899H);
        AbstractC2987b.p0(iX, parcel);
    }
}
