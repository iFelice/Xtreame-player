package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface K extends IInterface {
    void beginAdUnitExposure(String str, long j8);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j8);

    void endAdUnitExposure(String str, long j8);

    void generateEventId(M m7);

    void getAppInstanceId(M m7);

    void getCachedAppInstanceId(M m7);

    void getConditionalUserProperties(String str, String str2, M m7);

    void getCurrentScreenClass(M m7);

    void getCurrentScreenName(M m7);

    void getGmpAppId(M m7);

    void getMaxUserProperties(String str, M m7);

    void getSessionId(M m7);

    void getTestFlag(M m7, int i8);

    void getUserProperties(String str, String str2, boolean z7, M m7);

    void initForTests(Map map);

    void initialize(R3.a aVar, V v5, long j8);

    void isDataCollectionEnabled(M m7);

    void logEvent(String str, String str2, Bundle bundle, boolean z7, boolean z8, long j8);

    void logEventAndBundle(String str, String str2, Bundle bundle, M m7, long j8);

    void logHealthData(int i8, String str, R3.a aVar, R3.a aVar2, R3.a aVar3);

    void onActivityCreated(R3.a aVar, Bundle bundle, long j8);

    void onActivityCreatedByScionActivityInfo(W w7, Bundle bundle, long j8);

    void onActivityDestroyed(R3.a aVar, long j8);

    void onActivityDestroyedByScionActivityInfo(W w7, long j8);

    void onActivityPaused(R3.a aVar, long j8);

    void onActivityPausedByScionActivityInfo(W w7, long j8);

    void onActivityResumed(R3.a aVar, long j8);

    void onActivityResumedByScionActivityInfo(W w7, long j8);

    void onActivitySaveInstanceState(R3.a aVar, M m7, long j8);

    void onActivitySaveInstanceStateByScionActivityInfo(W w7, M m7, long j8);

    void onActivityStarted(R3.a aVar, long j8);

    void onActivityStartedByScionActivityInfo(W w7, long j8);

    void onActivityStopped(R3.a aVar, long j8);

    void onActivityStoppedByScionActivityInfo(W w7, long j8);

    void performAction(Bundle bundle, M m7, long j8);

    void registerOnMeasurementEventListener(S s7);

    void resetAnalyticsData(long j8);

    void retrieveAndUploadBatches(P p7);

    void setConditionalUserProperty(Bundle bundle, long j8);

    void setConsent(Bundle bundle, long j8);

    void setConsentThirdParty(Bundle bundle, long j8);

    void setCurrentScreen(R3.a aVar, String str, String str2, long j8);

    void setCurrentScreenByScionActivityInfo(W w7, String str, String str2, long j8);

    void setDataCollectionEnabled(boolean z7);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(S s7);

    void setInstanceIdProvider(U u7);

    void setMeasurementEnabled(boolean z7, long j8);

    void setMinimumSessionDuration(long j8);

    void setSessionTimeoutDuration(long j8);

    void setSgtmDebugInfo(Intent intent);

    void setUserId(String str, long j8);

    void setUserProperty(String str, String str2, R3.a aVar, boolean z7, long j8);

    void unregisterOnMeasurementEventListener(S s7);
}
