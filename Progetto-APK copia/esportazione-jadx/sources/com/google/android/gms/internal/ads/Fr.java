package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Fr implements InterfaceC1948rq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Wr f13428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1894qn f13429b;

    public Fr(Wr wr, C1894qn c1894qn) {
        this.f13428a = wr;
        this.f13429b = c1894qn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1948rq
    public final C2000sq a(JSONObject jSONObject, String str) {
        InterfaceC0771Ib interfaceC0771IbA;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15963w1)).booleanValue()) {
            try {
                interfaceC0771IbA = this.f13429b.a(str);
            } catch (RemoteException e8) {
                p120p3.h.e("Coundn't create RTB adapter: ", e8);
            }
        } else {
            ConcurrentHashMap concurrentHashMap = this.f13428a.f17330a;
            interfaceC0771IbA = concurrentHashMap.containsKey(str) ? (InterfaceC0771Ib) concurrentHashMap.get(str) : null;
        }
        if (interfaceC0771IbA == null) {
            return null;
        }
        return new C2000sq(interfaceC0771IbA, new Nq(), str);
    }
}
