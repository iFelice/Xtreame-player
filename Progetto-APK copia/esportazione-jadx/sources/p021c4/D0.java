package p021c4;

import Z3.C0433o;
import android.os.Bundle;
import com.bumptech.glide.c;
import java.util.Iterator;
import java.util.TreeSet;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class D0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10707G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Bundle f10708H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ K0 f10709I;

    public /* synthetic */ D0(K0 k8, Bundle bundle, int i8) {
        this.f10707G = i8;
        this.f10709I = k8;
        this.f10708H = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle;
        int i8 = this.f10707G;
        Bundle bundle2 = this.f10708H;
        K0 k8 = this.f10709I;
        switch (i8) {
            case 0:
                if (bundle2.isEmpty()) {
                    bundle = bundle2;
                } else {
                    C0597l0 c0597l0 = (C0597l0) k8.f10616G;
                    Z z7 = c0597l0.f11257N;
                    C0597l0.i(z7);
                    bundle = new Bundle(z7.f11109f0.u());
                    Iterator<String> it = bundle2.keySet().iterator();
                    while (true) {
                        boolean zHasNext = it.hasNext();
                        C0433o c0433o = k8.f10929c0;
                        int i9 = 0;
                        C0584h c0584h = c0597l0.f11256M;
                        T t7 = c0597l0.f11258O;
                        I1 i10 = c0597l0.f11261R;
                        if (zHasNext) {
                            String next = it.next();
                            Object obj = bundle2.get(next);
                            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                                C0597l0.i(i10);
                                i10.getClass();
                                if (I1.e0(obj)) {
                                    I1.G(c0433o, null, 27, null, null, 0);
                                }
                                C0597l0.k(t7);
                                t7.f11044Q.c(next, obj, "Invalid default event parameter type. Name, value");
                            } else if (I1.h0(next)) {
                                C0597l0.k(t7);
                                t7.f11044Q.b(next, "Invalid default event parameter name. Name");
                            } else if (obj == null) {
                                bundle.remove(next);
                            } else {
                                C0597l0.i(i10);
                                if (i10.Z("param", next, c0584h.s(null, false), obj)) {
                                    i10.H(bundle, next, obj);
                                }
                            }
                        } else {
                            C0597l0.i(i10);
                            I1 i11 = ((C0597l0) c0584h.f10616G).f11261R;
                            C0597l0.i(i11);
                            int i12 = i11.g0(201500000) ? 100 : 25;
                            if (bundle.size() > i12) {
                                for (String str : new TreeSet(bundle.keySet())) {
                                    i9++;
                                    if (i9 > i12) {
                                        bundle.remove(str);
                                    }
                                }
                                C0597l0.i(i10);
                                i10.getClass();
                                I1.G(c0433o, null, 26, null, null, 0);
                                C0597l0.k(t7);
                                t7.f11044Q.a("Too many default event parameters set. Discarding beyond event parameter limit");
                            }
                        }
                    }
                }
                C0597l0 c0597l1 = (C0597l0) k8.f10616G;
                Z z8 = c0597l1.f11257N;
                C0597l0.i(z8);
                z8.f11109f0.w(bundle);
                if (bundle2.isEmpty()) {
                    if (!c0597l1.f11256M.B(null, E.f10778e1)) {
                    }
                }
                ((C0597l0) k8.f10616G).r().w(bundle);
                break;
            case 1:
                k8.m();
                k8.n();
                c.h(bundle2);
                String string = bundle2.getString("name");
                String string2 = bundle2.getString("origin");
                c.e(string);
                c.e(string2);
                c.h(bundle2.get("value"));
                if (!((C0597l0) k8.f10616G).f()) {
                    T t8 = ((C0597l0) k8.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11047T.a("Conditional property not set since app measurement is disabled");
                } else {
                    F1 f8 = new F1(bundle2.getLong("triggered_timestamp"), bundle2.get("value"), string, string2);
                    try {
                        I1 i13 = ((C0597l0) k8.f10616G).f11261R;
                        C0597l0.i(i13);
                        bundle2.getString("app_id");
                        C0613u c0613uR = i13.r(bundle2.getString("triggered_event_name"), bundle2.getBundle("triggered_event_params"), string2, 0L, true);
                        bundle2.getString("app_id");
                        C0613u c0613uR2 = i13.r(bundle2.getString("timed_out_event_name"), bundle2.getBundle("timed_out_event_params"), string2, 0L, true);
                        bundle2.getString("app_id");
                        ((C0597l0) k8.f10616G).r().u(new C0578f(bundle2.getString("app_id"), string2, f8, bundle2.getLong("creation_timestamp"), false, bundle2.getString("trigger_event_name"), c0613uR2, bundle2.getLong("trigger_timeout"), c0613uR, bundle2.getLong("time_to_live"), i13.r(bundle2.getString("expired_event_name"), bundle2.getBundle("expired_event_params"), string2, 0L, true)));
                    } catch (IllegalArgumentException unused) {
                        return;
                    }
                }
                break;
            default:
                k8.m();
                k8.n();
                c.h(bundle2);
                String string3 = bundle2.getString("name");
                c.e(string3);
                if (!((C0597l0) k8.f10616G).f()) {
                    T t9 = ((C0597l0) k8.f10616G).f11258O;
                    C0597l0.k(t9);
                    t9.f11047T.a("Conditional property not cleared since app measurement is disabled");
                } else {
                    F1 f9 = new F1(0L, null, string3, HttpUrl.FRAGMENT_ENCODE_SET);
                    try {
                        I1 i14 = ((C0597l0) k8.f10616G).f11261R;
                        C0597l0.i(i14);
                        bundle2.getString("app_id");
                        ((C0597l0) k8.f10616G).r().u(new C0578f(bundle2.getString("app_id"), HttpUrl.FRAGMENT_ENCODE_SET, f9, bundle2.getLong("creation_timestamp"), bundle2.getBoolean("active"), bundle2.getString("trigger_event_name"), null, bundle2.getLong("trigger_timeout"), null, bundle2.getLong("time_to_live"), i14.r(bundle2.getString("expired_event_name"), bundle2.getBundle("expired_event_params"), HttpUrl.FRAGMENT_ENCODE_SET, bundle2.getLong("creation_timestamp"), true)));
                    } catch (IllegalArgumentException unused2) {
                        return;
                    }
                }
                break;
        }
    }
}
