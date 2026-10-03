package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Im, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0782Im extends AbstractBinderC2328z5 implements InterfaceC1192d9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f14046G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0721El f14047H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0781Il f14048I;

    public BinderC0782Im(String str, C0721El c0721El, C0781Il c0781Il) {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        this.f14046G = str;
        this.f14047H = c0721El;
        this.f14048I = c0781Il;
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        T8 t8;
        switch (i8) {
            case 2:
                R3.b bVar = new R3.b(this.f14047H);
                parcel2.writeNoException();
                A5.e(parcel2, bVar);
                return true;
            case 3:
                String strB = this.f14048I.b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            case 4:
                List listF = this.f14048I.f();
                parcel2.writeNoException();
                parcel2.writeList(listF);
                return true;
            case 5:
                String strX = this.f14048I.X();
                parcel2.writeNoException();
                parcel2.writeString(strX);
                return true;
            case 6:
                C0781Il c0781Il = this.f14048I;
                synchronized (c0781Il) {
                    t8 = c0781Il.f14040t;
                }
                parcel2.writeNoException();
                A5.e(parcel2, t8);
                return true;
            case 7:
                String strY = this.f14048I.Y();
                parcel2.writeNoException();
                parcel2.writeString(strY);
                return true;
            case 8:
                String strW = this.f14048I.W();
                parcel2.writeNoException();
                parcel2.writeString(strW);
                return true;
            case 9:
                Bundle bundleE = this.f14048I.E();
                parcel2.writeNoException();
                A5.d(parcel2, bundleE);
                return true;
            case 10:
                this.f14047H.w();
                parcel2.writeNoException();
                return true;
            case 11:
                p090l3.B0 b0J = this.f14048I.J();
                parcel2.writeNoException();
                A5.e(parcel2, b0J);
                return true;
            case 12:
                Bundle bundle = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                this.f14047H.f(bundle);
                parcel2.writeNoException();
                return true;
            case 13:
                Bundle bundle2 = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                boolean zO = this.f14047H.o(bundle2);
                parcel2.writeNoException();
                parcel2.writeInt(zO ? 1 : 0);
                return true;
            case 14:
                Bundle bundle3 = (Bundle) A5.a(parcel, Bundle.CREATOR);
                A5.b(parcel);
                this.f14047H.i(bundle3);
                parcel2.writeNoException();
                return true;
            case 15:
                P8 p8L = this.f14048I.L();
                parcel2.writeNoException();
                A5.e(parcel2, p8L);
                return true;
            case 16:
                R3.a aVarU = this.f14048I.U();
                parcel2.writeNoException();
                A5.e(parcel2, aVarU);
                return true;
            case 17:
                String str = this.f14046G;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            default:
                return false;
        }
    }
}
