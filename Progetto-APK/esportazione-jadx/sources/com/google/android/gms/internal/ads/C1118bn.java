package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import okhttp3.HttpUrl;
import p021c4.C0617w;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1118bn extends AbstractC2252xi {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f18085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final WeakReference f18086k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final InterfaceC1374gl f18087l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C0720Ek f18088m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C2201wj f18089n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C0839Mj f18090o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final C0748Gi f18091p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final BinderC0683Cd f18092q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final C1439hy f18093r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Vv f18094s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f18095t;

    public C1118bn(C2200wi c2200wi, Context context, InterfaceC0715Ef interfaceC0715Ef, InterfaceC1374gl interfaceC1374gl, C0720Ek c0720Ek, C2201wj c2201wj, C0839Mj c0839Mj, C0748Gi c0748Gi, Ov ov, C1439hy c1439hy, Vv vv) {
        super(c2200wi);
        this.f18095t = false;
        this.f18085j = context;
        this.f18087l = interfaceC1374gl;
        this.f18086k = new WeakReference(interfaceC0715Ef);
        this.f18088m = c0720Ek;
        this.f18089n = c2201wj;
        this.f18090o = c0839Mj;
        this.f18091p = c0748Gi;
        this.f18093r = c1439hy;
        C1624ld c1624ld = ov.f15268l;
        this.f18092q = new BinderC0683Cd(c1624ld != null ? c1624ld.f19803G : HttpUrl.FRAGMENT_ENCODE_SET, c1624ld != null ? c1624ld.f19804H : 1);
        this.f18094s = vv;
    }

    public final Bundle b() {
        Bundle bundle;
        C0839Mj c0839Mj = this.f18090o;
        synchronized (c0839Mj) {
            bundle = new Bundle(c0839Mj.f14782H);
        }
        return bundle;
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
        Context context;
        J7 j8 = Q7.f15955v0;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        Context context2 = this.f18085j;
        C2201wj c2201wj = this.f18089n;
        if (zBooleanValue) {
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            if (p113o3.O.e(context2)) {
                p120p3.h.g("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                c2201wj.zzb();
                if (((Boolean) c3099q.f26627c.a(Q7.f15962w0)).booleanValue()) {
                    this.f18093r.a(((Qv) this.f21912a.f16755b.f21883I).f16150b);
                    return;
                }
                return;
            }
        }
        if (this.f18095t) {
            p120p3.h.g("The rewarded ad have been showed.");
            c2201wj.g(p113o3.r.H(10, null, null));
            return;
        }
        this.f18095t = true;
        C0720Ek c0720Ek = this.f18088m;
        c0720Ek.getClass();
        c0720Ek.Z0(new C0617w(18));
        if (activity == null) {
            context = activity;
            context = context2;
        }
        try {
            context = activity;
            this.f18087l.c(z7, context, c2201wj);
            c0720Ek.Z0(new C0617w(19));
        } catch (C1322fl e8) {
            c2201wj.H(e8);
        }
    }

    public final void finalize() throws Throwable {
        try {
            InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) this.f18086k.get();
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15855i6)).booleanValue()) {
                if (!this.f18095t && interfaceC0715Ef != null) {
                    AbstractC1988se.f20910e.execute(new RunnableC0850Nf(interfaceC0715Ef, 5));
                }
            } else if (interfaceC0715Ef != null) {
                interfaceC0715Ef.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}
