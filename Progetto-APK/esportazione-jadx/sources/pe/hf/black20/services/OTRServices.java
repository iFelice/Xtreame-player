package pe.hf.black20.services;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import c7.c;
import com.google.android.gms.internal.cast.X;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class OTRServices extends Service {

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static final /* synthetic */ int f29311W = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public SharedPreferences f29312G;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public X f29316K;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public JSONObject f29320O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String f29321P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public String f29322Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public String f29323R;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public Thread f29326U;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final c f29313H = new c(this, 1);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ArrayList f29314I = new ArrayList();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Handler f29315J = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f29317L = 20000;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f29318M = 0;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f29319N = 0;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public String f29324S = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public String f29325T = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f29327V = false;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f29315J.removeCallbacks(this.f29316K);
        Thread thread = this.f29326U;
        if (thread != null) {
            thread.interrupt();
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i8, int i9) {
        Handler handler = this.f29315J;
        X x7 = new X(this, 28);
        this.f29316K = x7;
        handler.postDelayed(x7, this.f29317L);
        return 1;
    }
}
