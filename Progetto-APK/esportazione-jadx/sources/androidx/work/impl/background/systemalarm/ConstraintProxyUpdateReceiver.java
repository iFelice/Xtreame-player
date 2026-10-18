package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p027d2.n;
import p034e2.y;
import p079k.RunnableC3015g;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f9786a = n.f("ConstrntProxyUpdtRecvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if ("androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            ((u) y.w(context).f24845d).m(new RunnableC3015g(this, intent, context, goAsync(), 2));
        } else {
            n.d().a(f9786a, "Ignoring unknown action " + action);
        }
    }
}
