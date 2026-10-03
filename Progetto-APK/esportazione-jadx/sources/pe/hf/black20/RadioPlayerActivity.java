package pe.hf.black20;

import G2.c;
import N2.a;
import O5.d;
import android.app.Activity;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import b7.C0537m1;
import b7.ViewOnClickListenerC0534l1;
import com.bumptech.glide.b;
import com.bumptech.glide.l;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.videolan.libvlc.LibVLC;
import org.videolan.libvlc.Media;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.IVLCVout;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class RadioPlayerActivity extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public ImageButton f29044G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ImageButton f29045H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public TextView f29046I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f29047J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f29048K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f29049L;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ImageView f29051N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public SurfaceView f29052O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public SurfaceHolder f29053P;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public IVLCVout f29056S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public Media f29057T;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public SharedPreferences f29059V;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final RadioPlayerActivity f29050M = this;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public LibVLC f29054Q = null;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public MediaPlayer f29055R = null;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final a f29058U = new a(300, true);

    public static void a(RadioPlayerActivity radioPlayerActivity, String str) {
        MediaPlayer mediaPlayer = radioPlayerActivity.f29055R;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("-vvv");
        arrayList.add("--network-caching=35000");
        arrayList.add("--live-caching==35000");
        radioPlayerActivity.f29054Q = new LibVLC(radioPlayerActivity.f29050M, arrayList);
        SurfaceHolder holder = radioPlayerActivity.f29052O.getHolder();
        radioPlayerActivity.f29053P = holder;
        holder.setKeepScreenOn(true);
        radioPlayerActivity.f29053P.addCallback(new d(radioPlayerActivity, 1));
        radioPlayerActivity.f29055R = new MediaPlayer(radioPlayerActivity.f29054Q);
        radioPlayerActivity.f29054Q.setUserAgent(radioPlayerActivity.f29059V.getString("agent", null), radioPlayerActivity.f29059V.getString("agent", null));
        Media media = new Media(radioPlayerActivity.f29054Q, Uri.parse(str));
        radioPlayerActivity.f29057T = media;
        radioPlayerActivity.f29055R.setMedia(media);
        IVLCVout vLCVout = radioPlayerActivity.f29055R.getVLCVout();
        radioPlayerActivity.f29056S = vLCVout;
        vLCVout.setVideoView(radioPlayerActivity.f29052O);
        radioPlayerActivity.f29056S.attachViews();
        radioPlayerActivity.f29055R.setEventListener((MediaPlayer.EventListener) new C0537m1(radioPlayerActivity, str));
        radioPlayerActivity.f29055R.play();
    }

    public void onClick(View view) {
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_radio_player);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        RadioPlayerActivity radioPlayerActivity = this.f29050M;
        if (Methods.R(radioPlayerActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        this.f29059V = radioPlayerActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f29046I = (TextView) findViewById(R.id.txt_nowplaying_radio);
        this.f29051N = (ImageView) findViewById(R.id.img_radio_logo);
        this.f29052O = (SurfaceView) findViewById(R.id.surfaceView);
        this.f29044G = (ImageButton) findViewById(R.id.buttonPlay);
        this.f29045H = (ImageButton) findViewById(R.id.buttonStopPlay);
        this.f29044G.setEnabled(true);
        this.f29045H.setEnabled(false);
        this.f29044G.setAlpha(1.0f);
        this.f29045H.setAlpha(0.3f);
        this.f29044G.setOnClickListener(new ViewOnClickListenerC0534l1(this, 0));
        this.f29045H.setOnClickListener(new ViewOnClickListenerC0534l1(this, 1));
        Bundle extras = getIntent().getExtras();
        String string = extras.getString("stream");
        this.f29047J = string;
        this.f29047J = string.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        this.f29048K = extras.getString("radioname");
        String string2 = extras.getString("stream_icon");
        this.f29049L = string2;
        boolean zEquals = string2.equals(HttpUrl.FRAGMENT_ENCODE_SET);
        a aVar = this.f29058U;
        if (zEquals) {
            ((l) b.d(radioPlayerActivity).m(Integer.valueOf(R.drawable.xciptv_tv)).g()).H(c.b(aVar)).F(this.f29051N);
        } else {
            ((l) ((l) ((l) b.d(radioPlayerActivity).n(this.f29049L).g()).H(c.b(aVar)).m(R.drawable.logo)).f(R.drawable.logo)).F(this.f29051N);
        }
        Log.d("XCIPTV_TAG", "PreparePlayer " + this.f29047J);
        this.f29046I.setText(this.f29048K);
        Log.d("XCIPTV_TAG", "Is Playing False");
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        Log.v("XCIPTV_TAG", "onDestroy()...");
        MediaPlayer mediaPlayer = this.f29055R;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i8, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i8, strArr, iArr);
        if (i8 == 2) {
            Log.d("XCIPTV_TAG", "External storage2");
            if (iArr[0] == 0) {
                Log.v("XCIPTV_TAG", "Permission: " + strArr[0] + "was " + iArr[0]);
                return;
            }
            return;
        }
        if (i8 != 3) {
            return;
        }
        Log.d("XCIPTV_TAG", "External storage1");
        if (iArr[0] == 0) {
            Log.v("XCIPTV_TAG", "Permission: " + strArr[0] + "was " + iArr[0]);
            if (Build.VERSION.SDK_INT < 23) {
                Log.v("ContentValues", "Permission is granted2");
            } else if (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                Log.v("ContentValues", "Permission is granted2");
            } else {
                Log.v("ContentValues", "Permission is revoked2");
                D.c.D(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 2);
            }
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f29050M)) {
                return;
            }
            if (Build.VERSION.SDK_INT < 30) {
                getWindow().getDecorView().setSystemUiVisibility(4098);
                getWindow().getDecorView().setSystemUiVisibility(3846);
                return;
            }
            getWindow().setDecorFitsSystemWindows(false);
            if (getWindow().getInsetsController() != null) {
                getWindow().getInsetsController().hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
                getWindow().getInsetsController().setSystemBarsBehavior(2);
            }
        }
    }
}
