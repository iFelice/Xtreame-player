package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ic, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0772Ic extends M3.a {
    public static final Parcelable.Creator<C0772Ic> CREATOR = new C2350zc(3);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f13884G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final List f13885H;

    public C0772Ic(List list, boolean z7) {
        this.f13884G = z7;
        this.f13885H = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f13884G ? 1 : 0);
        AbstractC2987b.S(parcel, 3, this.f13885H);
        AbstractC2987b.p0(iX, parcel);
    }
}
