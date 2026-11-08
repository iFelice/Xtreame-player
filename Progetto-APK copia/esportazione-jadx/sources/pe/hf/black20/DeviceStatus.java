package pe.hf.black20;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import org.json.JSONObject;
import p039f.ViewOnClickListenerC2988c;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceStatus extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public ProgressBar f28538G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f28539H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final DeviceStatus f28540I = this;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ImageButton f28541J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public TextView f28542K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public TextView f28543L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public JSONObject f28544M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public JSONObject f28545N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f28546O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String f28547P;

    static {
        System.loadLibrary("native-lib");
    }

    public static native String papi();

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_device_stats);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        DeviceStatus deviceStatus = this.f28540I;
        if (Methods.R(deviceStatus)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progress_bar);
        this.f28538G = progressBar;
        progressBar.setVisibility(4);
        SharedPreferences sharedPreferences = deviceStatus.getSharedPreferences("pe.hf.black20", 0);
        this.f28539H = sharedPreferences;
        sharedPreferences.getString("MAC", null);
        this.f28542K = (TextView) findViewById(R.id.txt_phone_ds);
        this.f28543L = (TextView) findViewById(R.id.txt_email_ds);
        this.f28542K.setText(this.f28539H.getString("support_email", null));
        this.f28543L.setText(this.f28539H.getString("support_phone", null));
        ImageButton imageButton = (ImageButton) findViewById(R.id.btn_refresh_ds);
        this.f28541J = imageButton;
        imageButton.setOnClickListener(new ViewOnClickListenerC2988c(this, 7));
        this.f28541J.requestFocus();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f28540I)) {
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
