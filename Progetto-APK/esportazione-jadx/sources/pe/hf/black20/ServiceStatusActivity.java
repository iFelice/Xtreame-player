package pe.hf.black20;

import A0.O;
import android.app.Activity;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import c7.a;
import c7.d;
import com.google.protobuf.U2;
import h7.i;
import okhttp3.HttpUrl;
import p000a.r;
import p083k3.j;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceStatusActivity extends Activity {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f29134H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public TextView f29135I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public TextView f29136J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public TextView f29137K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public TextView f29138L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public TextView f29139M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public TextView f29140N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public TextView f29141O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public TextView f29142P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public TextView f29143Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public TextView f29144R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public TextView f29145S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public TextView f29146T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public TextView f29147U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public TextView f29148V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public TextView f29149W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public TextView f29150X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public TextView f29151Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public d f29152Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public i f29153a0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ServiceStatusActivity f29133G = this;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public String f29154b0 = HttpUrl.FRAGMENT_ENCODE_SET;

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        Cursor cursorRawQuery;
        int count;
        Cursor cursorRawQuery2;
        int count2;
        super.onCreate(bundle);
        setContentView(R.layout.activity_service_status);
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        ServiceStatusActivity serviceStatusActivity = this.f29133G;
        if (Methods.R(serviceStatusActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        this.f29152Z = new d(serviceStatusActivity);
        this.f29153a0 = O.x("ORT_PROFILE", "Default (XC)", new a(serviceStatusActivity, 0));
        this.f29134H = serviceStatusActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f29135I = (TextView) findViewById(R.id.txt_tv_count);
        this.f29136J = (TextView) findViewById(R.id.txt_vod_count);
        this.f29137K = (TextView) findViewById(R.id.txt_series_count);
        this.f29138L = (TextView) findViewById(R.id.txt_catchup_count);
        this.f29139M = (TextView) findViewById(R.id.txt_radio_count);
        this.f29140N = (TextView) findViewById(R.id.txt_epg_file_size);
        this.f29141O = (TextView) findViewById(R.id.txt_timezone);
        this.f29142P = (TextView) findViewById(R.id.txt_player);
        this.f29143Q = (TextView) findViewById(R.id.txt_stream_type);
        this.f29144R = (TextView) findViewById(R.id.txt_parental_control);
        this.f29145S = (TextView) findViewById(R.id.txt_bg_update);
        this.f29146T = (TextView) findViewById(R.id.txt_auto_sleep);
        this.f29147U = (TextView) findViewById(R.id.txt_auto_start);
        this.f29148V = (TextView) findViewById(R.id.txt_username);
        this.f29149W = (TextView) findViewById(R.id.txt_expire);
        this.f29150X = (TextView) findViewById(R.id.txt_maxcon);
        this.f29151Y = (TextView) findViewById(R.id.txt_user_label);
        this.f29135I.setText(this.f29152Z.K0("liststreams") + "\nCategories: " + this.f29152Z.J0("tv_category"));
        this.f29136J.setText(this.f29152Z.K0("vods") + "\nCategories: " + this.f29152Z.J0("vod_category"));
        this.f29137K.setText(this.f29152Z.K0("series") + "\nCategories: " + this.f29152Z.J0("series_category"));
        TextView textView = this.f29139M;
        try {
            cursorRawQuery = this.f29152Z.getReadableDatabase().rawQuery("SELECT  * FROM liststreams WHERE stream_type=?", new String[]{"radio_streams"});
            try {
                count = cursorRawQuery.getCount();
                if (!cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            } catch (Throwable unused) {
                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
                count = 0;
            }
        } catch (Throwable unused2) {
            cursorRawQuery = null;
        }
        textView.setText(String.valueOf(count));
        TextView textView2 = this.f29138L;
        try {
            cursorRawQuery2 = this.f29152Z.getReadableDatabase().rawQuery("SELECT  * FROM liststreams WHERE tv_archive=?", new String[]{"1"});
            try {
                count2 = cursorRawQuery2.getCount();
                if (!cursorRawQuery2.isClosed()) {
                    cursorRawQuery2.close();
                }
            } catch (Throwable unused3) {
                if (cursorRawQuery2 != null && !cursorRawQuery2.isClosed()) {
                    cursorRawQuery2.close();
                }
                count2 = 0;
            }
        } catch (Throwable unused4) {
            cursorRawQuery2 = null;
        }
        textView2.setText(String.valueOf(count2));
        if (!this.f29134H.contains("sleep_mode") || this.f29134H.getString("sleep_mode", null).equals("on")) {
            this.f29146T.setText("YES");
        } else {
            this.f29146T.setText("NO");
        }
        if (U2.z("bg_epg_update", "yes", "yes")) {
            this.f29145S.setText(serviceStatusActivity.getString(R.string.xc_on));
        } else {
            this.f29145S.setText(serviceStatusActivity.getString(R.string.xc_off));
        }
        if (this.f29134H.contains("auto_start") && this.f29134H.getString("auto_start", null).equals("yes")) {
            this.f29147U.setText(serviceStatusActivity.getString(R.string.xc_on));
        } else {
            this.f29147U.setText(serviceStatusActivity.getString(R.string.xc_off));
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes") && this.f29134H.contains("timezone")) {
            this.f29141O.setText(this.f29134H.getString("timezone", null));
        } else {
            this.f29141O.setText("UNKNOWN");
        }
        String str = "LIVE TV - ExoPlayer\n";
        if (this.f29134H.contains("whichplayer_tv") && !this.f29134H.getString("whichplayer_tv", null).equals("EXO")) {
            str = "LIVE TV - VLC layer\n";
        }
        String strConcat = (!this.f29134H.contains("whichplayer_vod") || this.f29134H.getString("whichplayer_vod", null).equals("EXO")) ? str.concat("VOD - ExoPlayer\n") : str.concat("VOD - VLC Player\n");
        String strA = (!this.f29134H.contains("whichplayer_series") || this.f29134H.getString("whichplayer_series", null).equals("EXO")) ? U2.A(strConcat, "SERIES - ExoPlayer\n") : U2.A(strConcat, "SERIES - VLC Player\n");
        this.f29142P.setText(strA);
        if (!this.f29134H.contains("pc_lock") || this.f29134H.getString("pc_lock", null).equals("no")) {
            this.f29144R.setText("UNLOCKED");
        } else {
            this.f29144R.setText("LOCKED");
        }
        if (!this.f29134H.contains(HttpUrl.FRAGMENT_ENCODE_SET) || this.f29134H.getString("streamFormat", null).equals("ts")) {
            this.f29143Q.setText(serviceStatusActivity.getString(R.string.xc_selected_mpegts));
        } else {
            this.f29143Q.setText(serviceStatusActivity.getString(R.string.xc_selected_hls));
        }
        if (!this.f29134H.contains("max_connections")) {
            this.f29150X.setText("Unavailable");
        } else if (this.f29134H.getString("max_connections", null).toUpperCase().equals("0")) {
            this.f29150X.setText(R.string.unlimited_connection);
        } else {
            this.f29150X.setText(this.f29134H.getString("max_connections", null));
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
            String string = this.f29134H.getString("exp_date", null);
            String string2 = (string.equals("null") || string.isEmpty() || string.equals(HttpUrl.FRAGMENT_ENCODE_SET)) ? getString(R.string.no_expiration) : Methods.t(this.f29134H.getString("exp_date", null));
            if (this.f29134H.getString("show_expire", null).equals("yes")) {
                this.f29149W.setText(string2);
            } else {
                this.f29149W.setText("Unavailable");
            }
            r.q("-----------expire--------------", string2, "XCIPTV_TAG");
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            if (this.f29134H.getString("show_expire", null).equals("yes")) {
                new j(this).execute(new Void[0]);
            } else {
                this.f29149W.setText("Unavailable");
            }
        }
        this.f29148V.setText(Encrypt.a(this.f29153a0.f25480c) + "\nProfile: " + q0.q().c("ORT_PROFILE", "Default (XC)"));
        if (this.f29134H.contains("login_type") && this.f29134H.getString("login_type", null).equals("activationXOR")) {
            this.f29151Y.setText("Activation Code");
            this.f29148V.setText(Encrypt.a(this.f29134H.getString("xco_activation_cod", null)));
        }
        if (!this.f29134H.contains("epg_file_size")) {
            this.f29140N.setText("0 MB (epg.xml)");
            return;
        }
        this.f29140N.setText(this.f29134H.getString("epg_file_size", null) + " MB (epg.xml)");
    }
}
