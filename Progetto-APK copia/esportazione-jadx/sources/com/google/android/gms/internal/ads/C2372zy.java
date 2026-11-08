package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2372zy extends M3.a {
    public static final Parcelable.Creator<C2372zy> CREATOR = new C2350zc(18);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f22237G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public C1496j4 f22238H = null;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public byte[] f22239I;

    public C2372zy(int i8, byte[] bArr) {
        this.f22237G = i8;
        this.f22239I = bArr;
        zzb();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f22237G);
        byte[] bArrD = this.f22239I;
        if (bArrD == null) {
            bArrD = this.f22238H.d();
        }
        AbstractC2987b.K(parcel, 2, bArrD);
        AbstractC2987b.p0(iX, parcel);
    }

    public final void zzb() {
        C1496j4 c1496j4 = this.f22238H;
        if (c1496j4 != null || this.f22239I == null) {
            if (c1496j4 == null || this.f22239I != null) {
                if (c1496j4 != null && this.f22239I != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (c1496j4 != null || this.f22239I != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }
}
