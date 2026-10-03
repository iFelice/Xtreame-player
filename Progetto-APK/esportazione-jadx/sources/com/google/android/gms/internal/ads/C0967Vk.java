package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;
import p021c4.C0617w;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Vk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0967Vk extends AbstractC2252xi {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f17093j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final WeakReference f17094k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C0720Ek f17095l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final InterfaceC1374gl f17096m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C0748Gi f17097n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C1439hy f17098o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final C2201wj f17099p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final C1781oe f17100q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f17101r;

    public C0967Vk(C2200wi c2200wi, Context context, InterfaceC0715Ef interfaceC0715Ef, C0720Ek c0720Ek, InterfaceC1374gl interfaceC1374gl, C0748Gi c0748Gi, C1439hy c1439hy, C2201wj c2201wj, C1781oe c1781oe) {
        super(c2200wi);
        this.f17101r = false;
        this.f17093j = context;
        this.f17094k = new WeakReference(interfaceC0715Ef);
        this.f17095l = c0720Ek;
        this.f17096m = interfaceC1374gl;
        this.f17097n = c0748Gi;
        this.f17098o = c1439hy;
        this.f17099p = c2201wj;
        this.f17100q = c1781oe;
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
    public final void b(Activity activity, boolean z7) {
        Ov ovF;
        int iA;
        C0720Ek c0720Ek = this.f17095l;
        c0720Ek.getClass();
        c0720Ek.Z0(new C0617w(18));
        J7 j8 = Q7.f15955v0;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        Context context = this.f17093j;
        C2201wj c2201wj = this.f17099p;
        if (zBooleanValue) {
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            if (p113o3.O.e(context)) {
                p120p3.h.g("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                c2201wj.zzb();
                if (((Boolean) c3099q.f26627c.a(Q7.f15962w0)).booleanValue()) {
                    this.f17098o.a(((Qv) this.f21912a.f16755b.f21883I).f16150b);
                    return;
                }
                return;
            }
        }
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) this.f17094k.get();
        if (((Boolean) c3099q.f26627c.a(Q7.fb)).booleanValue() && interfaceC0715Ef != null && (ovF = interfaceC0715Ef.f()) != null && ovF.f15281r0) {
            C1781oe c1781oe = this.f17100q;
            synchronized (c1781oe.f20293a) {
                iA = c1781oe.f20296d.a();
            }
            if (ovF.f15283s0 != iA) {
                p120p3.h.g("The interstitial consent form has been shown.");
                c2201wj.g(p113o3.r.H(12, "The consent form has already been shown.", null));
                return;
            }
        }
        if (this.f17101r) {
            p120p3.h.g("The interstitial ad has been shown.");
            c2201wj.g(p113o3.r.H(10, null, null));
        }
        Context context2 = activity;
        if (this.f17101r) {
            return;
        }
        if (activity == null) {
            context2 = context;
        }
        try {
            this.f17096m.c(z7, context2, c2201wj);
            c0720Ek.Z0(new C0617w(19));
            this.f17101r = true;
        } catch (C1322fl e8) {
            c2201wj.H(e8);
        }
    }

    public final void finalize() throws Throwable {
        try {
            InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) this.f17094k.get();
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15855i6)).booleanValue()) {
                if (!this.f17101r && interfaceC0715Ef != null) {
                    AbstractC1988se.f20910e.execute(new RunnableC0850Nf(interfaceC0715Ef, 3));
                }
            } else if (interfaceC0715Ef != null) {
                interfaceC0715Ef.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}
