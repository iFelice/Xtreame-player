package p104n2;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {
    public static final NetworkCapabilities a(ConnectivityManager connectivityManager, Network network) {
        q0.h(connectivityManager, "<this>");
        return connectivityManager.getNetworkCapabilities(network);
    }

    public static final boolean b(NetworkCapabilities networkCapabilities, int i8) {
        q0.h(networkCapabilities, "<this>");
        return networkCapabilities.hasCapability(i8);
    }

    public static final void c(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback) {
        q0.h(connectivityManager, "<this>");
        q0.h(networkCallback, "networkCallback");
        connectivityManager.unregisterNetworkCallback(networkCallback);
    }
}
