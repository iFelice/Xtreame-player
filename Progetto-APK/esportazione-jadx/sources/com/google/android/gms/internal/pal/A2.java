package com.google.android.gms.internal.pal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class A2 extends M3.a {
    public static final Parcelable.Creator<A2> CREATOR = new C2870z2(1);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f23442G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public C2765m0 f23443H = null;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public byte[] f23444I;

    public A2(int i8, byte[] bArr) {
        this.f23442G = i8;
        this.f23444I = bArr;
        i();
    }

    public final void i() {
        C2765m0 c2765m0 = this.f23443H;
        if (c2765m0 != null || this.f23444I == null) {
            if (c2765m0 == null || this.f23444I != null) {
                if (c2765m0 != null && this.f23444I != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (c2765m0 != null || this.f23444I != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f23442G);
        byte[] bArrB = this.f23444I;
        if (bArrB == null) {
            bArrB = this.f23443H.b();
        }
        AbstractC2987b.K(parcel, 2, bArrB);
        AbstractC2987b.p0(iX, parcel);
    }
}
