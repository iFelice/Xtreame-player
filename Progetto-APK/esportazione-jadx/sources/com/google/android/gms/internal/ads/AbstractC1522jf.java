package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1522jf {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f19471G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f19472H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final WeakReference f19473I;

    public AbstractC1522jf(InterfaceC0863Oe interfaceC0863Oe) {
        Context context = interfaceC0863Oe.getContext();
        this.f19471G = context;
        this.f19472H = p083k3.l.f25980A.f25983c.w(context, interfaceC0863Oe.zzn().f28196G);
        this.f19473I = new WeakReference(interfaceC0863Oe);
    }

    public static /* bridge */ /* synthetic */ void k(AbstractC1522jf abstractC1522jf, HashMap map) {
        InterfaceC0863Oe interfaceC0863Oe = (InterfaceC0863Oe) abstractC1522jf.f19473I.get();
        if (interfaceC0863Oe != null) {
            interfaceC0863Oe.w("onPrecacheEvent", map);
        }
    }

    public void j() {
    }

    public abstract void l();

    public final void m(String str, String str2, String str3, String str4) {
        p120p3.d.f28202b.post(new Cif(this, str, str2, str3, str4));
    }

    public void n(int i8) {
    }

    public void o(int i8) {
    }

    public void p(int i8) {
    }

    public void q(int i8) {
    }

    public abstract boolean r(String str);

    public boolean s(String str, String[] strArr) {
        return r(str);
    }

    public boolean t(String str, String[] strArr, C1110bf c1110bf) {
        return r(str);
    }
}
