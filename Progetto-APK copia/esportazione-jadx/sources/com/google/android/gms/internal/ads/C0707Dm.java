package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Dm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0707Dm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Yv f12869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f12870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1428hn f12871c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0983Wm f12872d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f12873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0738Fn f12874f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C1488ix f12875g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1172cq f12876h;

    public C0707Dm(Yv yv, Executor executor, C1428hn c1428hn, Context context, C0738Fn c0738Fn, C1488ix c1488ix, C1172cq c1172cq, C0983Wm c0983Wm) {
        this.f12869a = yv;
        this.f12870b = executor;
        this.f12871c = c1428hn;
        this.f12873e = context;
        this.f12874f = c0738Fn;
        this.f12875g = c1488ix;
        this.f12876h = c1172cq;
        this.f12872d = c0983Wm;
    }

    public static final void b(InterfaceC0715Ef interfaceC0715Ef) {
        interfaceC0715Ef.L0("/videoClicked", M9.f14664h);
        AbstractC0990Xf abstractC0990XfZzN = interfaceC0715Ef.zzN();
        synchronized (abstractC0990XfZzN.f17460J) {
            abstractC0990XfZzN.f17474X = true;
        }
        interfaceC0715Ef.L0("/getNativeAdViewSignals", M9.f14675s);
        interfaceC0715Ef.L0("/getNativeClickMeta", M9.f14676t);
    }

    public final void a(InterfaceC0715Ef interfaceC0715Ef) {
        b(interfaceC0715Ef);
        interfaceC0715Ef.L0("/video", M9.f14668l);
        interfaceC0715Ef.L0("/videoMeta", M9.f14669m);
        interfaceC0715Ef.L0("/precache", new H9(27));
        interfaceC0715Ef.L0("/delayPageLoaded", M9.f14672p);
        interfaceC0715Ef.L0("/instrument", M9.f14670n);
        interfaceC0715Ef.L0("/log", M9.f14663g);
        Object obj = null;
        interfaceC0715Ef.L0("/click", new C0968Vl(1, obj, obj));
        if (this.f12869a.f17675b != null) {
            AbstractC0990Xf abstractC0990XfZzN = interfaceC0715Ef.zzN();
            synchronized (abstractC0990XfZzN.f17460J) {
                abstractC0990XfZzN.f17475Y = true;
            }
            interfaceC0715Ef.L0("/open", new U9(null, null, null, null, null));
        } else {
            interfaceC0715Ef.zzN().n(false);
        }
        if (p083k3.l.f25980A.f26003w.e(interfaceC0715Ef.getContext())) {
            HashMap map = new HashMap();
            if (interfaceC0715Ef.f() != null) {
                map = interfaceC0715Ef.f().f15291w0;
            }
            interfaceC0715Ef.L0("/logScionEvent", new C0968Vl(2, interfaceC0715Ef.getContext(), map));
        }
    }
}
