package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Yl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1010Yl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1428hn f17638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0941Tm f17639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0702Dh f17640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC0826Ll f17641d;

    public C1010Yl(C1428hn c1428hn, C0941Tm c0941Tm, C0702Dh c0702Dh, C1995sl c1995sl) {
        this.f17638a = c1428hn;
        this.f17639b = c0941Tm;
        this.f17640c = c0702Dh;
        this.f17641d = c1995sl;
    }

    public final View a() {
        InterfaceC0715Ef interfaceC0715EfA = this.f17638a.a(p090l3.d1.l(), null, null);
        interfaceC0715EfA.j().setVisibility(8);
        final int i8 = 0;
        interfaceC0715EfA.L0("/sendMessageToSdk", new N9(this) { // from class: com.google.android.gms.internal.ads.Xl

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ C1010Yl f17505H;

            {
                this.f17505H = this;
            }

            @Override // com.google.android.gms.internal.ads.N9
            public final void f(Object obj, Map map) {
                int i9 = i8;
                C1010Yl c1010Yl = this.f17505H;
                switch (i9) {
                    case 0:
                        c1010Yl.f17639b.b(map);
                        break;
                    case 1:
                        c1010Yl.f17641d.zzg();
                        break;
                    case 2:
                        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                        interfaceC0715Ef.zzN().f17463M = new C2218x(27, c1010Yl, map);
                        String str = (String) map.get("overlayHtml");
                        String str2 = (String) map.get("baseUrl");
                        if (!TextUtils.isEmpty(str2)) {
                            interfaceC0715Ef.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                        } else {
                            interfaceC0715Ef.loadData(str, "text/html", "UTF-8");
                        }
                        break;
                    case 3:
                        c1010Yl.getClass();
                        p120p3.h.f("Showing native ads overlay.");
                        ((InterfaceC0715Ef) obj).j().setVisibility(0);
                        c1010Yl.f17640c.f12849L = true;
                        break;
                    default:
                        c1010Yl.getClass();
                        p120p3.h.f("Hiding native ads overlay.");
                        ((InterfaceC0715Ef) obj).j().setVisibility(8);
                        c1010Yl.f17640c.f12849L = false;
                        break;
                }
            }
        });
        final int i9 = 1;
        interfaceC0715EfA.L0("/adMuted", new N9(this) { // from class: com.google.android.gms.internal.ads.Xl

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ C1010Yl f17505H;

            {
                this.f17505H = this;
            }

            @Override // com.google.android.gms.internal.ads.N9
            public final void f(Object obj, Map map) {
                int i10 = i9;
                C1010Yl c1010Yl = this.f17505H;
                switch (i10) {
                    case 0:
                        c1010Yl.f17639b.b(map);
                        break;
                    case 1:
                        c1010Yl.f17641d.zzg();
                        break;
                    case 2:
                        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                        interfaceC0715Ef.zzN().f17463M = new C2218x(27, c1010Yl, map);
                        String str = (String) map.get("overlayHtml");
                        String str2 = (String) map.get("baseUrl");
                        if (!TextUtils.isEmpty(str2)) {
                            interfaceC0715Ef.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                        } else {
                            interfaceC0715Ef.loadData(str, "text/html", "UTF-8");
                        }
                        break;
                    case 3:
                        c1010Yl.getClass();
                        p120p3.h.f("Showing native ads overlay.");
                        ((InterfaceC0715Ef) obj).j().setVisibility(0);
                        c1010Yl.f17640c.f12849L = true;
                        break;
                    default:
                        c1010Yl.getClass();
                        p120p3.h.f("Hiding native ads overlay.");
                        ((InterfaceC0715Ef) obj).j().setVisibility(8);
                        c1010Yl.f17640c.f12849L = false;
                        break;
                }
            }
        });
        WeakReference weakReference = new WeakReference(interfaceC0715EfA);
        final int i10 = 2;
        N9 n9 = new N9(this) { // from class: com.google.android.gms.internal.ads.Xl

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ C1010Yl f17505H;

            {
                this.f17505H = this;
            }

            @Override // com.google.android.gms.internal.ads.N9
            public final void f(Object obj, Map map) {
                int i11 = i10;
                C1010Yl c1010Yl = this.f17505H;
                switch (i11) {
                    case 0:
                        c1010Yl.f17639b.b(map);
                        break;
                    case 1:
                        c1010Yl.f17641d.zzg();
                        break;
                    case 2:
                        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                        interfaceC0715Ef.zzN().f17463M = new C2218x(27, c1010Yl, map);
                        String str = (String) map.get("overlayHtml");
                        String str2 = (String) map.get("baseUrl");
                        if (!TextUtils.isEmpty(str2)) {
                            interfaceC0715Ef.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                        } else {
                            interfaceC0715Ef.loadData(str, "text/html", "UTF-8");
                        }
                        break;
                    case 3:
                        c1010Yl.getClass();
                        p120p3.h.f("Showing native ads overlay.");
                        ((InterfaceC0715Ef) obj).j().setVisibility(0);
                        c1010Yl.f17640c.f12849L = true;
                        break;
                    default:
                        c1010Yl.getClass();
                        p120p3.h.f("Hiding native ads overlay.");
                        ((InterfaceC0715Ef) obj).j().setVisibility(8);
                        c1010Yl.f17640c.f12849L = false;
                        break;
                }
            }
        };
        C0941Tm c0941Tm = this.f17639b;
        c0941Tm.getClass();
        c0941Tm.c("/loadHtml", new C0927Sm(c0941Tm, weakReference, "/loadHtml", n9));
        final int i11 = 3;
        c0941Tm.c("/showOverlay", new C0927Sm(c0941Tm, new WeakReference(interfaceC0715EfA), "/showOverlay", new N9(this) { // from class: com.google.android.gms.internal.ads.Xl

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ C1010Yl f17505H;

            {
                this.f17505H = this;
            }

            @Override // com.google.android.gms.internal.ads.N9
            public final void f(Object obj, Map map) {
                int i12 = i11;
                C1010Yl c1010Yl = this.f17505H;
                switch (i12) {
                    case 0:
                        c1010Yl.f17639b.b(map);
                        break;
                    case 1:
                        c1010Yl.f17641d.zzg();
                        break;
                    case 2:
                        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                        interfaceC0715Ef.zzN().f17463M = new C2218x(27, c1010Yl, map);
                        String str = (String) map.get("overlayHtml");
                        String str2 = (String) map.get("baseUrl");
                        if (!TextUtils.isEmpty(str2)) {
                            interfaceC0715Ef.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                        } else {
                            interfaceC0715Ef.loadData(str, "text/html", "UTF-8");
                        }
                        break;
                    case 3:
                        c1010Yl.getClass();
                        p120p3.h.f("Showing native ads overlay.");
                        ((InterfaceC0715Ef) obj).j().setVisibility(0);
                        c1010Yl.f17640c.f12849L = true;
                        break;
                    default:
                        c1010Yl.getClass();
                        p120p3.h.f("Hiding native ads overlay.");
                        ((InterfaceC0715Ef) obj).j().setVisibility(8);
                        c1010Yl.f17640c.f12849L = false;
                        break;
                }
            }
        }));
        final int i12 = 4;
        c0941Tm.c("/hideOverlay", new C0927Sm(c0941Tm, new WeakReference(interfaceC0715EfA), "/hideOverlay", new N9(this) { // from class: com.google.android.gms.internal.ads.Xl

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ C1010Yl f17505H;

            {
                this.f17505H = this;
            }

            @Override // com.google.android.gms.internal.ads.N9
            public final void f(Object obj, Map map) {
                int i13 = i12;
                C1010Yl c1010Yl = this.f17505H;
                switch (i13) {
                    case 0:
                        c1010Yl.f17639b.b(map);
                        break;
                    case 1:
                        c1010Yl.f17641d.zzg();
                        break;
                    case 2:
                        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                        interfaceC0715Ef.zzN().f17463M = new C2218x(27, c1010Yl, map);
                        String str = (String) map.get("overlayHtml");
                        String str2 = (String) map.get("baseUrl");
                        if (!TextUtils.isEmpty(str2)) {
                            interfaceC0715Ef.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                        } else {
                            interfaceC0715Ef.loadData(str, "text/html", "UTF-8");
                        }
                        break;
                    case 3:
                        c1010Yl.getClass();
                        p120p3.h.f("Showing native ads overlay.");
                        ((InterfaceC0715Ef) obj).j().setVisibility(0);
                        c1010Yl.f17640c.f12849L = true;
                        break;
                    default:
                        c1010Yl.getClass();
                        p120p3.h.f("Hiding native ads overlay.");
                        ((InterfaceC0715Ef) obj).j().setVisibility(8);
                        c1010Yl.f17640c.f12849L = false;
                        break;
                }
            }
        }));
        return interfaceC0715EfA.j();
    }
}
