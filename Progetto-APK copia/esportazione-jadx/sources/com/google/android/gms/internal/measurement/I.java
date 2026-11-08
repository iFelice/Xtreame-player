package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;

/* JADX INFO: loaded from: classes.dex */
public final class I extends AbstractC2276y5 implements K {
    @Override // com.google.android.gms.internal.measurement.K
    public final void beginAdUnitExposure(String str, long j8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeLong(j8);
        r1(23, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        AbstractC2658y.c(parcelJ0, bundle);
        r1(9, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void endAdUnitExposure(String str, long j8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeLong(j8);
        r1(24, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void generateEventId(M m7) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.d(parcelJ0, m7);
        r1(22, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void getCachedAppInstanceId(M m7) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.d(parcelJ0, m7);
        r1(19, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void getConditionalUserProperties(String str, String str2, M m7) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        AbstractC2658y.d(parcelJ0, m7);
        r1(10, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void getCurrentScreenClass(M m7) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.d(parcelJ0, m7);
        r1(17, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void getCurrentScreenName(M m7) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.d(parcelJ0, m7);
        r1(16, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void getGmpAppId(M m7) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.d(parcelJ0, m7);
        r1(21, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void getMaxUserProperties(String str, M m7) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        AbstractC2658y.d(parcelJ0, m7);
        r1(6, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void getUserProperties(String str, String str2, boolean z7, M m7) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        ClassLoader classLoader = AbstractC2658y.f23412a;
        parcelJ0.writeInt(z7 ? 1 : 0);
        AbstractC2658y.d(parcelJ0, m7);
        r1(5, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void initialize(R3.a aVar, V v5, long j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.d(parcelJ0, aVar);
        AbstractC2658y.c(parcelJ0, v5);
        parcelJ0.writeLong(j8);
        r1(1, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void logEvent(String str, String str2, Bundle bundle, boolean z7, boolean z8, long j8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        AbstractC2658y.c(parcelJ0, bundle);
        parcelJ0.writeInt(z7 ? 1 : 0);
        parcelJ0.writeInt(z8 ? 1 : 0);
        parcelJ0.writeLong(j8);
        r1(2, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void logHealthData(int i8, String str, R3.a aVar, R3.a aVar2, R3.a aVar3) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(5);
        parcelJ0.writeString(str);
        AbstractC2658y.d(parcelJ0, aVar);
        AbstractC2658y.d(parcelJ0, aVar2);
        AbstractC2658y.d(parcelJ0, aVar3);
        r1(33, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void onActivityCreatedByScionActivityInfo(W w7, Bundle bundle, long j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, w7);
        AbstractC2658y.c(parcelJ0, bundle);
        parcelJ0.writeLong(j8);
        r1(53, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void onActivityDestroyedByScionActivityInfo(W w7, long j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, w7);
        parcelJ0.writeLong(j8);
        r1(54, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void onActivityPausedByScionActivityInfo(W w7, long j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, w7);
        parcelJ0.writeLong(j8);
        r1(55, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void onActivityResumedByScionActivityInfo(W w7, long j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, w7);
        parcelJ0.writeLong(j8);
        r1(56, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void onActivitySaveInstanceStateByScionActivityInfo(W w7, M m7, long j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, w7);
        AbstractC2658y.d(parcelJ0, m7);
        parcelJ0.writeLong(j8);
        r1(57, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void onActivityStartedByScionActivityInfo(W w7, long j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, w7);
        parcelJ0.writeLong(j8);
        r1(51, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void onActivityStoppedByScionActivityInfo(W w7, long j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, w7);
        parcelJ0.writeLong(j8);
        r1(52, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void registerOnMeasurementEventListener(S s7) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.d(parcelJ0, s7);
        r1(35, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void retrieveAndUploadBatches(P p7) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.d(parcelJ0, p7);
        r1(58, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void setConditionalUserProperty(Bundle bundle, long j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, bundle);
        parcelJ0.writeLong(j8);
        r1(8, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void setCurrentScreenByScionActivityInfo(W w7, String str, String str2, long j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, w7);
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        parcelJ0.writeLong(j8);
        r1(50, parcelJ0);
    }

    @Override // com.google.android.gms.internal.measurement.K
    public final void setUserProperty(String str, String str2, R3.a aVar, boolean z7, long j8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        AbstractC2658y.d(parcelJ0, aVar);
        parcelJ0.writeInt(z7 ? 1 : 0);
        parcelJ0.writeLong(j8);
        r1(4, parcelJ0);
    }
}
