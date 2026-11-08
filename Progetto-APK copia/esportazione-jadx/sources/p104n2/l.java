package p104n2;

import android.net.ConnectivityManager;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {
    public static final void a(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback) {
        q0.h(connectivityManager, "<this>");
        q0.h(networkCallback, "networkCallback");
        connectivityManager.registerDefaultNetworkCallback(networkCallback);
    }
}
