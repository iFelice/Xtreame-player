package p082k2;

import android.content.Context;
import android.net.ConnectivityManager;
import p027d2.n;
import p096m2.u;
import p104n2.j;
import p104n2.l;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class i extends f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConnectivityManager f25928f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final h f25929g;

    public i(Context context, u uVar) {
        super(context, uVar);
        Object systemService = this.f25921b.getSystemService("connectivity");
        q0.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.f25928f = (ConnectivityManager) systemService;
        this.f25929g = new h(this, 0);
    }

    @Override // p082k2.f
    public final Object a() {
        return j.a(this.f25928f);
    }

    @Override // p082k2.f
    public final void d() {
        try {
            n.d().a(j.f25930a, "Registering network callback");
            l.a(this.f25928f, this.f25929g);
        } catch (IllegalArgumentException e8) {
            n.d().c(j.f25930a, "Received exception while registering network callback", e8);
        } catch (SecurityException e9) {
            n.d().c(j.f25930a, "Received exception while registering network callback", e9);
        }
    }

    @Override // p082k2.f
    public final void e() {
        try {
            n.d().a(j.f25930a, "Unregistering network callback");
            j.c(this.f25928f, this.f25929g);
        } catch (IllegalArgumentException e8) {
            n.d().c(j.f25930a, "Received exception while unregistering network callback", e8);
        } catch (SecurityException e9) {
            n.d().c(j.f25930a, "Received exception while unregistering network callback", e9);
        }
    }
}
