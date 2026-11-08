package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ob, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0860Ob extends M3.a {
    public static final Parcelable.Creator<C0860Ob> CREATOR = new E0(29);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f15172G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f15173H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f15174I;

    public C0860Ob(int i8, int i9, int i10) {
        this.f15172G = i8;
        this.f15173H = i9;
        this.f15174I = i10;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof C0860Ob)) {
            C0860Ob c0860Ob = (C0860Ob) obj;
            if (c0860Ob.f15174I == this.f15174I && c0860Ob.f15173H == this.f15173H && c0860Ob.f15172G == this.f15172G) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.f15172G, this.f15173H, this.f15174I});
    }

    public final String toString() {
        return this.f15172G + "." + this.f15173H + "." + this.f15174I;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f15172G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f15173H);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f15174I);
        AbstractC2987b.p0(iX, parcel);
    }
}
