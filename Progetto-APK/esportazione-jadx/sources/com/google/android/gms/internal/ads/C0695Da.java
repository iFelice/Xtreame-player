package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Da, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0695Da implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12831G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f12832H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f12833I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f12834J;

    public C0695Da(C0785Ja c0785Ja, C2244xa c2244xa, O1.J j8) {
        this.f12832H = c2244xa;
        this.f12833I = j8;
        this.f12834J = c0785Ja;
    }

    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        switch (this.f12831G) {
            case 0:
                p113o3.I.k("loadJavascriptEngine > /requestReload handler: Trying to acquire lock");
                synchronized (((C0785Ja) this.f12834J).f14156a) {
                    try {
                        p113o3.I.k("loadJavascriptEngine > /requestReload handler: Lock acquired");
                        p120p3.h.f("JS Engine is requesting an update");
                        if (((C0785Ja) this.f12834J).f14162g == 0) {
                            p120p3.h.f("Starting reload.");
                            Object obj2 = this.f12834J;
                            ((C0785Ja) obj2).f14162g = 2;
                            ((C0785Ja) obj2).b();
                        }
                        ((C2244xa) this.f12832H).z("/requestReload", (N9) ((O1.J) this.f12833I).zza());
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                p113o3.I.k("loadJavascriptEngine > /requestReload handler: Lock released");
                return;
            default:
                String str = (String) map.get("asset");
                try {
                    ((InterfaceC1709n9) this.f12832H).Q1((InterfaceC1295f9) ((EJ) this.f12834J).zzb(), str);
                    return;
                } catch (RemoteException e8) {
                    p120p3.h.h("Failed to call onCustomClick for asset " + str + ".", e8);
                    return;
                }
        }
    }

    public C0695Da(C0856Nl c0856Nl, C0781Il c0781Il, C0941Tm c0941Tm, EJ ej) {
        this.f12832H = (InterfaceC1709n9) c0856Nl.f15081g.get(c0781Il.a());
        this.f12833I = c0941Tm;
        this.f12834J = ej;
    }
}
