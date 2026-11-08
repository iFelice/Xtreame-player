package K3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class D extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f4479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final F.i f4480b;

    public D(F.i iVar) {
        this.f4480b = iVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f4480b.A();
            synchronized (this) {
                try {
                    Context context2 = this.f4479a;
                    if (context2 != null) {
                        context2.unregisterReceiver(this);
                    }
                    this.f4479a = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
