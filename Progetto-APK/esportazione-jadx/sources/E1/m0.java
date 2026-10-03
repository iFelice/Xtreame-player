package E1;

import android.content.Context;
import android.content.IntentFilter;
import android.media.MediaRouter;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import okhttp3.HttpUrl;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class m0 extends q0 implements J, L {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final ArrayList f2773s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final ArrayList f2774t;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p0 f2775i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MediaRouter f2776j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MediaRouter.Callback f2777k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final M f2778l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final MediaRouter.RouteCategory f2779m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2780n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2781o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2782p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ArrayList f2783q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final ArrayList f2784r;

    static {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addCategory("android.media.intent.category.LIVE_AUDIO");
        ArrayList arrayList = new ArrayList();
        f2773s = arrayList;
        arrayList.add(intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addCategory("android.media.intent.category.LIVE_VIDEO");
        ArrayList arrayList2 = new ArrayList();
        f2774t = arrayList2;
        arrayList2.add(intentFilter2);
    }

    public m0(Context context, A a8) {
        super(context);
        this.f2783q = new ArrayList();
        this.f2784r = new ArrayList();
        this.f2775i = a8;
        MediaRouter mediaRouter = (MediaRouter) context.getSystemService("media_router");
        this.f2776j = mediaRouter;
        this.f2777k = new P((n0) this);
        this.f2778l = new M(this);
        this.f2779m = mediaRouter.createRouteCategory((CharSequence) context.getResources().getString(R.string.mr_user_route_category_name), false);
        v();
    }

    public static l0 n(MediaRouter.RouteInfo routeInfo) {
        Object tag = routeInfo.getTag();
        if (tag instanceof l0) {
            return (l0) tag;
        }
        return null;
    }

    @Override // E1.L
    public final void a(MediaRouter.RouteInfo routeInfo, int i8) {
        l0 l0VarN = n(routeInfo);
        if (l0VarN != null) {
            l0VarN.f2771a.g(i8);
        }
    }

    @Override // E1.L
    public final void b(MediaRouter.RouteInfo routeInfo, int i8) {
        l0 l0VarN = n(routeInfo);
        if (l0VarN != null) {
            l0VarN.f2771a.h(i8);
        }
    }

    @Override // E1.AbstractC0179n
    public final AbstractC0178m d(String str) {
        int iK = k(str);
        if (iK >= 0) {
            return new j0(((k0) this.f2783q.get(iK)).f2763a);
        }
        return null;
    }

    @Override // E1.AbstractC0179n
    public final void f(C0174i c0174i) {
        boolean zB;
        int i8 = 0;
        if (c0174i != null) {
            c0174i.a();
            ArrayList arrayListB = c0174i.f2753b.b();
            int size = arrayListB.size();
            int i9 = 0;
            while (i8 < size) {
                String str = (String) arrayListB.get(i8);
                if (str.equals("android.media.intent.category.LIVE_AUDIO")) {
                    i9 |= 1;
                } else {
                    i9 = str.equals("android.media.intent.category.LIVE_VIDEO") ? i9 | 2 : i9 | 8388608;
                }
                i8++;
            }
            zB = c0174i.b();
            i8 = i9;
        } else {
            zB = false;
        }
        if (this.f2780n == i8 && this.f2781o == zB) {
            return;
        }
        this.f2780n = i8;
        this.f2781o = zB;
        v();
    }

    public final boolean i(MediaRouter.RouteInfo routeInfo) {
        String str;
        String str2;
        if (n(routeInfo) != null || j(routeInfo) >= 0) {
            return false;
        }
        Object objM = m();
        String string = HttpUrl.FRAGMENT_ENCODE_SET;
        Context context = this.f2785a;
        if (objM == routeInfo) {
            str = "DEFAULT_ROUTE";
        } else {
            Locale locale = Locale.US;
            CharSequence name = routeInfo.getName(context);
            str = String.format(locale, "ROUTE_%08x", Integer.valueOf((name != null ? name.toString() : HttpUrl.FRAGMENT_ENCODE_SET).hashCode()));
        }
        String str3 = str;
        if (k(str3) >= 0) {
            int i8 = 2;
            while (true) {
                Locale locale2 = Locale.US;
                str2 = str3 + "_" + i8;
                if (k(str2) < 0) {
                    break;
                }
                i8++;
            }
            str3 = str2;
        }
        k0 k0Var = new k0(routeInfo, str3);
        CharSequence name2 = routeInfo.getName(context);
        if (name2 != null) {
            string = name2.toString();
        }
        C0172g c0172g = new C0172g(str3, string);
        o(k0Var, c0172g);
        k0Var.f2765c = c0172g.b();
        this.f2783q.add(k0Var);
        return true;
    }

    public final int j(MediaRouter.RouteInfo routeInfo) {
        ArrayList arrayList = this.f2783q;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (((k0) arrayList.get(i8)).f2763a == routeInfo) {
                return i8;
            }
        }
        return -1;
    }

    public final int k(String str) {
        ArrayList arrayList = this.f2783q;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (((k0) arrayList.get(i8)).f2764b.equals(str)) {
                return i8;
            }
        }
        return -1;
    }

    public final int l(F f8) {
        ArrayList arrayList = this.f2784r;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (((l0) arrayList.get(i8)).f2771a == f8) {
                return i8;
            }
        }
        return -1;
    }

    public abstract Object m();

    public void o(k0 k0Var, C0172g c0172g) {
        int supportedTypes = k0Var.f2763a.getSupportedTypes();
        if ((supportedTypes & 1) != 0) {
            c0172g.a(f2773s);
        }
        if ((supportedTypes & 2) != 0) {
            c0172g.a(f2774t);
        }
        MediaRouter.RouteInfo routeInfo = k0Var.f2763a;
        c0172g.f2741a.putInt("playbackType", routeInfo.getPlaybackType());
        int playbackStream = routeInfo.getPlaybackStream();
        Bundle bundle = c0172g.f2741a;
        bundle.putInt("playbackStream", playbackStream);
        bundle.putInt("volume", routeInfo.getVolume());
        bundle.putInt("volumeMax", routeInfo.getVolumeMax());
        bundle.putInt("volumeHandling", routeInfo.getVolumeHandling());
    }

    public final void p(F f8) {
        AbstractC0179n abstractC0179nA = f8.a();
        MediaRouter mediaRouter = this.f2776j;
        if (abstractC0179nA == this) {
            int iJ = j(mediaRouter.getSelectedRoute(8388611));
            if (iJ < 0 || !((k0) this.f2783q.get(iJ)).f2764b.equals(f8.f2628b)) {
                return;
            }
            H.b();
            H.c().k(f8, 3);
            return;
        }
        MediaRouter.UserRouteInfo userRouteInfoCreateUserRoute = mediaRouter.createUserRoute(this.f2779m);
        l0 l0Var = new l0(f8, userRouteInfoCreateUserRoute);
        userRouteInfoCreateUserRoute.setTag(l0Var);
        userRouteInfoCreateUserRoute.setVolumeCallback(this.f2778l);
        w(l0Var);
        this.f2784r.add(l0Var);
        mediaRouter.addUserRoute(userRouteInfoCreateUserRoute);
    }

    public final void q(F f8) {
        int iL;
        if (f8.a() == this || (iL = l(f8)) < 0) {
            return;
        }
        l0 l0Var = (l0) this.f2784r.remove(iL);
        l0Var.f2772b.setTag(null);
        MediaRouter.UserRouteInfo userRouteInfo = l0Var.f2772b;
        userRouteInfo.setVolumeCallback(null);
        try {
            this.f2776j.removeUserRoute(userRouteInfo);
        } catch (IllegalArgumentException e8) {
            Log.w("MediaRouterJellybean", "Failed to remove user route", e8);
        }
    }

    public final void r(F f8) {
        f8.getClass();
        H.b();
        if (H.c().f() == f8) {
            if (f8.a() != this) {
                int iL = l(f8);
                if (iL >= 0) {
                    t(((l0) this.f2784r.get(iL)).f2772b);
                    return;
                }
                return;
            }
            int iK = k(f8.f2628b);
            if (iK >= 0) {
                t(((k0) this.f2783q.get(iK)).f2763a);
            }
        }
    }

    public final void s() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f2783q;
        int size = arrayList2.size();
        for (int i8 = 0; i8 < size; i8++) {
            C0173h c0173h = ((k0) arrayList2.get(i8)).f2765c;
            if (c0173h == null) {
                throw new IllegalArgumentException("route must not be null");
            }
            if (arrayList.contains(c0173h)) {
                throw new IllegalArgumentException("route descriptor already added");
            }
            arrayList.add(c0173h);
        }
        g(new C0180o(arrayList, false));
    }

    public abstract void t(MediaRouter.RouteInfo routeInfo);

    public abstract void u();

    public final void v() {
        u();
        MediaRouter mediaRouter = this.f2776j;
        int routeCount = mediaRouter.getRouteCount();
        ArrayList arrayList = new ArrayList(routeCount);
        boolean zI = false;
        for (int i8 = 0; i8 < routeCount; i8++) {
            arrayList.add(mediaRouter.getRouteAt(i8));
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            zI |= i((MediaRouter.RouteInfo) it.next());
        }
        if (zI) {
            s();
        }
    }

    public void w(l0 l0Var) {
        MediaRouter.UserRouteInfo userRouteInfo = l0Var.f2772b;
        F f8 = l0Var.f2771a;
        userRouteInfo.setName(f8.f2630d);
        int i8 = f8.f2637k;
        MediaRouter.UserRouteInfo userRouteInfo2 = l0Var.f2772b;
        userRouteInfo2.setPlaybackType(i8);
        userRouteInfo2.setPlaybackStream(f8.f2638l);
        userRouteInfo2.setVolume(f8.f2641o);
        userRouteInfo2.setVolumeMax(f8.f2642p);
        userRouteInfo2.setVolumeHandling(f8.b());
    }
}
