package com.google.android.gms.internal.ads;

import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Ar implements InterfaceC1948rq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f12048a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1894qn f12049b;

    public Ar(C1894qn c1894qn) {
        this.f12049b = c1894qn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1948rq
    public final C2000sq a(JSONObject jSONObject, String str) {
        C2000sq c2000sq;
        synchronized (this) {
            try {
                c2000sq = (C2000sq) this.f12048a.get(str);
                if (c2000sq == null) {
                    c2000sq = new C2000sq(this.f12049b.b(jSONObject, str), new Oq(), str);
                    this.f12048a.put(str, c2000sq);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2000sq;
    }
}
