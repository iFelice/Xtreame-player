package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Wl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0982Wl implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0941Tm f17312G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final P3.a f17313H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C2332z9 f17314I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C0968Vl f17315J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f17316K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Long f17317L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public WeakReference f17318M;

    public ViewOnClickListenerC0982Wl(C0941Tm c0941Tm, P3.a aVar) {
        this.f17312G = c0941Tm;
        this.f17313H = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View view2;
        WeakReference weakReference = this.f17318M;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.f17316K != null && this.f17317L != null) {
            HashMap map = new HashMap();
            map.put("id", this.f17316K);
            ((P3.b) this.f17313H).getClass();
            map.put("time_interval", String.valueOf(System.currentTimeMillis() - this.f17317L.longValue()));
            map.put("messageType", "onePointFiveClick");
            this.f17312G.b(map);
        }
        this.f17316K = null;
        this.f17317L = null;
        WeakReference weakReference2 = this.f17318M;
        if (weakReference2 == null || (view2 = (View) weakReference2.get()) == null) {
            return;
        }
        view2.setClickable(false);
        view2.setOnClickListener(null);
        this.f17318M = null;
    }
}
