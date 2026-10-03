package pe.hf.black20;

import A0.O;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import b7.C0554v0;
import b7.D1;
import b7.H1;
import b7.I1;
import c7.a;
import c7.b;
import com.google.protobuf.U2;
import h7.i;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p064i0.c;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.d;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsMenuActivity extends Activity implements d {

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static int f29155W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static EditText f29156X;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public SharedPreferences f29157G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public a f29158H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public i f29159I;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public GridView f29161K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ProgressDialog f29162L;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String[] f29166P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int[] f29167Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public Button f29168R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public H1 f29169S;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final SettingsMenuActivity f29160J = this;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public double f29163M = 0.0d;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public double f29164N = 0.0d;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f29165O = false;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f29170T = false;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public String f29171U = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final H1 f29172V = new H1(this, 0);

    static {
        System.loadLibrary("native-lib");
    }

    public static native String papi();

    public final void a(String str, String str2) {
        SettingsMenuActivity settingsMenuActivity = this.f29160J;
        View viewInflate = LayoutInflater.from(settingsMenuActivity).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(settingsMenuActivity).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(settingsMenuActivity.getString(R.string.xc_ok));
        button.setOnClickListener(new W4.a(this, str2, alertDialogCreate, 5));
        alertDialogCreate.show();
    }

    @Override // pe.hf.black20.util.d
    public final void b(int i8, String str, String str2) {
        Log.d("XCIPTV_TAG", "SettingsMenuActivity -- getVersionCode");
    }

    public final void c() {
        boolean zEquals = this.f29157G.getString("settings_app", null).equals("no");
        SettingsMenuActivity settingsMenuActivity = this.f29160J;
        if (zEquals && this.f29157G.getString("settings_account", null).equals("no")) {
            this.f29166P = new String[]{"Player Settings", getString(R.string.player), getString(R.string.stream_type), settingsMenuActivity.getString(R.string.xc_update_contents), settingsMenuActivity.getString(R.string.xc_parental), settingsMenuActivity.getString(R.string.xc_speed_test), getString(R.string.backup_restore), getString(R.string.remote_control), "Language", settingsMenuActivity.getString(R.string.xc_support), settingsMenuActivity.getString(R.string.xc_other_settings), getString(R.string.clear_cache), settingsMenuActivity.getString(R.string.xc_signout)};
            this.f29167Q = new int[]{R.drawable.settings_zoom, R.drawable.settings_player, R.drawable.settings_streamtype, R.drawable.settings_update, R.drawable.settings_parental, R.drawable.settings_speedtest, R.drawable.settings_backup, R.drawable.settings_remote, R.drawable.settings_language, R.drawable.settings_support, R.drawable.settings_other, R.drawable.settings_clear_cache, R.drawable.settings_exit};
        } else if (this.f29157G.getString("settings_app", null).equals("no") && this.f29157G.getString("settings_account", null).equals("yes")) {
            this.f29166P = new String[]{settingsMenuActivity.getString(R.string.xc_account), "Player Settings", getString(R.string.player), getString(R.string.stream_type), settingsMenuActivity.getString(R.string.xc_update_contents), settingsMenuActivity.getString(R.string.xc_parental), settingsMenuActivity.getString(R.string.xc_speed_test), getString(R.string.backup_restore), getString(R.string.remote_control), "Language", settingsMenuActivity.getString(R.string.xc_support), settingsMenuActivity.getString(R.string.xc_other_settings), getString(R.string.clear_cache), settingsMenuActivity.getString(R.string.xc_signout)};
            this.f29167Q = new int[]{R.drawable.settings_account, R.drawable.settings_zoom, R.drawable.settings_player, R.drawable.settings_streamtype, R.drawable.settings_update, R.drawable.settings_parental, R.drawable.settings_speedtest, R.drawable.settings_backup, R.drawable.settings_remote, R.drawable.settings_language, R.drawable.settings_support, R.drawable.settings_other, R.drawable.settings_clear_cache, R.drawable.settings_exit};
        } else if (this.f29157G.getString("settings_app", null).equals("yes") && this.f29157G.getString("settings_account", null).equals("no")) {
            this.f29166P = new String[]{"APP", "Player Settings", getString(R.string.player), getString(R.string.stream_type), settingsMenuActivity.getString(R.string.xc_update_contents), settingsMenuActivity.getString(R.string.xc_parental), settingsMenuActivity.getString(R.string.xc_speed_test), getString(R.string.backup_restore), getString(R.string.remote_control), "Language", settingsMenuActivity.getString(R.string.xc_support), settingsMenuActivity.getString(R.string.xc_other_settings), getString(R.string.clear_cache), settingsMenuActivity.getString(R.string.xc_signout)};
            this.f29167Q = new int[]{R.drawable.logo, R.drawable.settings_zoom, R.drawable.settings_player, R.drawable.settings_streamtype, R.drawable.settings_update, R.drawable.settings_parental, R.drawable.settings_speedtest, R.drawable.settings_backup, R.drawable.settings_remote, R.drawable.settings_language, R.drawable.settings_support, R.drawable.settings_other, R.drawable.settings_clear_cache, R.drawable.settings_exit};
        } else {
            this.f29166P = new String[]{"APP", settingsMenuActivity.getString(R.string.xc_account), "Player Settings", getString(R.string.player), getString(R.string.stream_type), settingsMenuActivity.getString(R.string.xc_update_contents), settingsMenuActivity.getString(R.string.xc_parental), settingsMenuActivity.getString(R.string.xc_speed_test), getString(R.string.backup_restore), getString(R.string.remote_control), "Language", settingsMenuActivity.getString(R.string.xc_support), settingsMenuActivity.getString(R.string.xc_other_settings), getString(R.string.clear_cache), settingsMenuActivity.getString(R.string.xc_signout)};
            this.f29167Q = new int[]{R.drawable.logo, R.drawable.settings_account, R.drawable.settings_zoom, R.drawable.settings_player, R.drawable.settings_streamtype, R.drawable.settings_update, R.drawable.settings_parental, R.drawable.settings_speedtest, R.drawable.settings_backup, R.drawable.settings_remote, R.drawable.settings_language, R.drawable.settings_support, R.drawable.settings_other, R.drawable.settings_clear_cache, R.drawable.settings_exit};
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u") || U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            this.f29166P = new String[]{"APP", "Player Settings", settingsMenuActivity.getString(R.string.xc_update_contents), getString(R.string.player), settingsMenuActivity.getString(R.string.xc_parental), settingsMenuActivity.getString(R.string.xc_speed_test), getString(R.string.backup_restore), getString(R.string.remote_control), "Language", settingsMenuActivity.getString(R.string.xc_support), settingsMenuActivity.getString(R.string.xc_other_settings), getString(R.string.clear_cache), settingsMenuActivity.getString(R.string.xc_signout)};
            this.f29167Q = new int[]{R.drawable.logo, R.drawable.settings_zoom, R.drawable.settings_update, R.drawable.settings_player, R.drawable.settings_parental, R.drawable.settings_speedtest, R.drawable.settings_backup, R.drawable.settings_remote, R.drawable.settings_language, R.drawable.settings_support, R.drawable.settings_other, R.drawable.settings_clear_cache, R.drawable.settings_exit};
        }
        this.f29161K.setAdapter((ListAdapter) new I1(this, this.f29166P, this.f29167Q));
        this.f29161K.setOnItemClickListener(new C0554v0(this, 3));
    }

    public final void d(String str) throws JSONException {
        JSONObject jSONObject;
        String string;
        if (this.f29162L.isShowing()) {
            this.f29162L.dismiss();
        }
        try {
            jSONObject = new JSONObject(new String(str.getBytes("ISO-8859-1"), "UTF-8"));
            try {
                string = jSONObject.getString("success");
            } catch (UnsupportedEncodingException | JSONException unused) {
                string = "0";
            }
        } catch (UnsupportedEncodingException | JSONException unused2) {
            jSONObject = null;
        }
        if (!string.equals("1")) {
            a(getString(R.string.your_app_is_up_to_date) + " (0)", "msg");
            return;
        }
        String string2 = jSONObject.getString("version_code");
        this.f29171U = jSONObject.getString("apkurl");
        if (2001 >= Integer.parseInt(string2)) {
            a(getString(R.string.your_app_is_up_to_date) + " (" + string2 + ")", "msg");
            return;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long blockCountLong = (statFs.getBlockCountLong() * statFs.getBlockSizeLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        Log.d("XCIPTV_TAG", "Free " + blockCountLong + "MB");
        if (blockCountLong < 150) {
            a(getString(R.string.you_dont_have_enough_disk_space) + blockCountLong + getString(R.string.you_need_minimum_150mb_free), "msg");
            return;
        }
        SettingsMenuActivity settingsMenuActivity = this.f29160J;
        View viewInflate = LayoutInflater.from(settingsMenuActivity).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(settingsMenuActivity).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(R.string.new_version_app_is_available);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(settingsMenuActivity.getString(R.string.xc_yes));
        button.setOnClickListener(new D1(this, alertDialogCreate, 8));
        Button button2 = (Button) viewInflate.findViewById(R.id.button_no);
        button2.setText(settingsMenuActivity.getString(R.string.xc_cancel_str));
        button2.setOnClickListener(new D1(this, alertDialogCreate, 9));
        alertDialogCreate.show();
    }

    @Override // pe.hf.black20.util.d
    public final void f(String str, String str2) {
        if ("getVersionCode".equals(str2)) {
            try {
                d(str);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "SettingsMenuActivity -- getVersionCode");
            }
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_settings_menu);
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        SettingsMenuActivity settingsMenuActivity = this.f29160J;
        if (Methods.R(settingsMenuActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        this.f29157G = settingsMenuActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f29158H = new a(settingsMenuActivity, 0);
        new c7.d(settingsMenuActivity);
        int i9 = 1;
        new b(settingsMenuActivity, 1);
        new b(settingsMenuActivity, 0);
        this.f29159I = O.x("ORT_PROFILE", "Default (XC)", this.f29158H);
        this.f29161K = (GridView) findViewById(R.id.giveView);
        this.f29162L = new ProgressDialog(settingsMenuActivity);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (i8 >= 30) {
            getDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        f29155W = displayMetrics.widthPixels;
        if (this.f29157G.contains("bi") && !Encrypt.a(this.f29157G.getString("bi", null)).equals("pe.hf.black20")) {
            finish();
        }
        IntentFilter intentFilter = new IntentFilter(ORPlayerMainActivity.FINISH_ALERT);
        H1 h8 = new H1(this, i9);
        this.f29169S = h8;
        if (i8 >= 33) {
            U4.a.f(settingsMenuActivity, h8, intentFilter, 4);
        } else {
            registerReceiver(h8, intentFilter);
        }
        c();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        q0.q().e("ORT_isSettingsMenuActivityVisible", false);
        H1 h8 = this.f29172V;
        if (h8.isOrderedBroadcast()) {
            c.a(this).d(h8);
        }
        H1 h9 = this.f29169S;
        if (h9 == null || this.f29170T) {
            return;
        }
        unregisterReceiver(h9);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        q0.q().e("ORT_isSettingsMenuActivityVisible", true);
        H1 h8 = this.f29172V;
        if (!h8.isOrderedBroadcast()) {
            c.a(this).b(h8, new IntentFilter("SettingsMenuActivity"));
        }
        Configuration configuration = getBaseContext().getResources().getConfiguration();
        Locale locale = new Locale(this.f29157G.getString("language", null));
        Locale.setDefault(locale);
        configuration.locale = locale;
        getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
        c();
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isSettingsMenuActivityVisible", false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f29160J)) {
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
