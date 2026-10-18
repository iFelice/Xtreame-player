package com.google.android.gms.internal.cast;

import E1.AbstractC0182q;
import E1.C0181p;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.atv_ads_framework.AbstractC2406q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2474n extends AbstractC0182q {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final H3.b f22756f = new H3.b("MRDiscoveryCallback", null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p096m2.c f22761e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f22759c = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedHashSet f22760d = new LinkedHashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f22758b = Collections.synchronizedSet(new LinkedHashSet());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2470m f22757a = new C2470m(this);

    public C2474n(Context context) {
        this.f22761e = new p096m2.c(context, 18);
    }

    @Override // E1.AbstractC0182q
    public final void a(E1.F f8) {
        f22756f.b("MediaRouterDiscoveryCallback.onRouteAdded.", new Object[0]);
        h(f8, true);
    }

    @Override // E1.AbstractC0182q
    public final void b(E1.F f8) {
        f22756f.b("MediaRouterDiscoveryCallback.onRouteChanged.", new Object[0]);
        h(f8, true);
    }

    @Override // E1.AbstractC0182q
    public final void c(E1.F f8) {
        f22756f.b("MediaRouterDiscoveryCallback.onRouteRemoved.", new Object[0]);
        h(f8, false);
    }

    public final void f() {
        H3.b bVar = f22756f;
        bVar.b(A0.O.y("Starting RouteDiscovery with ", this.f22760d.size(), " IDs"), new Object[0]);
        bVar.b("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.f22759c.keySet())), new Object[0]);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            g();
        } else {
            new X3.d(Looper.getMainLooper(), 1).post(new RunnableC2462k(this, 1));
        }
    }

    public final void g() {
        p096m2.c cVar = this.f22761e;
        if (((E1.H) cVar.f27211I) == null) {
            cVar.f27211I = E1.H.d((Context) cVar.f27210H);
        }
        E1.H h8 = (E1.H) cVar.f27211I;
        if (h8 != null) {
            h8.e(this);
        }
        synchronized (this.f22760d) {
            try {
                for (String str : this.f22760d) {
                    String strA = U4.a.a(str);
                    if (strA == null) {
                        throw new IllegalArgumentException("category must not be null");
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    if (!arrayList.contains(strA)) {
                        arrayList.add(strA);
                    }
                    Bundle bundle = new Bundle();
                    bundle.putStringArrayList("controlCategories", arrayList);
                    C0181p c0181p = new C0181p(arrayList, bundle);
                    if (((C2466l) this.f22759c.get(str)) == null) {
                        this.f22759c.put(str, new C2466l(c0181p));
                    }
                    f22756f.b("Adding mediaRouter callback for control category " + U4.a.a(str), new Object[0]);
                    p096m2.c cVar2 = this.f22761e;
                    if (((E1.H) cVar2.f27211I) == null) {
                        cVar2.f27211I = E1.H.d((Context) cVar2.f27210H);
                    }
                    ((E1.H) cVar2.f27211I).a(c0181p, this, 4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        f22756f.b("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.f22759c.keySet())), new Object[0]);
    }

    public final void h(E1.F f8, boolean z7) {
        boolean z8;
        Set setO;
        boolean zRemove;
        H3.b bVar = f22756f;
        bVar.b("MediaRouterDiscoveryCallback.updateRouteToAppIds (add=%b) route %s", Boolean.valueOf(z7), f8);
        synchronized (this.f22759c) {
            try {
                bVar.b("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.f22759c.keySet())), new Object[0]);
                z8 = false;
                for (Map.Entry entry : this.f22759c.entrySet()) {
                    String str = (String) entry.getKey();
                    C2466l c2466l = (C2466l) entry.getValue();
                    if (f8.e(c2466l.f22754b)) {
                        if (z7) {
                            H3.b bVar2 = f22756f;
                            bVar2.b("Adding/updating route for appId " + str, new Object[0]);
                            zRemove = c2466l.f22753a.add(f8);
                            if (!zRemove) {
                                Log.w(bVar2.f3679a, bVar2.c("Route " + String.valueOf(f8) + " already exists for appId " + str, new Object[0]));
                            }
                        } else {
                            H3.b bVar3 = f22756f;
                            bVar3.b("Removing route for appId " + str, new Object[0]);
                            zRemove = c2466l.f22753a.remove(f8);
                            if (!zRemove) {
                                Log.w(bVar3.f3679a, bVar3.c("Route " + String.valueOf(f8) + " already removed from appId " + str, new Object[0]));
                            }
                        }
                        z8 = zRemove;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z8) {
            f22756f.b("Invoking callback.onRouteUpdated.", new Object[0]);
            synchronized (this.f22758b) {
                try {
                    HashMap map = new HashMap();
                    synchronized (this.f22759c) {
                        try {
                            for (String str2 : this.f22759c.keySet()) {
                                C2466l c2466l2 = (C2466l) this.f22759c.get(Cw.n0(str2));
                                if (c2466l2 == null) {
                                    int i8 = I.f22471I;
                                    setO = S.f22529P;
                                } else {
                                    LinkedHashSet linkedHashSet = c2466l2.f22753a;
                                    int i9 = I.f22471I;
                                    Object[] array = linkedHashSet.toArray();
                                    setO = I.o(array.length, array);
                                }
                                if (!setO.isEmpty()) {
                                    map.put(str2, setO);
                                }
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    AbstractC2406q.d(map.entrySet());
                    Iterator it = this.f22758b.iterator();
                    if (it.hasNext()) {
                        A0.O.I(it.next());
                        throw null;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }
}
