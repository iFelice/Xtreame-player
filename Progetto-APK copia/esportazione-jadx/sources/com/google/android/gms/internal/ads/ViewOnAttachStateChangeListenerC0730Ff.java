package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ff, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnAttachStateChangeListenerC0730Ff implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0758Hd f13383G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AbstractC0990Xf f13384H;

    public ViewOnAttachStateChangeListenerC0730Ff(AbstractC0990Xf abstractC0990Xf, InterfaceC0758Hd interfaceC0758Hd) {
        this.f13383G = interfaceC0758Hd;
        this.f13384H = abstractC0990Xf;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) throws Throwable {
        int i8 = AbstractC0990Xf.f17456l0;
        this.f13384H.F(view, this.f13383G, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
