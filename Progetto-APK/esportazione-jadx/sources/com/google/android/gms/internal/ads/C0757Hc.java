package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Hc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0757Hc extends M3.a {
    public static final Parcelable.Creator<C0757Hc> CREATOR = new C2350zc(2);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ApplicationInfo f13758G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f13759H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final PackageInfo f13760I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f13761J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f13762K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f13763L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final List f13764M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f13765N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f13766O;

    public C0757Hc(ApplicationInfo applicationInfo, String str, PackageInfo packageInfo, String str2, int i8, String str3, List list, boolean z7, boolean z8) {
        this.f13759H = str;
        this.f13758G = applicationInfo;
        this.f13760I = packageInfo;
        this.f13761J = str2;
        this.f13762K = i8;
        this.f13763L = str3;
        this.f13764M = list;
        this.f13765N = z7;
        this.f13766O = z8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.P(parcel, 1, this.f13758G, i8);
        AbstractC2987b.Q(parcel, 2, this.f13759H);
        AbstractC2987b.P(parcel, 3, this.f13760I, i8);
        AbstractC2987b.Q(parcel, 4, this.f13761J);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f13762K);
        AbstractC2987b.Q(parcel, 6, this.f13763L);
        AbstractC2987b.S(parcel, 7, this.f13764M);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f13765N ? 1 : 0);
        AbstractC2987b.v0(parcel, 9, 4);
        parcel.writeInt(this.f13766O ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
