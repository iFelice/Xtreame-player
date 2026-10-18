package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class Aw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1486iv f12071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1918rB f12072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12073c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f12074d = false;

    public Aw(p004a3.b bVar, Xu xu, C1486iv c1486iv) {
        this.f12071a = c1486iv;
        xu.getClass();
        D4.b bVarB = ((C1384gv) ((InterfaceC2161vv) xu.f17529H)).b(c1486iv.f19381b, c1486iv.f19380a, null);
        C0915Sa c0915Sa = new C0915Sa(this, xu, bVar, c1486iv, 8);
        Executor executor = c1486iv.f19384e;
        this.f12072b = Cw.D1(Cw.d2(bVarB, c0915Sa, executor), Exception.class, new C0957Va(16, this, xu), executor);
    }

    public final synchronized C1918rB a(C1486iv c1486iv) {
        InterfaceC1954rw interfaceC1954rw;
        InterfaceC1954rw interfaceC1954rw2;
        if (!this.f12074d && !this.f12073c && (interfaceC1954rw = this.f12071a.f19386g) != null && (interfaceC1954rw2 = c1486iv.f19386g) != null && interfaceC1954rw.equals(interfaceC1954rw2)) {
            this.f12073c = true;
            return this.f12072b;
        }
        return null;
    }

    public final synchronized void b(C0871Om c0871Om) {
        Cw.h2(Cw.d2(this.f12072b, new C1422hh(21), this.f12071a.f19384e), c0871Om, this.f12071a.f19384e);
    }
}
