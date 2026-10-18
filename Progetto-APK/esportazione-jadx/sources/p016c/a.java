package p016c;

import O1.C0322v;
import O1.j0;
import O1.k0;
import Q.h;
import Y.C0390b;
import Y.C0391c;
import Y.H;
import Y.L;
import Y.O;
import android.content.Intent;
import android.content.IntentSender;
import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.leanback.widget.C0490p;
import androidx.leanback.widget.C0491q;
import androidx.versionedparcelable.ParcelImpl;
import com.google.api.Service;
import java.util.ArrayList;
import p039f.AbstractC2987b;
import p067i3.d;
import p086l.U;
import p090l3.C3117z0;
import p090l3.E0;
import p090l3.L0;
import p090l3.T0;
import p090l3.U0;
import p090l3.V0;
import p090l3.Y0;
import p090l3.b1;
import p090l3.d1;
import p094m0.C3130m;
import p094m0.C3131n;
import p094m0.a0;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10540a;

    public /* synthetic */ a(int i8) {
        this.f10540a = i8;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        IBinder iBinderC = null;
        String strN = null;
        String strN2 = null;
        String strN3 = null;
        String strN4 = null;
        IBinder iBinderC2 = null;
        boolean zY = false;
        boolean zY2 = false;
        int iD = 0;
        int iD2 = 0;
        int iD3 = 0;
        boolean zY3 = false;
        switch (this.f10540a) {
            case 0:
                return new b(parcel);
            case 1:
                q0.h(parcel, "inParcel");
                Parcelable parcelable = parcel.readParcelable(IntentSender.class.getClassLoader());
                q0.e(parcelable);
                return new h((IntentSender) parcelable, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
            case 2:
                U u7 = new U(parcel);
                u7.f26181G = parcel.readByte() != 0;
                return u7;
            case 3:
                h hVar = new h(parcel);
                hVar.f5998G = parcel.readInt();
                return hVar;
            case 4:
                return new C0390b(parcel);
            case 5:
                return new C0391c(parcel);
            case 6:
                H h8 = new H();
                h8.f7703G = parcel.readString();
                h8.f7704H = parcel.readInt();
                return h8;
            case 7:
                L l4 = new L();
                l4.f7752K = null;
                l4.f7753L = new ArrayList();
                l4.f7754M = new ArrayList();
                l4.f7748G = parcel.createStringArrayList();
                l4.f7749H = parcel.createStringArrayList();
                l4.f7750I = (C0390b[]) parcel.createTypedArray(C0390b.CREATOR);
                l4.f7751J = parcel.readInt();
                l4.f7752K = parcel.readString();
                l4.f7753L = parcel.createStringArrayList();
                l4.f7754M = parcel.createTypedArrayList(C0391c.CREATOR);
                l4.f7755N = parcel.createTypedArrayList(H.CREATOR);
                return l4;
            case 8:
                return new O(parcel);
            case 9:
                C0490p c0490p = new C0490p();
                c0490p.f9321H = Bundle.EMPTY;
                c0490p.f9320G = parcel.readInt();
                c0490p.f9321H = parcel.readBundle(C0491q.class.getClassLoader());
                return c0490p;
            case 10:
                return new C3131n(parcel);
            case 11:
                return new C3130m(parcel);
            case 12:
                return new a0(parcel);
            case 13:
                return new N0.a(parcel.readInt());
            case 14:
                C0322v c0322v = new C0322v();
                c0322v.f5534G = parcel.readInt();
                c0322v.f5535H = parcel.readInt();
                c0322v.f5536I = parcel.readInt() == 1;
                return c0322v;
            case 15:
                j0 j0Var = new j0();
                j0Var.f5431G = parcel.readInt();
                j0Var.f5432H = parcel.readInt();
                j0Var.f5434J = parcel.readInt() == 1;
                int i8 = parcel.readInt();
                if (i8 > 0) {
                    int[] iArr = new int[i8];
                    j0Var.f5433I = iArr;
                    parcel.readIntArray(iArr);
                }
                return j0Var;
            case 16:
                k0 k0Var = new k0();
                k0Var.f5439G = parcel.readInt();
                k0Var.f5440H = parcel.readInt();
                int i9 = parcel.readInt();
                k0Var.f5441I = i9;
                if (i9 > 0) {
                    int[] iArr2 = new int[i9];
                    k0Var.f5442J = iArr2;
                    parcel.readIntArray(iArr2);
                }
                int i10 = parcel.readInt();
                k0Var.f5443K = i10;
                if (i10 > 0) {
                    int[] iArr3 = new int[i10];
                    k0Var.f5444L = iArr3;
                    parcel.readIntArray(iArr3);
                }
                k0Var.f5446N = parcel.readInt() == 1;
                k0Var.f5447O = parcel.readInt() == 1;
                k0Var.f5448P = parcel.readInt() == 1;
                k0Var.f5445M = parcel.readArrayList(j0.class.getClassLoader());
                return k0Var;
            case 17:
                return new ParcelImpl(parcel);
            case 18:
                int iH = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH) {
                    int i11 = parcel.readInt();
                    char c8 = (char) i11;
                    if (c8 == 1) {
                        zY = AbstractC2987b.y(i11, parcel);
                    } else if (c8 != 2) {
                        AbstractC2987b.G(i11, parcel);
                    } else {
                        iBinderC = AbstractC2987b.C(i11, parcel);
                    }
                }
                AbstractC2987b.t(iH, parcel);
                return new p067i3.a(zY, iBinderC);
            case 19:
                int iH2 = AbstractC2987b.H(parcel);
                IBinder iBinderC3 = null;
                while (parcel.dataPosition() < iH2) {
                    int i12 = parcel.readInt();
                    char c9 = (char) i12;
                    if (c9 == 1) {
                        zY3 = AbstractC2987b.y(i12, parcel);
                    } else if (c9 == 2) {
                        iBinderC2 = AbstractC2987b.C(i12, parcel);
                    } else if (c9 != 3) {
                        AbstractC2987b.G(i12, parcel);
                    } else {
                        iBinderC3 = AbstractC2987b.C(i12, parcel);
                    }
                }
                AbstractC2987b.t(iH2, parcel);
                return new d(zY3, iBinderC2, iBinderC3);
            case 20:
                int iH3 = AbstractC2987b.H(parcel);
                String strN5 = null;
                while (parcel.dataPosition() < iH3) {
                    int i13 = parcel.readInt();
                    char c10 = (char) i13;
                    if (c10 == 1) {
                        strN4 = AbstractC2987b.n(i13, parcel);
                    } else if (c10 != 2) {
                        AbstractC2987b.G(i13, parcel);
                    } else {
                        strN5 = AbstractC2987b.n(i13, parcel);
                    }
                }
                AbstractC2987b.t(iH3, parcel);
                return new p090l3.L(strN4, strN5);
            case 21:
                int iH4 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH4) {
                    int i14 = parcel.readInt();
                    if (((char) i14) != 2) {
                        AbstractC2987b.G(i14, parcel);
                    } else {
                        iD3 = AbstractC2987b.D(i14, parcel);
                    }
                }
                AbstractC2987b.t(iH4, parcel);
                return new E0(iD3);
            case 22:
                int iH5 = AbstractC2987b.H(parcel);
                String strN6 = null;
                String strN7 = null;
                C3117z0 c3117z0 = null;
                IBinder iBinderC4 = null;
                int iD4 = 0;
                while (parcel.dataPosition() < iH5) {
                    int i15 = parcel.readInt();
                    char c11 = (char) i15;
                    if (c11 == 1) {
                        iD4 = AbstractC2987b.D(i15, parcel);
                    } else if (c11 == 2) {
                        strN6 = AbstractC2987b.n(i15, parcel);
                    } else if (c11 == 3) {
                        strN7 = AbstractC2987b.n(i15, parcel);
                    } else if (c11 == 4) {
                        c3117z0 = (C3117z0) AbstractC2987b.m(parcel, i15, C3117z0.CREATOR);
                    } else if (c11 != 5) {
                        AbstractC2987b.G(i15, parcel);
                    } else {
                        iBinderC4 = AbstractC2987b.C(i15, parcel);
                    }
                }
                AbstractC2987b.t(iH5, parcel);
                return new C3117z0(iD4, strN6, strN7, c3117z0, iBinderC4);
            case 23:
                int iH6 = AbstractC2987b.H(parcel);
                int iD5 = 0;
                while (parcel.dataPosition() < iH6) {
                    int i16 = parcel.readInt();
                    char c12 = (char) i16;
                    if (c12 == 1) {
                        iD2 = AbstractC2987b.D(i16, parcel);
                    } else if (c12 == 2) {
                        iD5 = AbstractC2987b.D(i16, parcel);
                    } else if (c12 != 3) {
                        AbstractC2987b.G(i16, parcel);
                    } else {
                        strN3 = AbstractC2987b.n(i16, parcel);
                    }
                }
                AbstractC2987b.t(iH6, parcel);
                return new L0(iD2, iD5, strN3);
            case 24:
                int iH7 = AbstractC2987b.H(parcel);
                b1 b1Var = null;
                int iD6 = 0;
                int iD7 = 0;
                while (parcel.dataPosition() < iH7) {
                    int i17 = parcel.readInt();
                    char c13 = (char) i17;
                    if (c13 == 1) {
                        strN2 = AbstractC2987b.n(i17, parcel);
                    } else if (c13 == 2) {
                        iD6 = AbstractC2987b.D(i17, parcel);
                    } else if (c13 == 3) {
                        b1Var = (b1) AbstractC2987b.m(parcel, i17, b1.CREATOR);
                    } else if (c13 != 4) {
                        AbstractC2987b.G(i17, parcel);
                    } else {
                        iD7 = AbstractC2987b.D(i17, parcel);
                    }
                }
                AbstractC2987b.t(iH7, parcel);
                return new T0(strN2, iD6, b1Var, iD7);
            case 25:
                int iH8 = AbstractC2987b.H(parcel);
                int iD8 = 0;
                while (parcel.dataPosition() < iH8) {
                    int i18 = parcel.readInt();
                    char c14 = (char) i18;
                    if (c14 == 1) {
                        iD = AbstractC2987b.D(i18, parcel);
                    } else if (c14 != 2) {
                        AbstractC2987b.G(i18, parcel);
                    } else {
                        iD8 = AbstractC2987b.D(i18, parcel);
                    }
                }
                AbstractC2987b.t(iH8, parcel);
                return new U0(iD, iD8);
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                int iH9 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH9) {
                    int i19 = parcel.readInt();
                    if (((char) i19) != 15) {
                        AbstractC2987b.G(i19, parcel);
                    } else {
                        strN = AbstractC2987b.n(i19, parcel);
                    }
                }
                AbstractC2987b.t(iH9, parcel);
                return new V0(strN);
            case 27:
                int iH10 = AbstractC2987b.H(parcel);
                boolean zY4 = false;
                boolean zY5 = false;
                while (parcel.dataPosition() < iH10) {
                    int i20 = parcel.readInt();
                    char c15 = (char) i20;
                    if (c15 == 2) {
                        zY2 = AbstractC2987b.y(i20, parcel);
                    } else if (c15 == 3) {
                        zY4 = AbstractC2987b.y(i20, parcel);
                    } else if (c15 != 4) {
                        AbstractC2987b.G(i20, parcel);
                    } else {
                        zY5 = AbstractC2987b.y(i20, parcel);
                    }
                }
                AbstractC2987b.t(iH10, parcel);
                return new Y0(zY2, zY4, zY5);
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                int iH11 = AbstractC2987b.H(parcel);
                long jE = 0;
                long jE2 = 0;
                Bundle bundleG = null;
                ArrayList arrayListP = null;
                String strN8 = null;
                V0 v5 = null;
                Location location = null;
                String strN9 = null;
                Bundle bundleG2 = null;
                Bundle bundleG3 = null;
                ArrayList arrayListP2 = null;
                String strN10 = null;
                String strN11 = null;
                p090l3.L l8 = null;
                String strN12 = null;
                ArrayList arrayListP3 = null;
                String strN13 = null;
                int iD9 = 0;
                int iD10 = 0;
                boolean zY6 = false;
                int iD11 = 0;
                boolean zY7 = false;
                boolean zY8 = false;
                int iD12 = 0;
                int iD13 = 0;
                int iD14 = 0;
                while (parcel.dataPosition() < iH11) {
                    int i21 = parcel.readInt();
                    switch ((char) i21) {
                        case 1:
                            iD9 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 2:
                            jE = AbstractC2987b.E(i21, parcel);
                            break;
                        case 3:
                            bundleG = AbstractC2987b.g(i21, parcel);
                            break;
                        case 4:
                            iD10 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 5:
                            arrayListP = AbstractC2987b.p(i21, parcel);
                            break;
                        case 6:
                            zY6 = AbstractC2987b.y(i21, parcel);
                            break;
                        case 7:
                            iD11 = AbstractC2987b.D(i21, parcel);
                            break;
                        case '\b':
                            zY7 = AbstractC2987b.y(i21, parcel);
                            break;
                        case '\t':
                            strN8 = AbstractC2987b.n(i21, parcel);
                            break;
                        case '\n':
                            v5 = (V0) AbstractC2987b.m(parcel, i21, V0.CREATOR);
                            break;
                        case 11:
                            location = (Location) AbstractC2987b.m(parcel, i21, Location.CREATOR);
                            break;
                        case '\f':
                            strN9 = AbstractC2987b.n(i21, parcel);
                            break;
                        case '\r':
                            bundleG2 = AbstractC2987b.g(i21, parcel);
                            break;
                        case 14:
                            bundleG3 = AbstractC2987b.g(i21, parcel);
                            break;
                        case 15:
                            arrayListP2 = AbstractC2987b.p(i21, parcel);
                            break;
                        case 16:
                            strN10 = AbstractC2987b.n(i21, parcel);
                            break;
                        case 17:
                            strN11 = AbstractC2987b.n(i21, parcel);
                            break;
                        case 18:
                            zY8 = AbstractC2987b.y(i21, parcel);
                            break;
                        case 19:
                            l8 = (p090l3.L) AbstractC2987b.m(parcel, i21, p090l3.L.CREATOR);
                            break;
                        case 20:
                            iD12 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 21:
                            strN12 = AbstractC2987b.n(i21, parcel);
                            break;
                        case 22:
                            arrayListP3 = AbstractC2987b.p(i21, parcel);
                            break;
                        case 23:
                            iD13 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 24:
                            strN13 = AbstractC2987b.n(i21, parcel);
                            break;
                        case 25:
                            iD14 = AbstractC2987b.D(i21, parcel);
                            break;
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            jE2 = AbstractC2987b.E(i21, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i21, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH11, parcel);
                return new b1(iD9, jE, bundleG, iD10, arrayListP, zY6, iD11, zY7, strN8, v5, location, strN9, bundleG2, bundleG3, arrayListP2, strN10, strN11, zY8, l8, iD12, strN12, arrayListP3, iD13, strN13, iD14, jE2);
            default:
                int iH12 = AbstractC2987b.H(parcel);
                String strN14 = null;
                d1[] d1VarArr = null;
                int iD15 = 0;
                int iD16 = 0;
                boolean zY9 = false;
                int iD17 = 0;
                int iD18 = 0;
                boolean zY10 = false;
                boolean zY11 = false;
                boolean zY12 = false;
                boolean zY13 = false;
                boolean zY14 = false;
                boolean zY15 = false;
                boolean zY16 = false;
                boolean zY17 = false;
                while (parcel.dataPosition() < iH12) {
                    int i22 = parcel.readInt();
                    switch ((char) i22) {
                        case 2:
                            strN14 = AbstractC2987b.n(i22, parcel);
                            break;
                        case 3:
                            iD15 = AbstractC2987b.D(i22, parcel);
                            break;
                        case 4:
                            iD16 = AbstractC2987b.D(i22, parcel);
                            break;
                        case 5:
                            zY9 = AbstractC2987b.y(i22, parcel);
                            break;
                        case 6:
                            iD17 = AbstractC2987b.D(i22, parcel);
                            break;
                        case 7:
                            iD18 = AbstractC2987b.D(i22, parcel);
                            break;
                        case '\b':
                            d1VarArr = (d1[]) AbstractC2987b.q(parcel, i22, d1.CREATOR);
                            break;
                        case '\t':
                            zY10 = AbstractC2987b.y(i22, parcel);
                            break;
                        case '\n':
                            zY11 = AbstractC2987b.y(i22, parcel);
                            break;
                        case 11:
                            zY12 = AbstractC2987b.y(i22, parcel);
                            break;
                        case '\f':
                            zY13 = AbstractC2987b.y(i22, parcel);
                            break;
                        case '\r':
                            zY14 = AbstractC2987b.y(i22, parcel);
                            break;
                        case 14:
                            zY15 = AbstractC2987b.y(i22, parcel);
                            break;
                        case 15:
                            zY16 = AbstractC2987b.y(i22, parcel);
                            break;
                        case 16:
                            zY17 = AbstractC2987b.y(i22, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i22, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH12, parcel);
                return new d1(strN14, iD15, iD16, zY9, iD17, iD18, d1VarArr, zY10, zY11, zY12, zY13, zY14, zY15, zY16, zY17);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i8) {
        switch (this.f10540a) {
            case 0:
                return new b[i8];
            case 1:
                return new h[i8];
            case 2:
                return new U[i8];
            case 3:
                return new h[i8];
            case 4:
                return new C0390b[i8];
            case 5:
                return new C0391c[i8];
            case 6:
                return new H[i8];
            case 7:
                return new L[i8];
            case 8:
                return new O[i8];
            case 9:
                return new C0490p[i8];
            case 10:
                return new C3131n[i8];
            case 11:
                return new C3130m[i8];
            case 12:
                return new a0[i8];
            case 13:
                return new N0.a[i8];
            case 14:
                return new C0322v[i8];
            case 15:
                return new j0[i8];
            case 16:
                return new k0[i8];
            case 17:
                return new ParcelImpl[i8];
            case 18:
                return new p067i3.a[i8];
            case 19:
                return new d[i8];
            case 20:
                return new p090l3.L[i8];
            case 21:
                return new E0[i8];
            case 22:
                return new C3117z0[i8];
            case 23:
                return new L0[i8];
            case 24:
                return new T0[i8];
            case 25:
                return new U0[i8];
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return new V0[i8];
            case 27:
                return new Y0[i8];
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return new b1[i8];
            default:
                return new d1[i8];
        }
    }
}
