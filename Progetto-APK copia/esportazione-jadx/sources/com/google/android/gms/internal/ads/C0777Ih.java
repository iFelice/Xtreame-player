package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import p021c4.C0617w;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ih, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0777Ih extends AbstractC2252xi {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final InterfaceC0715Ef f14009j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f14010k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Context f14011l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C2218x f14012m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final InterfaceC1374gl f14013n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C0720Ek f14014o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final C2201wj f14015p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f14016q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final C1781oe f14017r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f14018s;

    public C0777Ih(C2200wi c2200wi, Context context, InterfaceC0715Ef interfaceC0715Ef, int i8, C2218x c2218x, InterfaceC1374gl interfaceC1374gl, C0720Ek c0720Ek, C2201wj c2201wj, C1781oe c1781oe) {
        super(c2200wi);
        this.f14018s = false;
        this.f14009j = interfaceC0715Ef;
        this.f14011l = context;
        this.f14010k = i8;
        this.f14012m = c2218x;
        this.f14013n = interfaceC1374gl;
        this.f14014o = c0720Ek;
        this.f14015p = c2201wj;
        this.f14016q = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15736U4)).booleanValue();
        this.f14017r = c1781oe;
    }

    public final void b() {
        C0689Cj c0689Cj = this.f21914c;
        c0689Cj.getClass();
        c0689Cj.Z0(new I7(null, 3));
        InterfaceC0715Ef interfaceC0715Ef = this.f14009j;
        if (interfaceC0715Ef != null) {
            interfaceC0715Ef.destroy();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void c(Activity activity, boolean z7) {
        InterfaceC0715Ef interfaceC0715Ef;
        Ov ovF;
        int iA;
        Context context = activity;
        if (activity == null) {
            context = this.f14011l;
        }
        C0720Ek c0720Ek = this.f14014o;
        boolean z8 = this.f14016q;
        if (z8) {
            c0720Ek.getClass();
            c0720Ek.Z0(new C0617w(18));
        }
        J7 j8 = Q7.f15955v0;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        C2201wj c2201wj = this.f14015p;
        if (zBooleanValue) {
            p083k3.l lVar = p083k3.l.f25980A;
            p113o3.O o4 = lVar.f25983c;
            if (p113o3.O.e(context)) {
                p120p3.h.g("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                c2201wj.zzb();
                if (((Boolean) c3099q.f26627c.a(Q7.f15962w0)).booleanValue()) {
                    new C1439hy(context.getApplicationContext(), lVar.f25998r.j()).a(((Qv) this.f21912a.f16755b.f21883I).f16150b);
                    return;
                }
                return;
            }
        }
        if (((Boolean) c3099q.f26627c.a(Q7.fb)).booleanValue() && (interfaceC0715Ef = this.f14009j) != null && (ovF = interfaceC0715Ef.f()) != null && ovF.f15281r0) {
            C1781oe c1781oe = this.f14017r;
            synchronized (c1781oe.f20293a) {
                iA = c1781oe.f20296d.a();
            }
            if (ovF.f15283s0 != iA) {
                p120p3.h.g("The app open consent form has been shown.");
                c2201wj.g(p113o3.r.H(12, "The consent form has already been shown.", null));
                return;
            }
        }
        if (this.f14018s) {
            p120p3.h.g("App open interstitial ad is already visible.");
            c2201wj.g(p113o3.r.H(10, null, null));
        }
        if (this.f14018s) {
            return;
        }
        try {
            this.f14013n.c(z7, context, c2201wj);
            if (z8) {
                c0720Ek.getClass();
                c0720Ek.Z0(new C0617w(19));
            }
            this.f14018s = true;
        } catch (C1322fl e8) {
            c2201wj.H(e8);
        }
    }

    public final void d(int i8, long j8) {
        String str;
        C2218x c2218x = this.f14012m;
        C0871Om c0871OmA = ((C0738Fn) c2218x.f21779H).a();
        c0871OmA.n("gqi", ((Qv) ((Tv) c2218x.f21780I).f16755b.f21883I).f16150b);
        c0871OmA.n("action", "ad_closed");
        c0871OmA.n("show_time", String.valueOf(j8));
        c0871OmA.n("ad_format", "app_open_ad");
        int i9 = i8 - 1;
        if (i9 == 0) {
            str = "h";
        } else if (i9 == 1) {
            str = "bb";
        } else if (i9 == 2) {
            str = "cc";
        } else if (i9 != 3) {
            str = i9 != 4 ? "u" : "ac";
        } else {
            str = "cb";
        }
        c0871OmA.n("acr", str);
        c0871OmA.u();
    }
}
