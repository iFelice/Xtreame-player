package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.os.Handler;
import android.provider.Settings;
import android.view.View;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2267xx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p086l.s1 f21956a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Px f21959d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f21962g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lx f21957b = new Lx();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f21960e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f21961f = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C1077ay f21958c = new C1077ay(null);

    public C2267xx(E3.a aVar, p086l.s1 s1Var, String str) {
        this.f21956a = s1Var;
        this.f21962g = str;
        EnumC2215wx enumC2215wx = (EnumC2215wx) s1Var.f26380g;
        if (enumC2215wx == EnumC2215wx.HTML || enumC2215wx == EnumC2215wx.JAVASCRIPT) {
            WebView webView = (WebView) s1Var.f26375b;
            Qx qx = new Qx(str);
            if (!webView.getSettings().getJavaScriptEnabled()) {
                webView.getSettings().setJavaScriptEnabled(true);
            }
            qx.f15521b = new C1077ay(webView);
            this.f21959d = qx;
        } else {
            this.f21959d = new Rx(str, Collections.unmodifiableMap((Map) s1Var.f26377d));
        }
        this.f21959d.f();
        Hx.f13820c.f13821a.add(this);
        Px px = this.f21959d;
        WebView webViewA = px.a();
        JSONObject jSONObject = new JSONObject();
        Sx.c(jSONObject, "impressionOwner", (Cx) aVar.f2826H);
        Sx.c(jSONObject, "mediaEventsOwner", (Cx) aVar.f2827I);
        Sx.c(jSONObject, "creativeType", (EnumC2319yx) aVar.f2828J);
        Sx.c(jSONObject, "impressionType", (Ax) aVar.f2829K);
        Sx.c(jSONObject, "isolateVerificationScripts", Boolean.valueOf(aVar.f2825G));
        Cw.L0(webViewA, "init", jSONObject, px.f15520a);
    }

    public final void a() {
        if (this.f21961f) {
            return;
        }
        this.f21958c.clear();
        if (!this.f21961f) {
            this.f21957b.f14591a.clear();
        }
        this.f21961f = true;
        Px px = this.f21959d;
        Cw.L0(px.a(), "finishSession", px.f15520a);
        Hx hx = Hx.f13820c;
        ArrayList arrayList = hx.f13821a;
        ArrayList arrayList2 = hx.f13822b;
        boolean z7 = arrayList2.size() > 0;
        arrayList.remove(this);
        arrayList2.remove(this);
        if (z7 && arrayList2.size() <= 0) {
            Nx nxA = Nx.a();
            nxA.getClass();
            Vx vx = Vx.f17129g;
            vx.getClass();
            Handler handler = Vx.f17131i;
            if (handler != null) {
                handler.removeCallbacks(Vx.f17133k);
                Vx.f17131i = null;
            }
            vx.f17134a.clear();
            Vx.f17130h.post(new RunnableC1026Zn(vx, 15));
            Gx gx = Gx.f13668J;
            gx.f14250G = false;
            gx.f14252I = null;
            Dx dx = nxA.f15107b;
            dx.f12906a.getContentResolver().unregisterContentObserver(dx);
        }
        this.f21959d.b();
        this.f21959d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(View view) {
        if (this.f21961f || ((View) this.f21958c.get()) == view) {
            return;
        }
        this.f21958c = new C1077ay(view);
        Px px = this.f21959d;
        px.getClass();
        px.f15522c = System.nanoTime();
        px.f15523d = 1;
        Collection<C2267xx> collectionUnmodifiableCollection = Collections.unmodifiableCollection(Hx.f13820c.f13821a);
        if (collectionUnmodifiableCollection == null || collectionUnmodifiableCollection.isEmpty()) {
            return;
        }
        for (C2267xx c2267xx : collectionUnmodifiableCollection) {
            if (c2267xx != this && ((View) c2267xx.f21958c.get()) == view) {
                c2267xx.f21958c.clear();
            }
        }
    }

    public final void c() {
        if (this.f21960e) {
            return;
        }
        this.f21960e = true;
        ArrayList arrayList = Hx.f13820c.f13822b;
        boolean z7 = arrayList.size() > 0;
        arrayList.add(this);
        if (!z7) {
            Nx nxA = Nx.a();
            nxA.getClass();
            Gx gx = Gx.f13668J;
            gx.f14252I = nxA;
            gx.f14250G = true;
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            boolean z8 = runningAppProcessInfo.importance == 100 || gx.b();
            gx.f14251H = z8;
            gx.a(z8);
            Vx.f17129g.getClass();
            Vx.b();
            Dx dx = nxA.f15107b;
            dx.f12908c = dx.a();
            dx.b();
            dx.f12906a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, dx);
        }
        float f8 = Nx.a().f15106a;
        Px px = this.f21959d;
        Cw.L0(px.a(), "setDeviceVolume", Float.valueOf(f8), px.f15520a);
        Px px2 = this.f21959d;
        Date date = Fx.f13442e.f13443a;
        px2.c(date != null ? (Date) date.clone() : null);
        this.f21959d.d(this, this.f21956a);
    }
}
