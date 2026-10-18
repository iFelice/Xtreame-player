package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.w4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2171w4 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21639G;

    public /* synthetic */ RunnableC2171w4(int i8) {
        this.f21639G = i8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        Boolean bool;
        String str;
        switch (this.f21639G) {
            case 0:
                try {
                    AbstractC2223x4.f21831b = MessageDigest.getInstance("MD5");
                    countDownLatch = AbstractC2223x4.f21834e;
                } catch (NoSuchAlgorithmException unused) {
                    countDownLatch = AbstractC2223x4.f21834e;
                } catch (Throwable th) {
                    AbstractC2223x4.f21834e.countDown();
                    throw th;
                }
                countDownLatch.countDown();
                return;
            case 1:
                S3.e.w("Pinged SB successfully.");
                return;
            case 2:
                Looper.myLooper().quit();
                return;
            case 3:
                Vx vx = Vx.f17129g;
                vx.getClass();
                vx.f17135b.clear();
                for (C2267xx c2267xx : Collections.unmodifiableCollection(Hx.f13820c.f13822b)) {
                }
                vx.f17139f = System.nanoTime();
                Ux ux = vx.f17137d;
                ux.getClass();
                Hx hx = Hx.f13820c;
                HashMap map = ux.f16919b;
                HashMap map2 = ux.f16920c;
                HashMap map3 = ux.f16921d;
                Object obj = ux.f16924g;
                Serializable serializable = ux.f16923f;
                if (hx != null) {
                    for (C2267xx c2267xx2 : Collections.unmodifiableCollection(hx.f13822b)) {
                        View view = (View) c2267xx2.f21958c.get();
                        if (c2267xx2.f21960e && !c2267xx2.f21961f) {
                            String str2 = c2267xx2.f21962g;
                            if (view != null) {
                                if (view.isAttachedToWindow()) {
                                    boolean zHasWindowFocus = view.hasWindowFocus();
                                    Object obj2 = ux.f16926i;
                                    if (zHasWindowFocus) {
                                        ((Map) obj2).remove(view);
                                        bool = Boolean.FALSE;
                                    } else {
                                        Map map4 = (Map) obj2;
                                        if (map4.containsKey(view)) {
                                            bool = (Boolean) map4.get(view);
                                        } else {
                                            bool = Boolean.FALSE;
                                            map4.put(view, bool);
                                        }
                                    }
                                    if (bool.booleanValue()) {
                                        str = "noWindowFocus";
                                    } else {
                                        HashSet hashSet = new HashSet();
                                        View view2 = view;
                                        while (true) {
                                            if (view2 == null) {
                                                ((HashSet) serializable).addAll(hashSet);
                                                str = null;
                                            } else {
                                                String strI = U4.a.i(view2);
                                                if (strI != null) {
                                                    str = strI;
                                                } else {
                                                    hashSet.add(view2);
                                                    Object parent = view2.getParent();
                                                    view2 = parent instanceof View ? (View) parent : null;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    str = "notAttached";
                                }
                                if (str == null) {
                                    ((HashSet) obj).add(str2);
                                    ux.f16918a.put(view, str2);
                                    for (Kx kx : c2267xx2.f21957b.f14591a) {
                                        View view3 = (View) kx.f14436a.get();
                                        if (view3 != null) {
                                            Tx tx = (Tx) map.get(view3);
                                            if (tx != null) {
                                                tx.f16766b.add(str2);
                                            } else {
                                                map.put(view3, new Tx(kx, str2));
                                            }
                                        }
                                    }
                                } else if (str != "noWindowFocus") {
                                    ((HashSet) ux.f16925h).add(str2);
                                    map2.put(str2, view);
                                    map3.put(str2, str);
                                }
                            } else {
                                ((HashSet) ux.f16925h).add(str2);
                                map3.put(str2, "noAdView");
                            }
                        }
                    }
                }
                long jNanoTime = System.nanoTime();
                C0871Om c0871Om = vx.f17136c;
                Xu xu = (Xu) c0871Om.f15197I;
                int size = ((HashSet) ux.f16925h).size();
                C0871Om c0871Om2 = vx.f17138e;
                if (size > 0) {
                    Iterator it = ((HashSet) ux.f16925h).iterator();
                    while (it.hasNext()) {
                        String str3 = (String) it.next();
                        Iterator it2 = it;
                        JSONObject jSONObjectG = xu.g(null);
                        View view4 = (View) map2.get(str3);
                        Xu xu2 = (Xu) c0871Om.f15196H;
                        C0871Om c0871Om3 = c0871Om;
                        String str4 = (String) map3.get(str3);
                        if (str4 != null) {
                            JSONObject jSONObjectG2 = xu2.g(view4);
                            WindowManager windowManager = Sx.f16559a;
                            try {
                                jSONObjectG2.put("adSessionId", str3);
                            } catch (JSONException e8) {
                                p113o3.r.s("Error with setting ad session id", e8);
                            }
                            try {
                                jSONObjectG2.put("notVisibleReason", str4);
                            } catch (JSONException e9) {
                                p113o3.r.s("Error with setting not visible reason", e9);
                            }
                            Sx.b(jSONObjectG, jSONObjectG2);
                        } else {
                            map3 = map3;
                        }
                        Sx.d(jSONObjectG);
                        HashSet hashSet2 = new HashSet();
                        hashSet2.add(str3);
                        c0871Om2.getClass();
                        ((C2246xc) c0871Om2.f15197I).p(new Zx(c0871Om2, hashSet2, jSONObjectG, jNanoTime, 0));
                        it = it2;
                        c0871Om = c0871Om3;
                        map3 = map3;
                        break;
                    }
                }
                HashMap map5 = map3;
                HashSet hashSet3 = (HashSet) obj;
                if (hashSet3.size() > 0) {
                    JSONObject jSONObjectG3 = xu.g(null);
                    vx.c(null, xu, jSONObjectG3, 1, false);
                    Sx.d(jSONObjectG3);
                    c0871Om2.getClass();
                    ((C2246xc) c0871Om2.f15197I).p(new Zx(c0871Om2, hashSet3, jSONObjectG3, jNanoTime, 1));
                } else {
                    c0871Om2.l();
                }
                ux.f16918a.clear();
                map.clear();
                map2.clear();
                ((HashSet) serializable).clear();
                hashSet3.clear();
                ((HashSet) ux.f16925h).clear();
                map5.clear();
                ux.f16922e = false;
                long jNanoTime2 = System.nanoTime() - vx.f17139f;
                ArrayList arrayList = vx.f17134a;
                if (arrayList.size() > 0) {
                    Iterator it3 = arrayList.iterator();
                    if (it3.hasNext()) {
                        A0.O.I(it3.next());
                        TimeUnit.NANOSECONDS.toMillis(jNanoTime2);
                        throw null;
                    }
                    return;
                }
                return;
            case 4:
                Handler handler = Vx.f17131i;
                if (handler != null) {
                    handler.post(Vx.f17132j);
                    Vx.f17131i.postDelayed(Vx.f17133k, 200L);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public /* synthetic */ RunnableC2171w4(int i8, int i9) {
        this.f21639G = i8;
    }
}
