package p021c4;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p017c0.a;

/* JADX INFO: loaded from: classes.dex */
public final class X extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final A1 f11074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f11075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11076c;

    public X(A1 a8) {
        this.f11074a = a8;
    }

    public final void a() {
        A1 a8 = this.f11074a;
        a8.j();
        a8.d().m();
        a8.d().m();
        if (this.f11075b) {
            a8.b().f11047T.a("Unregistering connectivity change receiver");
            this.f11075b = false;
            this.f11076c = false;
            try {
                a8.f10663R.f11250G.unregisterReceiver(this);
            } catch (IllegalArgumentException e8) {
                a8.b().f11039L.b(e8, "Failed to unregister the network broadcast receiver");
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        A1 a8 = this.f11074a;
        a8.j();
        String action = intent.getAction();
        a8.b().f11047T.b(action, "NetworkBroadcastReceiver received action");
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            a8.b().f11042O.b(action, "NetworkBroadcastReceiver received unknown action");
            return;
        }
        W w7 = a8.f10653H;
        A1.I(w7);
        boolean zR = w7.r();
        if (this.f11076c != zR) {
            this.f11076c = zR;
            a8.d().x(new a(8, this, zR));
        }
    }
}
