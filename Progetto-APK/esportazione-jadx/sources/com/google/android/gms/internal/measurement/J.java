package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.util.HashMap;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;

/* JADX INFO: loaded from: classes.dex */
public abstract class J extends AbstractBinderC2653x implements K {
    public static K asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return iInterfaceQueryLocalInterface instanceof K ? (K) iInterfaceQueryLocalInterface : new I(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService", 4);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC2653x
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        M l4;
        boolean z7;
        M l8 = null;
        P n7 = null;
        M l9 = null;
        M l10 = null;
        M l11 = null;
        M l12 = null;
        S q7 = null;
        S q8 = null;
        S q9 = null;
        M l13 = null;
        M l14 = null;
        M l15 = null;
        M l16 = null;
        M l17 = null;
        M l18 = null;
        U t7 = null;
        M l19 = null;
        M l20 = null;
        M l21 = null;
        M l22 = null;
        switch (i8) {
            case 1:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                V v5 = (V) AbstractC2658y.a(parcel, V.CREATOR);
                long j8 = parcel.readLong();
                AbstractC2658y.b(parcel);
                initialize(aVarJ0, v5, j8);
                break;
            case 2:
                String string = parcel.readString();
                String string2 = parcel.readString();
                Bundle bundle = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                boolean z8 = parcel.readInt() != 0;
                boolean z9 = parcel.readInt() != 0;
                long j9 = parcel.readLong();
                AbstractC2658y.b(parcel);
                logEvent(string, string2, bundle, z8, z9, j9);
                break;
            case 3:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                Bundle bundle2 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    l4 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l4 = iInterfaceQueryLocalInterface instanceof M ? (M) iInterfaceQueryLocalInterface : new L(strongBinder);
                }
                long j10 = parcel.readLong();
                AbstractC2658y.b(parcel);
                logEventAndBundle(string3, string4, bundle2, l4, j10);
                break;
            case 4:
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                ClassLoader classLoader = AbstractC2658y.f23412a;
                boolean z10 = parcel.readInt() != 0;
                long j11 = parcel.readLong();
                AbstractC2658y.b(parcel);
                setUserProperty(string5, string6, aVarJ1, z10, j11);
                break;
            case 5:
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                ClassLoader classLoader2 = AbstractC2658y.f23412a;
                z7 = parcel.readInt() != 0;
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l8 = iInterfaceQueryLocalInterface2 instanceof M ? (M) iInterfaceQueryLocalInterface2 : new L(strongBinder2);
                }
                AbstractC2658y.b(parcel);
                getUserProperties(string7, string8, z7, l8);
                break;
            case 6:
                String string9 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l22 = iInterfaceQueryLocalInterface3 instanceof M ? (M) iInterfaceQueryLocalInterface3 : new L(strongBinder3);
                }
                AbstractC2658y.b(parcel);
                getMaxUserProperties(string9, l22);
                break;
            case 7:
                String string10 = parcel.readString();
                long j12 = parcel.readLong();
                AbstractC2658y.b(parcel);
                setUserId(string10, j12);
                break;
            case 8:
                Bundle bundle3 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                long j13 = parcel.readLong();
                AbstractC2658y.b(parcel);
                setConditionalUserProperty(bundle3, j13);
                break;
            case 9:
                String string11 = parcel.readString();
                String string12 = parcel.readString();
                Bundle bundle4 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                AbstractC2658y.b(parcel);
                clearConditionalUserProperty(string11, string12, bundle4);
                break;
            case 10:
                String string13 = parcel.readString();
                String string14 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l21 = iInterfaceQueryLocalInterface4 instanceof M ? (M) iInterfaceQueryLocalInterface4 : new L(strongBinder4);
                }
                AbstractC2658y.b(parcel);
                getConditionalUserProperties(string13, string14, l21);
                break;
            case 11:
                ClassLoader classLoader3 = AbstractC2658y.f23412a;
                z7 = parcel.readInt() != 0;
                long j14 = parcel.readLong();
                AbstractC2658y.b(parcel);
                setMeasurementEnabled(z7, j14);
                break;
            case 12:
                long j15 = parcel.readLong();
                AbstractC2658y.b(parcel);
                resetAnalyticsData(j15);
                break;
            case 13:
                long j16 = parcel.readLong();
                AbstractC2658y.b(parcel);
                setMinimumSessionDuration(j16);
                break;
            case 14:
                long j17 = parcel.readLong();
                AbstractC2658y.b(parcel);
                setSessionTimeoutDuration(j17);
                break;
            case 15:
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                String string15 = parcel.readString();
                String string16 = parcel.readString();
                long j18 = parcel.readLong();
                AbstractC2658y.b(parcel);
                setCurrentScreen(aVarJ2, string15, string16, j18);
                break;
            case 16:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l20 = iInterfaceQueryLocalInterface5 instanceof M ? (M) iInterfaceQueryLocalInterface5 : new L(strongBinder5);
                }
                AbstractC2658y.b(parcel);
                getCurrentScreenName(l20);
                break;
            case 17:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l19 = iInterfaceQueryLocalInterface6 instanceof M ? (M) iInterfaceQueryLocalInterface6 : new L(strongBinder6);
                }
                AbstractC2658y.b(parcel);
                getCurrentScreenClass(l19);
                break;
            case 18:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    t7 = iInterfaceQueryLocalInterface7 instanceof U ? (U) iInterfaceQueryLocalInterface7 : new T(strongBinder7, "com.google.android.gms.measurement.api.internal.IStringProvider", 4);
                }
                AbstractC2658y.b(parcel);
                setInstanceIdProvider(t7);
                break;
            case 19:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l18 = iInterfaceQueryLocalInterface8 instanceof M ? (M) iInterfaceQueryLocalInterface8 : new L(strongBinder8);
                }
                AbstractC2658y.b(parcel);
                getCachedAppInstanceId(l18);
                break;
            case 20:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l17 = iInterfaceQueryLocalInterface9 instanceof M ? (M) iInterfaceQueryLocalInterface9 : new L(strongBinder9);
                }
                AbstractC2658y.b(parcel);
                getAppInstanceId(l17);
                break;
            case 21:
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l16 = iInterfaceQueryLocalInterface10 instanceof M ? (M) iInterfaceQueryLocalInterface10 : new L(strongBinder10);
                }
                AbstractC2658y.b(parcel);
                getGmpAppId(l16);
                break;
            case 22:
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l15 = iInterfaceQueryLocalInterface11 instanceof M ? (M) iInterfaceQueryLocalInterface11 : new L(strongBinder11);
                }
                AbstractC2658y.b(parcel);
                generateEventId(l15);
                break;
            case 23:
                String string17 = parcel.readString();
                long j19 = parcel.readLong();
                AbstractC2658y.b(parcel);
                beginAdUnitExposure(string17, j19);
                break;
            case 24:
                String string18 = parcel.readString();
                long j20 = parcel.readLong();
                AbstractC2658y.b(parcel);
                endAdUnitExposure(string18, j20);
                break;
            case 25:
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                long j21 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityStarted(aVarJ3, j21);
                break;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                R3.a aVarJ4 = R3.b.j0(parcel.readStrongBinder());
                long j22 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityStopped(aVarJ4, j22);
                break;
            case 27:
                R3.a aVarJ5 = R3.b.j0(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                long j23 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityCreated(aVarJ5, bundle5, j23);
                break;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                R3.a aVarJ6 = R3.b.j0(parcel.readStrongBinder());
                long j24 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityDestroyed(aVarJ6, j24);
                break;
            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                R3.a aVarJ7 = R3.b.j0(parcel.readStrongBinder());
                long j25 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityPaused(aVarJ7, j25);
                break;
            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                R3.a aVarJ8 = R3.b.j0(parcel.readStrongBinder());
                long j26 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityResumed(aVarJ8, j26);
                break;
            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                R3.a aVarJ9 = R3.b.j0(parcel.readStrongBinder());
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l14 = iInterfaceQueryLocalInterface12 instanceof M ? (M) iInterfaceQueryLocalInterface12 : new L(strongBinder12);
                }
                long j27 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivitySaveInstanceState(aVarJ9, l14, j27);
                break;
            case 32:
                Bundle bundle6 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l13 = iInterfaceQueryLocalInterface13 instanceof M ? (M) iInterfaceQueryLocalInterface13 : new L(strongBinder13);
                }
                long j28 = parcel.readLong();
                AbstractC2658y.b(parcel);
                performAction(bundle6, l13, j28);
                break;
            case 33:
                int i9 = parcel.readInt();
                String string19 = parcel.readString();
                R3.a aVarJ10 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ11 = R3.b.j0(parcel.readStrongBinder());
                R3.a aVarJ12 = R3.b.j0(parcel.readStrongBinder());
                AbstractC2658y.b(parcel);
                logHealthData(i9, string19, aVarJ10, aVarJ11, aVarJ12);
                break;
            case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                IBinder strongBinder14 = parcel.readStrongBinder();
                if (strongBinder14 != null) {
                    IInterface iInterfaceQueryLocalInterface14 = strongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    q9 = iInterfaceQueryLocalInterface14 instanceof S ? (S) iInterfaceQueryLocalInterface14 : new Q(strongBinder14);
                }
                AbstractC2658y.b(parcel);
                setEventInterceptor(q9);
                break;
            case 35:
                IBinder strongBinder15 = parcel.readStrongBinder();
                if (strongBinder15 != null) {
                    IInterface iInterfaceQueryLocalInterface15 = strongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    q8 = iInterfaceQueryLocalInterface15 instanceof S ? (S) iInterfaceQueryLocalInterface15 : new Q(strongBinder15);
                }
                AbstractC2658y.b(parcel);
                registerOnMeasurementEventListener(q8);
                break;
            case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                IBinder strongBinder16 = parcel.readStrongBinder();
                if (strongBinder16 != null) {
                    IInterface iInterfaceQueryLocalInterface16 = strongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    q7 = iInterfaceQueryLocalInterface16 instanceof S ? (S) iInterfaceQueryLocalInterface16 : new Q(strongBinder16);
                }
                AbstractC2658y.b(parcel);
                unregisterOnMeasurementEventListener(q7);
                break;
            case 37:
                HashMap hashMap = parcel.readHashMap(AbstractC2658y.f23412a);
                AbstractC2658y.b(parcel);
                initForTests(hashMap);
                break;
            case 38:
                IBinder strongBinder17 = parcel.readStrongBinder();
                if (strongBinder17 != null) {
                    IInterface iInterfaceQueryLocalInterface17 = strongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l12 = iInterfaceQueryLocalInterface17 instanceof M ? (M) iInterfaceQueryLocalInterface17 : new L(strongBinder17);
                }
                int i10 = parcel.readInt();
                AbstractC2658y.b(parcel);
                getTestFlag(l12, i10);
                break;
            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                ClassLoader classLoader4 = AbstractC2658y.f23412a;
                z7 = parcel.readInt() != 0;
                AbstractC2658y.b(parcel);
                setDataCollectionEnabled(z7);
                break;
            case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                IBinder strongBinder18 = parcel.readStrongBinder();
                if (strongBinder18 != null) {
                    IInterface iInterfaceQueryLocalInterface18 = strongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l11 = iInterfaceQueryLocalInterface18 instanceof M ? (M) iInterfaceQueryLocalInterface18 : new L(strongBinder18);
                }
                AbstractC2658y.b(parcel);
                isDataCollectionEnabled(l11);
                break;
            case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
            case 47:
            case 49:
            default:
                return false;
            case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                Bundle bundle7 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                AbstractC2658y.b(parcel);
                setDefaultEventParameters(bundle7);
                break;
            case 43:
                long j29 = parcel.readLong();
                AbstractC2658y.b(parcel);
                clearMeasurementEnabled(j29);
                break;
            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                Bundle bundle8 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                long j30 = parcel.readLong();
                AbstractC2658y.b(parcel);
                setConsent(bundle8, j30);
                break;
            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                Bundle bundle9 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                long j31 = parcel.readLong();
                AbstractC2658y.b(parcel);
                setConsentThirdParty(bundle9, j31);
                break;
            case 46:
                IBinder strongBinder19 = parcel.readStrongBinder();
                if (strongBinder19 != null) {
                    IInterface iInterfaceQueryLocalInterface19 = strongBinder19.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l10 = iInterfaceQueryLocalInterface19 instanceof M ? (M) iInterfaceQueryLocalInterface19 : new L(strongBinder19);
                }
                AbstractC2658y.b(parcel);
                getSessionId(l10);
                break;
            case 48:
                Intent intent = (Intent) AbstractC2658y.a(parcel, Intent.CREATOR);
                AbstractC2658y.b(parcel);
                setSgtmDebugInfo(intent);
                break;
            case 50:
                W w7 = (W) AbstractC2658y.a(parcel, W.CREATOR);
                String string20 = parcel.readString();
                String string21 = parcel.readString();
                long j32 = parcel.readLong();
                AbstractC2658y.b(parcel);
                setCurrentScreenByScionActivityInfo(w7, string20, string21, j32);
                break;
            case 51:
                W w8 = (W) AbstractC2658y.a(parcel, W.CREATOR);
                long j33 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityStartedByScionActivityInfo(w8, j33);
                break;
            case 52:
                W w9 = (W) AbstractC2658y.a(parcel, W.CREATOR);
                long j34 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityStoppedByScionActivityInfo(w9, j34);
                break;
            case 53:
                W w10 = (W) AbstractC2658y.a(parcel, W.CREATOR);
                Bundle bundle10 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                long j35 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityCreatedByScionActivityInfo(w10, bundle10, j35);
                break;
            case 54:
                W w11 = (W) AbstractC2658y.a(parcel, W.CREATOR);
                long j36 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityDestroyedByScionActivityInfo(w11, j36);
                break;
            case 55:
                W w12 = (W) AbstractC2658y.a(parcel, W.CREATOR);
                long j37 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityPausedByScionActivityInfo(w12, j37);
                break;
            case 56:
                W w13 = (W) AbstractC2658y.a(parcel, W.CREATOR);
                long j38 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivityResumedByScionActivityInfo(w13, j38);
                break;
            case 57:
                W w14 = (W) AbstractC2658y.a(parcel, W.CREATOR);
                IBinder strongBinder20 = parcel.readStrongBinder();
                if (strongBinder20 != null) {
                    IInterface iInterfaceQueryLocalInterface20 = strongBinder20.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    l9 = iInterfaceQueryLocalInterface20 instanceof M ? (M) iInterfaceQueryLocalInterface20 : new L(strongBinder20);
                }
                long j39 = parcel.readLong();
                AbstractC2658y.b(parcel);
                onActivitySaveInstanceStateByScionActivityInfo(w14, l9, j39);
                break;
            case 58:
                IBinder strongBinder21 = parcel.readStrongBinder();
                if (strongBinder21 != null) {
                    IInterface iInterfaceQueryLocalInterface21 = strongBinder21.queryLocalInterface("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
                    n7 = iInterfaceQueryLocalInterface21 instanceof P ? (P) iInterfaceQueryLocalInterface21 : new N(strongBinder21, "com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback", 4);
                }
                AbstractC2658y.b(parcel);
                retrieveAndUploadBatches(n7);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
