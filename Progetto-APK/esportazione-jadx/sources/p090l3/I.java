package p090l3;

import R3.a;
import R3.b;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import com.google.android.gms.internal.ads.C1189d6;
import com.google.android.gms.internal.ads.C1314fd;
import com.google.android.gms.internal.ads.InterfaceC1292f6;
import com.google.android.gms.internal.ads.InterfaceC1366gd;
import com.google.android.gms.internal.ads.InterfaceC1779oc;
import com.google.android.gms.internal.ads.InterfaceC1831pc;
import com.google.android.gms.internal.ads.Y7;
import com.google.android.gms.internal.ads.Z7;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;

/* JADX INFO: loaded from: classes.dex */
public abstract class I extends AbstractBinderC2328z5 implements J {
    public I() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC3110w c3106u = null;
        InterfaceC3068a0 z7 = null;
        InterfaceC3116z c3112x = null;
        InterfaceC3100q0 c3098p0 = null;
        InterfaceC1292f6 c1189d6 = null;
        InterfaceC1366gd c1314fd = null;
        Y y7 = null;
        InterfaceC3104t c3102s = null;
        Z7 y8 = null;
        U s7 = null;
        switch (i8) {
            case 1:
                a aVarZzn = zzn();
                parcel2.writeNoException();
                A5.e(parcel2, aVarZzn);
                return true;
            case 2:
                f();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zP = P();
                parcel2.writeNoException();
                ClassLoader classLoader = A5.f11962a;
                parcel2.writeInt(zP ? 1 : 0);
                return true;
            case 4:
                b1 b1Var = (b1) A5.a(parcel, b1.CREATOR);
                A5.b(parcel);
                boolean zH3 = h3(b1Var);
                parcel2.writeNoException();
                parcel2.writeInt(zH3 ? 1 : 0);
                return true;
            case 5:
                y0();
                parcel2.writeNoException();
                return true;
            case 6:
                t();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    c3106u = iInterfaceQueryLocalInterface instanceof InterfaceC3110w ? (InterfaceC3110w) iInterfaceQueryLocalInterface : new C3106u(strongBinder);
                }
                A5.b(parcel);
                C0(c3106u);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    s7 = iInterfaceQueryLocalInterface2 instanceof U ? (U) iInterfaceQueryLocalInterface2 : new S(strongBinder2);
                }
                A5.b(parcel);
                p0(s7);
                parcel2.writeNoException();
                return true;
            case 9:
                A();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                v();
                parcel2.writeNoException();
                return true;
            case 12:
                d1 d1VarZzg = zzg();
                parcel2.writeNoException();
                A5.d(parcel2, d1VarZzg);
                return true;
            case 13:
                d1 d1Var = (d1) A5.a(parcel, d1.CREATOR);
                A5.b(parcel);
                u0(d1Var);
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
                    if (iInterfaceQueryLocalInterface3 instanceof InterfaceC1779oc) {
                    }
                }
                A5.b(parcel);
                r();
                parcel2.writeNoException();
                return true;
            case 15:
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    if (iInterfaceQueryLocalInterface4 instanceof InterfaceC1831pc) {
                    }
                }
                parcel.readString();
                A5.b(parcel);
                S();
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
            default:
                return false;
            case 18:
                String strZzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(strZzs);
                return true;
            case 19:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
                    y8 = iInterfaceQueryLocalInterface5 instanceof Z7 ? (Z7) iInterfaceQueryLocalInterface5 : new Y7(strongBinder5, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener", 0);
                }
                A5.b(parcel);
                c0(y8);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    c3102s = iInterfaceQueryLocalInterface6 instanceof InterfaceC3104t ? (InterfaceC3104t) iInterfaceQueryLocalInterface6 : new C3102s(strongBinder6, "com.google.android.gms.ads.internal.client.IAdClickListener", 0);
                }
                A5.b(parcel);
                h2(c3102s);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    y7 = iInterfaceQueryLocalInterface7 instanceof Y ? (Y) iInterfaceQueryLocalInterface7 : new Y(strongBinder7);
                }
                A5.b(parcel);
                a2(y7);
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zF = A5.f(parcel);
                A5.b(parcel);
                s3(zF);
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zJ3 = j3();
                parcel2.writeNoException();
                ClassLoader classLoader2 = A5.f11962a;
                parcel2.writeInt(zJ3 ? 1 : 0);
                return true;
            case 24:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    c1314fd = iInterfaceQueryLocalInterface8 instanceof InterfaceC1366gd ? (InterfaceC1366gd) iInterfaceQueryLocalInterface8 : new C1314fd(strongBinder8);
                }
                A5.b(parcel);
                g1(c1314fd);
                parcel2.writeNoException();
                return true;
            case 25:
                parcel.readString();
                A5.b(parcel);
                L();
                parcel2.writeNoException();
                return true;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                B0 b0Zzl = zzl();
                parcel2.writeNoException();
                A5.e(parcel2, b0Zzl);
                return true;
            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                Y0 y9 = (Y0) A5.a(parcel, Y0.CREATOR);
                A5.b(parcel);
                G0(y9);
                parcel2.writeNoException();
                return true;
            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                A5.b(parcel);
                I();
                parcel2.writeNoException();
                return true;
            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                String strZzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(strZzr);
                return true;
            case 32:
                U uZzj = zzj();
                parcel2.writeNoException();
                A5.e(parcel2, uZzj);
                return true;
            case 33:
                InterfaceC3110w interfaceC3110wZzi = zzi();
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC3110wZzi);
                return true;
            case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                boolean zF2 = A5.f(parcel);
                A5.b(parcel);
                H2(zF2);
                parcel2.writeNoException();
                return true;
            case 35:
                String strE = e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    if (iInterfaceQueryLocalInterface9 instanceof N) {
                    }
                }
                A5.b(parcel);
                D();
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle bundleZzd = zzd();
                parcel2.writeNoException();
                A5.d(parcel2, bundleZzd);
                return true;
            case 38:
                parcel.readString();
                A5.b(parcel);
                U();
                parcel2.writeNoException();
                return true;
            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                h1 h1Var = (h1) A5.a(parcel, h1.CREATOR);
                A5.b(parcel);
                E0(h1Var);
                parcel2.writeNoException();
                return true;
            case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
                    c1189d6 = iInterfaceQueryLocalInterface10 instanceof InterfaceC1292f6 ? (InterfaceC1292f6) iInterfaceQueryLocalInterface10 : new C1189d6(strongBinder10, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback", 0);
                }
                A5.b(parcel);
                k2(c1189d6);
                parcel2.writeNoException();
                return true;
            case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                InterfaceC3113x0 interfaceC3113x0Zzk = zzk();
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC3113x0Zzk);
                return true;
            case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    c3098p0 = iInterfaceQueryLocalInterface11 instanceof InterfaceC3100q0 ? (InterfaceC3100q0) iInterfaceQueryLocalInterface11 : new C3098p0(strongBinder11);
                }
                A5.b(parcel);
                N2(c3098p0);
                parcel2.writeNoException();
                return true;
            case 43:
                b1 b1Var2 = (b1) A5.a(parcel, b1.CREATOR);
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    c3112x = iInterfaceQueryLocalInterface12 instanceof InterfaceC3116z ? (InterfaceC3116z) iInterfaceQueryLocalInterface12 : new C3112x(strongBinder12, "com.google.android.gms.ads.internal.client.IAdLoadCallback", 0);
                }
                A5.b(parcel);
                S2(b1Var2, c3112x);
                parcel2.writeNoException();
                return true;
            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                a aVarJ0 = b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                D2(aVarJ0);
                parcel2.writeNoException();
                return true;
            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    z7 = iInterfaceQueryLocalInterface13 instanceof InterfaceC3068a0 ? (InterfaceC3068a0) iInterfaceQueryLocalInterface13 : new Z(strongBinder13, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback", 0);
                }
                A5.b(parcel);
                d3(z7);
                parcel2.writeNoException();
                return true;
            case 46:
                boolean zR = R();
                parcel2.writeNoException();
                ClassLoader classLoader3 = A5.f11962a;
                parcel2.writeInt(zR ? 1 : 0);
                return true;
        }
    }
}
