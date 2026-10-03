package p090l3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import com.google.android.gms.internal.ads.C1399h9;
import com.google.android.gms.internal.ads.C1553k9;
import com.google.android.gms.internal.ads.C1621la;
import com.google.android.gms.internal.ads.C1657m9;
import com.google.android.gms.internal.ads.C1761o9;
import com.google.android.gms.internal.ads.C1829pa;
import com.google.android.gms.internal.ads.C1916r9;
import com.google.android.gms.internal.ads.C2020t9;
import com.google.android.gms.internal.ads.InterfaceC1501j9;
import com.google.android.gms.internal.ads.InterfaceC1605l9;
import com.google.android.gms.internal.ads.InterfaceC1709n9;
import com.google.android.gms.internal.ads.InterfaceC1813p9;
import com.google.android.gms.internal.ads.InterfaceC1881qa;
import com.google.android.gms.internal.ads.InterfaceC1968s9;
import com.google.android.gms.internal.ads.InterfaceC2124v9;
import com.google.android.gms.internal.ads.M8;
import p067i3.a;
import p067i3.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class E extends AbstractBinderC2328z5 implements F {
    public E() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC1813p9 c1761o9;
        InterfaceC3110w c3106u = null;
        InterfaceC1881qa c1829pa = null;
        InterfaceC2124v9 c2020t9 = null;
        InterfaceC1968s9 c1916r9 = null;
        Y y7 = null;
        InterfaceC1709n9 c1657m9 = null;
        InterfaceC1605l9 c1553k9 = null;
        InterfaceC1501j9 c1399h9 = null;
        switch (i8) {
            case 1:
                C cZze = zze();
                parcel2.writeNoException();
                A5.e(parcel2, cZze);
                return true;
            case 2:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    c3106u = iInterfaceQueryLocalInterface instanceof InterfaceC3110w ? (InterfaceC3110w) iInterfaceQueryLocalInterface : new C3106u(strongBinder);
                }
                A5.b(parcel);
                J1(c3106u);
                parcel2.writeNoException();
                return true;
            case 3:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
                    c1399h9 = iInterfaceQueryLocalInterface2 instanceof InterfaceC1501j9 ? (InterfaceC1501j9) iInterfaceQueryLocalInterface2 : new C1399h9(strongBinder2, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener", 0);
                }
                A5.b(parcel);
                b2(c1399h9);
                parcel2.writeNoException();
                return true;
            case 4:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
                    c1553k9 = iInterfaceQueryLocalInterface3 instanceof InterfaceC1605l9 ? (InterfaceC1605l9) iInterfaceQueryLocalInterface3 : new C1553k9(strongBinder3, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener", 0);
                }
                A5.b(parcel);
                c1(c1553k9);
                parcel2.writeNoException();
                return true;
            case 5:
                String string = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 == null) {
                    c1761o9 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
                    c1761o9 = iInterfaceQueryLocalInterface4 instanceof InterfaceC1813p9 ? (InterfaceC1813p9) iInterfaceQueryLocalInterface4 : new C1761o9(strongBinder4, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener", 0);
                }
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
                    c1657m9 = iInterfaceQueryLocalInterface5 instanceof InterfaceC1709n9 ? (InterfaceC1709n9) iInterfaceQueryLocalInterface5 : new C1657m9(strongBinder5, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener", 0);
                }
                A5.b(parcel);
                L2(string, c1761o9, c1657m9);
                parcel2.writeNoException();
                return true;
            case 6:
                M8 m8 = (M8) A5.a(parcel, M8.CREATOR);
                A5.b(parcel);
                i3(m8);
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    y7 = iInterfaceQueryLocalInterface6 instanceof Y ? (Y) iInterfaceQueryLocalInterface6 : new Y(strongBinder6);
                }
                A5.b(parcel);
                q2(y7);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
                    c1916r9 = iInterfaceQueryLocalInterface7 instanceof InterfaceC1968s9 ? (InterfaceC1968s9) iInterfaceQueryLocalInterface7 : new C1916r9(strongBinder7, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener", 0);
                }
                d1 d1Var = (d1) A5.a(parcel, d1.CREATOR);
                A5.b(parcel);
                p2(c1916r9, d1Var);
                parcel2.writeNoException();
                return true;
            case 9:
                d dVar = (d) A5.a(parcel, d.CREATOR);
                A5.b(parcel);
                a1(dVar);
                parcel2.writeNoException();
                return true;
            case 10:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
                    c2020t9 = iInterfaceQueryLocalInterface8 instanceof InterfaceC2124v9 ? (InterfaceC2124v9) iInterfaceQueryLocalInterface8 : new C2020t9(strongBinder8, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener", 0);
                }
                A5.b(parcel);
                e1(c2020t9);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                C1621la c1621la = (C1621la) A5.a(parcel, C1621la.CREATOR);
                A5.b(parcel);
                p3(c1621la);
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
                    c1829pa = iInterfaceQueryLocalInterface9 instanceof InterfaceC1881qa ? (InterfaceC1881qa) iInterfaceQueryLocalInterface9 : new C1829pa(strongBinder9, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback", 0);
                }
                A5.b(parcel);
                C1(c1829pa);
                parcel2.writeNoException();
                return true;
            case 15:
                a aVar = (a) A5.a(parcel, a.CREATOR);
                A5.b(parcel);
                z1(aVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
