package pe.hf.black20;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import b7.C0514f;
import b7.N;
import java.util.Locale;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class OtherSettingsActivity extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public SharedPreferences f28805G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final OtherSettingsActivity f28806H = this;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public String[] f28807I = null;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ListView f28808J;

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_other_settings);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        OtherSettingsActivity otherSettingsActivity = this.f28806H;
        if (Methods.R(otherSettingsActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        this.f28805G = otherSettingsActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28808J = (ListView) findViewById(R.id.listview);
        if (this.f28805G.getString("logs", null).equals("no")) {
            this.f28807I = new String[]{otherSettingsActivity.getString(R.string.xc_auto_sleep), getString(R.string.live_tv_enable_media_control), "Load EPG", getString(R.string.full_screen_notch_display), getString(R.string.auto_start_app_after_reboot), getString(R.string.service_status), getString(R.string.time_format), getString(R.string.load_last_live_tv_channel), getString(R.string.reset_volume), "Catchup EPG Timeshift", "OTR Layout", "Open Source Licenses"};
        } else {
            this.f28807I = new String[]{otherSettingsActivity.getString(R.string.xc_auto_sleep), getString(R.string.live_tv_enable_media_control), "Load EPG", getString(R.string.full_screen_notch_display), getString(R.string.auto_start_app_after_reboot), otherSettingsActivity.getString(R.string.xc_app_logs), getString(R.string.service_status), getString(R.string.time_format), getString(R.string.load_last_live_tv_channel), getString(R.string.reset_volume), "Catchup EPG Timeshift", "OTR Layout", "Open Source Licenses"};
        }
        this.f28808J.setAdapter((ListAdapter) new N(this, this.f28807I, 1));
        this.f28808J.setOnItemClickListener(new C0514f(this, 13));
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        Configuration configuration = getBaseContext().getResources().getConfiguration();
        Locale locale = new Locale(this.f28805G.getString("language", null));
        Locale.setDefault(locale);
        configuration.locale = locale;
        getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
    }
}
