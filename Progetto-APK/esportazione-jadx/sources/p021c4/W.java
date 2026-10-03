package p021c4;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.measurement.C2581j1;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class W extends u1 {
    @Override // p021c4.u1
    public final boolean p() {
        return false;
    }

    public final void q(String str, v1 v1Var, C2581j1 c2581j1, C1093bD c1093bD) {
        String str2 = v1Var.f11389a;
        m();
        n();
        try {
            URL url = new URI(str2).toURL();
            this.f11343H.e();
            byte[] bArrC = c2581j1.c();
            C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
            C0597l0.k(c0591j0);
            Map mapEmptyMap = v1Var.f11390b;
            if (mapEmptyMap == null) {
                mapEmptyMap = Collections.emptyMap();
            }
            c0591j0.w(new V(this, str, url, bArrC, mapEmptyMap, c1093bD));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.c(T.t(str), str2, "Failed to parse URL. Not uploading MeasurementBatch. appId");
        }
    }

    public final boolean r() {
        n();
        ConnectivityManager connectivityManager = (ConnectivityManager) ((C0597l0) this.f10616G).f11250G.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = null;
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
