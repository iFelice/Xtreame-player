package pe.hf.black20;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.WindowInsets;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import b7.K1;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class SplashVideoActivity extends Activity {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f29221H = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public VideoView f29222G;

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        setRequestedOrientation(0);
        super.onCreate(bundle);
        setContentView(R.layout.activity_splash_video);
        Log.d("XCIPTV_TAG", "-----------SplashVideoActivity-------------");
        this.f29222G = (VideoView) findViewById(R.id.videoView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(6);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        layoutParams.addRule(11);
        this.f29222G.setLayoutParams(layoutParams);
        try {
            this.f29222G.setVideoURI(Uri.parse("android.resource://" + getPackageName() + "/2131886081"));
            this.f29222G.setOnCompletionListener(new K1(this));
            this.f29222G.start();
        } catch (Exception unused) {
            startActivity(new Intent(this, (Class<?>) SplashActivity.class));
            finish();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this)) {
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
