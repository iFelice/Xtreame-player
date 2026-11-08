package pe.hf.black20;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import p039f.ViewOnClickListenerC2988c;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class MaintenanceActivity extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public SharedPreferences f28618G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final MaintenanceActivity f28619H = this;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Button f28620I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public TextView f28621J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public TextView f28622K;

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_maintenance);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        MaintenanceActivity maintenanceActivity = this.f28619H;
        if (Methods.R(maintenanceActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        this.f28618G = maintenanceActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28620I = (Button) findViewById(R.id.btn_check_mt);
        this.f28621J = (TextView) findViewById(R.id.txt_support_mt);
        this.f28622K = (TextView) findViewById(R.id.txt_message_mt);
        Bundle extras = getIntent().getExtras();
        this.f28622K.setText(extras.getString("message") + ".\n\n" + maintenanceActivity.getString(R.string.xc_maint_finish) + " " + Methods.o(extras.getString("expire")));
        TextView textView = this.f28621J;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f28618G.getString("support_email", null));
        sb.append(", ");
        sb.append(this.f28618G.getString("support_phone", null));
        textView.setText(sb.toString());
        this.f28620I.setOnClickListener(new ViewOnClickListenerC2988c(this, 9));
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f28619H)) {
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
