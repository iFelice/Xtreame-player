package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.webkit.WebView;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Rx extends Px {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public WebView f16377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Long f16378f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Map f16379g;

    public Rx(String str, Map map) {
        super(str);
        this.f16378f = null;
        this.f16379g = map;
    }

    @Override // com.google.android.gms.internal.ads.Px
    public final void b() {
        super.b();
        new Handler().postDelayed(new RunnableC1170co(this), Math.max(4000 - (this.f16378f == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f16378f.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.f16377e = null;
    }

    @Override // com.google.android.gms.internal.ads.Px
    public final void d(C2267xx c2267xx, p086l.s1 s1Var) {
        JSONObject jSONObject = new JSONObject();
        Map mapUnmodifiableMap = Collections.unmodifiableMap((Map) s1Var.f26377d);
        Iterator it = mapUnmodifiableMap.keySet().iterator();
        if (it.hasNext()) {
            A0.O.I(mapUnmodifiableMap.get((String) it.next()));
            throw null;
        }
        e(c2267xx, s1Var, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.Px
    public final void f() {
        WebView webView = new WebView(Mx.f14832H.f14833G);
        this.f16377e = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f16377e.getSettings().setAllowContentAccess(false);
        this.f16377e.getSettings().setAllowFileAccess(false);
        this.f16377e.setWebViewClient(new p083k3.i(this, 1));
        this.f15521b = new C1077ay(this.f16377e);
        Cw.T1(this.f16377e, null);
        Map map = this.f16379g;
        Iterator it = map.keySet().iterator();
        if (it.hasNext()) {
            A0.O.I(map.get((String) it.next()));
            throw null;
        }
        this.f16378f = Long.valueOf(System.nanoTime());
    }
}
