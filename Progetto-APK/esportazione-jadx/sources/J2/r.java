package J2;

import android.content.IntentFilter;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class r implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4114G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ s f4115H;

    public /* synthetic */ r(s sVar, int i8) {
        this.f4114G = i8;
        this.f4115H = sVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4114G) {
            case 0:
                s sVar = this.f4115H;
                sVar.f4120J = sVar.c();
                try {
                    s sVar2 = this.f4115H;
                    sVar2.f4117G.registerReceiver(sVar2.f4122L, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    this.f4115H.f4121K = true;
                } catch (SecurityException e8) {
                    if (Log.isLoggable("ConnectivityMonitor", 5)) {
                        Log.w("ConnectivityMonitor", "Failed to register", e8);
                    }
                    this.f4115H.f4121K = false;
                    return;
                }
                break;
            case 1:
                if (this.f4115H.f4121K) {
                    this.f4115H.f4121K = false;
                    s sVar3 = this.f4115H;
                    sVar3.f4117G.unregisterReceiver(sVar3.f4122L);
                    break;
                }
                break;
            default:
                boolean z7 = this.f4115H.f4120J;
                s sVar4 = this.f4115H;
                sVar4.f4120J = sVar4.c();
                if (z7 != this.f4115H.f4120J) {
                    if (Log.isLoggable("ConnectivityMonitor", 3)) {
                        Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + this.f4115H.f4120J);
                    }
                    s sVar5 = this.f4115H;
                    P2.o.f().post(new p017c0.a(2, sVar5, sVar5.f4120J));
                }
                break;
        }
    }
}
