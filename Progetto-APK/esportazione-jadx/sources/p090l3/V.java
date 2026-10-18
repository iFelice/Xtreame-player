package p090l3;

import R3.a;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC1002Yd;
import com.google.android.gms.internal.ads.AbstractBinderC1469ic;
import com.google.android.gms.internal.ads.AbstractBinderC1832pd;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import com.google.android.gms.internal.ads.BinderC1431hq;
import com.google.android.gms.internal.ads.C0988Xd;
import com.google.android.gms.internal.ads.C1158cc;
import com.google.android.gms.internal.ads.C1417hc;
import com.google.android.gms.internal.ads.C1780od;
import com.google.android.gms.internal.ads.InterfaceC1016Zd;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.InterfaceC1210dc;
import com.google.android.gms.internal.ads.InterfaceC1519jc;
import com.google.android.gms.internal.ads.InterfaceC1884qd;
import com.google.android.gms.internal.ads.V8;
import com.google.android.gms.internal.ads.W8;
import com.google.android.gms.internal.ads.X8;

/* JADX INFO: loaded from: classes.dex */
public final class V extends AbstractC2276y5 implements X {
    @Override // p090l3.X
    public final J J2(a aVar, d1 d1Var, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        J h8;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, d1Var);
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(1, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            h8 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            h8 = iInterfaceQueryLocalInterface instanceof J ? (J) iInterfaceQueryLocalInterface : new H(strongBinder);
        }
        parcelN2.recycle();
        return h8;
    }

    @Override // p090l3.X
    public final X8 K0(a aVar, a aVar2) {
        X8 v8;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, aVar2);
        Parcel parcelN2 = n2(5, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        int i8 = W8.f17174G;
        if (strongBinder == null) {
            v8 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            v8 = iInterfaceQueryLocalInterface instanceof X8 ? (X8) iInterfaceQueryLocalInterface : new V8(strongBinder);
        }
        parcelN2.recycle();
        return v8;
    }

    @Override // p090l3.X
    public final F M2(a aVar, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        F d6;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(3, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            d6 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            d6 = iInterfaceQueryLocalInterface instanceof F ? (F) iInterfaceQueryLocalInterface : new D(strongBinder);
        }
        parcelN2.recycle();
        return d6;
    }

    @Override // p090l3.X
    public final J Y2(a aVar, d1 d1Var, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        J h8;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, d1Var);
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(13, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            h8 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            h8 = iInterfaceQueryLocalInterface instanceof J ? (J) iInterfaceQueryLocalInterface : new H(strongBinder);
        }
        parcelN2.recycle();
        return h8;
    }

    @Override // p090l3.X
    public final J Z1(a aVar, d1 d1Var, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        J h8;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, d1Var);
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(2, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            h8 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            h8 = iInterfaceQueryLocalInterface instanceof J ? (J) iInterfaceQueryLocalInterface : new H(strongBinder);
        }
        parcelN2.recycle();
        return h8;
    }

    @Override // p090l3.X
    public final InterfaceC1884qd e0(a aVar, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        InterfaceC1884qd c1780od;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(12, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        int i9 = AbstractBinderC1832pd.f20450G;
        if (strongBinder == null) {
            c1780od = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            c1780od = iInterfaceQueryLocalInterface instanceof InterfaceC1884qd ? (InterfaceC1884qd) iInterfaceQueryLocalInterface : new C1780od(strongBinder);
        }
        parcelN2.recycle();
        return c1780od;
    }

    @Override // p090l3.X
    public final J e2(a aVar, d1 d1Var, String str, int i8) {
        J h8;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, d1Var);
        parcelJ0.writeString(str);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(10, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            h8 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            h8 = iInterfaceQueryLocalInterface instanceof J ? (J) iInterfaceQueryLocalInterface : new H(strongBinder);
        }
        parcelN2.recycle();
        return h8;
    }

    @Override // p090l3.X
    public final InterfaceC3105t0 g3(a aVar, InterfaceC1157cb interfaceC1157cb, int i8) {
        InterfaceC3105t0 c3101r0;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(17, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c3101r0 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            c3101r0 = iInterfaceQueryLocalInterface instanceof InterfaceC3105t0 ? (InterfaceC3105t0) iInterfaceQueryLocalInterface : new C3101r0(strongBinder);
        }
        parcelN2.recycle();
        return c3101r0;
    }

    @Override // p090l3.X
    public final InterfaceC1016Zd t3(a aVar, InterfaceC1157cb interfaceC1157cb, int i8) {
        InterfaceC1016Zd c0988Xd;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(14, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        int i9 = AbstractBinderC1002Yd.f17624G;
        if (strongBinder == null) {
            c0988Xd = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            c0988Xd = iInterfaceQueryLocalInterface instanceof InterfaceC1016Zd ? (InterfaceC1016Zd) iInterfaceQueryLocalInterface : new C0988Xd(strongBinder);
        }
        parcelN2.recycle();
        return c0988Xd;
    }

    @Override // p090l3.X
    public final InterfaceC1210dc x1(a aVar, InterfaceC1157cb interfaceC1157cb, int i8) {
        InterfaceC1210dc c1158cc;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC1157cb);
        parcelJ0.writeInt(243220000);
        Parcel parcelN2 = n2(15, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        int i9 = BinderC1431hq.f19146N;
        if (strongBinder == null) {
            c1158cc = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            c1158cc = iInterfaceQueryLocalInterface instanceof InterfaceC1210dc ? (InterfaceC1210dc) iInterfaceQueryLocalInterface : new C1158cc(strongBinder);
        }
        parcelN2.recycle();
        return c1158cc;
    }

    @Override // p090l3.X
    public final InterfaceC1519jc y(a aVar) {
        InterfaceC1519jc c1417hc;
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        Parcel parcelN2 = n2(8, parcelJ0);
        IBinder strongBinder = parcelN2.readStrongBinder();
        int i8 = AbstractBinderC1469ic.f19304G;
        if (strongBinder == null) {
            c1417hc = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            c1417hc = iInterfaceQueryLocalInterface instanceof InterfaceC1519jc ? (InterfaceC1519jc) iInterfaceQueryLocalInterface : new C1417hc(strongBinder);
        }
        parcelN2.recycle();
        return c1417hc;
    }
}
