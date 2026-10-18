package pe.hf.black20.services;

import D.o;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import c7.c;
import com.google.android.gms.internal.ads.AbstractC0760Hf;
import com.google.android.gms.internal.cast.X;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.videolan.libvlc.MediaPlayer;
import pe.hf.black20.R;
import pe.hf.black20.RecordsActivity;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class RecordingServices extends Service {

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final /* synthetic */ int f29328T = 0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public c f29331I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public SharedPreferences f29332J;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ArrayList f29334L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public String f29335M;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public X f29337O;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public String f29339Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public String f29340R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public String f29341S;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final RecordingServices f29329G = this;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public MediaPlayer f29330H = null;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public ArrayList f29333K = new ArrayList();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Handler f29336N = new Handler();

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f29338P = 15000;

    public final void a() {
        this.f29339Q = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f29340R = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f29341S = HttpUrl.FRAGMENT_ENCODE_SET;
        q0.q().e("ORT_isRecordingRunning", false);
        MediaPlayer mediaPlayer = this.f29330H;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f29336N.removeCallbacks(this.f29337O);
        a();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i8, int i9) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(AbstractC0760Hf.f());
        }
        Intent intent2 = new Intent(this, (Class<?>) RecordsActivity.class);
        PendingIntent activity = i10 >= 31 ? PendingIntent.getActivity(this, 0, intent2, 67108864) : PendingIntent.getActivity(this, 0, intent2, 301989888);
        o oVar = new o(this, "ForegroundServiceChannelForRecording");
        oVar.f1714e = o.b("Foreground Service");
        oVar.f1715f = o.b("Schedule Recording");
        oVar.f1726q.icon = R.mipmap.ic_launcher;
        oVar.f1716g = activity;
        Notification notificationA = oVar.a();
        if (i10 >= 34) {
            startForeground(1, notificationA, 1073741824);
        } else {
            startForeground(1, notificationA);
        }
        Handler handler = this.f29336N;
        X x7 = new X(this, 29);
        this.f29337O = x7;
        handler.postDelayed(x7, this.f29338P);
        return 1;
    }
}
