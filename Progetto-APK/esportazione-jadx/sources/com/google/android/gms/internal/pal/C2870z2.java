package com.google.android.gms.internal.pal;

import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.z2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2870z2 implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f24091a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        String strN = null;
        byte[] bArrI = null;
        int iD = 0;
        switch (this.f24091a) {
            case 0:
                int iH = AbstractC2987b.H(parcel);
                String strN2 = null;
                int iD2 = 0;
                while (parcel.dataPosition() < iH) {
                    int i8 = parcel.readInt();
                    char c8 = (char) i8;
                    if (c8 == 1) {
                        iD2 = AbstractC2987b.D(i8, parcel);
                    } else if (c8 == 2) {
                        strN = AbstractC2987b.n(i8, parcel);
                    } else if (c8 != 3) {
                        AbstractC2987b.G(i8, parcel);
                    } else {
                        strN2 = AbstractC2987b.n(i8, parcel);
                    }
                }
                AbstractC2987b.t(iH, parcel);
                return new C2862y2(iD2, strN, strN2);
            default:
                int iH2 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH2) {
                    int i9 = parcel.readInt();
                    char c9 = (char) i9;
                    if (c9 == 1) {
                        iD = AbstractC2987b.D(i9, parcel);
                    } else if (c9 != 2) {
                        AbstractC2987b.G(i9, parcel);
                    } else {
                        bArrI = AbstractC2987b.i(i9, parcel);
                    }
                }
                AbstractC2987b.t(iH2, parcel);
                return new A2(iD, bArrI);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i8) {
        switch (this.f24091a) {
            case 0:
                return new C2862y2[i8];
            default:
                return new A2[i8];
        }
    }
}
