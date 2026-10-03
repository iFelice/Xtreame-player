package E1;

import B0.AbstractC0067q;
import B0.AbstractC0068s;
import B0.C0070u;
import android.content.Context;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.RouteDiscoveryPreference;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import pe.hf.black20.R;

/* JADX INFO: renamed from: E1.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0171f extends AbstractC0179n {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ int f2729r = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MediaRouter2 f2730i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C0185u f2731j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayMap f2732k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C0169d f2733l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C0170e f2734m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C0070u f2735n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final D0.O f2736o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList f2737p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ArrayMap f2738q;

    static {
        Log.isLoggable("MR2Provider", 3);
    }

    public C0171f(Context context, C0185u c0185u) {
        super(context, null);
        this.f2732k = new ArrayMap();
        this.f2734m = new C0170e(this);
        this.f2735n = new C0070u(this, 1);
        this.f2737p = new ArrayList();
        this.f2738q = new ArrayMap();
        this.f2730i = MediaRouter2.getInstance(context);
        this.f2731j = c0185u;
        this.f2736o = new D0.O(2, new Handler(Looper.getMainLooper()));
        if (Build.VERSION.SDK_INT >= 34) {
            this.f2733l = new C0169d(this);
        } else {
            this.f2733l = new C0169d(this, 0);
        }
    }

    @Override // E1.AbstractC0179n
    public final AbstractC0177l c(String str) {
        Iterator it = this.f2732k.entrySet().iterator();
        while (it.hasNext()) {
            C0167b c0167b = (C0167b) ((Map.Entry) it.next()).getValue();
            if (TextUtils.equals(str, c0167b.f2706f)) {
                return c0167b;
            }
        }
        return null;
    }

    @Override // E1.AbstractC0179n
    public final AbstractC0178m d(String str) {
        return new C0168c((String) this.f2738q.get(str), null);
    }

    @Override // E1.AbstractC0179n
    public final AbstractC0178m e(String str, String str2) {
        String str3 = (String) this.f2738q.get(str);
        for (C0167b c0167b : this.f2732k.values()) {
            C0173h c0173h = c0167b.f2715o;
            if (TextUtils.equals(str2, c0173h != null ? c0173h.d() : c0167b.f2707g.getId())) {
                return new C0168c(str3, c0167b);
            }
        }
        Log.w("MR2Provider", "Could not find the matching GroupRouteController. routeId=" + str + ", routeGroupId=" + str2);
        return new C0168c(str3, null);
    }

    @Override // E1.AbstractC0179n
    public final void f(C0174i c0174i) {
        Q q7;
        A a8 = H.f2649c;
        C0070u c0070u = this.f2735n;
        C0170e c0170e = this.f2734m;
        C0169d c0169d = this.f2733l;
        MediaRouter2 mediaRouter2 = this.f2730i;
        if (a8 == null || H.c().f2579A <= 0) {
            mediaRouter2.unregisterRouteCallback(c0169d);
            mediaRouter2.unregisterTransferCallback(c0170e);
            mediaRouter2.unregisterControllerCallback(c0070u);
            return;
        }
        A aC = H.c();
        boolean z7 = (aC == null || (q7 = aC.f2600q) == null || !q7.f2666c) ? false : true;
        if (c0174i == null) {
            c0174i = new C0174i(C0181p.f2795c, false);
        }
        c0174i.a();
        ArrayList arrayListB = c0174i.f2753b.b();
        if (!z7) {
            arrayListB.remove("android.media.intent.category.LIVE_AUDIO");
        } else if (!arrayListB.contains("android.media.intent.category.LIVE_AUDIO")) {
            arrayListB.add("android.media.intent.category.LIVE_AUDIO");
        }
        f0 f0Var = new f0();
        f0Var.c(arrayListB);
        RouteDiscoveryPreference routeDiscoveryPreferenceG = H.a.g(new C0174i(f0Var.d(), c0174i.b()));
        D0.O o4 = this.f2736o;
        mediaRouter2.registerRouteCallback(o4, c0169d, routeDiscoveryPreferenceG);
        mediaRouter2.registerTransferCallback(o4, c0170e);
        mediaRouter2.registerControllerCallback(o4, c0070u);
    }

    public final void i() {
        ArrayList arrayList = new ArrayList();
        ArraySet arraySetR = AbstractC0067q.r();
        Iterator it = this.f2730i.getRoutes().iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoB = AbstractC0068s.b(it.next());
            if (mediaRoute2InfoB != null && !arraySetR.contains(mediaRoute2InfoB) && !mediaRoute2InfoB.isSystemRoute()) {
                arraySetR.add(mediaRoute2InfoB);
                arrayList.add(mediaRoute2InfoB);
            }
        }
        if (arrayList.equals(this.f2737p)) {
            return;
        }
        this.f2737p = arrayList;
        ArrayMap arrayMap = this.f2738q;
        arrayMap.clear();
        Iterator it2 = this.f2737p.iterator();
        while (it2.hasNext()) {
            MediaRoute2Info mediaRoute2InfoB2 = AbstractC0068s.b(it2.next());
            Bundle extras = mediaRoute2InfoB2.getExtras();
            if (extras == null || extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID") == null) {
                Log.w("MR2Provider", "Cannot find the original route Id. route=" + mediaRoute2InfoB2);
            } else {
                arrayMap.put(mediaRoute2InfoB2.getId(), extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"));
            }
        }
        ArrayList<C0173h> arrayList2 = new ArrayList();
        Iterator it3 = this.f2737p.iterator();
        while (it3.hasNext()) {
            MediaRoute2Info mediaRoute2InfoB3 = AbstractC0068s.b(it3.next());
            C0173h c0173hH = H.a.h(mediaRoute2InfoB3);
            if (mediaRoute2InfoB3 != null) {
                arrayList2.add(c0173hH);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        if (!arrayList2.isEmpty()) {
            for (C0173h c0173h : arrayList2) {
                if (c0173h == null) {
                    throw new IllegalArgumentException("route must not be null");
                }
                if (arrayList3.contains(c0173h)) {
                    throw new IllegalArgumentException("route descriptor already added");
                }
                arrayList3.add(c0173h);
            }
        }
        g(new C0180o(arrayList3, true));
    }

    public final void j(MediaRouter2.RoutingController routingController) {
        C0172g c0172g;
        C0167b c0167b = (C0167b) this.f2732k.get(routingController);
        if (c0167b == null) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: No matching routeController found. routingController=" + routingController);
            return;
        }
        List selectedRoutes = routingController.getSelectedRoutes();
        if (selectedRoutes.isEmpty()) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: No selected routes. This may happen when the selected routes become invalid.routingController=" + routingController);
            return;
        }
        ArrayList<String> arrayListC = H.a.c(selectedRoutes);
        C0173h c0173hH = H.a.h(AbstractC0068s.b(selectedRoutes.get(0)));
        Bundle controlHints = routingController.getControlHints();
        String string = this.f2785a.getString(R.string.mr_dialog_default_group_name);
        C0173h c0173h = null;
        if (controlHints != null) {
            try {
                String string2 = controlHints.getString("androidx.mediarouter.media.KEY_SESSION_NAME");
                if (!TextUtils.isEmpty(string2)) {
                    string = string2;
                }
                Bundle bundle = controlHints.getBundle("androidx.mediarouter.media.KEY_GROUP_ROUTE");
                if (bundle != null) {
                    c0173h = new C0173h(bundle);
                }
            } catch (Exception e8) {
                Log.w("MR2Provider", "Exception while unparceling control hints.", e8);
            }
        }
        if (c0173h == null) {
            c0172g = new C0172g(routingController.getId(), string);
            Bundle bundle2 = c0172g.f2741a;
            bundle2.putInt("connectionState", 2);
            bundle2.putInt("playbackType", 1);
        } else {
            c0172g = new C0172g(c0173h);
        }
        int volume = routingController.getVolume();
        Bundle bundle3 = c0172g.f2741a;
        bundle3.putInt("volume", volume);
        bundle3.putInt("volumeMax", routingController.getVolumeMax());
        bundle3.putInt("volumeHandling", routingController.getVolumeHandling());
        c0172g.f2743c.clear();
        c0172g.a(c0173hH.b());
        ArrayList arrayList = c0172g.f2742b;
        arrayList.clear();
        if (!arrayListC.isEmpty()) {
            for (String str : arrayListC) {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("groupMemberId must not be empty");
                }
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        C0173h c0173hB = c0172g.b();
        ArrayList arrayListC2 = H.a.c(routingController.getSelectableRoutes());
        ArrayList arrayListC3 = H.a.c(routingController.getDeselectableRoutes());
        C0180o c0180o = this.f2791g;
        if (c0180o == null) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: providerDescriptor is not set.");
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        List<C0173h> list = c0180o.f2793a;
        if (!list.isEmpty()) {
            for (C0173h c0173h2 : list) {
                String strD = c0173h2.d();
                int i8 = arrayListC.contains(strD) ? 3 : 1;
                arrayListC2.contains(strD);
                arrayListC3.contains(strD);
                arrayList2.add(new C0176k(c0173h2, i8));
            }
        }
        c0167b.f2715o = c0173hB;
        c0167b.j(c0173hB, arrayList2);
    }
}
