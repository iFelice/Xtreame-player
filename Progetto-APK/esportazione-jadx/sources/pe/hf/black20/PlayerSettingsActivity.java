package pe.hf.black20;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import b7.ViewOnClickListenerC0528j1;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public class PlayerSettingsActivity extends Activity {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f28980H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public RadioButton f28982I;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public LinearLayout f28983I0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public RadioButton f28984J;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public LinearLayout f28985J0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public RadioButton f28986K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public RadioButton f28987L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public RadioButton f28988M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public RadioButton f28989N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public RadioButton f28990O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public RadioButton f28991P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public RadioButton f28992Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public RadioButton f28993R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public RadioButton f28994S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public RadioButton f28995T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public RadioButton f28996U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public RadioButton f28997V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public RadioButton f28998W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public RadioButton f28999X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public RadioButton f29000Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public RadioButton f29001Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public RadioButton f29002a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public RadioButton f29003b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public RadioButton f29004c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public RadioButton f29005d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public RadioButton f29006e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public RadioButton f29007f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public RadioButton f29008g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public RadioButton f29009h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public RadioButton f29010i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public RadioButton f29011j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public RadioButton f29012k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public RadioButton f29013l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public RadioButton f29014m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public RadioButton f29015n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public RadioButton f29016o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public RadioButton f29017p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public RadioButton f29018q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public RadioButton f29019r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public RadioButton f29020s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public Button f29021t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public Button f29022u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public Button f29023v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public Button f29024w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public Button f29025x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public Button f29026y0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final PlayerSettingsActivity f28978G = this;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public String f29027z0 = "90";

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public String f28972A0 = "90";

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public String f28973B0 = "10000";

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public String f28974C0 = "yes";

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public String f28975D0 = "yes";

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public String f28976E0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public String f28977F0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public String f28979G0 = "1500";

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public String f28981H0 = "yes";

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:10:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:111:0x041a  */
    /* JADX WARN: Code duplicated, block: B:47:0x0336  */
    /* JADX WARN: Code duplicated, block: B:79:0x03b1  */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_player_settings);
        this.f28980H = this.f28978G.getSharedPreferences("pe.hf.black20", 0);
        this.f28982I = (RadioButton) findViewById(R.id.rb_0sec_exo);
        this.f28984J = (RadioButton) findViewById(R.id.rb_10sec_exo);
        this.f28986K = (RadioButton) findViewById(R.id.rb_20sec_exo);
        this.f28987L = (RadioButton) findViewById(R.id.rb_30sec_exo);
        this.f28988M = (RadioButton) findViewById(R.id.rb_40sec_exo);
        this.f28989N = (RadioButton) findViewById(R.id.rb_50sec_exo);
        this.f28990O = (RadioButton) findViewById(R.id.rb_zoom_best_fit_exo);
        this.f28991P = (RadioButton) findViewById(R.id.rb_zoom_fixed_height_exo);
        this.f28992Q = (RadioButton) findViewById(R.id.rb_zoom_fixed_width_exo);
        this.f28993R = (RadioButton) findViewById(R.id.rb_zoom_fill_exo);
        this.f28994S = (RadioButton) findViewById(R.id.rb_zoom_zoom_exo);
        this.f28995T = (RadioButton) findViewById(R.id.rb_subtitles_yes_exo);
        this.f28996U = (RadioButton) findViewById(R.id.rb_subtitles_no_exo);
        this.f28997V = (RadioButton) findViewById(R.id.rb_vol_60_exo);
        this.f28998W = (RadioButton) findViewById(R.id.rb_vol_70_exo);
        this.f28999X = (RadioButton) findViewById(R.id.rb_vol_80_exo);
        this.f29000Y = (RadioButton) findViewById(R.id.rb_vol_90_exo);
        this.f29001Z = (RadioButton) findViewById(R.id.rb_vol_100_exo);
        this.f29002a0 = (RadioButton) findViewById(R.id.rb_1sec_vlc);
        this.f29003b0 = (RadioButton) findViewById(R.id.rb_15sec_vlc);
        this.f29004c0 = (RadioButton) findViewById(R.id.rb_2sec_vlc);
        this.f29005d0 = (RadioButton) findViewById(R.id.rb_3sec_vlc);
        this.f29006e0 = (RadioButton) findViewById(R.id.rb_5sec_vlc);
        this.f29007f0 = (RadioButton) findViewById(R.id.rb_zoom_best_fit_vlc);
        this.f29008g0 = (RadioButton) findViewById(R.id.rb_zoom_169_vlc);
        this.f29009h0 = (RadioButton) findViewById(R.id.rb_zoom_43_vlc);
        this.f29010i0 = (RadioButton) findViewById(R.id.rb_zoom_orig_vlc);
        this.f29011j0 = (RadioButton) findViewById(R.id.rb_zoom_fill_vlc);
        this.f29012k0 = (RadioButton) findViewById(R.id.rb_subtitles_yes_vlc);
        this.f29013l0 = (RadioButton) findViewById(R.id.rb_subtitles_no_vlc);
        this.f29014m0 = (RadioButton) findViewById(R.id.rb_vol_60_vlc);
        this.f29015n0 = (RadioButton) findViewById(R.id.rb_vol_70_vlc);
        this.f29016o0 = (RadioButton) findViewById(R.id.rb_vol_80_vlc);
        this.f29017p0 = (RadioButton) findViewById(R.id.rb_vol_90_vlc);
        this.f29018q0 = (RadioButton) findViewById(R.id.rb_vol_100_vlc);
        this.f29019r0 = (RadioButton) findViewById(R.id.rb_hw_yes_vlc);
        this.f29020s0 = (RadioButton) findViewById(R.id.rb_hw_no_vlc);
        this.f29021t0 = (Button) findViewById(R.id.btn_update_exo);
        this.f29022u0 = (Button) findViewById(R.id.btn_update_vlc);
        this.f29023v0 = (Button) findViewById(R.id.btn_vlc_reset);
        this.f29024w0 = (Button) findViewById(R.id.btn_exo_reset);
        this.f29025x0 = (Button) findViewById(R.id.btn_exo_cancel);
        this.f29026y0 = (Button) findViewById(R.id.btn_vlc_cancel);
        this.f28983I0 = (LinearLayout) findViewById(R.id.layout_exo_holder);
        this.f28985J0 = (LinearLayout) findViewById(R.id.layout_vlc_holder);
        if (getIntent().getStringExtra("whichPlayer").equals("EXO")) {
            this.f28983I0.setVisibility(0);
        } else {
            this.f28985J0.setVisibility(0);
        }
        Log.d("XCIPTV_TAG", "--------------------plyer_exo_buffer ----" + this.f28980H.getString("plyer_exo_buffer", null));
        if (this.f28980H.contains("plyer_exo_buffer")) {
            String string = this.f28980H.getString("plyer_exo_buffer", null);
            string.getClass();
            switch (string) {
                case "0":
                    this.f28982I.setChecked(true);
                    break;
                case "10000":
                    this.f28984J.setChecked(true);
                    break;
                case "20000":
                    this.f28986K.setChecked(true);
                    break;
                case "30000":
                    this.f28987L.setChecked(true);
                    break;
                case "40000":
                    this.f28988M.setChecked(true);
                    break;
                case "50000":
                    this.f28989N.setChecked(true);
                    break;
                default:
                    this.f28989N.setChecked(true);
                    break;
            }
        }
        if (this.f28980H.contains("plyer_vlc_buffer")) {
            String string2 = this.f28980H.getString("plyer_vlc_buffer", "1500");
            string2.getClass();
            switch (string2) {
                case "300":
                    this.f29002a0.setChecked(true);
                    break;
                case "1000":
                    this.f29003b0.setChecked(true);
                    break;
                case "2000":
                    this.f29004c0.setChecked(true);
                    break;
                case "3000":
                    this.f29005d0.setChecked(true);
                    break;
                case "5000":
                    this.f29006e0.setChecked(true);
                    break;
            }
        }
        if (this.f28980H.contains("video_resize_exo")) {
            String string3 = this.f28980H.getString("video_resize_exo", "3");
            string3.getClass();
            switch (string3) {
                case "0":
                    this.f28990O.setChecked(true);
                    break;
                case "1":
                    this.f28992Q.setChecked(true);
                    break;
                case "2":
                    this.f28991P.setChecked(true);
                    break;
                case "3":
                    this.f28993R.setChecked(true);
                    break;
                case "4":
                    this.f28994S.setChecked(true);
                    break;
            }
        }
        if (this.f28980H.contains("video_resize_vlc")) {
            String string4 = this.f28980H.getString("video_resize_vlc", "3");
            string4.getClass();
            switch (string4) {
                case "0":
                    this.f29007f0.setChecked(true);
                    break;
                case "1":
                    this.f29008g0.setChecked(true);
                    break;
                case "2":
                    this.f29009h0.setChecked(true);
                    break;
                case "3":
                    this.f29010i0.setChecked(true);
                    break;
                case "4":
                    this.f29011j0.setChecked(true);
                    break;
            }
        }
        if (this.f28980H.contains("video_subtiltes_exo")) {
            if (this.f28980H.getString("video_subtiltes_exo", "yes").equals("yes")) {
                this.f28995T.setChecked(true);
            } else if (this.f28980H.getString("video_subtiltes_exo", "yes").equals("no")) {
                this.f28996U.setChecked(true);
            }
        }
        if (this.f28980H.contains("video_subtiltes_vlc")) {
            String string5 = this.f28980H.getString("video_subtiltes_vlc", "yes");
            string5.getClass();
            if (string5.equals("no")) {
                this.f29013l0.setChecked(true);
            } else if (string5.equals("yes")) {
                this.f29012k0.setChecked(true);
            }
        }
        if (this.f28980H.contains("last_volume")) {
            String string6 = this.f28980H.getString("last_volume", "90");
            string6.getClass();
            switch (string6) {
                case "60":
                    this.f28997V.setChecked(true);
                    this.f29014m0.setChecked(true);
                    break;
                case "70":
                    this.f28998W.setChecked(true);
                    this.f29015n0.setChecked(true);
                    break;
                case "80":
                    this.f28999X.setChecked(true);
                    this.f29016o0.setChecked(true);
                    break;
                case "90":
                    this.f29000Y.setChecked(true);
                    this.f29017p0.setChecked(true);
                    break;
                case "100":
                    this.f29001Z.setChecked(true);
                    this.f29018q0.setChecked(true);
                    break;
            }
        }
        if (this.f28980H.contains("vlc_hw")) {
            if (this.f28980H.getString("vlc_hw", "yes").equals("yes")) {
                this.f29019r0.setChecked(true);
            } else if (this.f28980H.getString("vlc_hw", "yes").equals("no")) {
                this.f29020s0.setChecked(true);
            }
        }
        this.f29021t0.setOnClickListener(new ViewOnClickListenerC0528j1(this, 0));
        this.f29022u0.setOnClickListener(new ViewOnClickListenerC0528j1(this, 1));
        this.f29025x0.setOnClickListener(new ViewOnClickListenerC0528j1(this, 2));
        this.f29026y0.setOnClickListener(new ViewOnClickListenerC0528j1(this, 3));
        this.f29024w0.setOnClickListener(new ViewOnClickListenerC0528j1(this, 4));
        this.f29023v0.setOnClickListener(new ViewOnClickListenerC0528j1(this, 5));
    }
}
