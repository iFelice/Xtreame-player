package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ow, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1799ow extends M3.a {
    public static final Parcelable.Creator<C1799ow> CREATOR = new C2350zc(15);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f20350G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f20351H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final EnumC1747nw f20352I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f20353J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f20354K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f20355L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f20356M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f20357N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f20358O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f20359P;

    public C1799ow(int i8, int i9, int i10, int i11, int i12, int i13, String str) {
        EnumC1747nw[] enumC1747nwArrValues = EnumC1747nw.values();
        this.f20350G = null;
        this.f20351H = i8;
        this.f20352I = enumC1747nwArrValues[i8];
        this.f20353J = i9;
        this.f20354K = i10;
        this.f20355L = i11;
        this.f20356M = str;
        this.f20357N = i12;
        this.f20359P = new int[]{1, 2, 3}[i12];
        this.f20358O = i13;
        int i14 = new int[]{1}[i13];
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f20351H);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f20353J);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f20354K);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f20355L);
        AbstractC2987b.Q(parcel, 5, this.f20356M);
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(this.f20357N);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f20358O);
        AbstractC2987b.p0(iX, parcel);
    }

    public C1799ow(Context context, EnumC1747nw enumC1747nw, int i8, int i9, int i10, String str, String str2, String str3) {
        int i11;
        EnumC1747nw.values();
        this.f20350G = context;
        this.f20351H = enumC1747nw.ordinal();
        this.f20352I = enumC1747nw;
        this.f20353J = i8;
        this.f20354K = i9;
        this.f20355L = i10;
        this.f20356M = str;
        if ("oldest".equals(str2)) {
            i11 = 1;
        } else {
            i11 = (!"lru".equals(str2) && "lfu".equals(str2)) ? 3 : 2;
        }
        this.f20359P = i11;
        this.f20357N = i11 - 1;
        "onAdClosed".equals(str3);
        this.f20358O = 0;
    }
}
