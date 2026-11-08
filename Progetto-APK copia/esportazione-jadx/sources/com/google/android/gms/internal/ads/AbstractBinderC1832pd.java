package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p090l3.C3094n0;
import p090l3.InterfaceC3096o0;
import p090l3.InterfaceC3100q0;
import p090l3.InterfaceC3113x0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC1832pd extends AbstractBinderC2328z5 implements InterfaceC1884qd {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f20450G = 0;

    public AbstractBinderC1832pd() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC2247xd c2143vd = null;
        InterfaceC2247xd c2143vd2 = null;
        InterfaceC3096o0 c3094n0 = null;
        C2299yd c2299yd = null;
        InterfaceC2039td c1935rd = null;
        switch (i8) {
            case 1:
                p090l3.b1 b1Var = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    c2143vd = iInterfaceQueryLocalInterface instanceof InterfaceC2247xd ? (InterfaceC2247xd) iInterfaceQueryLocalInterface : new C2143vd(strongBinder);
                }
                A5.b(parcel);
                A1(b1Var, c2143vd);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    c1935rd = iInterfaceQueryLocalInterface2 instanceof InterfaceC2039td ? (InterfaceC2039td) iInterfaceQueryLocalInterface2 : new C1935rd(strongBinder2, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback", 0);
                }
                A5.b(parcel);
                f0(c1935rd);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zZzo = zzo();
                parcel2.writeNoException();
                ClassLoader classLoader = A5.f11962a;
                parcel2.writeInt(zZzo ? 1 : 0);
                return true;
            case 4:
                String strZze = zze();
                parcel2.writeNoException();
                parcel2.writeString(strZze);
                return true;
            case 5:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                zzm(aVarJ0);
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    c2299yd = iInterfaceQueryLocalInterface3 instanceof C2299yd ? (C2299yd) iInterfaceQueryLocalInterface3 : new C2299yd(strongBinder3, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener", 0);
                }
                A5.b(parcel);
                z2(c2299yd);
                parcel2.writeNoException();
                return true;
            case 7:
                C0668Bd c0668Bd = (C0668Bd) A5.a(parcel, C0668Bd.CREATOR);
                A5.b(parcel);
                M1(c0668Bd);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
                    c3094n0 = iInterfaceQueryLocalInterface4 instanceof InterfaceC3096o0 ? (InterfaceC3096o0) iInterfaceQueryLocalInterface4 : new C3094n0(strongBinder4, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener", 0);
                }
                A5.b(parcel);
                J0(c3094n0);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle bundleZzb = zzb();
                parcel2.writeNoException();
                A5.d(parcel2, bundleZzb);
                return true;
            case 10:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                ClassLoader classLoader2 = A5.f11962a;
                boolean z7 = parcel.readInt() != 0;
                A5.b(parcel);
                G1(aVarJ1, z7);
                parcel2.writeNoException();
                return true;
            case 11:
                InterfaceC1728nd interfaceC1728ndZzd = zzd();
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC1728ndZzd);
                return true;
            case 12:
                InterfaceC3113x0 interfaceC3113x0Zzc = zzc();
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC3113x0Zzc);
                return true;
            case 13:
                InterfaceC3100q0 interfaceC3100q0Z3 = p090l3.S0.z3(parcel.readStrongBinder());
                A5.b(parcel);
                y2(interfaceC3100q0Z3);
                parcel2.writeNoException();
                return true;
            case 14:
                p090l3.b1 b1Var2 = (p090l3.b1) A5.a(parcel, p090l3.b1.CREATOR);
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    c2143vd2 = iInterfaceQueryLocalInterface5 instanceof InterfaceC2247xd ? (InterfaceC2247xd) iInterfaceQueryLocalInterface5 : new C2143vd(strongBinder5);
                }
                A5.b(parcel);
                T1(b1Var2, c2143vd2);
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zF = A5.f(parcel);
                A5.b(parcel);
                N1(zF);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
