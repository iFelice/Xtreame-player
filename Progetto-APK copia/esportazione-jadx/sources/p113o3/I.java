package p113o3;

import android.util.Log;
import com.google.android.gms.internal.ads.AbstractC2019t8;
import java.util.Iterator;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class I extends h {
    public static void k(String str) {
        if (m()) {
            if (str == null || str.length() <= 4000) {
                Log.v("Ads", str);
                return;
            }
            Iterator itT = h.f28217a.t(str);
            boolean z7 = true;
            while (itT.hasNext()) {
                String str2 = (String) itT.next();
                if (z7) {
                    Log.v("Ads", str2);
                } else {
                    Log.v("Ads-cont", str2);
                }
                z7 = false;
            }
        }
    }

    public static void l(String str, Throwable th) {
        if (m()) {
            Log.v("Ads", str, th);
        }
    }

    public static boolean m() {
        return h.j(2) && ((Boolean) AbstractC2019t8.f21041a.l()).booleanValue();
    }
}
