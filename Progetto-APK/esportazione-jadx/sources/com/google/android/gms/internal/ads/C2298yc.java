package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import java.util.Map;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2298yc extends M3.a {
    public static final Parcelable.Creator<C2298yc> CREATOR = new C2350zc(0);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final View f22034G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Map f22035H;

    public C2298yc(IBinder iBinder, IBinder iBinder2) {
        this.f22034G = (View) R3.b.v0(R3.b.j0(iBinder));
        this.f22035H = (Map) R3.b.v0(R3.b.j0(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.L(parcel, 1, new R3.b(this.f22034G));
        AbstractC2987b.L(parcel, 2, new R3.b(this.f22035H));
        AbstractC2987b.p0(iX, parcel);
    }
}
