package J2;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.util.Log;
import java.util.concurrent.Executor;
import p039f.G;

/* JADX INFO: loaded from: classes.dex */
public final class s implements q {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Executor f4116M = AsyncTask.SERIAL_EXECUTOR;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f4117G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final a f4118H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final P2.h f4119I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public volatile boolean f4120J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public volatile boolean f4121K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final G f4122L = new G(this, 7);

    public s(Context context, J3.k kVar, p pVar) {
        this.f4117G = context.getApplicationContext();
        this.f4119I = kVar;
        this.f4118H = pVar;
    }

    @Override // J2.q
    public final boolean a() {
        f4116M.execute(new r(this, 0));
        return true;
    }

    @Override // J2.q
    public final void b() {
        f4116M.execute(new r(this, 1));
    }

    public final boolean c() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f4119I.get()).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e8) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e8);
            }
            return true;
        }
    }
}
