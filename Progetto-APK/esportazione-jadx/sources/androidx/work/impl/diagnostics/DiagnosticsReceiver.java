package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import p027d2.n;
import p027d2.o;
import p034e2.y;

/* JADX INFO: loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f9795a = n.f("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        n nVarD = n.d();
        String str = f9795a;
        nVarD.a(str, "Requesting diagnostics");
        try {
            y.w(context).j(new o(DiagnosticsWorker.class).a());
        } catch (IllegalStateException e8) {
            n.d().c(str, "WorkManager is not initialized", e8);
        }
    }
}
