package pe.hf.black20;

import A0.O;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.UiModeManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import b7.J1;
import c7.a;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import com.google.android.gms.internal.ads.C1448i6;
import com.google.android.gms.internal.cast.X;
import com.google.protobuf.U2;
import g7.c;
import h7.i;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.r;
import p027d2.v;
import p086l.C3061x;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.OTRApp;
import pe.hf.black20.util.d;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class SplashActivity extends Activity implements d, c {

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public static final /* synthetic */ int f29173B0 = 0;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public String f29174A0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f29176H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public a f29177I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public i f29178J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public FrameLayout f29179K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f29180L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public String f29181M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public String f29182N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f29183O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String f29184P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public String f29185Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public String f29186R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public String f29187S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public String f29188T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public String f29189U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public String f29190V;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public String f29194Z;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public JSONObject f29197c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public JSONObject f29198d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public JSONObject f29199e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public JSONObject f29200f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public FrameLayout f29201g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public ImageView f29202h0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ImageView f29205k0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public JSONObject f29209o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public JSONObject f29210p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public JSONObject f29211q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public JSONObject f29212r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public JSONObject f29213s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public JSONObject f29214t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public JSONObject f29215u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public JSONObject f29216v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public JSONObject f29217w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public JSONObject f29218x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public String f29219y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public String f29220z0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final SplashActivity f29175G = this;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public String f29191W = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public String f29192X = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public String f29193Y = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public String f29195a0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f29196b0 = false;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final int f29203i0 = 1;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f29204j0 = 1;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f29206l0 = 0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public String f29207m0 = zzbz.UNKNOWN_CONTENT_TYPE;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public String f29208n0 = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        System.loadLibrary("native-lib");
    }

    private static native String AN();

    public static void a(SplashActivity splashActivity) {
        splashActivity.getClass();
        String strAN = AN();
        SplashActivity splashActivity2 = splashActivity.f29175G;
        if (!strAN.equals(splashActivity2.getString(R.string.app_name))) {
            splashActivity.finishAffinity();
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
        String str = simpleDateFormat.format(new Date());
        new Date();
        new Date();
        try {
            if (simpleDateFormat.parse(str).after(simpleDateFormat.parse("04/06/2022 23:00:00"))) {
                Log.d("XCIPTV_TAG", "----------------- Date incorrect");
                if (Methods.Q(splashActivity2)) {
                    splashActivity.h();
                } else {
                    Methods.l(splashActivity2, "Check your internet connection.");
                    splashActivity.l();
                }
            } else {
                Log.d("XCIPTV_TAG", "----------------- Date incorrect");
                AlertDialog alertDialogCreate = new AlertDialog.Builder(splashActivity).create();
                alertDialogCreate.setTitle("Date and Time!");
                alertDialogCreate.setMessage("Please check Date and Time.");
                alertDialogCreate.setButton(-3, "OK", new O5.i(splashActivity, 2));
                alertDialogCreate.show();
            }
        } catch (ParseException unused) {
        }
    }

    public static native String papione();

    public static native String papitwo();

    @Override // pe.hf.black20.util.d
    public final void b(int i8, String str, String str2) throws Throwable {
        Log.d("XCIPTV_TAG", "SplashActivity -- onFailureJson - " + str);
        str2.getClass();
        if (str2.equals("loginCheckXC")) {
            Log.d("XCIPTV_TAG", "SplashActivity LoginCheckXC  - VolleyError error" + String.valueOf(i8));
            l();
            return;
        }
        if (str2.equals("LicenseCheck")) {
            Log.d("XCIPTV_TAG", "SplashActivity loginCheckXC  - VolleyError error" + String.valueOf(i8));
            int i9 = this.f29204j0 + 1;
            this.f29204j0 = i9;
            if (i9 == 2) {
                this.f29208n0 = papitwo();
                h();
                return;
            }
            if (i9 == 3) {
                Log.d("XCIPTV_TAG", "SplashActivity - All license servers failed");
                Log.d("XCIPTV_TAG", "SplashActivity -- License Check VolleyGETStringRequest Error, loading cached data");
                String strK = k();
                if (strK != null) {
                    Log.d("XCIPTV_TAG", "SplashActivity - Loading cached data");
                    n(strK);
                } else {
                    Log.d("XCIPTV_TAG", "SplashActivity - Unable to load cached data. Sending to login");
                    l();
                }
            }
        }
    }

    public final void c(String str, String str2, String str3) {
        if (str.toLowerCase().equals("active")) {
            Log.d("XCIPTV_TAG", "SplashActivity - Found maintenance -----");
            Intent intent = new Intent(this, (Class<?>) MaintenanceActivity.class);
            intent.putExtra("message", str2);
            intent.putExtra("expire", str3);
            startActivity(intent);
            finish();
            return;
        }
        Log.d("XCIPTV_TAG", "SplashActivity - No maintenance -----");
        Object obj = null;
        if (this.f29176H.contains("xciptv_profile")) {
            q0.q().g("ORT_PROFILE", this.f29176H.getString("xciptv_profile", null));
            if (this.f29176H.getString("xciptv_profile", null).contains("(XC)")) {
                q0.q().g("ORT_WHICH_PANEL", "xtreamcodes");
            } else if (this.f29176H.getString("xciptv_profile", null).contains("(EZS)")) {
                q0.q().g("ORT_WHICH_PANEL", "ezserver");
            } else if (this.f29176H.getString("xciptv_profile", null).contains("(M3U)")) {
                q0.q().g("ORT_WHICH_PANEL", "m3u");
            } else if (this.f29176H.getString("xciptv_profile", null).contains("(OTR)")) {
                q0.q().g("ORT_WHICH_PANEL", "otr");
            }
        }
        Log.d("XCIPTV_TAG", "SplashActivity - Perform Login");
        if (this.f29177I.a0(q0.q().c("ORT_PROFILE", "Default (XC)")).equals("no")) {
            l();
            return;
        }
        if (this.f29178J.f25480c.equals("signed-out")) {
            SQLiteDatabase writableDatabase = this.f29177I.getWritableDatabase();
            try {
                writableDatabase.delete("user_history", "username = ?", new String[]{"signed-out"});
                writableDatabase.close();
                l();
                return;
            } catch (Throwable th) {
                writableDatabase.close();
                throw th;
            }
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
            if (Encrypt.a(this.f29178J.f25480c) == null || Encrypt.a(this.f29178J.f25481d) == null) {
                l();
                return;
            } else {
                m();
                return;
            }
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            if (Encrypt.a(this.f29178J.f25480c) == null || Encrypt.a(this.f29178J.f25481d) == null) {
                l();
                return;
            } else {
                new J1(this, obj).execute(new Void[0]);
                return;
            }
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
            new J1(this).execute(new Void[0]);
            return;
        }
        if (!U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
            if (Encrypt.a(this.f29178J.f25480c) == null || Encrypt.a(this.f29178J.f25481d) == null) {
                l();
                return;
            } else {
                m();
                return;
            }
        }
        if (Encrypt.a(this.f29178J.f25480c) == null || Encrypt.a(this.f29178J.f25481d) == null) {
            l();
            return;
        }
        if (!this.f29176H.contains("otr_deviceid")) {
            Log.d("XCIPTV_TAG", "SplashActivity - OTR Device ID not found. Sending to Login");
            l();
            return;
        }
        Log.d("XCIPTV_TAG", "SplashActivity - OTR Device ID found. Perform OTRLogin()");
        String strA = Encrypt.a(this.f29176H.getString("otr_deviceid", null));
        this.f29193Y = Encrypt.a(this.f29178J.f25482e);
        this.f29191W = Encrypt.a(this.f29178J.f25480c);
        this.f29192X = Encrypt.a(this.f29178J.f25481d);
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
            jSONObject3.put("id", strA);
            jSONObject3.put("os", jSONObject);
            jSONObject3.put("project", jSONObject2);
            jSONObject3.put("cpu_brand", HttpUrl.FRAGMENT_ENCODE_SET);
        } catch (JSONException unused) {
            Log.d("XCIPTV_TAG", "SplashActivity - OTR Login - JSONException Error");
            l();
        }
        Log.d("XCIPTV_TAG", "SplashActivity -- OTRClientDevice()");
        try {
            new C1448i6(1, this, this, "loginCheckOTR", r.j(new StringBuilder(), this.f29193Y, "/panel_pro/api/client/login"), jSONObject3, this.f29191W, this.f29192X);
        } catch (Exception unused2) {
            Log.d("XCIPTV_TAG", "SplashActivity - OTR Panel Client Devices - VolleyGETStringRequest Error");
            l();
        }
    }

    public final void d() {
        if (Methods.R(this.f29175G)) {
            startActivity(new Intent(this, (Class<?>) ORPlayerMainActivity.class));
            finish();
        } else {
            startActivity(new Intent(this, (Class<?>) CategoriesActivity.class));
            finish();
        }
    }

    @Override // g7.c
    public final void e(int i8, String str, String str2) {
        Log.d("XCIPTV_TAG", "SplashActivity - onFailureJson - " + str);
        str2.getClass();
        if (str2.equals("loginCheckOTR")) {
            Log.d("XCIPTV_TAG", "SplashActivity - LoginCheckOTR  - VolleyError error" + String.valueOf(i8));
            l();
        }
    }

    @Override // pe.hf.black20.util.d
    public final void f(String str, String str2) throws Throwable {
        str2.getClass();
        if (str2.equals("loginCheckXC")) {
            try {
                o(str);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "SplashActivity -- loginCheckXC");
            }
        } else if (str2.equals("LicenseCheck")) {
            try {
                n(str);
            } catch (Exception unused2) {
                Log.d("XCIPTV_TAG", "SplashActivity -- loginCheckXC");
            }
        }
    }

    @Override // g7.c
    public final void g(JSONObject jSONObject, String str) throws Throwable {
        str.getClass();
        if (str.equals("loginCheckOTR")) {
            try {
                p(jSONObject);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "SplashActivity -- loginCheckOTR");
            }
        }
    }

    public final void h() throws Throwable {
        String strReplaceAll = getString(R.string.app_name).replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        String packageName = this.f29175G.getPackageName();
        if (!strReplaceAll.equals("XCIPTV") || !packageName.equals("pe.hf.black20")) {
            i();
            return;
        }
        Log.d("XCIPTV_TAG", "SplashActivity - XCIPTV Player trying to load cache");
        String strK = k();
        if (strK != null) {
            Log.d("XCIPTV_TAG", "SplashActivity - XCIPTV Player loading cache");
            n(strK);
        } else {
            Log.d("XCIPTV_TAG", "SplashActivity - XCIPTV Player not loading cache");
            i();
        }
    }

    public final void i() throws Throwable {
        Log.d("XCIPTV_TAG", "SplashActivity - License Check Running-----------");
        String strReplaceAll = getString(R.string.app_name).replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
        StringBuilder sb = new StringBuilder();
        String str = Config.f29413a;
        sb.append(Methods.g(str));
        sb.append(strReplaceAll);
        String string = sb.toString();
        String string2 = getString(R.string.app_name);
        String packageName = this.f29175G.getPackageName();
        String strD = v.d(str, string);
        Charset charset = StandardCharsets.UTF_8;
        String strEncodeToString = Base64.encodeToString(strD.getBytes(charset), 2);
        String strEncodeToString2 = Base64.encodeToString(v.d(string2, string).getBytes(charset), 2);
        String strEncodeToString3 = Base64.encodeToString(v.d(packageName, string).getBytes(charset), 2);
        try {
            strEncodeToString = URLEncoder.encode(strEncodeToString, "UTF-8");
            strEncodeToString2 = URLEncoder.encode(strEncodeToString2, "UTF-8");
            strEncodeToString3 = URLEncoder.encode(strEncodeToString3, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f29208n0);
        sb2.append("ApiIPTV.php?tag=licV4&l=");
        sb2.append(Methods.g(Config.f29413a));
        sb2.append("&an=");
        sb2.append(strReplaceAll);
        sb2.append("&el=");
        p148t.a.h(sb2, strEncodeToString, "&ea=", strEncodeToString2, "&eb=");
        sb2.append(strEncodeToString3);
        String string3 = sb2.toString();
        if (!this.f29208n0.contains("ottrun.com")) {
            int i8 = this.f29176H.contains("ivl") ? this.f29176H.getInt("ivl", 1) + 1 : 0;
            SharedPreferences.Editor editorEdit = this.f29176H.edit();
            editorEdit.putInt("ivl", i8);
            editorEdit.apply();
            if (i8 > 50) {
                finish();
                System.exit(0);
            }
        }
        try {
            new C3061x(this, this, "LicenseCheck", string3);
        } catch (Exception unused2) {
            Log.d("XCIPTV_TAG", "SplashActivity -- License Check VolleyGETStringRequest Error");
            int i9 = this.f29204j0 + 1;
            this.f29204j0 = i9;
            if (i9 == 2) {
                this.f29208n0 = papitwo();
                h();
            } else if (i9 == 3) {
                Log.d("XCIPTV_TAG", "SplashActivity - All license servers failed");
                l();
            }
        }
    }

    public final void j(String str) {
        SharedPreferences.Editor editorEdit = this.f29176H.edit();
        editorEdit.putString("cached_login_response", str);
        editorEdit.putLong("cache_timestamp", System.currentTimeMillis());
        editorEdit.apply();
    }

    public final String k() {
        if (this.f29176H.contains("cached_login_response") && this.f29176H.contains("cache_timestamp")) {
            if (System.currentTimeMillis() - this.f29176H.getLong("cache_timestamp", 0L) < 604800000) {
                return this.f29176H.getString("cached_login_response", null);
            }
        }
        return null;
    }

    public final void l() {
        SharedPreferences.Editor editorEdit = this.f29175G.getSharedPreferences("pe.hf.black20", 0).edit();
        editorEdit.remove("tvvodseries_dl_time");
        editorEdit.remove("epg_dl_time");
        editorEdit.apply();
        SharedPreferences sharedPreferences = Methods.f29416a;
        try {
            Methods.C(new File(String.valueOf(OTRApp.f29417G.getFilesDir()).concat("/files")));
        } catch (IOException unused) {
        }
        startActivity(new Intent(this, (Class<?>) LoginActivity.class));
        finish();
    }

    public final void m() {
        String string;
        this.f29193Y = Encrypt.a(this.f29178J.f25482e);
        this.f29191W = Encrypt.a(this.f29178J.f25480c);
        String strA = Encrypt.a(this.f29178J.f25481d);
        this.f29192X = strA;
        String str = this.f29191W;
        if (!this.f29176H.contains("send_udid")) {
            StringBuilder sb = new StringBuilder();
            p148t.a.h(sb, this.f29193Y, "/player_api.php?username=", str, "&password=");
            sb.append(strA);
            string = sb.toString();
        } else if (this.f29176H.getString("send_udid", null).equals("yes")) {
            StringBuilder sb2 = new StringBuilder();
            p148t.a.h(sb2, this.f29193Y, "/player_api.php?username=", str, "&password=");
            sb2.append(strA);
            sb2.append("&uid=");
            string = U2.h(this.f29176H, "did", null, sb2);
        } else {
            StringBuilder sb3 = new StringBuilder();
            p148t.a.h(sb3, this.f29193Y, "/player_api.php?username=", str, "&password=");
            sb3.append(strA);
            string = sb3.toString();
        }
        try {
            new C3061x(this, this, "loginCheckXC", string);
        } catch (Exception unused) {
            l();
            Log.d("XCIPTV_TAG", "SplashActivity --loginCheckXC  VolleyGETStringRequest Error");
        }
    }

    /* JADX WARN: Code duplicated, block: B:200:0x0bc6  */
    /* JADX WARN: Code duplicated, block: B:48:0x0304  */
    /* JADX WARN: Code duplicated, block: B:49:0x030e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0311  */
    /* JADX WARN: Code duplicated, block: B:54:0x0323  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public final void n(String str) throws Throwable {
        String str2;
        String str3;
        String str4;
        int i8;
        String str5;
        byte b8;
        Log.d("XCIPTV_TAG", "SplashActivity - processLicenseCheckResponse-------");
        SharedPreferences.Editor editorEdit = this.f29176H.edit();
        try {
            j(str);
            str4 = "portal_vod";
            str2 = "portal5";
            try {
                JSONObject jSONObject = new JSONObject(new String(str.getBytes("ISO-8859-1"), "UTF-8"));
                this.f29200f0 = jSONObject;
                this.f29189U = jSONObject.getString("success");
                this.f29190V = this.f29200f0.getString("status");
                this.f29220z0 = getString(R.string.app_name);
                this.f29174A0 = this.f29200f0.getString("cid");
                if (this.f29200f0.has("ip")) {
                    editorEdit.putString("public_ip_address", this.f29200f0.getString("ip"));
                }
                String str6 = this.f29220z0 + this.f29174A0;
                this.f29219y0 = str6;
                this.f29219y0 = str6.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
                String strY = Methods.y(this.f29200f0.getString("app"));
                StringBuilder sb = new StringBuilder();
                str3 = "portal4";
                try {
                    sb.append(this.f29219y0);
                    sb.append("app");
                    this.f29209o0 = new JSONObject(v.g(strY, sb.toString()));
                    this.f29210p0 = new JSONObject(v.g(Methods.y(this.f29200f0.getString("portal")), this.f29219y0 + "portal"));
                    this.f29211q0 = new JSONObject(v.g(Methods.y(this.f29200f0.getString("urls")), this.f29219y0 + "urls"));
                    this.f29214t0 = new JSONObject(v.g(Methods.y(this.f29200f0.getString("button")), this.f29219y0 + "buttons"));
                    this.f29215u0 = new JSONObject(v.g(Methods.y(this.f29200f0.getString("settings")), this.f29219y0 + "sett"));
                    this.f29217w0 = new JSONObject(this.f29200f0.getString("ort_settings"));
                    this.f29216v0 = new JSONObject();
                    this.f29216v0 = this.f29200f0.getJSONObject("players");
                    this.f29218x0 = new JSONObject();
                    this.f29218x0 = this.f29200f0.getJSONObject("maintenance");
                    this.f29212r0 = new JSONObject();
                    this.f29212r0 = this.f29200f0.getJSONObject("support");
                    this.f29213s0 = new JSONObject();
                    if (this.f29200f0.has("others")) {
                        this.f29213s0 = this.f29200f0.getJSONObject("others");
                        q0.q().g("bg_epg_update", this.f29213s0.getString("bg_epg_update"));
                        if (this.f29213s0.has("reset_all_settings")) {
                            if (this.f29213s0.getString("reset_all_settings").equals("yes") && (!this.f29176H.contains("reset_all_settings_seq") || Integer.parseInt(this.f29213s0.getString("reset_all_settings_seq")) > Integer.parseInt(this.f29176H.getString("reset_all_settings_seq", null)))) {
                                Methods.V(this.f29175G);
                                SystemClock.sleep(2000L);
                            }
                            editorEdit.putString("reset_all_settings", this.f29213s0.getString("reset_all_settings"));
                            editorEdit.putString("reset_all_settings_seq", this.f29213s0.getString("reset_all_settings_seq"));
                        }
                        if (this.f29213s0.has("max_epg_file_size")) {
                            editorEdit.putString("max_epg_file_size", this.f29213s0.getString("max_epg_file_size"));
                        }
                    }
                } catch (UnsupportedEncodingException e8) {
                    e = e8;
                    Log.d("XCIPTV_TAG", String.valueOf(e));
                    i8 = this.f29204j0 + 1;
                    this.f29204j0 = i8;
                    if (i8 == 2) {
                        this.f29208n0 = papitwo();
                        h();
                    } else if (i8 == 3) {
                        Log.d("XCIPTV_TAG", "SplashActivity - All Portals Login Failed-------");
                        l();
                    }
                } catch (JSONException e9) {
                    e = e9;
                    Log.d("XCIPTV_TAG", String.valueOf(e));
                    i8 = this.f29204j0 + 1;
                    this.f29204j0 = i8;
                    if (i8 == 2) {
                        this.f29208n0 = papitwo();
                        h();
                    } else if (i8 == 3) {
                        Log.d("XCIPTV_TAG", "SplashActivity - All Portals Login Failed-------");
                        l();
                    }
                }
            } catch (UnsupportedEncodingException e10) {
                e = e10;
                str3 = "portal4";
                Log.d("XCIPTV_TAG", String.valueOf(e));
                i8 = this.f29204j0 + 1;
                this.f29204j0 = i8;
                if (i8 == 2) {
                    this.f29208n0 = papitwo();
                    h();
                } else if (i8 == 3) {
                    Log.d("XCIPTV_TAG", "SplashActivity - All Portals Login Failed-------");
                    l();
                }
                if (this.f29189U.equals("1")) {
                }
                l();
                return;
            } catch (JSONException e11) {
                e = e11;
                str3 = "portal4";
                Log.d("XCIPTV_TAG", String.valueOf(e));
                i8 = this.f29204j0 + 1;
                this.f29204j0 = i8;
                if (i8 == 2) {
                    this.f29208n0 = papitwo();
                    h();
                } else if (i8 == 3) {
                    Log.d("XCIPTV_TAG", "SplashActivity - All Portals Login Failed-------");
                    l();
                }
                if (this.f29189U.equals("1")) {
                }
                l();
                return;
            }
        } catch (UnsupportedEncodingException | JSONException e12) {
            e = e12;
            str2 = "portal5";
            str3 = "portal4";
            str4 = "portal_vod";
        }
        if (this.f29189U.equals("1") || !this.f29190V.equals("ACTIVE")) {
            l();
            return;
        }
        try {
            editorEdit.putString("customerid", this.f29174A0);
            editorEdit.putString("appid", this.f29209o0.getString("id"));
            editorEdit.putString("appname", this.f29209o0.getString("appname"));
            editorEdit.putString("expire", this.f29209o0.getString("expire"));
            editorEdit.putString("login_type", this.f29209o0.getString("login_type"));
            editorEdit.putString("version_code", this.f29209o0.getString("version_code"));
            editorEdit.putString("filter_status", this.f29209o0.getString("filter_status"));
            editorEdit.putString("epg_mode", this.f29209o0.getString("epg_mode"));
            q0.q().g("ORT_LIVE_TV_EPG_MODE", this.f29209o0.getString("epg_mode"));
            editorEdit.putString("apkautoupdate", this.f29209o0.getString("apkautoupdate"));
            if (this.f29209o0.getString("show_expire").isEmpty() || this.f29209o0.getString("show_expire").equals(HttpUrl.FRAGMENT_ENCODE_SET) || this.f29209o0.getString("show_expire").length() == 0) {
                editorEdit.putString("show_expire", "no");
            } else {
                editorEdit.putString("show_expire", this.f29209o0.getString("show_expire"));
            }
            editorEdit.putString("version", this.f29207m0);
            editorEdit.putString("versioncode", String.valueOf(this.f29206l0));
            editorEdit.putString("support_email", this.f29212r0.getString("support_email"));
            editorEdit.putString("support_phone", this.f29212r0.getString("support_phone"));
            editorEdit.putString("panel", this.f29210p0.getString("panel"));
            editorEdit.putString("portal", this.f29210p0.getString("portal"));
            editorEdit.putString("portal2", this.f29210p0.getString("portal2"));
            editorEdit.putString("portal3", this.f29210p0.getString("portal3"));
            String str7 = str3;
            editorEdit.putString(str7, this.f29210p0.getString(str7));
            String str8 = str2;
            editorEdit.putString(str8, this.f29210p0.getString(str8));
            editorEdit.putString("portal_name", this.f29210p0.getString("portal_name"));
            editorEdit.putString("portal2_name", this.f29210p0.getString("portal2_name"));
            editorEdit.putString("portal3_name", this.f29210p0.getString("portal3_name"));
            editorEdit.putString("portal4_name", this.f29210p0.getString("portal4_name"));
            editorEdit.putString("portal5_name", this.f29210p0.getString("portal5_name"));
            String str9 = str4;
            editorEdit.putString(str9, this.f29210p0.getString(str9));
            editorEdit.putString("portal_series", this.f29210p0.getString("portal_series"));
            if (!this.f29210p0.getString(str9).equals("no") || !this.f29210p0.getString(str9).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                q0.q().g("ORT_VOD_PORTAL", this.f29210p0.getString(str9));
            }
            if (!this.f29210p0.getString("portal_series").equals("no") || !this.f29210p0.getString("portal_series").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                q0.q().g("ORT_SERIES_PORTAL", this.f29210p0.getString("portal_series"));
            }
            if (this.f29210p0.getString("panel").equals("xtreamcodes")) {
                str5 = "(XC)";
            } else if (this.f29210p0.getString("panel").equals("ezserver")) {
                str5 = "(EZS)";
            } else if (this.f29210p0.getString("panel").equals("m3u")) {
                str5 = "(M3U)";
            } else {
                str5 = this.f29210p0.getString("panel").equals("otr") ? "(OTR)" : "(XC)";
            }
            if (Config.f29414b.equals("no")) {
                Log.d("XCIPTV_TAG", "---------------panel------" + this.f29210p0.getString("panel"));
                editorEdit.putString("whichPanel", this.f29210p0.getString("panel"));
                q0.q().g("ORT_WHICH_PANEL", this.f29210p0.getString("panel"));
                if (this.f29210p0.getString("portal").equals("0")) {
                    this.f29177I.c0("PANEL 1 ".concat(str5));
                } else {
                    this.f29177I.E("PANEL 1 ".concat(str5), Encrypt.b(this.f29210p0.getString("portal")));
                }
                if (this.f29210p0.getString("portal2").equals("0")) {
                    this.f29177I.c0("PANEL 2 ".concat(str5));
                } else {
                    this.f29177I.E("PANEL 2 ".concat(str5), Encrypt.b(this.f29210p0.getString("portal2")));
                }
                if (this.f29210p0.getString("portal3").equals("0")) {
                    this.f29177I.c0("PANEL 3 ".concat(str5));
                } else {
                    this.f29177I.E("PANEL 3 ".concat(str5), Encrypt.b(this.f29210p0.getString("portal3")));
                }
                if (this.f29210p0.getString(str7).equals("0")) {
                    this.f29177I.c0("PANEL 4 ".concat(str5));
                } else {
                    this.f29177I.E("PANEL 4 ".concat(str5), Encrypt.b(this.f29210p0.getString(str7)));
                }
                if (this.f29210p0.getString(str8).equals("0")) {
                    this.f29177I.c0("PANEL 5 ".concat(str5));
                } else {
                    this.f29177I.E("PANEL 5 ".concat(str5), Encrypt.b(this.f29210p0.getString(str8)));
                }
            }
            editorEdit.putString("apkurl", this.f29211q0.getString("apkurl"));
            editorEdit.putString("backupurl", this.f29211q0.getString("backupurl"));
            editorEdit.putString("logurl", this.f29211q0.getString("logurl"));
            editorEdit.putString("activation_url", this.f29211q0.getString("activation_url"));
            editorEdit.putString("epg_url", this.f29211q0.getString("epg_url"));
            editorEdit.putString("mqtt_url", "0");
            if (this.f29211q0.has("mqtt_url")) {
                editorEdit.putString("mqtt_url", this.f29211q0.getString("mqtt_url"));
                Log.d("XCIPTV_TAG", "MQTT URL - " + this.f29211q0.getString("mqtt_url"));
            }
            editorEdit.putString("ovpn_url", Encrypt.b(this.f29211q0.getString("ovpn_url")));
            if (this.f29211q0.has("socket_url")) {
                editorEdit.putString("socket_url", this.f29211q0.getString("socket_url"));
            } else {
                editorEdit.putString("socket_url", "no");
            }
            editorEdit.putString("btn_live", this.f29214t0.getString("btn_live"));
            editorEdit.putString("btn_live2", this.f29214t0.getString("btn_live2"));
            editorEdit.putString("btn_live3", this.f29214t0.getString("btn_live3"));
            editorEdit.putString("btn_live4", this.f29214t0.getString("btn_live4"));
            editorEdit.putString("btn_live5", this.f29214t0.getString("btn_live5"));
            editorEdit.putString("btn_vod", this.f29214t0.getString("btn_vod"));
            editorEdit.putString("btn_vod2", this.f29214t0.getString("btn_vod2"));
            editorEdit.putString("btn_vod3", this.f29214t0.getString("btn_vod3"));
            editorEdit.putString("btn_vod4", this.f29214t0.getString("btn_vod4"));
            editorEdit.putString("btn_vod5", this.f29214t0.getString("btn_vod5"));
            editorEdit.putString("btn_epg", this.f29214t0.getString("btn_epg"));
            editorEdit.putString("btn_epg2", this.f29214t0.getString("btn_epg2"));
            editorEdit.putString("btn_epg3", this.f29214t0.getString("btn_epg3"));
            editorEdit.putString("btn_epg4", this.f29214t0.getString("btn_epg4"));
            editorEdit.putString("btn_epg5", this.f29214t0.getString("btn_epg5"));
            editorEdit.putString("btn_series", this.f29214t0.getString("btn_series"));
            editorEdit.putString("btn_series2", this.f29214t0.getString("btn_series2"));
            editorEdit.putString("btn_series3", this.f29214t0.getString("btn_series3"));
            editorEdit.putString("btn_series4", this.f29214t0.getString("btn_series4"));
            editorEdit.putString("btn_series5", this.f29214t0.getString("btn_series5"));
            editorEdit.putString("btn_radio", this.f29214t0.getString("btn_radio"));
            editorEdit.putString("btn_radio2", this.f29214t0.getString("btn_radio2"));
            editorEdit.putString("btn_radio3", this.f29214t0.getString("btn_radio3"));
            editorEdit.putString("btn_radio4", this.f29214t0.getString("btn_radio4"));
            editorEdit.putString("btn_radio5", this.f29214t0.getString("btn_radio5"));
            editorEdit.putString("btn_catchup", this.f29214t0.getString("btn_catchup"));
            editorEdit.putString("btn_catchup2", this.f29214t0.getString("btn_catchup2"));
            editorEdit.putString("btn_catchup3", this.f29214t0.getString("btn_catchup3"));
            editorEdit.putString("btn_catchup4", this.f29214t0.getString("btn_catchup4"));
            editorEdit.putString("btn_catchup5", this.f29214t0.getString("btn_catchup5"));
            editorEdit.putString("btn_account", this.f29214t0.getString("btn_account"));
            editorEdit.putString("btn_account2", this.f29214t0.getString("btn_account2"));
            editorEdit.putString("btn_account3", this.f29214t0.getString("btn_account3"));
            editorEdit.putString("btn_pr", this.f29214t0.getString("btn_pr"));
            editorEdit.putString("btn_rec", this.f29214t0.getString("btn_rec"));
            editorEdit.putString("btn_vpn", this.f29214t0.getString("btn_vpn"));
            editorEdit.putString("btn_update", this.f29214t0.getString("btn_update"));
            editorEdit.putString("btn_noti", this.f29214t0.getString("btn_noti"));
            editorEdit.putString("btn_fav", this.f29214t0.getString("btn_fav"));
            editorEdit.putString("btn_fav2", this.f29214t0.getString("btn_fav2"));
            editorEdit.putString("btn_fav3", this.f29214t0.getString("btn_fav3"));
            editorEdit.putString("btn_fav3", this.f29214t0.getString("btn_fav3"));
            editorEdit.putString("ms", this.f29214t0.getString("ms"));
            editorEdit.putString("ms2", this.f29214t0.getString("ms2"));
            editorEdit.putString("ms3", this.f29214t0.getString("ms3"));
            editorEdit.putString("btn_signup", this.f29214t0.getString("btn_signup"));
            editorEdit.putString("btn_login_account", this.f29214t0.getString("btn_login_account"));
            editorEdit.putString("btn_login_settings", this.f29214t0.getString("btn_login_settings"));
            editorEdit.putString("player", this.f29216v0.getString("player"));
            if (!this.f29176H.contains("whichplayer_tv")) {
                if (this.f29216v0.getString("player_tv").equals("EXO")) {
                    editorEdit.putString("whichplayer_tv", "EXO");
                } else {
                    editorEdit.putString("whichplayer_tv", "VLC");
                }
            }
            if (!this.f29176H.contains("whichplayer_vod")) {
                if (this.f29216v0.getString("player_vod").equals("EXO")) {
                    editorEdit.putString("whichplayer_vod", "EXO");
                } else {
                    editorEdit.putString("whichplayer_vod", "VLC");
                }
            }
            if (!this.f29176H.contains("whichplayer_series")) {
                if (this.f29216v0.getString("player_series").equals("EXO")) {
                    editorEdit.putString("whichplayer_series", "EXO");
                } else {
                    editorEdit.putString("whichplayer_series", "VLC");
                }
            }
            if (!this.f29176H.contains("whichplayer_catchup")) {
                if (this.f29216v0.getString("player_catchup").equals("EXO")) {
                    editorEdit.putString("whichplayer_catchup", "EXO");
                } else {
                    editorEdit.putString("whichplayer_catchup", "VLC");
                }
            }
            editorEdit.putString("stream_type", this.f29216v0.getString("stream_type"));
            this.f29188T = this.f29216v0.getString("stream_type");
            if (!this.f29176H.contains("streamFormat") || this.f29188T.length() == 0) {
                editorEdit.putString("streamFormat", this.f29188T);
            }
            if (this.f29215u0.getString("all_cat").isEmpty() || this.f29215u0.getString("all_cat").equals(HttpUrl.FRAGMENT_ENCODE_SET) || this.f29215u0.getString("all_cat").length() == 0) {
                editorEdit.putString("all_cat", "no");
            } else {
                editorEdit.putString("all_cat", this.f29215u0.getString("all_cat"));
            }
            if (this.f29215u0.getString("agent").isEmpty() || this.f29215u0.getString("agent").equals(HttpUrl.FRAGMENT_ENCODE_SET) || this.f29215u0.getString("agent").length() == 0 || this.f29215u0.getString("agent").equals("no")) {
                editorEdit.putString("agent", OTRApp.f29417G.getString(R.string.app_name) + "-v7.0-2001");
            } else {
                editorEdit.putString("agent", this.f29215u0.getString("agent"));
            }
            editorEdit.putString("message_enabled", this.f29215u0.getString("message_enabled"));
            editorEdit.putString("announcement_enabled", this.f29215u0.getString("announcement_enabled"));
            editorEdit.putString("updateuserinfo_enabled", this.f29215u0.getString("updateuserinfo_enabled"));
            editorEdit.putString("whatsupcheck_enabled", this.f29215u0.getString("whatsupcheck_enabled"));
            editorEdit.putString("login_logo", this.f29215u0.getString("login_logo"));
            editorEdit.putString("settings_app", this.f29215u0.getString("settings_app"));
            editorEdit.putString("settings_account", this.f29215u0.getString("settings_account"));
            editorEdit.putString("logs", this.f29215u0.getString("logs"));
            if (!this.f29176H.contains("language")) {
                editorEdit.putString("language", this.f29215u0.getString("app_language"));
            }
            if (!this.f29176H.contains("load_last_channel")) {
                editorEdit.putString("load_last_channel", this.f29215u0.getString("load_last_channel"));
                q0.q().g("ORT_isLoadLastLiveTVChannel", this.f29176H.getString("last_profile", null));
            }
            editorEdit.putString("admob_banner_id", this.f29215u0.getString("admob_banner_id"));
            editorEdit.putString("admob_interstitial_id", this.f29215u0.getString("admob_interstitial_id"));
            if (this.f29215u0.has("send_udid")) {
                editorEdit.putString("send_udid", this.f29215u0.getString("send_udid"));
            }
            editorEdit.putString("show_cat_count", this.f29215u0.getString("show_cat_count"));
            if (this.f29215u0.has("vpn_login_view")) {
                editorEdit.putString("vpn_login_view", this.f29215u0.getString("vpn_login_view"));
            }
            String string = this.f29215u0.getString("theme");
            int iHashCode = string.hashCode();
            if (iHashCode != 100) {
                switch (iHashCode) {
                    case 49:
                        if (!string.equals("1")) {
                            b8 = -1;
                        } else {
                            b8 = 1;
                        }
                        break;
                    case 50:
                        if (!string.equals("2")) {
                            b8 = -1;
                        } else {
                            b8 = 2;
                        }
                        break;
                    case 51:
                        if (!string.equals("3")) {
                            b8 = -1;
                        } else {
                            b8 = 3;
                        }
                        break;
                    case 52:
                        if (!string.equals("4")) {
                            b8 = -1;
                        } else {
                            b8 = 4;
                        }
                        break;
                    default:
                        b8 = -1;
                        break;
                }
            } else if (string.equals("d")) {
                b8 = 0;
            } else {
                b8 = -1;
            }
            if (b8 == 0) {
                q0.q().g("ORT_THEME", "theme_d");
            } else if (b8 == 1) {
                q0.q().g("ORT_THEME", "theme_1");
            } else if (b8 == 2) {
                q0.q().g("ORT_THEME", "theme_2");
            } else if (b8 == 3) {
                q0.q().g("ORT_THEME", "theme_3");
            } else if (b8 == 4) {
                q0.q().g("ORT_THEME", "theme_1");
                if (!this.f29176H.contains("new_layout") && this.f29215u0.getString("theme").equals("4")) {
                    SharedPreferences.Editor editorEdit2 = this.f29176H.edit();
                    editorEdit2.putString("new_layout", "yes");
                    editorEdit2.apply();
                    editorEdit2.commit();
                }
            }
            editorEdit.putString("mnt_message", this.f29218x0.getString("mnt_message"));
            editorEdit.putString("mnt_status", this.f29218x0.getString("mnt_status"));
            editorEdit.putString("mnt_expire", this.f29218x0.getString("mnt_expire"));
            c(this.f29218x0.getString("mnt_status"), this.f29218x0.getString("mnt_message"), this.f29218x0.getString("mnt_expire"));
            try {
                if (!this.f29176H.contains("exo_hw")) {
                    editorEdit.putString("exo_hw", this.f29217w0.getString("exo_hw"));
                }
                if (!this.f29176H.contains("vlc_hw")) {
                    editorEdit.putString("vlc_hw", this.f29217w0.getString("vlc_hw"));
                }
                if (!this.f29176H.contains("last_volume")) {
                    editorEdit.putString("last_volume", this.f29217w0.getString("last_volume_exo"));
                }
                if (!this.f29176H.contains("last_volume")) {
                    editorEdit.putString("last_volume", this.f29217w0.getString("last_volume_vlc"));
                }
                if (!this.f29176H.contains("plyer_exo_buffer")) {
                    editorEdit.putString("plyer_exo_buffer", this.f29217w0.getString("plyer_exo_buffer"));
                }
                if (!this.f29176H.contains("plyer_vlc_buffer")) {
                    editorEdit.putString("plyer_vlc_buffer", this.f29217w0.getString("plyer_vlc_buffer"));
                }
                if (!this.f29176H.contains("video_resize_exo")) {
                    editorEdit.putString("video_resize_exo", this.f29217w0.getString("video_resize_exo"));
                }
                if (!this.f29176H.contains("video_resize_vlc")) {
                    editorEdit.putString("video_resize_vlc", this.f29217w0.getString("video_resize_vlc"));
                }
                if (!this.f29176H.contains("video_subtiltes_exo")) {
                    editorEdit.putString("video_subtiltes_exo", this.f29217w0.getString("video_subtiltes_exo"));
                }
                if (!this.f29176H.contains("video_subtiltes_vlc")) {
                    editorEdit.putString("video_subtiltes_vlc", this.f29217w0.getString("video_subtiltes_vlc"));
                }
            } catch (JSONException unused) {
            }
            if (!this.f29176H.contains("did")) {
                editorEdit.putString("did", UUID.nameUUIDFromBytes(Methods.e(8).getBytes()).toString());
            }
            if (this.f29200f0.has("admobconfig")) {
                try {
                    editorEdit.putString("AdMob_enabled", new JSONObject(this.f29200f0.getString("admobconfig")).getString("admob_enabled"));
                } catch (JSONException unused2) {
                    editorEdit.putString("AdMob_enabled", "no");
                }
            } else {
                editorEdit.putString("AdMob_enabled", "no");
            }
            if (this.f29200f0.has("freestar")) {
                editorEdit.putString("Freestar_enabled", this.f29200f0.getString("freestar"));
            } else {
                editorEdit.putString("Freestar_enabled", "no");
            }
            if (this.f29200f0.has("prebid")) {
                try {
                    JSONObject jSONObject2 = new JSONObject(this.f29200f0.getString("prebid"));
                    editorEdit.putString("Prebid_enabled", jSONObject2.getString("prebid_enabled"));
                    editorEdit.putString("Prebid_Host", jSONObject2.getString("Host"));
                    editorEdit.putString("Prebid_AdUnitId", jSONObject2.getString("AdUnitId"));
                    editorEdit.putString("Prebid_AccountId", jSONObject2.getString("AccountId"));
                    editorEdit.putString("Prebid_Banner", jSONObject2.getString("Banner"));
                } catch (JSONException unused3) {
                    editorEdit.putString("Prebid_enabled", "no");
                }
            } else {
                editorEdit.putString("Prebid_enabled", "no");
            }
            if (this.f29213s0.has("hide_other_login_type")) {
                editorEdit.putString("hide_other_login_type", this.f29213s0.getString("hide_other_login_type"));
            } else {
                editorEdit.putString("hide_other_login_type", "no");
            }
            if (this.f29213s0.has("hide_recording")) {
                editorEdit.putString("hide_recording", this.f29213s0.getString("hide_recording"));
            } else {
                editorEdit.putString("hide_recording", "no");
            }
            if (this.f29213s0.has("hide_auto_conn_vpn")) {
                editorEdit.putString("hide_auto_conn_vpn", this.f29213s0.getString("hide_auto_conn_vpn"));
            } else {
                editorEdit.putString("hide_auto_conn_vpn", "no");
            }
            editorEdit.apply();
            if (!this.f29200f0.has("vastconfig")) {
                q();
                return;
            }
            try {
                JSONObject jSONObject3 = new JSONObject(this.f29200f0.getString("vastconfig"));
                if (jSONObject3.has("vast_enabled")) {
                    SharedPreferences.Editor editorEdit3 = this.f29176H.edit();
                    editorEdit3.putString("vadse", jSONObject3.getString("vast_enabled"));
                    editorEdit3.putString("mri", jSONObject3.getString("mid_roll_interval"));
                    editorEdit3.putString("vmri", jSONObject3.getString("vod_mid_roll_interval"));
                    editorEdit3.putString("smri", jSONObject3.getString("series_mid_roll_interval"));
                    editorEdit3.putString("prsa", jSONObject3.getString("post_roll_start_at"));
                    editorEdit3.putString("vpru", jSONObject3.getString("vod_pre_roll_url"));
                    editorEdit3.putString("vmru", jSONObject3.getString("vod_mid_roll_url"));
                    editorEdit3.putString("vporu", jSONObject3.getString("vod_post_roll_url"));
                    editorEdit3.putString("spru", jSONObject3.getString("series_pre_roll_url"));
                    editorEdit3.putString("smru", jSONObject3.getString("series_mid_roll_url"));
                    editorEdit3.putString("sporu", jSONObject3.getString("series_post_roll_url"));
                    editorEdit3.apply();
                } else {
                    q();
                }
            } catch (JSONException unused4) {
                q();
            }
        } catch (JSONException unused5) {
            l();
        }
    }

    public final void o(String str) {
        try {
            this.f29197c0 = new JSONObject(new String(str.getBytes("ISO-8859-1"), "UTF-8"));
            JSONObject jSONObject = new JSONObject(this.f29197c0.getString("user_info"));
            this.f29198d0 = jSONObject;
            this.f29187S = jSONObject.getString("auth");
            this.f29181M = this.f29198d0.getString("status");
            if (this.f29187S.equals("1") && this.f29181M.equals("Active")) {
                this.f29199e0 = new JSONObject(this.f29197c0.getString("server_info"));
                this.f29180L = this.f29198d0.getString("message");
                this.f29181M = this.f29198d0.getString("status");
                this.f29182N = this.f29198d0.getString("exp_date");
                this.f29183O = this.f29198d0.getString("is_trial");
                this.f29184P = this.f29198d0.getString("active_cons");
                this.f29185Q = this.f29198d0.getString("created_at");
                this.f29186R = this.f29198d0.getString("max_connections");
                this.f29199e0.getString("url");
                this.f29199e0.getString("port");
                this.f29199e0.getString("https_port");
                this.f29199e0.getString("server_protocol");
                this.f29199e0.getString("rtmp_port");
                this.f29194Z = this.f29199e0.getString("timezone");
                this.f29199e0.getString("timestamp_now");
                this.f29199e0.getString("time_now");
            }
            if (!this.f29187S.equals("1")) {
                l();
                return;
            }
            if (!this.f29181M.equals("Active")) {
                l();
                return;
            }
            if (!Encrypt.a(this.f29178J.f25482e).equals(this.f29193Y)) {
                q0.q().g("ORT_PORTAL_CHANGE", "yes");
            }
            this.f29177I.O(q0.q().c("ORT_PROFILE", "Default (XC)"), Encrypt.b(this.f29191W), Encrypt.b(this.f29192X), Encrypt.b(this.f29193Y));
            SharedPreferences.Editor editorEdit = this.f29176H.edit();
            editorEdit.putString("message", this.f29180L);
            editorEdit.putString("status_acc", this.f29181M);
            editorEdit.putString("exp_date", this.f29182N);
            editorEdit.putString("is_trial", this.f29183O);
            editorEdit.putString("active_cons", this.f29184P);
            editorEdit.putString("created_at", this.f29185Q);
            editorEdit.putString("max_connections", this.f29186R);
            editorEdit.putString("timezone", this.f29194Z);
            editorEdit.putString("message", this.f29180L);
            editorEdit.putString("is_trial", this.f29183O);
            editorEdit.putString("max_connections", this.f29186R);
            editorEdit.putString("exp_date", this.f29182N);
            editorEdit.putString("status_acc", this.f29181M);
            editorEdit.putString("last_login_check", new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new Date()));
            editorEdit.putString("is_last_login_success", "no");
            editorEdit.apply();
            editorEdit.commit();
            d();
        } catch (UnsupportedEncodingException | JSONException unused) {
            this.f29187S = "0";
            l();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        setRequestedOrientation(0);
        super.onCreate(bundle);
        setContentView(R.layout.activity_splash);
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        SplashActivity splashActivity = this.f29175G;
        if (Methods.R(splashActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        q0.q().e("ORT_isLoadLastLiveTVChannel", false);
        CategoriesActivity.f28377I0 = false;
        getApplicationContext().getPackageName();
        Log.d("XCIPTV_TAG", "SplashActivity Started");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (i8 >= 30) {
            getDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        int i9 = displayMetrics.heightPixels;
        this.f29176H = splashActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f29177I = new a(this, 0);
        new c7.d(splashActivity);
        this.f29202h0 = (ImageView) findViewById(R.id.img_dev_by);
        ImageView imageView2 = (ImageView) findViewById(R.id.img_splash_logo);
        this.f29205k0 = imageView2;
        imageView2.setVisibility(8);
        this.f29201g0 = (FrameLayout) findViewById(R.id.layout_footer);
        ((ProgressBar) findViewById(R.id.progress_bar)).setVisibility(0);
        this.f29179K = (FrameLayout) findViewById(R.id.layout_maintenance_sp);
        this.f29179K.setVisibility(8);
        try {
            PackageInfo packageInfo = splashActivity.getPackageManager().getPackageInfo(splashActivity.getPackageName(), 0);
            this.f29207m0 = packageInfo.versionName;
            this.f29206l0 = (int) (i8 >= 28 ? p093m.d.d(packageInfo) : packageInfo.versionCode);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.d("XCIPTV_TAG", "SplashActivity - Unable to get Version Code and Version");
        }
        if (this.f29176H.contains("xciptv_profile")) {
            q0.q().g("ORT_PROFILE", this.f29176H.getString("xciptv_profile", null));
            if (this.f29176H.contains("whichPanel")) {
                q0.q().g("ORT_WHICH_PANEL", this.f29176H.getString("whichPanel", null));
            }
            if (this.f29177I.a0(q0.q().c("ORT_PROFILE", "Default (XC)")).equals("yes")) {
                this.f29178J = O.x("ORT_PROFILE", "Default (XC)", this.f29177I);
            }
        }
        if (Config.f29414b.equals("no")) {
            this.f29202h0.setVisibility(8);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f29201g0.getLayoutParams();
        layoutParams.height = (int) (((double) i9) / 6.75d);
        this.f29201g0.setLayoutParams(layoutParams);
        if (((UiModeManager) getSystemService("uimode")).getCurrentModeType() == 4) {
            q0.q().g("ORT_DEVICE_TYPE", "TV");
            Log.d("XCIPTV_TAG", "SplashActivity - Running on a TV Device");
        } else {
            q0.q().g("ORT_DEVICE_TYPE", "NON-TV");
            Log.d("XCIPTV_TAG", "SplashActivity - Running on a non-TV Device");
        }
        if (this.f29176H.contains("parental_contorl")) {
            q0.q().g("ORT_PARENTAL_CONTROL", this.f29176H.getString("parental_contorl", null));
        } else {
            q0.q().g("ORT_PARENTAL_CONTROL", "0000");
        }
        this.f29208n0 = papione();
        if (Methods.Q(splashActivity)) {
            new Handler().postDelayed(new X(this, 24), 2000L);
            Log.d("XCIPTV_TAG", "SplashActivity - Network Available");
        } else {
            Methods.l(splashActivity, getString(R.string.please_check_internet_connection));
        }
        if (!this.f29176H.contains("auto_start")) {
            SharedPreferences.Editor editorEdit = this.f29176H.edit();
            editorEdit.putString("auto_start", q0.q().c("ORT_AUTO_START_AFTER_REBOOT", "no"));
            editorEdit.apply();
        }
        Q5.a aVarQ = q0.q();
        aVarQ.g("ORT_WHICH_CAT", "TV");
        aVarQ.g("ORT_CAT_NAME", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_PARENTAL_CONTROL", "0000");
        aVarQ.g("ORT_PARENTAL_CONTROL_STATUS", "locked");
        aVarQ.g("ORT_WHICH_PLAYER", "EXO");
        aVarQ.g("ORT_DEVICE_TYPE", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_PORTAL_CHANGE", "no");
        aVarQ.g("ORT_FOOTER_LOGO", "no");
        aVarQ.g("ORT_PROFILE", "Default (XC)");
        aVarQ.g("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_SERIES_PORTAL", "no");
        aVarQ.g("ORT_VOD_PORTAL", "no");
        aVarQ.g("ORT_LIVE_TV_EPG_MODE", "yes");
        aVarQ.g("ORT_SLEEP_MODE", "on");
        aVarQ.g("ORT_LIVETV_MEDIACONTORL", "off");
        aVarQ.g("ORT_TIME_FORMAT", "12");
        aVarQ.g("ORT_WHICH_PANEL", "xtreamcodes");
        aVarQ.g("ORT_LAST_PROGRAM_REMINDER_ID", "0");
        aVarQ.g("ORT_LAST_PROFILE", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_LAST_CHANNEL_NAME", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_LAST_CATEGORY_NAME", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_LAST_CATEGORY_ID", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_LAST_STREAM_ID", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_LAST_STREAM_URL", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_LAST_CHANNEL_POS", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_LAST_CATEGORY_POS", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_USER_ONLINE_STATUS", "no");
        aVarQ.g("ORT_lastProgramReminderID", "0");
        aVarQ.f(0, "ORT_PROGRAM_REMINDER_CHANNEL_POS");
        aVarQ.f(0, "ORT_PROCESS_STATUS");
        aVarQ.f(1234567890, "ORT_SELECTED_POS");
        aVarQ.e("ORT_SPLASH_LOGO", true);
        aVarQ.e("ORT_isRecordingRunning", false);
        aVarQ.e("ORT_isCategoriesActivityVisible", false);
        aVarQ.e("ORT_isChannelListActivityVisible", false);
        aVarQ.e("ORT_isPlayStreamEPGActivityVisible", false);
        aVarQ.e("ORT_isRecordsActivityVisible", false);
        aVarQ.e("ORT_isChannelPickerActivityVisible", false);
        aVarQ.e("ORT_isOpenVPNActivityVisible", false);
        aVarQ.e("ORT_isUsersHistoryActivityVisible", false);
        aVarQ.e("ORT_isSettingsMenuActivityVisible", false);
        aVarQ.e("ORT_isParentalControlActivityVisible", false);
        aVarQ.e("ORT_isBackupActivityVisible", false);
        aVarQ.e("ORT_isLoginActivityVisible", false);
        aVarQ.e("ORT_isEPGActivityXMLTVVisible", false);
        aVarQ.e("ORT_isXCIPTVWebServerStarted", false);
        aVarQ.e("ORT_isORPlayerHomeFragmentVisible", false);
        aVarQ.e("ORT_isORPlayerTVFragmentVisible", false);
        aVarQ.e("ORT_isORPlayerVODFragmentVisible", false);
        aVarQ.e("ORT_isORPlayerSeriesFragmentVisible", false);
        aVarQ.e("ORT_remoteLongPressORPlayerHomeFragment", false);
        aVarQ.e("ORT_remoteLongPressORPlayerVODFragment", false);
        aVarQ.e("ORT_remoteLongPressORPlayerSeriesFragment", false);
        aVarQ.e("ORT_remoteLongPressORPlayerTVFragment", false);
        aVarQ.e("ORT_isLoadLastLiveTVChannel", false);
        aVarQ.e("ORT_isUpdateUserInfoRequired", true);
        aVarQ.e("ORT_isItRequiresToRunProgramReminderService", true);
        aVarQ.e("ORT_isItRequiresToRunRecordingService", true);
        aVarQ.e("ORT_isItRequiresToAnnouncementCheck", true);
        aVarQ.e("ORT_isItRequiresToRunWhatsupCheck", true);
        aVarQ.e("ORT_google_admob_enabled", true);
        aVarQ.e("ORT_google_admob_fctl", false);
        aVarQ.e("ORT_isDemo", false);
        aVarQ.g("ORT_program_reminder_program_details", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_program_reminder_Direct_source", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_program_reminder_Stream_id", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_program_reminder_Channel_name", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_program_reminder_Category_id", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_program_reminder_Category_name", HttpUrl.FRAGMENT_ENCODE_SET);
        aVarQ.g("ORT_SHOW_HIDE_OPENVPN_PUBLIC_IP", "hideip");
        if (q0.q().a("ORT_SPLASH_LOGO", true)) {
            this.f29205k0.setVisibility(0);
        }
        if (this.f29176H.contains("sleep_mode")) {
            q0.q().g("ORT_SLEEP_MODE", this.f29176H.getString("sleep_mode", null));
        }
        if (this.f29176H.contains("time_format")) {
            q0.q().g("ORT_TIME_FORMAT", this.f29176H.getString("time_format", null));
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.f29177I.close();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f29175G)) {
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

    public final void p(JSONObject jSONObject) throws Throwable {
        SplashActivity splashActivity = this.f29175G;
        Log.d("XCIPTV_TAG", "LoginActivity -- result" + jSONObject);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
        try {
            if (jSONObject.has("data")) {
                Log.d("XCIPTV_TAG", "LoginActivity -- data found");
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("access_token")) {
                    Log.d("XCIPTV_TAG", "LoginActivity -- access_token found");
                    String string = jSONObject2.getString("refresh_token");
                    String string2 = jSONObject2.getString("access_token");
                    this.f29177I.O(q0.q().c("ORT_PROFILE", "Default (OTR)"), Encrypt.b(this.f29191W), Encrypt.b(this.f29192X), Encrypt.b(this.f29193Y));
                    SharedPreferences sharedPreferences = splashActivity.getSharedPreferences("pe.hf.black20", 0);
                    this.f29176H = sharedPreferences;
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString("otr_refresh_token", Encrypt.b(string));
                    editorEdit.putString("otr_access_token", Encrypt.b(string2));
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
                    d();
                } else {
                    Methods.l(splashActivity, getString(R.string.login_failed));
                }
            } else {
                Methods.l(splashActivity, getString(R.string.login_failed));
            }
        } catch (JSONException unused) {
            Methods.l(splashActivity, getString(R.string.login_failed));
        }
    }

    public final void q() {
        SharedPreferences.Editor editorEdit = this.f29176H.edit();
        if (this.f29176H.contains("vadse")) {
            editorEdit.remove("vadse");
            editorEdit.remove("mri");
            editorEdit.remove("prsa");
            editorEdit.remove("vpru");
            editorEdit.remove("vmru");
            editorEdit.remove("vporu");
            editorEdit.remove("spru");
            editorEdit.remove("smru");
            editorEdit.remove("sporu");
            editorEdit.commit();
        }
    }
}
