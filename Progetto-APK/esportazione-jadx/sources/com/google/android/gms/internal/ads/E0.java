package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.api.Service;
import java.util.ArrayList;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class E0 implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12923a;

    public /* synthetic */ E0(int i8) {
        this.f12923a = i8;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean zY = false;
        int iD = 0;
        int iD2 = 0;
        String strN = null;
        switch (this.f12923a) {
            case 0:
                return new F0(parcel);
            case 1:
                return new G0(parcel);
            case 2:
                return new H0(parcel);
            case 3:
                return new I0(parcel);
            case 4:
                return new J0(parcel);
            case 5:
                return new K0(parcel);
            case 6:
                return new L0(parcel);
            case 7:
                return new M0(parcel);
            case 8:
                return new N0(parcel);
            case 9:
                return new O0(parcel);
            case 10:
                return new R0(parcel);
            case 11:
                return new S0(parcel);
            case 12:
                return new T0(parcel);
            case 13:
                String string = parcel.readString();
                string.getClass();
                String string2 = parcel.readString();
                String[] strArrCreateStringArray = parcel.createStringArray();
                strArrCreateStringArray.getClass();
                return new U0(string, string2, AbstractC2073uA.u(strArrCreateStringArray));
            case 14:
                return new V0(parcel);
            case 15:
                return new W0(parcel);
            case 16:
                ArrayList arrayList = new ArrayList();
                parcel.readList(arrayList, X0.class.getClassLoader());
                return new Y0(arrayList);
            case 17:
                return new X0(parcel.readInt(), parcel.readLong(), parcel.readLong());
            case 18:
                return new Z0(parcel);
            case 19:
                return new C1029a1(parcel);
            case 20:
                int iH = AbstractC2987b.H(parcel);
                long jE = 0;
                ParcelFileDescriptor parcelFileDescriptor = null;
                boolean zY2 = false;
                boolean zY3 = false;
                boolean zY4 = false;
                while (parcel.dataPosition() < iH) {
                    int i8 = parcel.readInt();
                    char c8 = (char) i8;
                    if (c8 == 2) {
                        parcelFileDescriptor = (ParcelFileDescriptor) AbstractC2987b.m(parcel, i8, ParcelFileDescriptor.CREATOR);
                    } else if (c8 == 3) {
                        zY2 = AbstractC2987b.y(i8, parcel);
                    } else if (c8 == 4) {
                        zY3 = AbstractC2987b.y(i8, parcel);
                    } else if (c8 == 5) {
                        jE = AbstractC2987b.E(i8, parcel);
                    } else if (c8 != 6) {
                        AbstractC2987b.G(i8, parcel);
                    } else {
                        zY4 = AbstractC2987b.y(i8, parcel);
                    }
                }
                AbstractC2987b.t(iH, parcel);
                return new C1654m6(parcelFileDescriptor, zY2, zY3, jE, zY4);
            case 21:
                int iH2 = AbstractC2987b.H(parcel);
                long jE2 = 0;
                long jE3 = 0;
                String strN2 = null;
                String strN3 = null;
                String strN4 = null;
                String strN5 = null;
                Bundle bundleG = null;
                String strN6 = null;
                boolean zY5 = false;
                int iD3 = 0;
                while (parcel.dataPosition() < iH2) {
                    int i9 = parcel.readInt();
                    switch ((char) i9) {
                        case 2:
                            strN2 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 3:
                            jE2 = AbstractC2987b.E(i9, parcel);
                            break;
                        case 4:
                            strN3 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 5:
                            strN4 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 6:
                            strN5 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 7:
                            bundleG = AbstractC2987b.g(i9, parcel);
                            break;
                        case '\b':
                            zY5 = AbstractC2987b.y(i9, parcel);
                            break;
                        case '\t':
                            jE3 = AbstractC2987b.E(i9, parcel);
                            break;
                        case '\n':
                            strN6 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 11:
                            iD3 = AbstractC2987b.D(i9, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i9, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH2, parcel);
                return new C1758o6(strN2, jE2, strN3, strN4, strN5, bundleG, zY5, jE3, strN6, iD3);
            case 22:
                int iH3 = AbstractC2987b.H(parcel);
                p090l3.Y0 y7 = null;
                int iD4 = 0;
                boolean zY6 = false;
                int iD5 = 0;
                boolean zY7 = false;
                int iD6 = 0;
                boolean zY8 = false;
                int iD7 = 0;
                int iD8 = 0;
                boolean zY9 = false;
                int iD9 = 0;
                while (parcel.dataPosition() < iH3) {
                    int i10 = parcel.readInt();
                    switch ((char) i10) {
                        case 1:
                            iD4 = AbstractC2987b.D(i10, parcel);
                            break;
                        case 2:
                            zY6 = AbstractC2987b.y(i10, parcel);
                            break;
                        case 3:
                            iD5 = AbstractC2987b.D(i10, parcel);
                            break;
                        case 4:
                            zY7 = AbstractC2987b.y(i10, parcel);
                            break;
                        case 5:
                            iD6 = AbstractC2987b.D(i10, parcel);
                            break;
                        case 6:
                            y7 = (p090l3.Y0) AbstractC2987b.m(parcel, i10, p090l3.Y0.CREATOR);
                            break;
                        case 7:
                            zY8 = AbstractC2987b.y(i10, parcel);
                            break;
                        case '\b':
                            iD7 = AbstractC2987b.D(i10, parcel);
                            break;
                        case '\t':
                            iD8 = AbstractC2987b.D(i10, parcel);
                            break;
                        case '\n':
                            zY9 = AbstractC2987b.y(i10, parcel);
                            break;
                        case 11:
                            iD9 = AbstractC2987b.D(i10, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i10, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH3, parcel);
                return new M8(iD4, zY6, iD5, zY7, iD6, y7, zY8, iD7, iD8, zY9, iD9);
            case 23:
                return new Q9(parcel);
            case 24:
                int iH4 = AbstractC2987b.H(parcel);
                String[] strArrO = null;
                String[] strArrO2 = null;
                while (parcel.dataPosition() < iH4) {
                    int i11 = parcel.readInt();
                    char c9 = (char) i11;
                    if (c9 == 1) {
                        strN = AbstractC2987b.n(i11, parcel);
                    } else if (c9 == 2) {
                        strArrO = AbstractC2987b.o(i11, parcel);
                    } else if (c9 != 3) {
                        AbstractC2987b.G(i11, parcel);
                    } else {
                        strArrO2 = AbstractC2987b.o(i11, parcel);
                    }
                }
                AbstractC2987b.t(iH4, parcel);
                return new C1053aa(strN, strArrO, strArrO2);
            case 25:
                int iH5 = AbstractC2987b.H(parcel);
                long jE4 = 0;
                String strN7 = null;
                byte[] bArrI = null;
                String[] strArrO3 = null;
                String[] strArrO4 = null;
                boolean zY10 = false;
                int iD10 = 0;
                boolean zY11 = false;
                while (parcel.dataPosition() < iH5) {
                    int i12 = parcel.readInt();
                    switch ((char) i12) {
                        case 1:
                            zY10 = AbstractC2987b.y(i12, parcel);
                            break;
                        case 2:
                            strN7 = AbstractC2987b.n(i12, parcel);
                            break;
                        case 3:
                            iD10 = AbstractC2987b.D(i12, parcel);
                            break;
                        case 4:
                            bArrI = AbstractC2987b.i(i12, parcel);
                            break;
                        case 5:
                            strArrO3 = AbstractC2987b.o(i12, parcel);
                            break;
                        case 6:
                            strArrO4 = AbstractC2987b.o(i12, parcel);
                            break;
                        case 7:
                            zY11 = AbstractC2987b.y(i12, parcel);
                            break;
                        case '\b':
                            jE4 = AbstractC2987b.E(i12, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i12, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH5, parcel);
                return new C1105ba(zY10, strN7, iD10, bArrI, strArrO3, strArrO4, zY11, jE4);
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                int iH6 = AbstractC2987b.H(parcel);
                String strN8 = null;
                int iD11 = 0;
                while (parcel.dataPosition() < iH6) {
                    int i13 = parcel.readInt();
                    char c10 = (char) i13;
                    if (c10 == 1) {
                        strN = AbstractC2987b.n(i13, parcel);
                    } else if (c10 == 2) {
                        zY = AbstractC2987b.y(i13, parcel);
                    } else if (c10 == 3) {
                        iD11 = AbstractC2987b.D(i13, parcel);
                    } else if (c10 != 4) {
                        AbstractC2987b.G(i13, parcel);
                    } else {
                        strN8 = AbstractC2987b.n(i13, parcel);
                    }
                }
                AbstractC2987b.t(iH6, parcel);
                return new C1311fa(strN, iD11, strN8, zY);
            case 27:
                int iH7 = AbstractC2987b.H(parcel);
                Bundle bundleG2 = null;
                while (parcel.dataPosition() < iH7) {
                    int i14 = parcel.readInt();
                    char c11 = (char) i14;
                    if (c11 == 1) {
                        strN = AbstractC2987b.n(i14, parcel);
                    } else if (c11 != 2) {
                        AbstractC2987b.G(i14, parcel);
                    } else {
                        bundleG2 = AbstractC2987b.g(i14, parcel);
                    }
                }
                AbstractC2987b.t(iH7, parcel);
                return new C1569ka(strN, bundleG2);
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                int iH8 = AbstractC2987b.H(parcel);
                int iD12 = 0;
                int iD13 = 0;
                while (parcel.dataPosition() < iH8) {
                    int i15 = parcel.readInt();
                    char c12 = (char) i15;
                    if (c12 == 1) {
                        iD12 = AbstractC2987b.D(i15, parcel);
                    } else if (c12 == 2) {
                        strN = AbstractC2987b.n(i15, parcel);
                    } else if (c12 == 3) {
                        iD13 = AbstractC2987b.D(i15, parcel);
                    } else if (c12 != 1000) {
                        AbstractC2987b.G(i15, parcel);
                    } else {
                        iD2 = AbstractC2987b.D(i15, parcel);
                    }
                }
                AbstractC2987b.t(iH8, parcel);
                return new C1621la(iD2, strN, iD12, iD13);
            default:
                int iH9 = AbstractC2987b.H(parcel);
                int iD14 = 0;
                int iD15 = 0;
                while (parcel.dataPosition() < iH9) {
                    int i16 = parcel.readInt();
                    char c13 = (char) i16;
                    if (c13 == 1) {
                        iD = AbstractC2987b.D(i16, parcel);
                    } else if (c13 == 2) {
                        iD14 = AbstractC2987b.D(i16, parcel);
                    } else if (c13 != 3) {
                        AbstractC2987b.G(i16, parcel);
                    } else {
                        iD15 = AbstractC2987b.D(i16, parcel);
                    }
                }
                AbstractC2987b.t(iH9, parcel);
                return new C0860Ob(iD, iD14, iD15);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i8) {
        switch (this.f12923a) {
            case 0:
                return new F0[i8];
            case 1:
                return new G0[i8];
            case 2:
                return new H0[i8];
            case 3:
                return new I0[i8];
            case 4:
                return new J0[i8];
            case 5:
                return new K0[i8];
            case 6:
                return new L0[i8];
            case 7:
                return new M0[i8];
            case 8:
                return new N0[i8];
            case 9:
                return new O0[i8];
            case 10:
                return new R0[i8];
            case 11:
                return new S0[i8];
            case 12:
                return new T0[i8];
            case 13:
                return new U0[i8];
            case 14:
                return new V0[i8];
            case 15:
                return new W0[i8];
            case 16:
                return new Y0[i8];
            case 17:
                return new X0[i8];
            case 18:
                return new Z0[i8];
            case 19:
                return new C1029a1[i8];
            case 20:
                return new C1654m6[i8];
            case 21:
                return new C1758o6[i8];
            case 22:
                return new M8[i8];
            case 23:
                return new Q9[i8];
            case 24:
                return new C1053aa[i8];
            case 25:
                return new C1105ba[i8];
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return new C1311fa[i8];
            case 27:
                return new C1569ka[i8];
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return new C1621la[i8];
            default:
                return new C0860Ob[i8];
        }
    }
}
