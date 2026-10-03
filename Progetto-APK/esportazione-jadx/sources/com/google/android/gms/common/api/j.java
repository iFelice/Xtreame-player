package com.google.android.gms.common.api;

import K3.AbstractC0230c;
import K3.AbstractC0240m;
import K3.AbstractC0245s;
import K3.AbstractC0246t;
import K3.AbstractServiceConnectionC0238k;
import K3.C;
import K3.C0228a;
import K3.C0233f;
import K3.C0236i;
import K3.C0237j;
import K3.C0242o;
import K3.C0249w;
import K3.H;
import K3.InterfaceC0244q;
import K3.J;
import K3.N;
import K3.Q;
import K3.S;
import K3.z;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.AbstractC0631g;
import com.google.android.gms.common.internal.C0632h;
import com.google.android.gms.common.internal.C0633i;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {
    protected final C0233f zaa;
    private final Context zab;
    private final String zac;
    private final g zad;
    private final c zae;
    private final C0228a zaf;
    private final Looper zag;
    private final int zah;
    private final m zai;
    private final InterfaceC0244q zaj;

    public j(Context context, g gVar, c cVar, i iVar) {
        com.bumptech.glide.c.i(context, "Null context is not permitted.");
        com.bumptech.glide.c.i(gVar, "Api must not be null.");
        com.bumptech.glide.c.i(iVar, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        com.bumptech.glide.c.i(applicationContext, "The provided context did not have an application context.");
        this.zab = applicationContext;
        String attributionTag = Build.VERSION.SDK_INT >= 30 ? context.getAttributionTag() : getApiFallbackAttributionTag(context);
        this.zac = attributionTag;
        this.zad = gVar;
        this.zae = cVar;
        this.zag = iVar.f11766b;
        this.zaf = new C0228a(gVar, cVar, attributionTag);
        this.zai = new C(this);
        C0233f c0233fF = C0233f.f(applicationContext);
        this.zaa = c0233fF;
        this.zah = c0233fF.f4545N.getAndIncrement();
        this.zaj = iVar.f11765a;
        X3.d dVar = c0233fF.f4550S;
        dVar.sendMessage(dVar.obtainMessage(7, this));
    }

    public m asGoogleApiClient() {
        return this.zai;
    }

    public final p052g4.r b(int i8, AbstractC0245s abstractC0245s) {
        p052g4.i iVar = new p052g4.i();
        InterfaceC0244q interfaceC0244q = this.zaj;
        C0233f c0233f = this.zaa;
        c0233f.getClass();
        c0233f.e(iVar, abstractC0245s.f4574c, this);
        H h8 = new H(new S(i8, abstractC0245s, iVar, interfaceC0244q), c0233f.f4546O.get(), this);
        X3.d dVar = c0233f.f4550S;
        dVar.sendMessage(dVar.obtainMessage(4, h8));
        return iVar.f25345a;
    }

    public C0632h createClientSettingsBuilder() {
        C0632h c0632h = new C0632h();
        c0632h.f11840a = null;
        Set setEmptySet = Collections.emptySet();
        if (c0632h.f11841b == null) {
            c0632h.f11841b = new p132r.g(0);
        }
        c0632h.f11841b.addAll(setEmptySet);
        c0632h.f11843d = this.zab.getClass().getName();
        c0632h.f11842c = this.zab.getPackageName();
        return c0632h;
    }

    public p052g4.h disconnectService() {
        C0233f c0233f = this.zaa;
        c0233f.getClass();
        C0249w c0249w = new C0249w(getApiKey());
        X3.d dVar = c0233f.f4550S;
        dVar.sendMessage(dVar.obtainMessage(14, c0249w));
        return c0249w.f4577b.f25345a;
    }

    public <A extends e, T extends AbstractC0230c> T doBestEffortWrite(T t7) {
        throw null;
    }

    public <A extends e, T extends AbstractC0230c> T doRead(T t7) {
        throw null;
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    public <A extends e, T extends AbstractC0240m, U extends AbstractC0246t> p052g4.h doRegisterEventListener(T t7, U u7) {
        com.bumptech.glide.c.h(t7);
        com.bumptech.glide.c.h(u7);
        com.bumptech.glide.c.i(t7.f4557a.f4556b, "Listener has already been released.");
        com.bumptech.glide.c.i(u7.f4575a, "Listener has already been released.");
        com.bumptech.glide.c.a("Listener registration and unregistration methods must be constructed with the same ListenerHolder.", U4.a.c(t7.f4557a.f4556b, u7.f4575a));
        return this.zaa.g(this, t7, u7, r.f11778G);
    }

    @ResultIgnorabilityUnspecified
    public p052g4.h doUnregisterEventListener(C0236i c0236i) {
        return doUnregisterEventListener(c0236i, 0);
    }

    public <A extends e, T extends AbstractC0230c> T doWrite(T t7) {
        throw null;
    }

    public String getApiFallbackAttributionTag(Context context) {
        return null;
    }

    public final C0228a getApiKey() {
        return this.zaf;
    }

    public c getApiOptions() {
        return this.zae;
    }

    public Context getApplicationContext() {
        return this.zab;
    }

    public String getContextAttributionTag() {
        return this.zac;
    }

    @Deprecated
    public String getContextFeatureId() {
        return this.zac;
    }

    public Looper getLooper() {
        return this.zag;
    }

    public <L> C0237j registerListener(L l4, String str) {
        Looper looper = this.zag;
        com.bumptech.glide.c.i(l4, "Listener must not be null");
        com.bumptech.glide.c.i(looper, "Looper must not be null");
        com.bumptech.glide.c.i(str, "Listener type must not be null");
        C0237j c0237j = new C0237j();
        new X3.d(looper, 2);
        c0237j.f4555a = l4;
        com.bumptech.glide.c.e(str);
        c0237j.f4556b = new C0236i(l4, str);
        return c0237j;
    }

    public final int zaa() {
        return this.zah;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final e zab(Looper looper, z zVar) {
        C0632h c0632hCreateClientSettingsBuilder = createClientSettingsBuilder();
        C0633i c0633i = new C0633i(c0632hCreateClientSettingsBuilder.f11840a, c0632hCreateClientSettingsBuilder.f11841b, c0632hCreateClientSettingsBuilder.f11842c, c0632hCreateClientSettingsBuilder.f11843d);
        a aVar = this.zad.f11761a;
        com.bumptech.glide.c.h(aVar);
        e eVarBuildClient = aVar.buildClient(this.zab, looper, c0633i, (Object) this.zae, (k) zVar, (l) zVar);
        String contextAttributionTag = getContextAttributionTag();
        if (contextAttributionTag != null && (eVarBuildClient instanceof AbstractC0631g)) {
            ((AbstractC0631g) eVarBuildClient).setAttributionTag(contextAttributionTag);
        }
        if (contextAttributionTag == null || !(eVarBuildClient instanceof AbstractServiceConnectionC0238k)) {
            return eVarBuildClient;
        }
        throw null;
    }

    public final N zac(Context context, Handler handler) {
        C0632h c0632hCreateClientSettingsBuilder = createClientSettingsBuilder();
        return new N(context, handler, new C0633i(c0632hCreateClientSettingsBuilder.f11840a, c0632hCreateClientSettingsBuilder.f11841b, c0632hCreateClientSettingsBuilder.f11842c, c0632hCreateClientSettingsBuilder.f11843d));
    }

    @ResultIgnorabilityUnspecified
    public <TResult, A extends e> p052g4.h doBestEffortWrite(AbstractC0245s abstractC0245s) {
        return b(2, abstractC0245s);
    }

    @ResultIgnorabilityUnspecified
    public <TResult, A extends e> p052g4.h doRead(AbstractC0245s abstractC0245s) {
        return b(0, abstractC0245s);
    }

    @ResultIgnorabilityUnspecified
    public p052g4.h doUnregisterEventListener(C0236i c0236i, int i8) {
        com.bumptech.glide.c.i(c0236i, "Listener key cannot be null.");
        C0233f c0233f = this.zaa;
        c0233f.getClass();
        p052g4.i iVar = new p052g4.i();
        c0233f.e(iVar, i8, this);
        H h8 = new H(new Q(c0236i, iVar), c0233f.f4546O.get(), this);
        X3.d dVar = c0233f.f4550S;
        dVar.sendMessage(dVar.obtainMessage(13, h8));
        return iVar.f25345a;
    }

    @ResultIgnorabilityUnspecified
    public <TResult, A extends e> p052g4.h doWrite(AbstractC0245s abstractC0245s) {
        return b(1, abstractC0245s);
    }

    @ResultIgnorabilityUnspecified
    public <A extends e> p052g4.h doRegisterEventListener(C0242o c0242o) {
        com.bumptech.glide.c.h(c0242o);
        com.bumptech.glide.c.i(c0242o.f4566a.f4557a.f4556b, "Listener has already been released.");
        com.bumptech.glide.c.i(c0242o.f4567b.f4575a, "Listener has already been released.");
        return this.zaa.g(this, c0242o.f4566a, c0242o.f4567b, J.f4496G);
    }
}
