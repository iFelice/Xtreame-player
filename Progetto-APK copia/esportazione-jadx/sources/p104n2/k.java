package p104n2;

import android.net.ConnectivityManager;
import android.net.Network;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {
    public static final Network a(ConnectivityManager connectivityManager) {
        q0.h(connectivityManager, "<this>");
        return connectivityManager.getActiveNetwork();
    }
}
