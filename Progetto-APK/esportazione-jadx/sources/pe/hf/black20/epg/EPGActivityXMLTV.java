package pe.hf.black20.epg;

import A0.O;
import F.n;
import Z6.C0470b;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import c7.a;
import c7.d;
import com.google.android.gms.internal.cast.X;
import h7.i;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import p086l.K0;
import p086l.ViewOnClickListenerC3020c;
import p133r0.b;
import p171w0.j;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class EPGActivityXMLTV extends Activity {

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public static Handler f29250A0 = null;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public static X f29251B0 = null;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public static b f29252C0 = null;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static ProgressDialog f29253f0 = null;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static TextView f29254g0 = null;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static TextView f29255h0 = null;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static TextView f29256i0 = null;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static ListView f29257j0 = null;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static ListView f29258k0 = null;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static int f29259l0 = 24;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static int f29260m0 = 0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int f29261n0 = 0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static int f29262o0 = 0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static int f29263p0 = 0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static int f29264q0 = 14;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int f29265r0 = 0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int f29266s0 = 1;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static int f29267t0 = 35;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static String f29268u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static String f29269v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static String f29270w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static String f29271x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static String f29272y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static JSONArray f29273z0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f29275H;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public ArrayList f29278K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ArrayList f29279L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public C0470b f29280M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public a f29281N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public d f29282O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public c7.b f29283P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public c7.b f29284Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public i f29285R;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public HorizontalScrollView f29288U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public TextView f29289V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public FrameLayout f29290W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public FrameLayout f29291X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public FrameLayout f29292Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public LinearLayout f29293Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Thread f29294a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Thread f29295b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public j f29296c0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final EPGActivityXMLTV f29274G = this;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ArrayList f29276I = new ArrayList();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ArrayList f29277J = new ArrayList();

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f29286S = 0;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public String f29287T = "No";

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public ArrayList f29297d0 = new ArrayList();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public String f29298e0 = HttpUrl.FRAGMENT_ENCODE_SET;

    public static void a(EPGActivityXMLTV ePGActivityXMLTV) {
        for (int i8 = 0; i8 < ePGActivityXMLTV.f29278K.size(); i8++) {
            boolean zEquals = ((String) ((HashMap) ePGActivityXMLTV.f29278K.get(i8)).get("category_id")).equals(f29269v0);
            EPGActivityXMLTV ePGActivityXMLTV2 = ePGActivityXMLTV.f29274G;
            if (zEquals) {
                ePGActivityXMLTV.f29286S = i8;
                ((Button) ePGActivityXMLTV.f29293Z.findViewWithTag(((HashMap) ePGActivityXMLTV.f29278K.get(i8)).get("category_id"))).setTypeface(n.b(ePGActivityXMLTV2, R.font.quicksand_bold));
            } else {
                ((Button) ePGActivityXMLTV.f29293Z.findViewWithTag(((HashMap) ePGActivityXMLTV.f29278K.get(i8)).get("category_id"))).setTypeface(n.b(ePGActivityXMLTV2, R.font.quicksand_light));
            }
        }
        ePGActivityXMLTV.b();
    }

    public final void b() {
        Log.d("XCIPTV_TAG", "--------------LoadTVChannels----------------");
        if (!f29253f0.isShowing()) {
            f29253f0.setCancelable(false);
            f29253f0.show();
        }
        this.f29279L = null;
        this.f29279L = new ArrayList();
        this.f29277J.clear();
        Thread thread = new Thread(new d7.a(this, 1));
        this.f29295b0 = thread;
        thread.start();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_epg_xmltvn);
        EPGActivityXMLTV ePGActivityXMLTV = this.f29274G;
        ProgressDialog progressDialog = new ProgressDialog(ePGActivityXMLTV);
        f29253f0 = progressDialog;
        progressDialog.setMessage("Please Wait Loading TV Guide...");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 30) {
            getDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        f29260m0 = displayMetrics.heightPixels;
        f29261n0 = displayMetrics.widthPixels;
        f29262o0 = displayMetrics.densityDpi / 160;
        int i8 = 0;
        this.f29275H = ePGActivityXMLTV.getSharedPreferences("pe.hf.black20", 0);
        this.f29282O = new d(ePGActivityXMLTV);
        this.f29281N = new a(this, 0);
        int i9 = 1;
        this.f29283P = new c7.b(ePGActivityXMLTV, 1);
        this.f29284Q = new c7.b(ePGActivityXMLTV, 0);
        f29252C0 = new b(ePGActivityXMLTV, 1);
        i iVarX = O.x("ORT_PROFILE", "Default (XC)", this.f29281N);
        this.f29285R = iVarX;
        f29270w0 = Encrypt.a(iVarX.f25482e);
        f29271x0 = Encrypt.a(this.f29285R.f25480c);
        f29272y0 = Encrypt.a(this.f29285R.f25481d);
        this.f29291X = (FrameLayout) findViewById(R.id.layout_epg_holder);
        this.f29292Y = (FrameLayout) findViewById(R.id.layout_info_view);
        if (Methods.P() || Methods.T(ePGActivityXMLTV)) {
            this.f29292Y.setVisibility(0);
            f29263p0 = f29260m0 / 14;
            f29265r0 = f29261n0 / 4;
            f29266s0 = 1;
            f29264q0 = 16;
            f29267t0 = f29262o0 * 35;
        } else {
            this.f29292Y.setVisibility(8);
            f29263p0 = f29260m0 / 6;
            f29265r0 = f29261n0 / 3;
            f29266s0 = 2;
            f29264q0 = 20;
            f29267t0 = f29262o0 * 50;
        }
        f29256i0 = (TextView) findViewById(R.id.txt_epg_desc);
        f29254g0 = (TextView) findViewById(R.id.txt_epg_time);
        f29255h0 = (TextView) findViewById(R.id.txt_epg_title);
        this.f29289V = (TextView) findViewById(R.id.txt_left_date);
        this.f29288U = (HorizontalScrollView) findViewById(R.id.h_scrollview);
        this.f29290W = (FrameLayout) findViewById(R.id.layout_ch_title);
        this.f29293Z = (LinearLayout) findViewById(R.id.layout_cat_btn_holder);
        f29257j0 = (ListView) findViewById(R.id.listview_ch);
        ListView listView = (ListView) findViewById(R.id.listview_pr);
        f29258k0 = listView;
        listView.setItemsCanFocus(true);
        f29257j0.setFocusable(false);
        this.f29291X.setFocusable(false);
        this.f29288U.setFocusable(false);
        f29258k0.setOnScrollListener(new K0(this, i9));
        this.f29280M = C0470b.a("yyyyMMddHHmmss");
        C0470b c0470bA = C0470b.a("MM/dd/yyyy HH:mm:ss");
        c0470bA.f8489G.c(new Date());
        if (q0.q().b("ORT_PROCESS_STATUS") == 0) {
            Log.d("XCIPTV_TAG", "--------------LoadCategories----------------");
            if (!f29253f0.isShowing()) {
                f29253f0.setCancelable(false);
                f29253f0.show();
            }
            this.f29276I.clear();
            this.f29278K = new ArrayList();
            Thread thread = new Thread(new d7.a(this, i8));
            this.f29294a0 = thread;
            thread.start();
        } else {
            String string = ePGActivityXMLTV.getString(R.string.xc_background_task_inprogress);
            View viewInflate = LayoutInflater.from(ePGActivityXMLTV).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
            AlertDialog alertDialogCreate = new AlertDialog.Builder(ePGActivityXMLTV).create();
            ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(string);
            Button button = (Button) viewInflate.findViewById(R.id.button_yes);
            button.setText(ePGActivityXMLTV.getString(R.string.xc_ok));
            button.setOnClickListener(new ViewOnClickListenerC3020c(17, this, alertDialogCreate));
            alertDialogCreate.show();
        }
        if (!Config.f29414b.equals("no")) {
            this.f29287T = "No";
        } else if (this.f29275H.getString("filter_status", null).equals("No") || this.f29275H.getString("filter_status", null).equals(HttpUrl.FRAGMENT_ENCODE_SET) || this.f29275H.getString("filter_status", null).equals("null")) {
            this.f29287T = "No";
        } else {
            this.f29287T = "Yes";
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        q0.q().e("ORT_isEPGActivityXMLTVVisible", false);
        Thread thread = this.f29294a0;
        if (thread != null) {
            thread.interrupt();
        }
        Thread thread2 = this.f29295b0;
        if (thread2 != null) {
            thread2.interrupt();
        }
        j jVar = this.f29296c0;
        if (jVar != null) {
            jVar.interrupt();
        }
        X x7 = f29251B0;
        if (x7 != null) {
            f29250A0.removeCallbacks(x7);
            f29250A0.removeCallbacksAndMessages(null);
        }
        this.f29281N.close();
        this.f29282O.close();
        this.f29283P.close();
        this.f29284Q.close();
        f29252C0.close();
        f29257j0 = null;
        f29258k0 = null;
        f29273z0 = null;
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        q0.q().e("ORT_isEPGActivityXMLTVVisible", true);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isEPGActivityXMLTVVisible", false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f29274G)) {
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
