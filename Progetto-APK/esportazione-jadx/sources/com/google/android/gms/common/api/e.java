package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.InterfaceC0628d;
import com.google.android.gms.common.internal.InterfaceC0630f;
import com.google.android.gms.common.internal.InterfaceC0638n;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface e {
    void connect(InterfaceC0628d interfaceC0628d);

    void disconnect();

    void disconnect(String str);

    J3.d[] getAvailableFeatures();

    String getEndpointPackageName();

    String getLastDisconnectMessage();

    int getMinApkVersion();

    void getRemoteService(InterfaceC0638n interfaceC0638n, Set set);

    Set getScopesForConnectionlessNonSignIn();

    boolean isConnected();

    boolean isConnecting();

    void onUserSignOut(InterfaceC0630f interfaceC0630f);

    boolean requiresGooglePlayServices();

    boolean requiresSignIn();
}
