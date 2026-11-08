package pe.hf.black20;

import A0.O;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.method.PasswordTransformationMethod;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import b7.P;
import b7.Q;
import b7.S;
import c7.a;
import com.google.android.gms.internal.ads.C1448i6;
import com.google.protobuf.U2;
import g7.c;
import h7.i;
import i7.b;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Locale;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONException;
import org.json.JSONObject;
import org.videolan.libvlc.media.MediaPlayer;
import p000a.r;
import p039f.AbstractC2987b;
import p039f.G;
import p039f.ViewOnClickListenerC2988c;
import p086l.C3061x;
import p130q5.q;
import pe.hf.black20.LoginActivity;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.d;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class LoginActivity extends Activity implements d, c {

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public static Button f28554N0;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public static Button f28555O0;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public static EditText f28556P0;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public static EditText f28557Q0;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public static EditText f28558R0;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public FrameLayout f28559A0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public String f28564F0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public a f28565G;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public String f28566G0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public c7.d f28567H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public i f28569I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public SharedPreferences f28571J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public SharedPreferences.Editor f28573K;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public JSONObject f28576L0;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ProgressDialog f28577M;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public LinearLayout f28578M0;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public String f28579N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f28580O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String f28581P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public String f28582Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public String f28583R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public String f28584S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public String f28585T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public String f28586U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public String f28587V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public String f28588W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public JSONObject f28589X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public JSONObject f28590Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public JSONObject f28591Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public FrameLayout f28592a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public G f28593b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public String f28594c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public String f28595d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public String f28596e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f28597f0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Button f28600i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public ImageView f28601j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ImageView f28602k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public ImageView f28603l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public ImageView f28604m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public ImageView f28605n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public ImageView f28606o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public ImageView f28607p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public ImageView f28608q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public ImageView f28609r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public FrameLayout f28610s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public FrameLayout f28611t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public TextView f28612u0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public ImageButton f28614w0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public TextView f28616y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public TextView f28617z0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final LoginActivity f28575L = this;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public String f28598g0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f28599h0 = false;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public String f28613v0 = "(XC)";

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean f28615x0 = false;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public boolean f28560B0 = false;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public boolean f28561C0 = false;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public boolean f28562D0 = false;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public String f28563E0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public String f28568H0 = "a";

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public String f28570I0 = "Default";

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public String f28572J0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public String f28574K0 = HttpUrl.FRAGMENT_ENCODE_SET;

    public final void a(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject2.put("name", getString(R.string.app_name));
            jSONObject2.put("version", "7.0-v" + String.valueOf(2001));
            jSONObject.put("name", "android");
            jSONObject.put("version", Build.VERSION.RELEASE);
            jSONObject.put("arch", System.getProperty("os.arch"));
            jSONObject.put("ram_total", 0);
            jSONObject.put("ram_free", 0);
            jSONObject3.put("id", str);
            jSONObject3.put("os", jSONObject);
            jSONObject3.put("project", jSONObject2);
            jSONObject3.put("cpu_brand", HttpUrl.FRAGMENT_ENCODE_SET);
        } catch (JSONException e8) {
            e8.printStackTrace();
        }
        Log.d("XCIPTV_TAG", "LoginActivity -- OTRClientDevice()");
        try {
            new C1448i6(1, this, this, "loginCheckOTR", r.j(new StringBuilder(), this.f28596e0, "/panel_pro/api/client/login"), jSONObject3, this.f28594c0, this.f28595d0);
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "LoginActivity - OTR Panel Client Devices - VolleyGETStringRequest Error");
        }
    }

    @Override // pe.hf.black20.util.d
    public final void b(int i8, String str, String str2) {
        r.q("LoginActivity -- onFailureJson Error----", str, "XCIPTV_TAG");
        if (this.f28577M.isShowing()) {
            this.f28577M.dismiss();
        }
        Methods.l(this.f28575L, getString(R.string.login_failed));
    }

    public final void c() {
        String string;
        ProgressDialog progressDialog = this.f28577M;
        LoginActivity loginActivity = this.f28575L;
        progressDialog.setMessage(loginActivity.getString(R.string.xc_please_wait));
        this.f28577M.setCancelable(false);
        this.f28577M.show();
        String str = this.f28594c0;
        String str2 = this.f28595d0;
        if (!this.f28571J.contains("send_udid")) {
            StringBuilder sb = new StringBuilder();
            p148t.a.h(sb, this.f28596e0, "/player_api.php?username=", str, "&password=");
            sb.append(str2);
            string = sb.toString();
        } else if (this.f28571J.getString("send_udid", null).equals("yes")) {
            StringBuilder sb2 = new StringBuilder();
            p148t.a.h(sb2, this.f28596e0, "/player_api.php?username=", str, "&password=");
            sb2.append(str2);
            sb2.append("&uid=");
            string = U2.h(this.f28571J, "did", null, sb2);
        } else {
            StringBuilder sb3 = new StringBuilder();
            p148t.a.h(sb3, this.f28596e0, "/player_api.php?username=", str, "&password=");
            sb3.append(str2);
            string = sb3.toString();
        }
        try {
            new C3061x(this, this, "XCLogin", string);
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "LoginActivity -- VolleyGETStringRequest Error");
            if (this.f28577M.isShowing()) {
                this.f28577M.dismiss();
            }
            Methods.l(loginActivity, getString(R.string.login_failed));
        }
    }

    public final void d(LoginActivity loginActivity, String str) {
        View viewInflate = LayoutInflater.from(loginActivity).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(loginActivity).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText("OK");
        button.setOnClickListener(new Q(this, alertDialogCreate, 10));
        alertDialogCreate.show();
    }

    @Override // g7.c
    public final void e(int i8, String str, String str2) {
        Log.d("XCIPTV_TAG", "LoginActivity - onFailureJson - " + str);
        str2.getClass();
        if (str2.equals("loginCheckOTR")) {
            Log.d("XCIPTV_TAG", "LoginActivity - LoginCheckOTR  - VolleyError error" + String.valueOf(i8));
        }
    }

    @Override // pe.hf.black20.util.d
    public final void f(String str, String str2) throws Throwable {
        str2.getClass();
        if (str2.equals("XCLogin")) {
            try {
                k(str);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "LoginActivity -- cat-livetv");
            }
        }
    }

    @Override // g7.c
    public final void g(JSONObject jSONObject, String str) throws Throwable {
        str.getClass();
        if (str.equals("loginCheckOTR")) {
            try {
                j(jSONObject);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "LoginActivity -- loginCheckOTR");
            }
        } else if (str.equals("getUserDevices")) {
            try {
                i(jSONObject);
            } catch (Exception unused2) {
                Log.d("XCIPTV_TAG", "LoginActivity -- getUserDevices");
            }
        }
    }

    public final void h() {
        if (!this.f28571J.contains("xciptv_profile")) {
            if (Config.f29414b.equals("no")) {
                q0.q().g("ORT_PROFILE", "PANEL 1 " + this.f28613v0);
                SharedPreferences.Editor editorEdit = this.f28571J.edit();
                editorEdit.putString("xciptv_profile", "PANEL 1 " + this.f28613v0);
                editorEdit.apply();
                editorEdit.commit();
                return;
            }
            return;
        }
        q0.q().g("ORT_PROFILE", this.f28571J.getString("xciptv_profile", null));
        if (this.f28571J.contains("whichPanel")) {
            q0.q().g("ORT_WHICH_PANEL", this.f28571J.getString("whichPanel", null));
        } else {
            q0.q().g("ORT_WHICH_PANEL", "xtreamcodes");
        }
        if (this.f28565G.a0(q0.q().c("ORT_PROFILE", "Default (XC)")).equals("yes")) {
            i iVarX = O.x("ORT_PROFILE", "Default (XC)", this.f28565G);
            this.f28569I = iVarX;
            f28556P0.setText(Encrypt.a(iVarX.f25482e));
            f28557Q0.setText(Encrypt.a(this.f28569I.f25480c));
            if (!this.f28571J.getString("login_type", null).equals("activationXOR")) {
                f28558R0.setText(Encrypt.a(this.f28569I.f25481d));
            } else if (this.f28571J.contains("xco_activation_cod")) {
                f28558R0.setText(Encrypt.a(this.f28571J.getString("xco_activation_cod", null)));
            } else {
                f28558R0.setText(Encrypt.a(this.f28569I.f25481d));
            }
        }
    }

    public final void i(JSONObject jSONObject) {
        LoginActivity loginActivity = this.f28575L;
        try {
            if (jSONObject.has("data")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("device")) {
                    String string = jSONObject2.getJSONObject("device").getString("id");
                    this.f28573K.putString("otr_deviceid", Encrypt.b(string));
                    this.f28573K.apply();
                    a(string);
                } else {
                    Methods.l(loginActivity, getString(R.string.login_failed));
                }
            } else {
                Methods.l(loginActivity, getString(R.string.login_failed));
            }
        } catch (JSONException unused) {
            Methods.l(loginActivity, getString(R.string.login_failed));
        }
        if (this.f28577M.isShowing()) {
            this.f28577M.dismiss();
        }
    }

    public final void j(JSONObject jSONObject) throws Throwable {
        LoginActivity loginActivity = this.f28575L;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
        try {
            if (jSONObject.has("data")) {
                Log.d("XCIPTV_TAG", "LoginActivity -- data found");
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("access_token")) {
                    Log.d("XCIPTV_TAG", "LoginActivity -- access_token found");
                    String string = jSONObject2.getString("refresh_token");
                    String string2 = jSONObject2.getString("access_token");
                    this.f28573K.putString("otr_refresh_token", Encrypt.b(string));
                    this.f28573K.putString("otr_access_token", Encrypt.b(string2));
                    this.f28573K.apply();
                    this.f28565G.O(q0.q().c("ORT_PROFILE", "Default (OTR)"), Encrypt.b(f28557Q0.getText().toString()), Encrypt.b(f28558R0.getText().toString()), Encrypt.b(this.f28596e0));
                    SharedPreferences sharedPreferences = loginActivity.getSharedPreferences("pe.hf.black20", 0);
                    this.f28571J = sharedPreferences;
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString("message", "No Messages");
                    editorEdit.putString("status_acc", "ACTIVE");
                    editorEdit.putString("exp_date", HttpUrl.FRAGMENT_ENCODE_SET);
                    editorEdit.putString("is_trial", HttpUrl.FRAGMENT_ENCODE_SET);
                    editorEdit.putString("active_cons", "0");
                    editorEdit.putString("created_at", HttpUrl.FRAGMENT_ENCODE_SET);
                    editorEdit.putString("max_connections", "0");
                    editorEdit.putString("timezone", HttpUrl.FRAGMENT_ENCODE_SET);
                    editorEdit.putString("xciptv_profile", q0.q().c("ORT_PROFILE", "Default (OTR)"));
                    editorEdit.putString("whichPanel", "otr");
                    editorEdit.putString("last_login_check", simpleDateFormat.format(new Date()));
                    editorEdit.putString("is_last_login_success", "yes");
                    editorEdit.apply();
                    startActivity(new Intent(this, (Class<?>) CategoriesActivity.class));
                    finish();
                } else {
                    Methods.l(loginActivity, getString(R.string.login_failed));
                }
            } else {
                Methods.l(loginActivity, getString(R.string.login_failed));
            }
        } catch (JSONException unused) {
            Methods.l(loginActivity, getString(R.string.login_failed));
        }
        if (this.f28577M.isShowing()) {
            this.f28577M.dismiss();
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x01e3  */
    public final void k(String str) throws Throwable {
        byte b8;
        try {
            this.f28589X = new JSONObject(str);
            JSONObject jSONObject = new JSONObject(this.f28589X.getString("user_info"));
            this.f28590Y = jSONObject;
            this.f28586U = jSONObject.getString("auth");
            this.f28580O = this.f28590Y.getString("status");
            if (this.f28586U.equals("1") && this.f28580O.equals("Active")) {
                this.f28591Z = new JSONObject(this.f28589X.getString("server_info"));
                this.f28579N = this.f28590Y.getString("message");
                this.f28580O = this.f28590Y.getString("status");
                this.f28581P = this.f28590Y.getString("exp_date");
                this.f28582Q = this.f28590Y.getString("is_trial");
                this.f28583R = this.f28590Y.getString("active_cons");
                this.f28584S = this.f28590Y.getString("created_at");
                this.f28585T = this.f28590Y.getString("max_connections");
                this.f28591Z.getString("url");
                this.f28591Z.getString("port");
                this.f28591Z.getString("https_port");
                this.f28591Z.getString("server_protocol");
                this.f28591Z.getString("rtmp_port");
                this.f28587V = this.f28591Z.getString("timezone");
                this.f28591Z.getString("timestamp_now");
                this.f28591Z.getString("time_now");
            }
        } catch (JSONException unused) {
            this.f28586U = "0";
            Log.d("XCIPTV_TAG", "LoginActivity -- XCLogin JSONException");
        }
        boolean zEquals = this.f28586U.equals("1");
        LoginActivity loginActivity = this.f28575L;
        if (!zEquals) {
            String string = this.f28571J.getString("login_type", null);
            string.getClass();
            int iHashCode = string.hashCode();
            if (iHashCode != 107855) {
                if (iHashCode != 103149417) {
                    if (iHashCode == 2041217302 && string.equals("activation")) {
                        b8 = 2;
                    } else {
                        b8 = -1;
                    }
                } else if (string.equals("login")) {
                    b8 = 1;
                } else {
                    b8 = -1;
                }
            } else if (string.equals("mac")) {
                b8 = 0;
            } else {
                b8 = -1;
            }
            if (b8 == 0) {
                Methods.l(loginActivity, "Your device is not active. Please contact support and provide MAC address.");
            } else if (b8 == 1) {
                Methods.l(loginActivity, getString(R.string.login_failed));
            } else if (b8 == 2) {
                Methods.l(loginActivity, "Invalid Activation Code!");
            }
        } else if (this.f28580O.equals("Active")) {
            this.f28565G.O(q0.q().c("ORT_PROFILE", "Default (XC)"), Encrypt.b(f28557Q0.getText().toString()), Encrypt.b(f28558R0.getText().toString()), Encrypt.b(this.f28596e0));
            SharedPreferences sharedPreferences = loginActivity.getSharedPreferences("pe.hf.black20", 0);
            this.f28571J = sharedPreferences;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("message", this.f28579N);
            editorEdit.putString("status_acc", this.f28580O);
            editorEdit.putString("exp_date", this.f28581P);
            editorEdit.putString("is_trial", this.f28582Q);
            editorEdit.putString("active_cons", this.f28583R);
            editorEdit.putString("created_at", this.f28584S);
            editorEdit.putString("max_connections", this.f28585T);
            editorEdit.putString("timezone", this.f28587V);
            editorEdit.putString("message", this.f28579N);
            editorEdit.putString("is_trial", this.f28582Q);
            editorEdit.putString("max_connections", this.f28585T);
            editorEdit.putString("exp_date", this.f28581P);
            editorEdit.putString("status_acc", this.f28580O);
            editorEdit.putString("xciptv_profile", q0.q().c("ORT_PROFILE", "Default (XC)"));
            editorEdit.putString("whichPanel", "xtreamcodes");
            editorEdit.putString("last_login_check", new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new Date()));
            editorEdit.putString("is_last_login_success", "yes");
            editorEdit.apply();
            editorEdit.commit();
            startActivity(new Intent(this, (Class<?>) SplashActivity.class));
            finish();
        } else {
            Methods.l(loginActivity, getString(R.string.account_expired));
        }
        if (this.f28577M.isShowing()) {
            this.f28577M.dismiss();
        }
    }

    public final void l(String str) {
        f28556P0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        f28557Q0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        f28558R0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        q0.q().g("ORT_WHICH_PANEL", str);
        r.n(this.f28571J, "whichPanel", str);
    }

    public final void m(String str) {
        SharedPreferences sharedPreferences = this.f28575L.getSharedPreferences("pe.hf.black20", 0);
        this.f28571J = sharedPreferences;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("xciptv_profile", str);
        editorEdit.apply();
        editorEdit.commit();
        q0.q().g("ORT_PROFILE", str);
    }

    public final void n() {
        LoginActivity loginActivity = this.f28575L;
        View viewInflate = LayoutInflater.from(loginActivity).inflate(R.layout.xciptv_dialog_select_panel_branded, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(loginActivity).create();
        Button button = (Button) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.btn_panel1);
        Button button2 = (Button) viewInflate.findViewById(R.id.btn_panel2);
        Button button3 = (Button) viewInflate.findViewById(R.id.btn_panel3);
        Button button4 = (Button) viewInflate.findViewById(R.id.btn_panel4);
        Button button5 = (Button) viewInflate.findViewById(R.id.btn_panel5);
        button.setText(this.f28571J.getString("portal_name", null));
        button2.setText(this.f28571J.getString("portal2_name", null));
        button3.setText(this.f28571J.getString("portal3_name", null));
        button4.setText(this.f28571J.getString("portal4_name", null));
        button5.setText(this.f28571J.getString("portal5_name", null));
        this.f28605n0 = (ImageView) viewInflate.findViewById(R.id.img_p1_selected);
        this.f28606o0 = (ImageView) viewInflate.findViewById(R.id.img_p2_selected);
        this.f28607p0 = (ImageView) viewInflate.findViewById(R.id.img_p3_selected);
        this.f28608q0 = (ImageView) viewInflate.findViewById(R.id.img_p4_selected);
        this.f28609r0 = (ImageView) viewInflate.findViewById(R.id.img_p5_selected);
        if (this.f28571J.getString("portal", null).equals("0")) {
            button.setVisibility(8);
            this.f28605n0.setVisibility(8);
        }
        if (this.f28571J.getString("portal2", null).equals("0")) {
            button2.setVisibility(8);
            this.f28606o0.setVisibility(8);
        }
        if (this.f28571J.getString("portal3", null).equals("0")) {
            button3.setVisibility(8);
            this.f28607p0.setVisibility(8);
        }
        if (this.f28571J.getString("portal4", null).equals("0")) {
            button4.setVisibility(8);
            this.f28608q0.setVisibility(8);
        }
        if (this.f28571J.getString("portal5", null).equals("0")) {
            button5.setVisibility(8);
            this.f28609r0.setVisibility(8);
        }
        button.setOnClickListener(new Q(this, alertDialogCreate, 0));
        button2.setOnClickListener(new Q(this, alertDialogCreate, 1));
        button3.setOnClickListener(new Q(this, alertDialogCreate, 2));
        button4.setOnClickListener(new Q(this, alertDialogCreate, 3));
        button5.setOnClickListener(new Q(this, alertDialogCreate, 4));
        if (q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 1")) {
            this.f28605n0.setAlpha(1.0f);
            this.f28606o0.setAlpha(0.0f);
            this.f28607p0.setAlpha(0.0f);
            this.f28608q0.setAlpha(0.0f);
            this.f28609r0.setAlpha(0.0f);
        } else if (q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 2")) {
            this.f28605n0.setAlpha(0.0f);
            this.f28606o0.setAlpha(1.0f);
            this.f28607p0.setAlpha(0.0f);
            this.f28608q0.setAlpha(0.0f);
            this.f28609r0.setAlpha(0.0f);
        } else if (q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 3")) {
            this.f28605n0.setAlpha(0.0f);
            this.f28606o0.setAlpha(0.0f);
            this.f28607p0.setAlpha(1.0f);
            this.f28608q0.setAlpha(0.0f);
            this.f28609r0.setAlpha(0.0f);
        } else if (q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 4")) {
            this.f28605n0.setAlpha(0.0f);
            this.f28606o0.setAlpha(0.0f);
            this.f28607p0.setAlpha(0.0f);
            this.f28608q0.setAlpha(1.0f);
            this.f28609r0.setAlpha(0.0f);
        } else if (q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 5")) {
            this.f28605n0.setAlpha(0.0f);
            this.f28606o0.setAlpha(0.0f);
            this.f28607p0.setAlpha(0.0f);
            this.f28608q0.setAlpha(0.0f);
            this.f28609r0.setAlpha(1.0f);
        }
        alertDialogCreate.show();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0075  */
    /* JADX WARN: Code duplicated, block: B:4:0x001c  */
    /* JADX WARN: Code duplicated, block: B:55:0x015f  */
    public final void o() {
        byte b8;
        String strC = q0.q().c("ORT_WHICH_PANEL", "xtreamcodes");
        strC.getClass();
        switch (strC) {
            case "ezserver":
                b8 = 0;
                break;
            case "m3u":
                b8 = 1;
                break;
            case "otr":
                b8 = 2;
                break;
            case "xtreamcodes":
                b8 = 3;
                break;
            default:
                b8 = -1;
                break;
        }
        if (b8 == 0) {
            String string = this.f28571J.getString("login_type", null);
            string.getClass();
            switch (string) {
                case "mac":
                    this.f28559A0.setVisibility(0);
                    this.f28612u0.setVisibility(8);
                    this.f28592a0.setVisibility(8);
                    this.f28610s0.setVisibility(8);
                    this.f28611t0.setVisibility(8);
                    f28554N0.setText("Refresh");
                    break;
                case "login":
                    this.f28612u0.setText(R.string.ezserver_api);
                    this.f28610s0.setVisibility(0);
                    this.f28611t0.setVisibility(0);
                    f28556P0.setHint("Enter EZServer API URL");
                    break;
                case "activation":
                    this.f28612u0.setText(R.string.enter_activation_code);
                    this.f28592a0.setVisibility(8);
                    this.f28610s0.setVisibility(8);
                    this.f28611t0.setVisibility(0);
                    f28558R0.setHint("Activation Code");
                    f28554N0.setText("Activate");
                    break;
            }
        }
        if (b8 == 1) {
            this.f28612u0.setText(R.string.m3u_stream_address);
            this.f28610s0.setVisibility(8);
            this.f28611t0.setVisibility(8);
            f28556P0.setHint("Enter M3U URL");
            return;
        }
        if (b8 == 2) {
            this.f28612u0.setText("FASTOCLOUD LOGIN");
            this.f28610s0.setVisibility(0);
            this.f28611t0.setVisibility(0);
            f28556P0.setHint("Enter FastoCloud Server");
            return;
        }
        if (b8 != 3) {
            return;
        }
        String string2 = this.f28571J.getString("login_type", null);
        string2.getClass();
        switch (string2) {
            case "mac":
                this.f28559A0.setVisibility(0);
                this.f28612u0.setVisibility(8);
                this.f28592a0.setVisibility(8);
                this.f28610s0.setVisibility(8);
                this.f28611t0.setVisibility(8);
                f28554N0.setText("Refresh");
                break;
            case "login":
                this.f28612u0.setText(R.string.xc_compatible_api);
                this.f28610s0.setVisibility(0);
                this.f28611t0.setVisibility(0);
                f28556P0.setHint("Enter XC API URL");
                break;
            case "activationXOR":
                this.f28612u0.setText(R.string.enter_activation_code);
                this.f28592a0.setVisibility(8);
                this.f28610s0.setVisibility(8);
                this.f28611t0.setVisibility(0);
                f28558R0.setHint("Activation Code");
                f28554N0.setText("Activate");
                break;
            case "activation":
                this.f28612u0.setText(R.string.enter_activation_code);
                this.f28592a0.setVisibility(8);
                this.f28610s0.setVisibility(8);
                this.f28611t0.setVisibility(0);
                f28558R0.setHint("Activation Code");
                f28554N0.setText("Activate");
                break;
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_login);
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        LoginActivity loginActivity = this.f28575L;
        if (Methods.R(loginActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        IntentFilter intentFilter = new IntentFilter("finish_alert_login");
        G g8 = new G(this, 17);
        this.f28593b0 = g8;
        if (i8 >= 33) {
            U4.a.f(loginActivity, g8, intentFilter, 4);
        } else {
            registerReceiver(g8, intentFilter);
        }
        Log.d("XCIPTV_TAG", "-------------LoginActivity----------------");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (i8 >= 30) {
            getDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        this.f28597f0 = displayMetrics.densityDpi / 160;
        final int i9 = 0;
        SharedPreferences sharedPreferences = loginActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28571J = sharedPreferences;
        this.f28573K = sharedPreferences.edit();
        this.f28565G = new a(this, 0);
        this.f28567H = new c7.d(loginActivity);
        this.f28577M = new ProgressDialog(this);
        this.f28592a0 = (FrameLayout) findViewById(R.id.layout_portal_url);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.layout_mac_activation);
        this.f28559A0 = frameLayout;
        int i10 = 8;
        frameLayout.setVisibility(8);
        this.f28616y0 = (TextView) findViewById(R.id.txt_support_line1);
        this.f28617z0 = (TextView) findViewById(R.id.txt_support_line2);
        Bitmap bitmap = null;
        this.f28616y0.setText(this.f28571J.getString("support_email", null));
        this.f28617z0.setText(this.f28571J.getString("support_phone", null));
        EditText editText = (EditText) findViewById(R.id.ed_server);
        f28556P0 = editText;
        final int i11 = 1;
        editText.setFocusable(true);
        f28556P0.requestFocus();
        f28557Q0 = (EditText) findViewById(R.id.ed_username);
        f28558R0 = (EditText) findViewById(R.id.ed_password);
        f28554N0 = (Button) findViewById(R.id.btn_login);
        Button button = (Button) findViewById(R.id.btn_signup);
        f28555O0 = button;
        button.setVisibility(8);
        ((ImageView) findViewById(R.id.img_server_logo)).bringToFront();
        this.f28600i0 = (Button) findViewById(R.id.btn_select_panel);
        this.f28610s0 = (FrameLayout) findViewById(R.id.layout_username_holder);
        this.f28611t0 = (FrameLayout) findViewById(R.id.layout_password_holder);
        this.f28612u0 = (TextView) findViewById(R.id.txt_panel_selected_desc);
        this.f28614w0 = (ImageButton) findViewById(R.id.btn_show_password);
        this.f28578M0 = (LinearLayout) findViewById(R.id.qrcode_layout);
        String str = Config.f29414b;
        if (str.equals("no")) {
            this.f28592a0.setVisibility(8);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f28592a0.getLayoutParams();
            layoutParams.height = 1;
            this.f28592a0.setLayoutParams(layoutParams);
            this.f28612u0.setVisibility(8);
        }
        final int i12 = 2;
        if (this.f28571J.contains("whichPanel")) {
            q0.q().g("ORT_WHICH_PANEL", this.f28571J.getString("whichPanel", null));
            String strC = q0.q().c("ORT_WHICH_PANEL", "xtreamcodes");
            strC.getClass();
            strC.hashCode();
            switch (strC) {
                case "ezserver":
                    this.f28613v0 = "(EZS)";
                    break;
                case "m3u":
                    this.f28613v0 = "(M3U)";
                    break;
                case "otr":
                    this.f28613v0 = "(OTR)";
                    break;
                case "xtreamcodes":
                    this.f28613v0 = "(XC)";
                    break;
                default:
                    this.f28613v0 = "(XC)";
                    break;
            }
        } else {
            q0.q().g("ORT_WHICH_PANEL", "xtreamcodes");
            this.f28613v0 = "(XC)";
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f28614w0.getLayoutParams();
        int i13 = this.f28597f0 * 35;
        layoutParams2.height = i13;
        layoutParams2.width = i13;
        this.f28614w0.setLayoutParams(layoutParams2);
        if (this.f28571J.getString("login_type", null).equals("activationXOR")) {
            this.f28614w0.setVisibility(8);
        }
        this.f28614w0.setOnClickListener(new View.OnClickListener(this) { // from class: b7.O

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ LoginActivity f10158H;

            {
                this.f10158H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String strC2;
                int i14 = i9;
                Object obj = null;
                LoginActivity loginActivity2 = this.f10158H;
                switch (i14) {
                    case 0:
                        if (!loginActivity2.f28615x0) {
                            loginActivity2.f28614w0.setBackgroundResource(R.drawable.show_pass_close);
                            LoginActivity.f28558R0.setTransformationMethod(null);
                            loginActivity2.f28615x0 = true;
                        } else {
                            loginActivity2.f28614w0.setBackgroundResource(R.drawable.show_pass);
                            LoginActivity.f28558R0.setTransformationMethod(new PasswordTransformationMethod());
                            loginActivity2.f28615x0 = false;
                        }
                        break;
                    case 1:
                        if (loginActivity2.f28571J.getString("login_type", null).equals("activation")) {
                            LoginActivity.f28557Q0.setText(LoginActivity.f28558R0.getText().toString());
                        } else if (loginActivity2.f28571J.getString("login_type", null).equals("mac")) {
                            LoginActivity.f28557Q0.setText(loginActivity2.f28571J.getString("mac", null));
                            LoginActivity.f28558R0.setText(loginActivity2.f28571J.getString("mac", null));
                        }
                        LoginActivity loginActivity3 = loginActivity2.f28575L;
                        if (!Methods.Q(loginActivity3)) {
                            Methods.l(loginActivity3, loginActivity2.getString(R.string.please_check_internet_connection));
                        } else if (!loginActivity2.f28571J.getString("login_type", null).equals("activationXOR")) {
                            String str2 = Config.f29414b;
                            if (str2.equals("yes") && p000a.r.s(LoginActivity.f28556P0)) {
                                LoginActivity.f28556P0.setError(loginActivity3.getString(R.string.xc_server_empty));
                                LoginActivity.f28556P0.requestFocus();
                            } else {
                                if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
                                    LoginActivity.f28557Q0.setText("m3u");
                                    LoginActivity.f28558R0.setText("m3u");
                                }
                                if (p000a.r.s(LoginActivity.f28557Q0)) {
                                    LoginActivity.f28557Q0.setError(loginActivity3.getString(R.string.xc_server_empty));
                                } else if (!p000a.r.s(LoginActivity.f28558R0)) {
                                    if (str2.equals("yes")) {
                                        loginActivity2.f28594c0 = LoginActivity.f28557Q0.getText().toString();
                                        loginActivity2.f28595d0 = LoginActivity.f28558R0.getText().toString();
                                        loginActivity2.f28596e0 = LoginActivity.f28556P0.getText().toString();
                                        strC2 = "Default " + loginActivity2.f28613v0;
                                    } else {
                                        loginActivity2.f28594c0 = LoginActivity.f28557Q0.getText().toString();
                                        loginActivity2.f28595d0 = LoginActivity.f28558R0.getText().toString();
                                        if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 1")) {
                                            strC2 = "PANEL 1 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 2")) {
                                            strC2 = "PANEL 2 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal2", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 3")) {
                                            strC2 = "PANEL 3 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal3", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 4")) {
                                            strC2 = "PANEL 4 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal4", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 5")) {
                                            strC2 = "PANEL 5 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal5", null);
                                        } else if (loginActivity2.f28571J.contains("xciptv_profile")) {
                                            z4.q0.q().g("ORT_PROFILE", loginActivity2.f28571J.getString("xciptv_profile", null));
                                            strC2 = z4.q0.q().c("ORT_PROFILE", "Default (XC)");
                                            if (loginActivity2.f28565G.a0(z4.q0.q().c("ORT_PROFILE", "Default (XC)")).equals("yes")) {
                                                h7.i iVarX = A0.O.x("ORT_PROFILE", "Default (XC)", loginActivity2.f28565G);
                                                loginActivity2.f28569I = iVarX;
                                                loginActivity2.f28596e0 = Encrypt.a(iVarX.f25482e);
                                            } else {
                                                loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal", null);
                                            }
                                        } else {
                                            strC2 = "PANEL 1 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal", null);
                                        }
                                    }
                                    loginActivity2.p(strC2);
                                } else {
                                    LoginActivity.f28558R0.setError(loginActivity3.getString(R.string.xc_password_empty));
                                }
                            }
                        } else if (!p000a.r.s(LoginActivity.f28558R0)) {
                            SharedPreferences.Editor editorEdit = loginActivity2.f28571J.edit();
                            editorEdit.putString("xco_activation_cod", Encrypt.b(LoginActivity.f28558R0.getText().toString()));
                            editorEdit.apply();
                            editorEdit.commit();
                            new S(loginActivity2, obj).execute(new Void[0]);
                        } else {
                            LoginActivity.f28558R0.setError(loginActivity3.getString(R.string.xc_password_empty));
                        }
                        break;
                    default:
                        Button button2 = LoginActivity.f28554N0;
                        loginActivity2.getClass();
                        if (!Config.f29414b.equals("no")) {
                            LoginActivity loginActivity4 = loginActivity2.f28575L;
                            View viewInflate = LayoutInflater.from(loginActivity4).inflate(R.layout.xciptv_dialog_select_panel, (ViewGroup) null);
                            AlertDialog alertDialogCreate = new AlertDialog.Builder(loginActivity4).create();
                            Button button3 = (Button) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.btn_xc_ld);
                            Button button4 = (Button) viewInflate.findViewById(R.id.btn_ezs_ld);
                            Button button5 = (Button) viewInflate.findViewById(R.id.btn_m3u_ld);
                            Button button6 = (Button) viewInflate.findViewById(R.id.btn_ac_ld);
                            Button button7 = (Button) viewInflate.findViewById(R.id.btn_fastocloud);
                            loginActivity2.f28601j0 = (ImageView) viewInflate.findViewById(R.id.img_xc_selected);
                            loginActivity2.f28602k0 = (ImageView) viewInflate.findViewById(R.id.img_ezs_selected);
                            loginActivity2.f28603l0 = (ImageView) viewInflate.findViewById(R.id.img_m3u_selected);
                            loginActivity2.f28604m0 = (ImageView) viewInflate.findViewById(R.id.img_otr_selected);
                            loginActivity2.q();
                            button3.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 5));
                            button4.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 6));
                            button5.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 7));
                            button7.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 8));
                            button6.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 9));
                            alertDialogCreate.show();
                        } else {
                            loginActivity2.n();
                        }
                        break;
                }
            }
        });
        this.f28614w0.setOnFocusChangeListener(new P(this, 0));
        f28554N0.setOnClickListener(new View.OnClickListener(this) { // from class: b7.O

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ LoginActivity f10158H;

            {
                this.f10158H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String strC2;
                int i14 = i11;
                Object obj = null;
                LoginActivity loginActivity2 = this.f10158H;
                switch (i14) {
                    case 0:
                        if (!loginActivity2.f28615x0) {
                            loginActivity2.f28614w0.setBackgroundResource(R.drawable.show_pass_close);
                            LoginActivity.f28558R0.setTransformationMethod(null);
                            loginActivity2.f28615x0 = true;
                        } else {
                            loginActivity2.f28614w0.setBackgroundResource(R.drawable.show_pass);
                            LoginActivity.f28558R0.setTransformationMethod(new PasswordTransformationMethod());
                            loginActivity2.f28615x0 = false;
                        }
                        break;
                    case 1:
                        if (loginActivity2.f28571J.getString("login_type", null).equals("activation")) {
                            LoginActivity.f28557Q0.setText(LoginActivity.f28558R0.getText().toString());
                        } else if (loginActivity2.f28571J.getString("login_type", null).equals("mac")) {
                            LoginActivity.f28557Q0.setText(loginActivity2.f28571J.getString("mac", null));
                            LoginActivity.f28558R0.setText(loginActivity2.f28571J.getString("mac", null));
                        }
                        LoginActivity loginActivity3 = loginActivity2.f28575L;
                        if (!Methods.Q(loginActivity3)) {
                            Methods.l(loginActivity3, loginActivity2.getString(R.string.please_check_internet_connection));
                        } else if (!loginActivity2.f28571J.getString("login_type", null).equals("activationXOR")) {
                            String str2 = Config.f29414b;
                            if (str2.equals("yes") && p000a.r.s(LoginActivity.f28556P0)) {
                                LoginActivity.f28556P0.setError(loginActivity3.getString(R.string.xc_server_empty));
                                LoginActivity.f28556P0.requestFocus();
                            } else {
                                if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
                                    LoginActivity.f28557Q0.setText("m3u");
                                    LoginActivity.f28558R0.setText("m3u");
                                }
                                if (p000a.r.s(LoginActivity.f28557Q0)) {
                                    LoginActivity.f28557Q0.setError(loginActivity3.getString(R.string.xc_server_empty));
                                } else if (!p000a.r.s(LoginActivity.f28558R0)) {
                                    if (str2.equals("yes")) {
                                        loginActivity2.f28594c0 = LoginActivity.f28557Q0.getText().toString();
                                        loginActivity2.f28595d0 = LoginActivity.f28558R0.getText().toString();
                                        loginActivity2.f28596e0 = LoginActivity.f28556P0.getText().toString();
                                        strC2 = "Default " + loginActivity2.f28613v0;
                                    } else {
                                        loginActivity2.f28594c0 = LoginActivity.f28557Q0.getText().toString();
                                        loginActivity2.f28595d0 = LoginActivity.f28558R0.getText().toString();
                                        if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 1")) {
                                            strC2 = "PANEL 1 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 2")) {
                                            strC2 = "PANEL 2 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal2", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 3")) {
                                            strC2 = "PANEL 3 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal3", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 4")) {
                                            strC2 = "PANEL 4 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal4", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 5")) {
                                            strC2 = "PANEL 5 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal5", null);
                                        } else if (loginActivity2.f28571J.contains("xciptv_profile")) {
                                            z4.q0.q().g("ORT_PROFILE", loginActivity2.f28571J.getString("xciptv_profile", null));
                                            strC2 = z4.q0.q().c("ORT_PROFILE", "Default (XC)");
                                            if (loginActivity2.f28565G.a0(z4.q0.q().c("ORT_PROFILE", "Default (XC)")).equals("yes")) {
                                                h7.i iVarX = A0.O.x("ORT_PROFILE", "Default (XC)", loginActivity2.f28565G);
                                                loginActivity2.f28569I = iVarX;
                                                loginActivity2.f28596e0 = Encrypt.a(iVarX.f25482e);
                                            } else {
                                                loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal", null);
                                            }
                                        } else {
                                            strC2 = "PANEL 1 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal", null);
                                        }
                                    }
                                    loginActivity2.p(strC2);
                                } else {
                                    LoginActivity.f28558R0.setError(loginActivity3.getString(R.string.xc_password_empty));
                                }
                            }
                        } else if (!p000a.r.s(LoginActivity.f28558R0)) {
                            SharedPreferences.Editor editorEdit = loginActivity2.f28571J.edit();
                            editorEdit.putString("xco_activation_cod", Encrypt.b(LoginActivity.f28558R0.getText().toString()));
                            editorEdit.apply();
                            editorEdit.commit();
                            new S(loginActivity2, obj).execute(new Void[0]);
                        } else {
                            LoginActivity.f28558R0.setError(loginActivity3.getString(R.string.xc_password_empty));
                        }
                        break;
                    default:
                        Button button2 = LoginActivity.f28554N0;
                        loginActivity2.getClass();
                        if (!Config.f29414b.equals("no")) {
                            LoginActivity loginActivity4 = loginActivity2.f28575L;
                            View viewInflate = LayoutInflater.from(loginActivity4).inflate(R.layout.xciptv_dialog_select_panel, (ViewGroup) null);
                            AlertDialog alertDialogCreate = new AlertDialog.Builder(loginActivity4).create();
                            Button button3 = (Button) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.btn_xc_ld);
                            Button button4 = (Button) viewInflate.findViewById(R.id.btn_ezs_ld);
                            Button button5 = (Button) viewInflate.findViewById(R.id.btn_m3u_ld);
                            Button button6 = (Button) viewInflate.findViewById(R.id.btn_ac_ld);
                            Button button7 = (Button) viewInflate.findViewById(R.id.btn_fastocloud);
                            loginActivity2.f28601j0 = (ImageView) viewInflate.findViewById(R.id.img_xc_selected);
                            loginActivity2.f28602k0 = (ImageView) viewInflate.findViewById(R.id.img_ezs_selected);
                            loginActivity2.f28603l0 = (ImageView) viewInflate.findViewById(R.id.img_m3u_selected);
                            loginActivity2.f28604m0 = (ImageView) viewInflate.findViewById(R.id.img_otr_selected);
                            loginActivity2.q();
                            button3.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 5));
                            button4.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 6));
                            button5.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 7));
                            button7.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 8));
                            button6.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 9));
                            alertDialogCreate.show();
                        } else {
                            loginActivity2.n();
                        }
                        break;
                }
            }
        });
        f28555O0.setOnClickListener(new ViewOnClickListenerC2988c(this, i10));
        this.f28600i0.setOnClickListener(new View.OnClickListener(this) { // from class: b7.O

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ LoginActivity f10158H;

            {
                this.f10158H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String strC2;
                int i14 = i12;
                Object obj = null;
                LoginActivity loginActivity2 = this.f10158H;
                switch (i14) {
                    case 0:
                        if (!loginActivity2.f28615x0) {
                            loginActivity2.f28614w0.setBackgroundResource(R.drawable.show_pass_close);
                            LoginActivity.f28558R0.setTransformationMethod(null);
                            loginActivity2.f28615x0 = true;
                        } else {
                            loginActivity2.f28614w0.setBackgroundResource(R.drawable.show_pass);
                            LoginActivity.f28558R0.setTransformationMethod(new PasswordTransformationMethod());
                            loginActivity2.f28615x0 = false;
                        }
                        break;
                    case 1:
                        if (loginActivity2.f28571J.getString("login_type", null).equals("activation")) {
                            LoginActivity.f28557Q0.setText(LoginActivity.f28558R0.getText().toString());
                        } else if (loginActivity2.f28571J.getString("login_type", null).equals("mac")) {
                            LoginActivity.f28557Q0.setText(loginActivity2.f28571J.getString("mac", null));
                            LoginActivity.f28558R0.setText(loginActivity2.f28571J.getString("mac", null));
                        }
                        LoginActivity loginActivity3 = loginActivity2.f28575L;
                        if (!Methods.Q(loginActivity3)) {
                            Methods.l(loginActivity3, loginActivity2.getString(R.string.please_check_internet_connection));
                        } else if (!loginActivity2.f28571J.getString("login_type", null).equals("activationXOR")) {
                            String str2 = Config.f29414b;
                            if (str2.equals("yes") && p000a.r.s(LoginActivity.f28556P0)) {
                                LoginActivity.f28556P0.setError(loginActivity3.getString(R.string.xc_server_empty));
                                LoginActivity.f28556P0.requestFocus();
                            } else {
                                if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
                                    LoginActivity.f28557Q0.setText("m3u");
                                    LoginActivity.f28558R0.setText("m3u");
                                }
                                if (p000a.r.s(LoginActivity.f28557Q0)) {
                                    LoginActivity.f28557Q0.setError(loginActivity3.getString(R.string.xc_server_empty));
                                } else if (!p000a.r.s(LoginActivity.f28558R0)) {
                                    if (str2.equals("yes")) {
                                        loginActivity2.f28594c0 = LoginActivity.f28557Q0.getText().toString();
                                        loginActivity2.f28595d0 = LoginActivity.f28558R0.getText().toString();
                                        loginActivity2.f28596e0 = LoginActivity.f28556P0.getText().toString();
                                        strC2 = "Default " + loginActivity2.f28613v0;
                                    } else {
                                        loginActivity2.f28594c0 = LoginActivity.f28557Q0.getText().toString();
                                        loginActivity2.f28595d0 = LoginActivity.f28558R0.getText().toString();
                                        if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 1")) {
                                            strC2 = "PANEL 1 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 2")) {
                                            strC2 = "PANEL 2 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal2", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 3")) {
                                            strC2 = "PANEL 3 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal3", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 4")) {
                                            strC2 = "PANEL 4 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal4", null);
                                        } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 5")) {
                                            strC2 = "PANEL 5 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal5", null);
                                        } else if (loginActivity2.f28571J.contains("xciptv_profile")) {
                                            z4.q0.q().g("ORT_PROFILE", loginActivity2.f28571J.getString("xciptv_profile", null));
                                            strC2 = z4.q0.q().c("ORT_PROFILE", "Default (XC)");
                                            if (loginActivity2.f28565G.a0(z4.q0.q().c("ORT_PROFILE", "Default (XC)")).equals("yes")) {
                                                h7.i iVarX = A0.O.x("ORT_PROFILE", "Default (XC)", loginActivity2.f28565G);
                                                loginActivity2.f28569I = iVarX;
                                                loginActivity2.f28596e0 = Encrypt.a(iVarX.f25482e);
                                            } else {
                                                loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal", null);
                                            }
                                        } else {
                                            strC2 = "PANEL 1 " + loginActivity2.f28613v0;
                                            loginActivity2.f28596e0 = loginActivity2.f28571J.getString("portal", null);
                                        }
                                    }
                                    loginActivity2.p(strC2);
                                } else {
                                    LoginActivity.f28558R0.setError(loginActivity3.getString(R.string.xc_password_empty));
                                }
                            }
                        } else if (!p000a.r.s(LoginActivity.f28558R0)) {
                            SharedPreferences.Editor editorEdit = loginActivity2.f28571J.edit();
                            editorEdit.putString("xco_activation_cod", Encrypt.b(LoginActivity.f28558R0.getText().toString()));
                            editorEdit.apply();
                            editorEdit.commit();
                            new S(loginActivity2, obj).execute(new Void[0]);
                        } else {
                            LoginActivity.f28558R0.setError(loginActivity3.getString(R.string.xc_password_empty));
                        }
                        break;
                    default:
                        Button button2 = LoginActivity.f28554N0;
                        loginActivity2.getClass();
                        if (!Config.f29414b.equals("no")) {
                            LoginActivity loginActivity4 = loginActivity2.f28575L;
                            View viewInflate = LayoutInflater.from(loginActivity4).inflate(R.layout.xciptv_dialog_select_panel, (ViewGroup) null);
                            AlertDialog alertDialogCreate = new AlertDialog.Builder(loginActivity4).create();
                            Button button3 = (Button) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.btn_xc_ld);
                            Button button4 = (Button) viewInflate.findViewById(R.id.btn_ezs_ld);
                            Button button5 = (Button) viewInflate.findViewById(R.id.btn_m3u_ld);
                            Button button6 = (Button) viewInflate.findViewById(R.id.btn_ac_ld);
                            Button button7 = (Button) viewInflate.findViewById(R.id.btn_fastocloud);
                            loginActivity2.f28601j0 = (ImageView) viewInflate.findViewById(R.id.img_xc_selected);
                            loginActivity2.f28602k0 = (ImageView) viewInflate.findViewById(R.id.img_ezs_selected);
                            loginActivity2.f28603l0 = (ImageView) viewInflate.findViewById(R.id.img_m3u_selected);
                            loginActivity2.f28604m0 = (ImageView) viewInflate.findViewById(R.id.img_otr_selected);
                            loginActivity2.q();
                            button3.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 5));
                            button4.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 6));
                            button5.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 7));
                            button7.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 8));
                            button6.setOnClickListener(new Q(loginActivity2, alertDialogCreate, 9));
                            alertDialogCreate.show();
                        } else {
                            loginActivity2.n();
                        }
                        break;
                }
            }
        });
        this.f28600i0.setOnFocusChangeListener(new P(this, 1));
        if (this.f28571J.contains("btn_signup")) {
            this.f28588W = this.f28571J.getString("btn_signup", null);
            Log.d("XCIPTV_TAG", "---------------btn signup -- " + this.f28588W);
            if (this.f28588W.equals("no") || this.f28588W.length() == 0) {
                f28555O0.setVisibility(8);
            } else {
                f28555O0.setVisibility(0);
            }
        }
        Methods.B();
        SharedPreferences.Editor editorEdit = this.f28571J.edit();
        if (this.f28571J.contains("tvvodseries_dl_time")) {
            editorEdit.remove("tvvodseries_dl_time").commit();
        }
        if (this.f28571J.contains("epg_dl_time")) {
            editorEdit.remove("epg_dl_time").commit();
        }
        sendBroadcast(new Intent(ORPlayerMainActivity.FINISH_ALERT));
        h();
        o();
        if (str.equals("no")) {
            if (this.f28571J.getString("portal2", null).equals("0")) {
                SharedPreferences.Editor editorEdit2 = this.f28571J.edit();
                this.f28573K = editorEdit2;
                editorEdit2.putString("XCIPTV_WHICH_PORTAL_SELECTED", "1");
                this.f28573K.apply();
                this.f28573K.commit();
            } else {
                n();
            }
        }
        if (this.f28571J.getString("btn_login_settings", null).equals("yes")) {
            this.f28600i0.setVisibility(0);
        } else {
            this.f28600i0.setVisibility(8);
        }
        if (this.f28571J.contains("mqtt_url")) {
            if (this.f28571J.getString("mqtt_url", null).equals("0")) {
                this.f28578M0.setVisibility(8);
            } else {
                new b(loginActivity, true);
                ImageView imageView2 = (ImageView) findViewById(R.id.imageView2);
                String strL = U2.l(this.f28571J.getString("customerid", null), MqttTopic.TOPIC_LEVEL_SEPARATOR, this.f28571J.getString("did", null));
                try {
                    Hashtable hashtable = new Hashtable();
                    hashtable.put(p130q5.d.f29610H, "UTF-8");
                    hashtable.put(p130q5.d.f29609G, L5.b.L);
                    hashtable.put(p130q5.d.f29611I, 1);
                    p176w5.b bVarS = AbstractC2987b.s(strL, hashtable);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, Bitmap.Config.RGB_565);
                    for (int i14 = 0; i14 < 200; i14++) {
                        for (int i15 = 0; i15 < 200; i15++) {
                            bitmapCreateBitmap.setPixel(i14, i15, bVarS.b(i14, i15) ? -16777216 : -1);
                        }
                    }
                    bitmap = bitmapCreateBitmap;
                } catch (q unused) {
                }
                if (bitmap != null) {
                    imageView2.setImageBitmap(bitmap);
                }
            }
        }
        if (Methods.P() && Methods.T(loginActivity)) {
            return;
        }
        this.f28578M0.setVisibility(8);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        MqttClient mqttClient;
        super.onDestroy();
        unregisterReceiver(this.f28593b0);
        q0.q().e("ORT_isLoginActivityVisible", false);
        this.f28565G.close();
        this.f28567H.close();
        if (!this.f28571J.contains("mqtt_url") || this.f28571J.getString("mqtt_url", null).equals("0") || (mqttClient = b.f25586b) == null || !mqttClient.isConnected()) {
            return;
        }
        b.b();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        q0.q().e("ORT_isLoginActivityVisible", true);
        f28556P0.setFocusable(true);
        Configuration configuration = getBaseContext().getResources().getConfiguration();
        Locale locale = new Locale(this.f28571J.getString("language", null));
        Locale.setDefault(locale);
        configuration.locale = locale;
        getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isLoginActivityVisible", false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f28575L)) {
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

    public final void p(String str) {
        SharedPreferences.Editor editorEdit = this.f28571J.edit();
        if (this.f28571J.contains("tvvodseries_dl_time")) {
            editorEdit.remove("tvvodseries_dl_time").commit();
        }
        editorEdit.apply();
        editorEdit.commit();
        this.f28565G.b0();
        StringBuilder sb = new StringBuilder("whichpanel---------");
        r rVar = null;
        sb.append(this.f28571J.getString("whichPanel", null));
        Log.d("XCIPTV_TAG", sb.toString());
        if (this.f28571J.contains("whichPanel")) {
            q0.q().g("ORT_WHICH_PANEL", this.f28571J.getString("whichPanel", null));
        }
        String strC = q0.q().c("ORT_WHICH_PANEL", "xtreamcodes");
        strC.getClass();
        strC.hashCode();
        switch (strC) {
            case "ezserver":
                new S(this).execute(new Void[0]);
                break;
            case "m3u":
                new S(this, rVar).execute(new Void[0]);
                break;
            case "otr":
                Log.d("XCIPTV_TAG", "LoginActivity - OTRClientDevice");
                if (this.f28571J.contains("otr_deviceid")) {
                    String strA = Encrypt.a(this.f28571J.getString("otr_deviceid", null));
                    Log.d("XCIPTV_TAG", "LoginActivity - OTRClientDevice() Device ID forund. Sending to OTRLogin() - " + strA);
                    a(strA);
                    break;
                } else {
                    Log.d("XCIPTV_TAG", "LoginActivity - OTRClientDevice() Device ID no found adding new Device");
                    String strJ = r.j(new StringBuilder(), this.f28596e0, "/panel_pro/api/client/devices/add");
                    try {
                        String string = Settings.Secure.getString(this.f28575L.getContentResolver(), "android_id");
                        HashMap map = new HashMap();
                        map.put("name", this.f28594c0 + "-" + string);
                        new C1448i6(1, this, this, "getUserDevices", strJ, new JSONObject(map), this.f28594c0, this.f28595d0);
                    } catch (Exception unused) {
                        Log.d("XCIPTV_TAG", "LoginActivity - OTR Panel Client Devices - VolleyGETStringRequest Error");
                    }
                    break;
                }
                break;
            case "xtreamcodes":
                c();
                break;
            default:
                c();
                break;
        }
        q0.q().g("ORT_PROFILE", str);
        editorEdit.putString("xciptv_profile", str);
        editorEdit.apply();
        editorEdit.commit();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void q() {
        String strC = q0.q().c("ORT_WHICH_PANEL", "xtreamcodes");
        strC.getClass();
        byte b8 = -1;
        switch (strC.hashCode()) {
            case -74375112:
                if (strC.equals("ezserver")) {
                    b8 = 0;
                }
                break;
            case 106447:
                if (strC.equals("m3u")) {
                    b8 = 1;
                }
                break;
            case 110381:
                if (strC.equals("otr")) {
                    b8 = 2;
                }
                break;
            case 1236201067:
                if (strC.equals("xtreamcodes")) {
                    b8 = 3;
                }
                break;
        }
        if (b8 == 0) {
            this.f28601j0.setAlpha(0.0f);
            this.f28602k0.setAlpha(1.0f);
            this.f28603l0.setAlpha(0.0f);
            this.f28604m0.setAlpha(0.0f);
        } else if (b8 == 1) {
            this.f28601j0.setAlpha(0.0f);
            this.f28602k0.setAlpha(0.0f);
            this.f28603l0.setAlpha(1.0f);
            this.f28604m0.setAlpha(0.0f);
        } else if (b8 == 2) {
            this.f28601j0.setAlpha(0.0f);
            this.f28602k0.setAlpha(0.0f);
            this.f28603l0.setAlpha(0.0f);
            this.f28604m0.setAlpha(1.0f);
        } else if (b8 == 3) {
            this.f28601j0.setAlpha(1.0f);
            this.f28602k0.setAlpha(0.0f);
            this.f28603l0.setAlpha(0.0f);
            this.f28604m0.setAlpha(0.0f);
        }
        o();
    }
}
