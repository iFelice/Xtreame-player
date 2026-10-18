package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2048tm implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p090l3.d1 f21131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ov f21132c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Qv f21133d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f21134e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f21135f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f21136g;

    public /* synthetic */ C2048tm(Object obj, p090l3.d1 d1Var, Ov ov, Qv qv, String str, String str2, int i8) {
        this.f21130a = i8;
        this.f21136g = obj;
        this.f21131b = d1Var;
        this.f21132c = ov;
        this.f21133d = qv;
        this.f21134e = str;
        this.f21135f = str2;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final D4.b zza(Object obj) {
        int i8 = this.f21130a;
        String str = this.f21135f;
        String str2 = this.f21134e;
        int i9 = 1;
        Qv qv = this.f21133d;
        Ov ov = this.f21132c;
        p090l3.d1 d1Var = this.f21131b;
        Object obj2 = this.f21136g;
        switch (i8) {
            case 0:
                C2100um c2100um = (C2100um) obj2;
                InterfaceC0715Ef interfaceC0715EfA = c2100um.f21377j.a(d1Var, ov, qv);
                C1862q6 c1862q6 = new C1862q6(interfaceC0715EfA);
                C0955Um c0955Um = c2100um.f21379l.f17319a;
                interfaceC0715EfA.zzN().y(c0955Um, c0955Um, c0955Um, c0955Um, c0955Um, false, null, new p083k3.b(c2100um.f21368a, null), null, null, c2100um.f21382o, c2100um.f21381n, c2100um.f21380m, null, c0955Um, null, null, null, null);
                interfaceC0715EfA.L0("/getNativeAdViewSignals", M9.f14675s);
                interfaceC0715EfA.L0("/getNativeClickMeta", M9.f14676t);
                interfaceC0715EfA.zzN().f17463M = new C0790Jf(c1862q6, 1);
                interfaceC0715EfA.w0(str2, str);
                return c1862q6;
            default:
                C0707Dm c0707Dm = (C0707Dm) obj2;
                InterfaceC0715Ef interfaceC0715EfA2 = c0707Dm.f12871c.a(d1Var, ov, qv);
                C1862q6 c1862q7 = new C1862q6(interfaceC0715EfA2);
                if (c0707Dm.f12869a.f17675b != null) {
                    c0707Dm.a(interfaceC0715EfA2);
                    interfaceC0715EfA2.n0(new A2.i(5, 0, 0, 5));
                } else {
                    C0955Um c0955Um2 = c0707Dm.f12872d.f17319a;
                    interfaceC0715EfA2.zzN().y(c0955Um2, c0955Um2, c0955Um2, c0955Um2, c0955Um2, false, null, new p083k3.b(c0707Dm.f12873e, null), null, null, c0707Dm.f12876h, c0707Dm.f12875g, c0707Dm.f12874f, null, c0955Um2, null, null, null, null);
                    C0707Dm.b(interfaceC0715EfA2);
                }
                interfaceC0715EfA2.zzN().f17463M = new C2360zm(c0707Dm, interfaceC0715EfA2, c1862q7, i9);
                interfaceC0715EfA2.w0(str2, str);
                return c1862q7;
        }
    }
}
