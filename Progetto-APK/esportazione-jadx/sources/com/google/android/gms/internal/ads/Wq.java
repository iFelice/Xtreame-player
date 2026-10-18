package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Wq implements InterfaceC1948rq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1894qn f17329a;

    public Wq(C1894qn c1894qn) {
        this.f17329a = c1894qn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1948rq
    public final C2000sq a(JSONObject jSONObject, String str) {
        return new C2000sq(this.f17329a.b(jSONObject, str), new Nq(), str);
    }
}
