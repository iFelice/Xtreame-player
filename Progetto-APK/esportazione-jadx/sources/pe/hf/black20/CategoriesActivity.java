package pe.hf.black20;

import A0.O;
import B0.C0074y;
import Z3.C0421c;
import Z3.b0;
import Z3.g0;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import b7.AsyncTaskC0547s;
import b7.C0544q;
import b7.ViewOnClickListenerC0542p;
import b7.ViewOnFocusChangeListenerC0540o;
import b7.r;
import c7.a;
import c7.b;
import com.google.android.gms.ads.AdView;
import com.google.protobuf.U2;
import g7.c;
import h7.i;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import l7.g;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONObject;
import p043f3.e;
import p043f3.f;
import p104n2.t;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.fastogt.updatecontent.OTRUpdateContents;
import pe.hf.black20.services.OTRServices;
import pe.hf.black20.updatecontents.EZServerUpdateContents;
import pe.hf.black20.updatecontents.M3UUpdateContents;
import pe.hf.black20.updatecontents.XCUpdateContents;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.OTRApp;
import pe.hf.black20.util.d;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class CategoriesActivity extends Activity implements d, c {

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public static String f28376H0 = null;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public static boolean f28377I0 = false;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public static int f28378J0 = 0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public static int f28379K0 = 0;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public static int f28380L0 = 0;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public static int f28381M0 = 0;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public static int f28382N0 = 0;
    public static final String THEME = "yes";
    public static final String cat_tv;
    public static final String cat_vod;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public C0544q f28383A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public ImageView f28384B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public AdView f28385C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public b0 f28386D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public final AtomicBoolean f28387E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public final ExecutorService f28388F0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final CategoriesActivity f28389G = this;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public final C0544q f28390G0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f28391H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public SharedPreferences.Editor f28392I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public a f28393J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public i f28394K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public c7.d f28395L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public SimpleDateFormat f28396M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f28397N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f28398O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f28399P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f28400Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f28401R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f28402S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f28403T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f28404U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f28405V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f28406W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public String f28407X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public String f28408Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public String f28409Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public ImageButton f28410a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public ImageButton f28411b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public ImageButton f28412c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public ImageButton f28413d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public ImageButton f28414e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public ImageButton f28415f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public ImageButton f28416g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public ImageButton f28417h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public ImageButton f28418i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public ImageButton f28419j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ImageButton f28420k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public ImageButton f28421l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public ImageButton f28422m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public ImageButton f28423n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public ImageButton f28424o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public ImageButton f28425p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public FrameLayout f28426q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public ImageView f28427r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public TextView f28428s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public TextView f28429t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public TextView f28430u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public boolean f28431v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public ArrayList f28432w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public ArrayList f28433x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public JSONArray f28434y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public FrameLayout f28435z0;

    static {
        System.loadLibrary("native-lib");
        f28377I0 = false;
        SharedPreferences sharedPreferences = Methods.f29416a;
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(OTRApp.f29417G.getResources(), R.drawable.cat_tv);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.PNG;
        bitmapDecodeResource.compress(compressFormat, 100, byteArrayOutputStream);
        cat_tv = String.valueOf(byteArrayOutputStream.toByteArray().length / 1024);
        Bitmap bitmapDecodeResource2 = BitmapFactory.decodeResource(OTRApp.f29417G.getResources(), R.drawable.cat_vod);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        bitmapDecodeResource2.compress(compressFormat, 100, byteArrayOutputStream2);
        cat_vod = String.valueOf(byteArrayOutputStream2.toByteArray().length / 1024);
    }

    public CategoriesActivity() {
        new ArrayList();
        this.f28397N = 0;
        this.f28398O = 0;
        this.f28399P = 0;
        this.f28400Q = 0;
        this.f28401R = 0;
        this.f28402S = 0;
        this.f28403T = 0;
        this.f28404U = 0;
        this.f28405V = 0;
        this.f28406W = 0;
        this.f28408Y = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28409Z = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f28431v0 = false;
        this.f28432w0 = new ArrayList();
        this.f28433x0 = new ArrayList();
        this.f28387E0 = new AtomicBoolean(false);
        this.f28388F0 = Executors.newSingleThreadExecutor();
        new Handler(Looper.getMainLooper());
        this.f28390G0 = new C0544q(this, 0);
    }

    private static native String AN();

    public static native String gan();

    public static boolean i(Context context) {
        Iterator<JobInfo> it = ((JobScheduler) context.getSystemService("jobscheduler")).getAllPendingJobs().iterator();
        while (it.hasNext()) {
            if (it.next().getId() == 123) {
                return true;
            }
        }
        return false;
    }

    public static void l(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("pe.hf.black20", 0);
        if (sharedPreferences.contains("whichPanel")) {
            q0.q().g("ORT_WHICH_PANEL", sharedPreferences.getString("whichPanel", null));
        }
    }

    public static void m(Activity activity) {
        ((JobScheduler) activity.getSystemService("jobscheduler")).cancel(123);
    }

    public final void a() {
        Log.d("XCIPTV_TAG", "XCCheckIfEPGNeedToDownload-----------------started.");
        if (q0.q().b("ORT_PROCESS_STATUS") == 0) {
            boolean zContains = this.f28391H.contains("epg_dl_time");
            CategoriesActivity categoriesActivity = this.f28389G;
            if (!zContains) {
                Log.d("XCIPTV_TAG", "CategoriesActivity - EPG Need to download");
                g.b(categoriesActivity);
                return;
            }
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
                String str = simpleDateFormat.format(new Date());
                Date date = simpleDateFormat.parse(str);
                Date date2 = simpleDateFormat.parse(this.f28391H.getString("epg_dl_time", null));
                Log.d("XCIPTV_TAG", "------------hr--" + String.valueOf(Methods.j(date2, date)));
                if (Methods.j(date2, date) > 12) {
                    Log.d("XCIPTV_TAG", "CategoriesActivity - EPG Need to download");
                    SharedPreferences.Editor editorEdit = this.f28391H.edit();
                    editorEdit.putString("epg_dl_time", str);
                    editorEdit.apply();
                    editorEdit.commit();
                    g.b(categoriesActivity);
                } else {
                    Log.d("XCIPTV_TAG", "CategoriesActivity - Skipping EPG Download. EPG Downloaded Less than 12 hrs ago.");
                }
            } catch (ParseException unused) {
            }
        }
    }

    @Override // pe.hf.black20.util.d
    public final void b(int i8, String str, String str2) {
        Log.d("XCIPTV_TAG", "CategoriesActivity -- onFailureJson Error");
        str2.getClass();
        if (str2.equals("getIPAddress")) {
            try {
                SharedPreferences.Editor editorEdit = this.f28391H.edit();
                this.f28392I = editorEdit;
                editorEdit.putString("external_ip", "0.0.0.0");
                this.f28392I.apply();
                this.f28392I.commit();
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "SplashActivity -- loginCheckXC");
            }
        }
    }

    public final void c(String str) {
        CategoriesActivity categoriesActivity = this.f28389G;
        View viewInflate = LayoutInflater.from(categoriesActivity).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(categoriesActivity).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(categoriesActivity.getString(R.string.xc_ok));
        button.setOnClickListener(new r(this, alertDialogCreate, 0));
        alertDialogCreate.show();
    }

    public final void d() {
        if (!Methods.E(this.f28389G, gan())) {
            finishAffinity();
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            this.f28410a0.setVisibility(0);
            this.f28415f0.setVisibility(8);
            this.f28411b0.setVisibility(0);
            this.f28416g0.setVisibility(0);
            this.f28413d0.setVisibility(8);
            this.f28412c0.setVisibility(8);
            this.f28417h0.setVisibility(0);
            this.f28418i0.setVisibility(0);
            this.f28419j0.setVisibility(0);
            this.f28423n0.setVisibility(8);
            this.f28427r0.setVisibility(8);
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
            this.f28410a0.setVisibility(8);
            this.f28415f0.setVisibility(8);
            this.f28411b0.setVisibility(8);
            this.f28416g0.setVisibility(8);
            this.f28413d0.setVisibility(8);
            this.f28412c0.setVisibility(8);
            this.f28417h0.setVisibility(0);
            this.f28418i0.setVisibility(0);
            this.f28419j0.setVisibility(0);
            this.f28423n0.setVisibility(0);
            this.f28427r0.setVisibility(8);
        }
        Object obj = null;
        if (!this.f28391H.contains("whichplayer")) {
            q0.q().g("ORT_WHICH_PLAYER", this.f28391H.getString("player", null));
        } else if (this.f28391H.getString("whichplayer", null).equals("EXO")) {
            q0.q().g("ORT_WHICH_PLAYER", "EXO");
        } else {
            q0.q().g("ORT_WHICH_PLAYER", "VLC");
        }
        if (this.f28391H.contains("video_resize")) {
            this.f28391H.getString("video_resize", null);
        }
        if (Config.f29414b.equals("yes")) {
            this.f28410a0.setVisibility(0);
            this.f28415f0.setVisibility(0);
            this.f28411b0.setVisibility(0);
            this.f28416g0.setVisibility(0);
            this.f28413d0.setVisibility(0);
            this.f28412c0.setVisibility(0);
            this.f28417h0.setVisibility(0);
            this.f28418i0.setVisibility(0);
            this.f28419j0.setVisibility(0);
            this.f28423n0.setVisibility(8);
            this.f28408Y = this.f28391H.getString("exp_date", null);
        } else if (this.f28391H.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("1")) {
            if (this.f28391H.getString("btn_live", null).equals("No")) {
                this.f28410a0.setVisibility(8);
            } else {
                this.f28410a0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_epg", null).equals("No")) {
                this.f28415f0.setVisibility(8);
            } else {
                this.f28415f0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_vod", null).equals("No")) {
                this.f28411b0.setVisibility(8);
            } else {
                this.f28411b0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_series", null).equals("No")) {
                this.f28416g0.setVisibility(8);
            } else {
                this.f28416g0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_radio", null).equals("No")) {
                this.f28413d0.setVisibility(8);
            } else {
                this.f28413d0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_catchup", null).equals("No")) {
                this.f28412c0.setVisibility(8);
            } else {
                this.f28412c0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_account", null).equals("no")) {
                this.f28417h0.setVisibility(8);
            } else {
                this.f28417h0.setVisibility(0);
            }
            if (this.f28391H.getString("ms", null).equals("no")) {
                this.f28418i0.setVisibility(8);
            } else {
                this.f28418i0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_fav", null).equals("no")) {
                this.f28419j0.setVisibility(8);
            } else {
                this.f28419j0.setVisibility(0);
            }
        } else if (this.f28391H.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("2")) {
            if (this.f28391H.getString("btn_live2", null).equals("No")) {
                this.f28410a0.setVisibility(8);
            } else {
                this.f28410a0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_epg2", null).equals("No")) {
                this.f28415f0.setVisibility(8);
            } else {
                this.f28415f0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_vod2", null).equals("No")) {
                this.f28411b0.setVisibility(8);
            } else {
                this.f28411b0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_series2", null).equals("No")) {
                this.f28416g0.setVisibility(8);
            } else {
                this.f28416g0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_radio2", null).equals("No")) {
                this.f28413d0.setVisibility(8);
            } else {
                this.f28413d0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_catchup2", null).equals("No")) {
                this.f28412c0.setVisibility(8);
            } else {
                this.f28412c0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_account", null).equals("no")) {
                this.f28417h0.setVisibility(8);
            } else {
                this.f28417h0.setVisibility(0);
            }
            if (this.f28391H.getString("ms", null).equals("no")) {
                this.f28418i0.setVisibility(8);
            } else {
                this.f28418i0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_fav", null).equals("no")) {
                this.f28419j0.setVisibility(8);
            } else {
                this.f28419j0.setVisibility(0);
            }
        } else if (this.f28391H.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("3")) {
            if (this.f28391H.getString("btn_live3", null).equals("No")) {
                this.f28410a0.setVisibility(8);
            } else {
                this.f28410a0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_epg3", null).equals("No")) {
                this.f28415f0.setVisibility(8);
            } else {
                this.f28415f0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_vod3", null).equals("No")) {
                this.f28411b0.setVisibility(8);
            } else {
                this.f28411b0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_series3", null).equals("No")) {
                this.f28416g0.setVisibility(8);
            } else {
                this.f28416g0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_radio3", null).equals("No")) {
                this.f28413d0.setVisibility(8);
            } else {
                this.f28413d0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_catchup3", null).equals("No")) {
                this.f28412c0.setVisibility(8);
            } else {
                this.f28412c0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_account", null).equals("no")) {
                this.f28417h0.setVisibility(8);
            } else {
                this.f28417h0.setVisibility(0);
            }
            if (this.f28391H.getString("ms", null).equals("no")) {
                this.f28418i0.setVisibility(8);
            } else {
                this.f28418i0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_fav", null).equals("no")) {
                this.f28419j0.setVisibility(8);
            } else {
                this.f28419j0.setVisibility(0);
            }
        } else if (this.f28391H.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("4")) {
            if (this.f28391H.getString("btn_live4", null).equals("No")) {
                this.f28410a0.setVisibility(8);
            } else {
                this.f28410a0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_epg4", null).equals("No")) {
                this.f28415f0.setVisibility(8);
            } else {
                this.f28415f0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_vod4", null).equals("No")) {
                this.f28411b0.setVisibility(8);
            } else {
                this.f28411b0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_series4", null).equals("No")) {
                this.f28416g0.setVisibility(8);
            } else {
                this.f28416g0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_radio4", null).equals("No")) {
                this.f28413d0.setVisibility(8);
            } else {
                this.f28413d0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_catchup4", null).equals("No")) {
                this.f28412c0.setVisibility(8);
            } else {
                this.f28412c0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_account", null).equals("no")) {
                this.f28417h0.setVisibility(8);
            } else {
                this.f28417h0.setVisibility(0);
            }
            if (this.f28391H.getString("ms", null).equals("no")) {
                this.f28418i0.setVisibility(8);
            } else {
                this.f28418i0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_fav", null).equals("no")) {
                this.f28419j0.setVisibility(8);
            } else {
                this.f28419j0.setVisibility(0);
            }
        } else if (this.f28391H.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("5")) {
            if (this.f28391H.getString("btn_live5", null).equals("No")) {
                this.f28410a0.setVisibility(8);
            } else {
                this.f28410a0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_epg5", null).equals("No")) {
                this.f28415f0.setVisibility(8);
            } else {
                this.f28415f0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_vod5", null).equals("No")) {
                this.f28411b0.setVisibility(8);
            } else {
                this.f28411b0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_series5", null).equals("No")) {
                this.f28416g0.setVisibility(8);
            } else {
                this.f28416g0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_radio5", null).equals("No")) {
                this.f28413d0.setVisibility(8);
            } else {
                this.f28413d0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_catchup5", null).equals("No")) {
                this.f28412c0.setVisibility(8);
            } else {
                this.f28412c0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_account", null).equals("no")) {
                this.f28417h0.setVisibility(8);
            } else {
                this.f28417h0.setVisibility(0);
            }
            if (this.f28391H.getString("ms", null).equals("no")) {
                this.f28418i0.setVisibility(8);
            } else {
                this.f28418i0.setVisibility(0);
            }
            if (this.f28391H.getString("btn_fav", null).equals("no")) {
                this.f28419j0.setVisibility(8);
            } else {
                this.f28419j0.setVisibility(0);
            }
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            this.f28428s0.setVisibility(0);
            new AsyncTaskC0547s(this, obj).execute(new Void[0]);
        }
        this.f28410a0.requestFocus();
    }

    @Override // g7.c
    public final void e(int i8, String str, String str2) {
        Log.d("XCIPTV_TAG", str);
    }

    @Override // pe.hf.black20.util.d
    public final void f(String str, String str2) {
        str2.getClass();
        if (str2.equals("getIPAddress")) {
            try {
                String string = new JSONObject(str).getString("ip");
                SharedPreferences.Editor editorEdit = this.f28391H.edit();
                this.f28392I = editorEdit;
                editorEdit.putString("external_ip", string);
                this.f28392I.apply();
                this.f28392I.commit();
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "SplashActivity -- loginCheckXC");
            }
        }
    }

    @Override // g7.c
    public final void g(JSONObject jSONObject, String str) {
        Log.d("XCIPTV_TAG", String.valueOf(jSONObject));
    }

    public final void h() {
        if (this.f28387E0.getAndSet(true)) {
            return;
        }
        Log.d("XCIPTV_TAG", "--ADs---------AdMob");
        this.f28435z0.setVisibility(0);
        AdView adView = new AdView(this);
        this.f28385C0 = adView;
        adView.setAdSize(p043f3.g.f25164h);
        this.f28385C0.setAdUnitId(this.f28389G.getString(R.string.xc_banner_id));
        this.f28435z0.addView(this.f28385C0);
        this.f28385C0.b(new f(new e(3)));
    }

    public final void j() {
        AdView adView;
        if (this.f28391H.contains("AdMob_enabled") && this.f28391H.getString("AdMob_enabled", null).equals("yes") && (adView = this.f28385C0) != null) {
            adView.c();
        }
    }

    public final void k() {
        if (this.f28391H.contains("whichPanel")) {
            q0.q().g("ORT_WHICH_PANEL", this.f28391H.getString("whichPanel", null));
        }
        q0.q().f(0, "ORT_PROCESS_STATUS");
        if (q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("xtreamcodes")) {
            Methods.m(this.f28389G, "no");
            startActivity(new Intent(this, (Class<?>) XCUpdateContents.class));
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            startActivity(new Intent(this, (Class<?>) EZServerUpdateContents.class));
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
            startActivity(new Intent(this, (Class<?>) M3UUpdateContents.class));
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
            startActivity(new Intent(this, (Class<?>) OTRUpdateContents.class));
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        CategoriesActivity categoriesActivity = this.f28389G;
        View viewInflate = LayoutInflater.from(categoriesActivity).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(categoriesActivity).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(R.string.are_you_sure_you_want_to_exit);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(categoriesActivity.getString(R.string.xc_yes));
        button.setOnClickListener(new r(this, alertDialogCreate, 1));
        Button button2 = (Button) viewInflate.findViewById(R.id.button_no);
        button2.setText(categoriesActivity.getString(R.string.xc_no));
        button2.setOnClickListener(new r(this, alertDialogCreate, 2));
        alertDialogCreate.show();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Configuration configuration = getResources().getConfiguration();
        configuration.fontScale = 1.0f;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 30) {
            getDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        displayMetrics.scaledDensity = configuration.fontScale * displayMetrics.density;
        getBaseContext().getResources().updateConfiguration(configuration, displayMetrics);
        if (q0.q().c("ORT_THEME", "theme_d").equals("theme_d")) {
            setContentView(R.layout.activity_categories);
        } else if (U2.z("ORT_THEME", "theme_d", "theme_1")) {
            setContentView(R.layout.activity_categories_theme_1);
        } else if (U2.z("ORT_THEME", "theme_d", "theme_2")) {
            setContentView(R.layout.activity_categories_theme_2);
        } else if (U2.z("ORT_THEME", "theme_d", "theme_3")) {
            setContentView(R.layout.activity_categories_theme_3);
        } else {
            setContentView(R.layout.activity_categories);
        }
        if (i8 >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        IntentFilter intentFilter = new IntentFilter(ORPlayerMainActivity.FINISH_ALERT);
        C0544q c0544q = new C0544q(this, 1);
        this.f28383A0 = c0544q;
        int i9 = 4;
        if (i8 >= 33) {
            U4.a.f(this.f28389G, c0544q, intentFilter, 4);
        } else {
            registerReceiver(c0544q, intentFilter);
        }
        this.f28391H = this.f28389G.getSharedPreferences("pe.hf.black20", 0);
        f28376H0 = getApplicationContext().getPackageName();
        SharedPreferences.Editor editorEdit = this.f28391H.edit();
        this.f28392I = editorEdit;
        editorEdit.putString("bi", Encrypt.b(f28376H0));
        this.f28392I.apply();
        this.f28392I.commit();
        this.f28393J = new a(this.f28389G, 0);
        new b(this.f28389G, 1);
        if (this.f28391H.contains("xciptv_profile")) {
            q0.q().g("ORT_PROFILE", this.f28391H.getString("xciptv_profile", null));
        }
        this.f28395L = new c7.d(this.f28389G);
        new b(this.f28389G, 0);
        ImageView imageView = (ImageView) findViewById(R.id.img_foolter_logo);
        this.f28427r0 = imageView;
        int i10 = 8;
        imageView.setVisibility(8);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.layout_admob_banner);
        this.f28435z0 = frameLayout;
        frameLayout.setVisibility(8);
        this.f28414e0 = (ImageButton) findViewById(R.id.btn_settings_ct);
        this.f28415f0 = (ImageButton) findViewById(R.id.btn_epg_ct);
        this.f28410a0 = (ImageButton) findViewById(R.id.btn_tv_ct);
        this.f28411b0 = (ImageButton) findViewById(R.id.btn_movies_ct);
        this.f28416g0 = (ImageButton) findViewById(R.id.btn_series_ct);
        this.f28413d0 = (ImageButton) findViewById(R.id.btn_radio_ct);
        this.f28412c0 = (ImageButton) findViewById(R.id.btn_vod_ct);
        this.f28417h0 = (ImageButton) findViewById(R.id.btn_accounts);
        this.f28418i0 = (ImageButton) findViewById(R.id.btn_multiscreen);
        this.f28419j0 = (ImageButton) findViewById(R.id.btn_favorites);
        this.f28421l0 = (ImageButton) findViewById(R.id.btn_records);
        this.f28420k0 = (ImageButton) findViewById(R.id.btn_noti_ct);
        this.f28422m0 = (ImageButton) findViewById(R.id.btn_update);
        this.f28424o0 = (ImageButton) findViewById(R.id.btn_pr);
        this.f28425p0 = (ImageButton) findViewById(R.id.btn_search);
        this.f28423n0 = (ImageButton) findViewById(R.id.btn_all_streams);
        this.f28415f0.setVisibility(8);
        this.f28410a0.setVisibility(8);
        this.f28411b0.setVisibility(8);
        this.f28416g0.setVisibility(8);
        this.f28413d0.setVisibility(8);
        this.f28412c0.setVisibility(8);
        this.f28417h0.setVisibility(8);
        this.f28418i0.setVisibility(8);
        this.f28419j0.setVisibility(8);
        this.f28423n0.setVisibility(8);
        this.f28428s0 = (TextView) findViewById(R.id.txt_expire);
        this.f28429t0 = (TextView) findViewById(R.id.txt_date_ch);
        this.f28430u0 = (TextView) findViewById(R.id.txt_time_ch);
        this.f28426q0 = (FrameLayout) findViewById(R.id.layout_footer);
        if (this.f28391H.contains("time_format") && this.f28391H.getString("time_format", null).equals("24")) {
            q0.q().g("ORT_TIME_FORMAT", "24");
        }
        if (this.f28391H.contains("btn_pr") && this.f28391H.getString("btn_pr", null).equals("no")) {
            this.f28424o0.setVisibility(8);
        }
        if (this.f28391H.contains("btn_rec") && this.f28391H.getString("btn_rec", null).equals("no")) {
            this.f28421l0.setVisibility(8);
        }
        if (this.f28391H.contains("hide_recording") && this.f28391H.getString("hide_recording", null).equals("yes")) {
            this.f28421l0.setVisibility(8);
        }
        if (this.f28391H.contains("btn_noti") && this.f28391H.getString("btn_noti", null).equals("no")) {
            this.f28420k0.setVisibility(8);
        }
        if (this.f28391H.contains("btn_update") && this.f28391H.getString("btn_update", null).equals("no")) {
            this.f28422m0.setVisibility(8);
        }
        if (!U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
            this.f28394K = O.x("ORT_PROFILE", "Default (XC)", this.f28393J);
            q0.q().g("ORT_PROFILE_ID", this.f28394K.f25478a);
            q0.q().g("ORT_PROFILE_SERVER", this.f28394K.f25482e);
            q0.q().g("ORT_PROFILE_USERNAME", this.f28394K.f25480c);
            q0.q().g("ORT_PROFILE_PASSWORD", this.f28394K.f25481d);
            String strA = Encrypt.a(this.f28394K.f25482e);
            this.f28392I = this.f28391H.edit();
            if (!this.f28391H.contains("XCIPTV_WHICH_PORTAL_SELECTED")) {
                this.f28392I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "1");
            } else if (this.f28391H.getString("portal", null).equals(strA) && this.f28394K.f25479b.contains("PANEL 1")) {
                this.f28392I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "1");
            } else if (this.f28391H.getString("portal2", null).equals(strA) && this.f28394K.f25479b.contains("PANEL 2")) {
                this.f28392I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "2");
            } else if (this.f28391H.getString("portal3", null).equals(strA) && this.f28394K.f25479b.contains("PANEL 3")) {
                this.f28392I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "3");
            } else if (this.f28391H.getString("portal4", null).equals(strA) && this.f28394K.f25479b.contains("PANEL 4")) {
                this.f28392I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "4");
            } else if (this.f28391H.getString("portal5", null).equals(strA) && this.f28394K.f25479b.contains("PANEL 5")) {
                this.f28392I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "5");
            }
            this.f28392I.apply();
            this.f28392I.commit();
        }
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        if (i8 >= 30) {
            getDisplay().getRealMetrics(displayMetrics2);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics2);
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics2);
        }
        f28378J0 = displayMetrics2.heightPixels;
        f28379K0 = displayMetrics2.widthPixels;
        f28382N0 = displayMetrics2.densityDpi / 160;
        getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics2);
        f28380L0 = displayMetrics2.heightPixels;
        f28381M0 = displayMetrics2.widthPixels;
        ImageView imageView2 = (ImageView) findViewById(R.id.img_logo);
        this.f28384B0 = imageView2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView2.getLayoutParams();
        int i11 = 3;
        double d6 = f28378J0 / 3;
        int i12 = (int) (d6 * 0.5d);
        layoutParams.height = i12;
        layoutParams.width = i12;
        layoutParams.setMargins(0, (int) (d6 * 0.12d), 0, 0);
        this.f28384B0.setLayoutParams(layoutParams);
        int i13 = 13;
        int i14 = f28378J0 / 13;
        this.f28397N = i14;
        this.f28398O = (int) (((double) i14) * 1.5d);
        if (U2.z("ORT_THEME", "theme_d", "theme_2")) {
            int i15 = f28378J0;
            int i16 = i15 / 4;
            this.f28399P = i16;
            double d8 = i16;
            this.f28402S = (int) (d8 * 1.15d);
            double d9 = ((double) i15) / 2.4d;
            this.f28400Q = (int) d9;
            this.f28401R = (int) (d9 * 1.15d);
            int i17 = (int) (0.4d * d8);
            this.f28403T = i17;
            int i18 = (int) (d8 * 0.5d);
            this.f28404U = i18;
            this.f28405V = i17;
            this.f28406W = i18;
        } else if (U2.z("ORT_THEME", "theme_d", "theme_3")) {
            int i19 = f28378J0;
            double d10 = ((double) i19) / 2.5d;
            this.f28400Q = (int) d10;
            this.f28401R = (int) (d10 * 1.15d);
            int i20 = i19 / 4;
            this.f28399P = i20;
            double d11 = i20;
            int i21 = (int) (d11 * 1.15d);
            this.f28402S = i21;
            this.f28405V = i20;
            this.f28406W = i21;
            this.f28403T = (int) (0.4d * d11);
            this.f28404U = (int) (d11 * 0.5d);
        } else {
            int i22 = f28378J0 / 3;
            this.f28399P = i22;
            double d12 = i22;
            int i23 = (int) (d12 * 1.15d);
            this.f28402S = i23;
            this.f28400Q = i22;
            this.f28401R = i23;
            this.f28405V = i22;
            this.f28406W = i23;
            this.f28403T = (int) (0.4d * d12);
            this.f28404U = (int) (d12 * 0.5d);
        }
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f28435z0.getLayoutParams();
        int i24 = f28382N0;
        layoutParams2.height = i24 * 50;
        layoutParams2.width = i24 * 320;
        this.f28435z0.setLayoutParams(layoutParams2);
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f28410a0.getLayoutParams();
        int i25 = this.f28400Q;
        layoutParams3.height = i25;
        layoutParams3.width = i25;
        this.f28410a0.setLayoutParams(layoutParams3);
        LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) this.f28415f0.getLayoutParams();
        int i26 = this.f28405V;
        layoutParams4.height = i26;
        layoutParams4.width = i26;
        this.f28415f0.setLayoutParams(layoutParams4);
        LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) this.f28411b0.getLayoutParams();
        int i27 = this.f28399P;
        layoutParams5.height = i27;
        layoutParams5.width = i27;
        this.f28411b0.setLayoutParams(layoutParams5);
        LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) this.f28416g0.getLayoutParams();
        int i28 = this.f28399P;
        layoutParams6.height = i28;
        layoutParams6.width = i28;
        this.f28416g0.setLayoutParams(layoutParams6);
        FrameLayout.LayoutParams layoutParams7 = (FrameLayout.LayoutParams) this.f28426q0.getLayoutParams();
        layoutParams7.height = (int) (((double) (f28378J0 / 3)) * 0.6d);
        this.f28426q0.setLayoutParams(layoutParams7);
        LinearLayout.LayoutParams layoutParams8 = (LinearLayout.LayoutParams) this.f28413d0.getLayoutParams();
        int i29 = this.f28403T;
        layoutParams8.height = i29;
        layoutParams8.width = i29;
        this.f28413d0.setLayoutParams(layoutParams8);
        LinearLayout.LayoutParams layoutParams9 = (LinearLayout.LayoutParams) this.f28412c0.getLayoutParams();
        int i30 = this.f28403T;
        layoutParams9.height = i30;
        layoutParams9.width = i30;
        this.f28412c0.setLayoutParams(layoutParams9);
        LinearLayout.LayoutParams layoutParams10 = (LinearLayout.LayoutParams) this.f28414e0.getLayoutParams();
        int i31 = this.f28403T;
        layoutParams10.height = i31;
        layoutParams10.width = i31;
        this.f28414e0.setLayoutParams(layoutParams10);
        LinearLayout.LayoutParams layoutParams11 = (LinearLayout.LayoutParams) this.f28417h0.getLayoutParams();
        int i32 = this.f28403T;
        layoutParams11.height = i32;
        layoutParams11.width = i32;
        this.f28417h0.setLayoutParams(layoutParams11);
        LinearLayout.LayoutParams layoutParams12 = (LinearLayout.LayoutParams) this.f28418i0.getLayoutParams();
        int i33 = this.f28403T;
        layoutParams12.height = i33;
        layoutParams12.width = i33;
        this.f28418i0.setLayoutParams(layoutParams12);
        LinearLayout.LayoutParams layoutParams13 = (LinearLayout.LayoutParams) this.f28419j0.getLayoutParams();
        int i34 = this.f28403T;
        layoutParams13.height = i34;
        layoutParams13.width = i34;
        this.f28419j0.setLayoutParams(layoutParams13);
        LinearLayout.LayoutParams layoutParams14 = (LinearLayout.LayoutParams) this.f28421l0.getLayoutParams();
        int i35 = this.f28397N;
        layoutParams14.height = i35;
        layoutParams14.width = i35;
        this.f28421l0.setLayoutParams(layoutParams14);
        LinearLayout.LayoutParams layoutParams15 = (LinearLayout.LayoutParams) this.f28420k0.getLayoutParams();
        int i36 = this.f28397N;
        layoutParams15.height = i36;
        layoutParams15.width = i36;
        this.f28420k0.setLayoutParams(layoutParams15);
        LinearLayout.LayoutParams layoutParams16 = (LinearLayout.LayoutParams) this.f28422m0.getLayoutParams();
        int i37 = this.f28397N;
        layoutParams16.height = i37;
        layoutParams16.width = i37;
        this.f28422m0.setLayoutParams(layoutParams16);
        LinearLayout.LayoutParams layoutParams17 = (LinearLayout.LayoutParams) this.f28424o0.getLayoutParams();
        int i38 = this.f28397N;
        layoutParams17.height = i38;
        layoutParams17.width = i38;
        this.f28424o0.setLayoutParams(layoutParams17);
        LinearLayout.LayoutParams layoutParams18 = (LinearLayout.LayoutParams) this.f28425p0.getLayoutParams();
        int i39 = this.f28397N;
        layoutParams18.height = i39;
        layoutParams18.width = i39;
        this.f28425p0.setLayoutParams(layoutParams18);
        this.f28425p0.setColorFilter(Color.argb(255, 255, 255, 255));
        LinearLayout.LayoutParams layoutParams19 = (LinearLayout.LayoutParams) this.f28423n0.getLayoutParams();
        layoutParams19.height = this.f28399P;
        layoutParams19.width = (int) (((double) f28378J0) / 1.5d);
        this.f28423n0.setLayoutParams(layoutParams19);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
        this.f28396M = simpleDateFormat;
        this.f28407X = simpleDateFormat.format(new Date());
        this.f28410a0.setOnClickListener(new ViewOnClickListenerC0542p(this, 5));
        this.f28410a0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 10));
        this.f28415f0.setOnClickListener(new ViewOnClickListenerC0542p(this, 12));
        this.f28415f0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 13));
        this.f28411b0.setOnClickListener(new ViewOnClickListenerC0542p(this, i13));
        this.f28411b0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 14));
        this.f28416g0.setOnClickListener(new ViewOnClickListenerC0542p(this, 14));
        this.f28416g0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 15));
        this.f28412c0.setOnClickListener(new ViewOnClickListenerC0542p(this, 15));
        this.f28412c0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 0));
        this.f28423n0.setOnClickListener(new ViewOnClickListenerC0542p(this, 0));
        this.f28423n0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 1));
        this.f28413d0.setOnClickListener(new ViewOnClickListenerC0542p(this, 1));
        this.f28413d0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 2));
        this.f28414e0.setOnClickListener(new ViewOnClickListenerC0542p(this, 2));
        this.f28414e0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 3));
        this.f28417h0.setOnClickListener(new ViewOnClickListenerC0542p(this, i11));
        this.f28417h0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 4));
        this.f28418i0.setOnClickListener(new ViewOnClickListenerC0542p(this, i9));
        this.f28418i0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 5));
        this.f28419j0.setOnClickListener(new ViewOnClickListenerC0542p(this, 6));
        this.f28419j0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 6));
        this.f28420k0.setOnClickListener(new ViewOnClickListenerC0542p(this, 7));
        this.f28420k0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 7));
        this.f28421l0.setOnClickListener(new ViewOnClickListenerC0542p(this, i10));
        this.f28421l0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 8));
        int i40 = 9;
        this.f28422m0.setOnClickListener(new ViewOnClickListenerC0542p(this, i40));
        this.f28422m0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 9));
        this.f28424o0.setOnClickListener(new ViewOnClickListenerC0542p(this, 10));
        this.f28424o0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 11));
        this.f28425p0.setOnClickListener(new ViewOnClickListenerC0542p(this, 11));
        this.f28425p0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0540o(this, 12));
        if (!this.f28391H.contains("pc_lock")) {
            this.f28392I = this.f28391H.edit();
            this.f28392I.putString("pc_lock", "no");
            this.f28392I.apply();
            this.f28392I.commit();
            q0.q().g("ORT_PARENTAL_CONTROL_STATUS", "unlocked");
        } else if (this.f28391H.getString("pc_lock", null).equals("no")) {
            q0.q().g("ORT_PARENTAL_CONTROL_STATUS", "unlocked");
        } else {
            q0.q().g("ORT_PARENTAL_CONTROL_STATUS", "locked");
        }
        if (this.f28391H.contains("parental_contorl")) {
            q0.q().g("ORT_PARENTAL_CONTROL", this.f28391H.getString("parental_contorl", null));
        }
        if (!this.f28391H.contains("rec_path")) {
            try {
                String strValueOf = String.valueOf(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES));
                File file = new File(strValueOf);
                if (!file.exists()) {
                    file.mkdir();
                }
                SharedPreferences.Editor editorEdit2 = this.f28391H.edit();
                editorEdit2.putString("rec_path", strValueOf);
                editorEdit2.putString("rec_path_storage", "INTERNAL STORAGE");
                editorEdit2.apply();
                editorEdit2.commit();
            } catch (Exception unused) {
            }
        }
        this.f28395L.L0();
        if (this.f28391H.getString("AdMob_enabled", null).equals("yes")) {
            p168v4.b bVar = new p168v4.b();
            bVar.f30722a = false;
            bVar.f30723b = null;
            bVar.f30724c = null;
            b0 b0Var = (b0) C0421c.a(this).f8300h.zza();
            this.f28386D0 = b0Var;
            p004a3.i iVar = new p004a3.i(this, 16);
            C0074y c0074y = new C0074y(i40);
            synchronized (b0Var.f8290c) {
                b0Var.f8291d = true;
            }
            g0 g0Var = b0Var.f8289b;
            g0Var.getClass();
            g0Var.f8327c.execute(new t(g0Var, this, bVar, iVar, c0074y, 2, 0));
            if (this.f28386D0.a()) {
                h();
            }
        }
        if (!this.f28391H.contains("mqtt_url") || this.f28391H.getString("mqtt_url", null).equals("0")) {
            return;
        }
        new i7.b(this.f28389G, false);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        AdView adView;
        super.onDestroy();
        Log.d("XCIPTV_TAG", "CategoriesActivity - onDestroy");
        if (this.f28391H.contains("AdMob_enabled") && this.f28391H.getString("AdMob_enabled", null).equals("yes") && (adView = this.f28385C0) != null) {
            adView.a();
        }
        q0.q().e("ORT_isCategoriesActivityVisible", false);
        unregisterReceiver(this.f28383A0);
        C0544q c0544q = this.f28390G0;
        if (c0544q.isOrderedBroadcast()) {
            p064i0.c.a(this).d(c0544q);
        }
        CategoriesActivity categoriesActivity = this.f28389G;
        Methods.Y(categoriesActivity, OTRServices.class);
        m(categoriesActivity);
        if (!this.f28391H.contains("mqtt_url") || this.f28391H.getString("mqtt_url", null).equals("0")) {
            return;
        }
        i7.b.b();
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        j();
        q0.q().e("ORT_isCategoriesActivityVisible", false);
        Log.d("XCIPTV_TAG", "CategoriesActivity - onPause");
    }

    @Override // android.app.Activity
    public final void onResume() {
        AdView adView;
        super.onResume();
        if (this.f28391H.contains("AdMob_enabled") && this.f28391H.getString("AdMob_enabled", null).equals("yes") && (adView = this.f28385C0) != null) {
            adView.d();
        }
        q0.q().e("ORT_isCategoriesActivityVisible", true);
        int i8 = Build.VERSION.SDK_INT;
        if (i8 < 33 && i8 >= 23 && checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            D.c.D(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 2);
        } else {
            d();
        }
        CategoriesActivity categoriesActivity = this.f28389G;
        Methods.W(categoriesActivity, OTRServices.class);
        Configuration configuration = getBaseContext().getResources().getConfiguration();
        Locale locale = new Locale(this.f28391H.getString("language", null));
        Locale.setDefault(locale);
        configuration.locale = locale;
        getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
        C0544q c0544q = this.f28390G0;
        if (!c0544q.isOrderedBroadcast()) {
            p064i0.c.a(this).b(c0544q, new IntentFilter("CategoriesActivityProgramAndMessageReceiver"));
        }
        if (this.f28391H.contains("epg_mode")) {
            q0.q().g("ORT_LIVE_TV_EPG_MODE", this.f28391H.getString("epg_mode", null).toLowerCase());
        }
        if (this.f28391H.contains("tvvodseries_dl_time")) {
            new Thread(new p045f5.a(this, 6)).start();
        } else {
            k();
        }
        if (!AN().equals(categoriesActivity.getString(R.string.app_name))) {
            finishAffinity();
        }
        if (this.f28391H.contains("mqtt_url") && !this.f28391H.getString("mqtt_url", null).equals("0")) {
            String str = i7.b.f25585a;
            Log.d("XCIPTV_TAG", "MQTT Client Reconnect called");
            i7.b.f(categoriesActivity);
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes") && U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
            String string = this.f28391H.getString("exp_date", null);
            this.f28408Y = string;
            if (string.equals("null") || this.f28408Y.isEmpty() || this.f28408Y.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                this.f28408Y = getString(R.string.no_expiration);
            } else {
                this.f28408Y = Methods.t(this.f28391H.getString("exp_date", null));
                int iK = Methods.k(this.f28391H.getString("exp_date", null));
                Log.v("XCIPTV_TAG", "CategoriesActivity - accountExpireInDays ----" + iK);
                if (this.f28391H.getString("show_expire", null).equals("yes")) {
                    this.f28428s0.setText(getString(R.string.xc_expire) + ": " + this.f28408Y);
                    if (iK >= 0 && iK <= 4) {
                        try {
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
                            this.f28396M = simpleDateFormat;
                            String str2 = simpleDateFormat.format(new Date());
                            this.f28407X = str2;
                            Date date = this.f28396M.parse(str2);
                            if (!this.f28391H.contains("last_expire_message")) {
                                c(getString(R.string.your_account_will_be_expired) + this.f28408Y);
                            } else if (Methods.j(this.f28396M.parse(this.f28391H.getString("last_expire_message", null)), date) > 4) {
                                c(getString(R.string.your_account_will_be_expired) + this.f28408Y);
                            }
                            SharedPreferences.Editor editorEdit = this.f28391H.edit();
                            editorEdit.putString("last_expire_message", this.f28407X);
                            editorEdit.apply();
                            editorEdit.commit();
                        } catch (ParseException e8) {
                            Log.v("XCIPTV_TAG", "CategoriesActivity - ParseException ----" + e8.getMessage());
                        }
                    } else if (iK < 0) {
                        startActivity(new Intent(this, (Class<?>) LoginActivity.class));
                        finish();
                    }
                } else {
                    this.f28428s0.setVisibility(8);
                }
            }
        }
        Log.d("XCIPTV_TAG", "CategoriesActivity - onResume");
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        Log.d("XCIPTV_TAG", "CategoriesActivity - onStop");
        j();
        q0.q().e("ORT_isCategoriesActivityVisible", false);
        Log.d("XCIPTV_TAG", "CategoriesActivity - onStop");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f28389G)) {
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
