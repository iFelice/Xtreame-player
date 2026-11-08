package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Hm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0767Hm extends AbstractBinderC2328z5 implements InterfaceC1140c9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f13784G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0721El f13785H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0781Il f13786I;

    public BinderC0767Hm(String str, C0721El c0721El, C0781Il c0781Il) {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
        this.f13784G = str;
        this.f13785H = c0721El;
        this.f13786I = c0781Il;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        C0721El c0721El = this.f13785H;
        C0781Il c0781Il = this.f13786I;
        switch (i8) {
            case 2:
                R3.b bVar = new R3.b(c0721El);
                parcel2.writeNoException();
                A5.e(parcel2, bVar);
                return true;
            case 3:
                String strB = c0781Il.b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            case 4:
                List listF = c0781Il.f();
                parcel2.writeNoException();
                parcel2.writeList(listF);
                return true;
            case 5:
                String strX = c0781Il.X();
                parcel2.writeNoException();
                parcel2.writeString(strX);
                return true;
            case 6:
                T8 t8N = c0781Il.N();
                parcel2.writeNoException();
                A5.e(parcel2, t8N);
                return true;
            case 7:
                String strY = c0781Il.Y();
                parcel2.writeNoException();
                parcel2.writeString(strY);
                return true;
            case 8:
                double dV = c0781Il.v();
                parcel2.writeNoException();
                parcel2.writeDouble(dV);
                return true;
            case 9:
                String strD = c0781Il.d();
                parcel2.writeNoException();
                parcel2.writeString(strD);
                return true;
            case 10:
                String strC = c0781Il.c();
                parcel2.writeNoException();
                parcel2.writeString(strC);
                return true;
            case 11:
                Bundle bundleE = c0781Il.E();
                parcel2.writeNoException();
                A5.d(parcel2, bundleE);
                return true;
            case 12:
                c0721El.w();
                parcel2.writeNoException();
                return true;
            case 13:
                p090l3.B0 b0J = c0781Il.J();
                parcel2.writeNoException();
                A5.e(parcel2, b0J);
                return true;
            case 14:
                Bundle bundle = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                c0721El.f(bundle);
                parcel2.writeNoException();
                return true;
            case 15:
                Bundle bundle2 = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                boolean zO = c0721El.o(bundle2);
                parcel2.writeNoException();
                parcel2.writeInt(zO ? 1 : 0);
                return true;
            case 16:
                Bundle bundle3 = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                c0721El.i(bundle3);
                parcel2.writeNoException();
                return true;
            case 17:
                P8 p8L = c0781Il.L();
                parcel2.writeNoException();
                A5.e(parcel2, p8L);
                return true;
            case 18:
                R3.a aVarU = c0781Il.U();
                parcel2.writeNoException();
                A5.e(parcel2, aVarU);
                return true;
            case 19:
                parcel2.writeNoException();
                parcel2.writeString(this.f13784G);
                return true;
            default:
                return false;
        }
    }
}
