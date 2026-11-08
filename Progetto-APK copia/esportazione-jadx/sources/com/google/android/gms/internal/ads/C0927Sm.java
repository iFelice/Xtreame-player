package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Sm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0927Sm implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16518G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f16519H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f16520I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f16521J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f16522K;

    public /* synthetic */ C0927Sm(InterfaceC0869Ok interfaceC0869Ok, C1784oh c1784oh, C1488ix c1488ix, C1172cq c1172cq) {
        this.f16519H = interfaceC0869Ok;
        this.f16520I = c1784oh;
        this.f16521J = c1488ix;
        this.f16522K = c1172cq;
    }

    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        int i8 = this.f16518G;
        Object obj2 = this.f16520I;
        Object obj3 = this.f16521J;
        Object obj4 = this.f16522K;
        Object obj5 = this.f16519H;
        switch (i8) {
            case 0:
                Object obj6 = ((WeakReference) obj5).get();
                if (obj6 != null) {
                    ((N9) obj3).f(obj6, map);
                } else {
                    ((C0941Tm) obj4).d((String) obj2, this);
                }
                break;
            default:
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                M9.b(map, (InterfaceC0869Ok) obj5);
                String str = (String) map.get("u");
                if (str != null) {
                    C1784oh c1784oh = (C1784oh) obj2;
                    Cw.h2(M9.a(interfaceC0715Ef, str), new C2246xc(interfaceC0715Ef, c1784oh, (C1488ix) obj3, (C1172cq) obj4, 20), AbstractC1988se.f20906a);
                } else {
                    p120p3.h.g("URL missing from click GMSG.");
                }
                break;
        }
    }

    public /* synthetic */ C0927Sm(C0941Tm c0941Tm, WeakReference weakReference, String str, N9 n9) {
        this.f16522K = c0941Tm;
        this.f16519H = weakReference;
        this.f16520I = str;
        this.f16521J = n9;
    }
}
