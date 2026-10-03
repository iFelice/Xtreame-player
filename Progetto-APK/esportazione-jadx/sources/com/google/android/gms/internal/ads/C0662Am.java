package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Am, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0662Am implements G5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12030G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0715Ef f12031H;

    public /* synthetic */ C0662Am(InterfaceC0715Ef interfaceC0715Ef, int i8) {
        this.f12030G = i8;
        this.f12031H = interfaceC0715Ef;
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final void F(F5 f8) {
        int i8 = this.f12030G;
        InterfaceC0715Ef interfaceC0715Ef = this.f12031H;
        switch (i8) {
            case 0:
                AbstractC0990Xf abstractC0990XfZzN = interfaceC0715Ef.zzN();
                Rect rect = f8.f13315d;
                abstractC0990XfZzN.v0(rect.left, rect.top);
                break;
            case 1:
                HashMap map = new HashMap();
                map.put("isVisible", true != f8.f13321j ? "0" : "1");
                interfaceC0715Ef.w("onAdVisibilityChanged", map);
                break;
            default:
                AbstractC0990Xf abstractC0990XfZzN2 = interfaceC0715Ef.zzN();
                Rect rect2 = f8.f13315d;
                abstractC0990XfZzN2.v0(rect2.left, rect2.top);
                break;
        }
    }
}
