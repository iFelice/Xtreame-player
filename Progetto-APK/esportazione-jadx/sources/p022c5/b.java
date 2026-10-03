package p022c5;

import V4.B;
import V4.C;
import V4.C0353a;
import V4.O;
import V4.r;
import com.google.firebase.inappmessaging.CampaignAnalytics;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f11424a;

    static {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        f11424a = map2;
        map.put(C.f7113G, O.UNSPECIFIED_RENDER_ERROR);
        map.put(C.f7114H, O.IMAGE_FETCH_ERROR);
        map.put(C.f7115I, O.IMAGE_DISPLAY_ERROR);
        map.put(C.f7116J, O.IMAGE_UNSUPPORTED_FORMAT);
        map2.put(B.f7109H, r.AUTO);
        map2.put(B.f7110I, r.CLICK);
        map2.put(B.f7111J, r.SWIPE);
        map2.put(B.f7108G, r.UNKNOWN_DISMISS_TYPE);
    }

    public static void a() {
        C0353a c0353aNewBuilder = CampaignAnalytics.newBuilder();
        c0353aNewBuilder.d();
        ((CampaignAnalytics) c0353aNewBuilder.f24413H).setFiamSdkVersion("21.0.2");
        throw null;
    }
}
