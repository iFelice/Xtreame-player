package B0;

import android.media.MediaRouter2;
import com.google.android.gms.internal.measurement.H1;
import java.util.Iterator;

/* JADX INFO: renamed from: B0.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0071v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0070u f1090a;

    static {
        AbstractC0068s.m();
        z4.F f8 = z4.H.f31804H;
        AbstractC0068s.f(z4.d0.f31844K).build();
    }

    public static boolean a(MediaRouter2 mediaRouter2) {
        H1.f(mediaRouter2);
        int transferReason = AbstractC0068s.y(mediaRouter2).getSystemController().getRoutingSessionInfo().getTransferReason();
        boolean zWasTransferInitiatedBySelf = mediaRouter2.getSystemController().wasTransferInitiatedBySelf();
        Iterator it = mediaRouter2.getSystemController().getSelectedRoutes().iterator();
        while (it.hasNext()) {
            int suitabilityStatus = AbstractC0068s.b(it.next()).getSuitabilityStatus();
            if (suitabilityStatus == 1) {
                if (transferReason == 1 || transferReason == 2) {
                    if (zWasTransferInitiatedBySelf) {
                        return true;
                    }
                }
            } else if (suitabilityStatus == 0) {
                return true;
            }
        }
        return false;
    }
}
