package p082k2;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p027d2.n;
import p039f.G;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final G f25918f;

    public d(Context context, u uVar) {
        super(context, uVar);
        this.f25918f = new G(this, 6);
    }

    @Override // p082k2.f
    public final void d() {
        n.d().a(e.f25919a, getClass().getSimpleName().concat(": registering receiver"));
        this.f25921b.registerReceiver(this.f25918f, f());
    }

    @Override // p082k2.f
    public final void e() {
        n.d().a(e.f25919a, getClass().getSimpleName().concat(": unregistering receiver"));
        this.f25921b.unregisterReceiver(this.f25918f);
    }

    public abstract IntentFilter f();

    public abstract void g(Intent intent);
}
