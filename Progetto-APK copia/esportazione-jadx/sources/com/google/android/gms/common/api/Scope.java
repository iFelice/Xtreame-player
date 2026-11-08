package com.google.android.gms.common.api;

import C3.H;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class Scope extends M3.a implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new H(16);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f11751G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f11752H;

    public Scope(int i8, String str) {
        com.bumptech.glide.c.f("scopeUri must not be null or empty", str);
        this.f11751G = i8;
        this.f11752H = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f11752H.equals(((Scope) obj).f11752H);
    }

    public final int hashCode() {
        return this.f11752H.hashCode();
    }

    public final String toString() {
        return this.f11752H;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f11751G);
        AbstractC2987b.Q(parcel, 2, this.f11752H);
        AbstractC2987b.p0(iX, parcel);
    }
}
