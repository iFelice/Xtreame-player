package p082k2;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import p027d2.n;
import p066i2.a;
import p104n2.k;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f25930a;

    static {
        String strF = n.f("NetworkStateTracker");
        q0.g(strF, "tagWithPrefix(\"NetworkStateTracker\")");
        f25930a = strF;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001c  */
    public static final a a(ConnectivityManager connectivityManager) {
        boolean zB;
        q0.h(connectivityManager, "<this>");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        boolean z7 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        if (Build.VERSION.SDK_INT < 23) {
            zB = false;
        } else {
            try {
                NetworkCapabilities networkCapabilitiesA = p104n2.j.a(connectivityManager, k.a(connectivityManager));
                if (networkCapabilitiesA != null) {
                    zB = p104n2.j.b(networkCapabilitiesA, 16);
                } else {
                    zB = false;
                }
            } catch (SecurityException e8) {
                n.d().c(f25930a, "Unable to validate active network", e8);
            }
        }
        return new a(z7, zB, connectivityManager.isActiveNetworkMetered(), (activeNetworkInfo == null || activeNetworkInfo.isRoaming()) ? false : true);
    }
}
