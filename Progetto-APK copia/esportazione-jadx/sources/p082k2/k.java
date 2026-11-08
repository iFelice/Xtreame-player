package p082k2;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import p027d2.n;
import p096m2.u;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class k extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConnectivityManager f25931g;

    public k(Context context, u uVar) {
        super(context, uVar);
        Object systemService = this.f25921b.getSystemService("connectivity");
        q0.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.f25931g = (ConnectivityManager) systemService;
    }

    @Override // p082k2.f
    public final Object a() {
        return j.a(this.f25931g);
    }

    @Override // p082k2.d
    public final IntentFilter f() {
        return new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    }

    @Override // p082k2.d
    public final void g(Intent intent) {
        q0.h(intent, "intent");
        if (q0.c(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
            n.d().a(j.f25930a, "Network broadcast received");
            c(j.a(this.f25931g));
        }
    }
}
