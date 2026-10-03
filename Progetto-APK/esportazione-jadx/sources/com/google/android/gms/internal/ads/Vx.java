package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Vx {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Vx f17129g = new Vx();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Handler f17130h = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Handler f17131i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final RunnableC2171w4 f17132j = new RunnableC2171w4(3);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final RunnableC2171w4 f17133k = new RunnableC2171w4(4);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f17139f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f17134a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f17135b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Ux f17137d = new Ux(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0871Om f17136c = new C0871Om(19);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0871Om f17138e = new C0871Om(new C2246xc(21));

    public static void b() {
        if (f17131i == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f17131i = handler;
            handler.post(f17132j);
            f17131i.postDelayed(f17133k, 200L);
        }
    }

    public final void a(View view, Ox ox, JSONObject jSONObject, boolean z7) {
        Object obj;
        boolean z8;
        if (U4.a.i(view) == null) {
            Ux ux = this.f17137d;
            int i8 = ((HashSet) ux.f16923f).contains(view) ? 1 : ux.f16922e ? 2 : 3;
            if (i8 == 3) {
                return;
            }
            Xu xu = (Xu) ox;
            JSONObject jSONObjectG = xu.g(view);
            Sx.b(jSONObject, jSONObjectG);
            if (ux.f16918a.size() == 0) {
                obj = null;
            } else {
                obj = (String) ux.f16918a.get(view);
                if (obj != null) {
                    ux.f16918a.remove(view);
                }
            }
            boolean z9 = false;
            if (obj != null) {
                try {
                    jSONObjectG.put("adSessionId", obj);
                } catch (JSONException e8) {
                    p113o3.r.s("Error with setting ad session id", e8);
                }
                Map map = (Map) ux.f16926i;
                if (map.containsKey(view)) {
                    map.put(view, Boolean.TRUE);
                } else {
                    z9 = true;
                }
                try {
                    jSONObjectG.put("hasWindowFocus", Boolean.valueOf(z9));
                } catch (JSONException e9) {
                    p113o3.r.s("Error with setting has window focus", e9);
                }
                ux.f16922e = true;
                return;
            }
            HashMap map2 = ux.f16919b;
            Tx tx = (Tx) map2.get(view);
            if (tx != null) {
                map2.remove(view);
            }
            if (tx != null) {
                Kx kx = tx.f16765a;
                JSONArray jSONArray = new JSONArray();
                ArrayList arrayList = tx.f16766b;
                int size = arrayList.size();
                for (int i9 = 0; i9 < size; i9++) {
                    jSONArray.put((String) arrayList.get(i9));
                }
                try {
                    jSONObjectG.put("isFriendlyObstructionFor", jSONArray);
                    jSONObjectG.put("friendlyObstructionClass", kx.f14437b);
                    jSONObjectG.put("friendlyObstructionPurpose", kx.f14438c);
                    jSONObjectG.put("friendlyObstructionReason", kx.f14439d);
                } catch (JSONException e10) {
                    p113o3.r.s("Error with setting friendly obstruction", e10);
                }
                z8 = true;
            } else {
                z8 = false;
            }
            c(view, xu, jSONObjectG, i8, z7 || z8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(View view, Ox ox, JSONObject jSONObject, int i8, boolean z7) {
        int i9;
        int i10 = 0;
        boolean z8 = i8 == 1;
        Xu xu = (Xu) ox;
        switch (xu.f17528G) {
            case 12:
                ArrayList arrayList = new ArrayList();
                Hx hx = Hx.f13820c;
                if (hx != null) {
                    Collection collectionUnmodifiableCollection = Collections.unmodifiableCollection(hx.f13822b);
                    int size = collectionUnmodifiableCollection.size();
                    IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
                    Iterator it = collectionUnmodifiableCollection.iterator();
                    while (it.hasNext()) {
                        View view2 = (View) ((C2267xx) it.next()).f21958c.get();
                        if (view2 != null && view2.isAttachedToWindow() && view2.isShown()) {
                            View view3 = view2;
                            while (true) {
                                if (view3 == null) {
                                    View rootView = view2.getRootView();
                                    if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                        identityHashMap.put(rootView, rootView);
                                        float z9 = rootView.getZ();
                                        int size2 = arrayList.size();
                                        while (size2 > 0) {
                                            int i11 = size2 - 1;
                                            if (((View) arrayList.get(i11)).getZ() <= z9) {
                                                arrayList.add(size2, rootView);
                                            }
                                            size2 = i11;
                                            break;
                                        }
                                        arrayList.add(size2, rootView);
                                    }
                                }
                                if (view3.getAlpha() == 0.0f) {
                                }
                                Object parent = view3.getParent();
                                view3 = parent instanceof View ? (View) parent : null;
                                break;
                                break;
                            }
                        }
                    }
                }
                int size3 = arrayList.size();
                while (i10 < size3) {
                    a((View) arrayList.get(i10), (Ox) xu.f17529H, jSONObject, z7);
                    i10++;
                }
                break;
            default:
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    if (z8) {
                        HashMap map = new HashMap();
                        for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                            View childAt = viewGroup.getChildAt(i12);
                            ArrayList arrayList2 = (ArrayList) map.get(Float.valueOf(childAt.getZ()));
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                                map.put(Float.valueOf(childAt.getZ()), arrayList2);
                            }
                            arrayList2.add(childAt);
                        }
                        ArrayList arrayList3 = new ArrayList(map.keySet());
                        Collections.sort(arrayList3);
                        int size4 = arrayList3.size();
                        int i13 = 0;
                        while (i13 < size4) {
                            ArrayList arrayList4 = (ArrayList) map.get((Float) arrayList3.get(i13));
                            int size5 = arrayList4.size();
                            int i14 = 0;
                            while (true) {
                                i9 = i13 + 1;
                                if (i14 < size5) {
                                    a((View) arrayList4.get(i14), xu, jSONObject, z7);
                                    i14++;
                                }
                            }
                            i13 = i9;
                        }
                    } else {
                        while (i10 < viewGroup.getChildCount()) {
                            a(viewGroup.getChildAt(i10), xu, jSONObject, z7);
                            i10++;
                        }
                    }
                    break;
                }
                break;
        }
    }
}
