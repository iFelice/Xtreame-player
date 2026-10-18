package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1894qn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1281ew f20615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1842pn f20616b;

    public C1894qn(C1281ew c1281ew, C1842pn c1842pn) {
        this.f20615a = c1281ew;
        this.f20616b = c1842pn;
    }

    public final InterfaceC0771Ib a(String str) throws RemoteException {
        InterfaceC1157cb interfaceC1157cb = (InterfaceC1157cb) this.f20615a.f18625c.get();
        if (interfaceC1157cb == null) {
            p120p3.h.g("Unexpected call to adapter creator.");
            throw new RemoteException();
        }
        InterfaceC0771Ib interfaceC0771IbI = interfaceC1157cb.i(str);
        C1842pn c1842pn = this.f20616b;
        synchronized (c1842pn) {
            if (!c1842pn.f20485a.containsKey(str)) {
                try {
                    c1842pn.f20485a.put(str, new C1790on(str, interfaceC0771IbI.zzf(), interfaceC0771IbI.zzg(), true));
                } catch (Throwable unused) {
                }
            }
        }
        return interfaceC0771IbI;
    }

    public final C1385gw b(JSONObject jSONObject, String str) throws C1075aw {
        InterfaceC1260eb interfaceC1260ebM;
        C1842pn c1842pn = this.f20616b;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                interfaceC1260ebM = new BinderC2037tb(new AdMobAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                interfaceC1260ebM = new BinderC2037tb(new zzbsd());
            } else {
                InterfaceC1157cb interfaceC1157cb = (InterfaceC1157cb) this.f20615a.f18625c.get();
                if (interfaceC1157cb == null) {
                    p120p3.h.g("Unexpected call to adapter creator.");
                    throw new RemoteException();
                }
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        if (interfaceC1157cb.o(string)) {
                            interfaceC1260ebM = interfaceC1157cb.m("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
                        } else {
                            interfaceC1260ebM = interfaceC1157cb.s(string) ? interfaceC1157cb.m(string) : interfaceC1157cb.m("com.google.ads.mediation.customevent.CustomEventAdapter");
                        }
                    } catch (JSONException e8) {
                        p120p3.h.e("Invalid custom event.", e8);
                        interfaceC1260ebM = interfaceC1157cb.m(str);
                    }
                } else {
                    interfaceC1260ebM = interfaceC1157cb.m(str);
                }
            }
            C1385gw c1385gw = new C1385gw(interfaceC1260ebM);
            c1842pn.b(str, c1385gw);
            return c1385gw;
        } catch (Throwable th) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.E8)).booleanValue()) {
                c1842pn.b(str, null);
            }
            throw new C1075aw(th);
        }
    }
}
