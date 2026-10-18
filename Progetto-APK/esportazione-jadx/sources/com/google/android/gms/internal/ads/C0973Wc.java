package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Wc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0973Wc extends M3.a {
    public static final Parcelable.Creator<C0973Wc> CREATOR = new C2350zc(6);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Bundle f17250G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p120p3.a f17251H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ApplicationInfo f17252I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f17253J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final List f17254K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final PackageInfo f17255L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f17256M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final String f17257N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public C1799ow f17258O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String f17259P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final boolean f17260Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final boolean f17261R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final Bundle f17262S;

    public C0973Wc(Bundle bundle, p120p3.a aVar, ApplicationInfo applicationInfo, String str, List list, PackageInfo packageInfo, String str2, String str3, C1799ow c1799ow, String str4, boolean z7, boolean z8, Bundle bundle2) {
        this.f17250G = bundle;
        this.f17251H = aVar;
        this.f17253J = str;
        this.f17252I = applicationInfo;
        this.f17254K = list;
        this.f17255L = packageInfo;
        this.f17256M = str2;
        this.f17257N = str3;
        this.f17258O = c1799ow;
        this.f17259P = str4;
        this.f17260Q = z7;
        this.f17261R = z8;
        this.f17262S = bundle2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.J(parcel, 1, this.f17250G);
        AbstractC2987b.P(parcel, 2, this.f17251H, i8);
        AbstractC2987b.P(parcel, 3, this.f17252I, i8);
        AbstractC2987b.Q(parcel, 4, this.f17253J);
        AbstractC2987b.S(parcel, 5, this.f17254K);
        AbstractC2987b.P(parcel, 6, this.f17255L, i8);
        AbstractC2987b.Q(parcel, 7, this.f17256M);
        AbstractC2987b.Q(parcel, 9, this.f17257N);
        AbstractC2987b.P(parcel, 10, this.f17258O, i8);
        AbstractC2987b.Q(parcel, 11, this.f17259P);
        AbstractC2987b.v0(parcel, 12, 4);
        parcel.writeInt(this.f17260Q ? 1 : 0);
        AbstractC2987b.v0(parcel, 13, 4);
        parcel.writeInt(this.f17261R ? 1 : 0);
        AbstractC2987b.J(parcel, 14, this.f17262S);
        AbstractC2987b.p0(iX, parcel);
    }
}
