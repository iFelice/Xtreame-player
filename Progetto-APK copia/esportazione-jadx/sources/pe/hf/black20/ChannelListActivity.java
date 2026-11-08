package pe.hf.black20;

import A0.O;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.leanback.widget.H;
import b7.A;
import b7.AbstractC0559y;
import b7.AbstractC0561z;
import b7.B;
import b7.C;
import b7.C0555w;
import b7.D;
import b7.M;
import b7.ViewOnClickListenerC0557x;
import c7.a;
import c7.b;
import c7.d;
import com.google.protobuf.U2;
import h7.c;
import h7.i;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import p000a.r;
import p039f.C2991f;
import p039f.N;
import p086l.ViewOnClickListenerC3020c;
import p171w0.j;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class ChannelListActivity extends Activity {
    public static final String THEME = "yes";
    public static final String logoIcon;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static String f28436r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int f28437s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static int f28438t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static float f28439u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static ArrayList f28440v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static GridView f28441w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static ListView f28442x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static ArrayList f28443y0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f28445H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ProgressBar f28446I;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public ArrayList f28448K;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ArrayList f28450M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public a f28451N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public d f28452O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public b f28453P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public b f28454Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public i f28455R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public ImageButton f28456S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public ImageButton f28457T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public ImageButton f28458U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public ImageButton f28459V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public ImageButton f28460W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public TextView f28461X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public TextView f28462Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public TextView f28463Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public EditText f28464a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public FrameLayout f28465b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public FrameLayout f28466c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public FrameLayout f28467d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public FrameLayout f28468e0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public j f28475l0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public FrameLayout f28477n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public Button f28478o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public Button f28479p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public ListView f28480q0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ChannelListActivity f28444G = this;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ArrayList f28447J = new ArrayList();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ArrayList f28449L = new ArrayList();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public String f28469f0 = "no";

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public String f28470g0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public String f28471h0 = "no";

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public String f28472i0 = "0";

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f28473j0 = "0";

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public String f28474k0 = "12";

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f28476m0 = false;

    static {
        System.loadLibrary("native-lib");
        f28436r0 = "default";
        f28440v0 = new ArrayList();
        logoIcon = Methods.J();
    }

    public static void a(ChannelListActivity channelListActivity) {
        channelListActivity.getClass();
        new ArrayList();
        ArrayList arrayListI0 = channelListActivity.f28452O.I0();
        ArrayList arrayList = new ArrayList();
        int i8 = 0;
        for (int i9 = 0; i9 < arrayListI0.size(); i9++) {
            HashMap map = new HashMap();
            map.put("id", ((c) arrayListI0.get(i9)).f25426a);
            map.put("isactive", ((c) arrayListI0.get(i9)).f25427b);
            map.put("name", ((c) arrayListI0.get(i9)).f25428c);
            arrayList.add(map);
        }
        channelListActivity.f28477n0.setVisibility(0);
        channelListActivity.f28480q0.setAdapter((ListAdapter) new M(0, channelListActivity.f28444G, arrayList));
        channelListActivity.f28480q0.setFocusable(true);
        channelListActivity.f28479p0.setFocusable(true);
        channelListActivity.f28479p0.requestFocus();
        channelListActivity.f28480q0.setOnItemClickListener(new C2991f(2, channelListActivity, arrayList));
        channelListActivity.f28480q0.setOnItemLongClickListener(new C0555w(channelListActivity, arrayList, i8));
    }

    public static void b(ChannelListActivity channelListActivity) {
        channelListActivity.getClass();
        Log.d("XCIPTV_TAG", "-------calling WhatListToLoad");
        int i8 = 6;
        if (q0.q().c("ORT_WHICH_CAT", "TV").equals("TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV") || U2.z("ORT_WHICH_CAT", "TV", "CATCHUP") || U2.z("ORT_WHICH_CAT", "TV", "RADIO")) {
            new D(channelListActivity, i8).execute(new Void[0]);
            return;
        }
        A a8 = null;
        byte b8 = 0;
        if (U2.z("ORT_WHICH_CAT", "TV", "VOD")) {
            new D(channelListActivity, a8).execute(new Void[0]);
        } else if (U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
            new D(channelListActivity, (AbstractC0559y) (b8 == true ? 1 : 0)).execute(new Void[0]);
        } else {
            new D(channelListActivity, i8).execute(new Void[0]);
        }
    }

    public static native String bi();

    public static void c(ChannelListActivity channelListActivity, d dVar, String str) {
        ChannelListActivity channelListActivity2 = channelListActivity.f28444G;
        View viewInflate = LayoutInflater.from(channelListActivity2).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(channelListActivity2).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(R.string.do_you_want_to_delete_from_continue_watching);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(channelListActivity2.getString(R.string.xc_yes));
        button.setOnClickListener(new N(channelListActivity, alertDialogCreate, dVar, str, 1));
        Button button2 = (Button) viewInflate.findViewById(R.id.button_no);
        button2.setText(channelListActivity2.getString(R.string.xc_no));
        button2.setOnClickListener(new ViewOnClickListenerC3020c(5, channelListActivity, alertDialogCreate));
        alertDialogCreate.show();
    }

    public final void d() {
        Object obj = null;
        byte b8 = 0;
        byte b9 = 0;
        byte b10 = 0;
        byte b11 = 0;
        byte b12 = 0;
        byte b13 = 0;
        byte b14 = 0;
        if (U2.z("ORT_WHICH_CAT", "TV", "TV")) {
            new D(this, obj).execute(new Void[0]);
            new D(this, (B) (b14 == true ? 1 : 0)).execute(new Void[0]);
            return;
        }
        if (U2.z("ORT_WHICH_CAT", "TV", "FAV") || U2.z("ORT_WHICH_CAT", "TV", "CATCHUP") || U2.z("ORT_WHICH_CAT", "TV", "RADIO")) {
            this.f28468e0.setVisibility(8);
            new D(this, (Object) (b9 == true ? 1 : 0)).execute(new Void[0]);
            new D(this, (B) (b8 == true ? 1 : 0)).execute(new Void[0]);
        } else if (U2.z("ORT_WHICH_CAT", "TV", "VOD")) {
            this.f28468e0.setVisibility(8);
            new D(this, (r) (b13 == true ? 1 : 0)).execute(new Void[0]);
            new D(this, (AbstractC0561z) (b12 == true ? 1 : 0)).execute(new Void[0]);
        } else if (!U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
            this.f28468e0.setVisibility(8);
            new D(this, (B) (b10 == true ? 1 : 0)).execute(new Void[0]);
        } else {
            this.f28468e0.setVisibility(8);
            new D(this).execute(new Void[0]);
            new D(this, (C) (b11 == true ? 1 : 0)).execute(new Void[0]);
        }
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
        setContentView(R.layout.activity_channel_list);
        if (i8 >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ChannelListActivity channelListActivity = this.f28444G;
        pe.hf.black20.util.b bVar = new pe.hf.black20.util.b(channelListActivity);
        f28437s0 = (int) bVar.f29424c;
        f28438t0 = (int) bVar.f29423b;
        f28439u0 = bVar.a();
        q0.q().c("ORT_WHICH_CAT", "TV");
        int i9 = 0;
        this.f28445H = channelListActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28452O = new d(channelListActivity);
        this.f28451N = new a(this, 0);
        int i10 = 1;
        this.f28453P = new b(channelListActivity, 1);
        this.f28454Q = new b(channelListActivity, 0);
        if (getWindow().getDecorView().getLayoutDirection() == 1) {
            this.f28476m0 = true;
        } else if (this.f28445H.contains("language")) {
            if (this.f28445H.getString("language", null).equals("ar")) {
                getWindow().getDecorView().setLayoutDirection(1);
                this.f28476m0 = true;
            } else {
                getWindow().getDecorView().setLayoutDirection(0);
                this.f28476m0 = false;
            }
        }
        if (this.f28445H.contains("xciptv_profile")) {
            q0.q().g("ORT_PROFILE", this.f28445H.getString("xciptv_profile", null));
        }
        if (!U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
            this.f28455R = O.x("ORT_PROFILE", "Default (XC)", this.f28451N);
            q0.q().g("ORT_PROFILE_ID", this.f28455R.f25478a);
            q0.q().g("ORT_PROFILE_SERVER", this.f28455R.f25482e);
            q0.q().g("ORT_PROFILE_USERNAME", this.f28455R.f25480c);
            q0.q().g("ORT_PROFILE_PASSWORD", this.f28455R.f25481d);
        }
        f28443y0 = new ArrayList();
        this.f28446I = (ProgressBar) findViewById(R.id.progress_bar);
        f28441w0 = (GridView) findViewById(R.id.gridView);
        f28442x0 = (ListView) findViewById(R.id.listview_cat_ch);
        this.f28461X = (TextView) findViewById(R.id.txt_date_ch);
        this.f28462Y = (TextView) findViewById(R.id.txt_time_ch);
        this.f28463Z = (TextView) findViewById(R.id.txt_cat_name);
        this.f28465b0 = (FrameLayout) findViewById(R.id.layout_cat_view_main);
        this.f28466c0 = (FrameLayout) findViewById(R.id.layout_header);
        this.f28468e0 = (FrameLayout) findViewById(R.id.layout_load_last_channel);
        EditText editText = (EditText) findViewById(R.id.ed_search);
        this.f28464a0 = editText;
        editText.setFocusable(true);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.layout_search);
        this.f28467d0 = frameLayout;
        frameLayout.setVisibility(8);
        this.f28457T = (ImageButton) findViewById(R.id.btn_search);
        this.f28458U = (ImageButton) findViewById(R.id.btn_search_cancel);
        this.f28456S = (ImageButton) findViewById(R.id.btn_show_search_view);
        this.f28459V = (ImageButton) findViewById(R.id.btn_sort);
        ImageButton imageButton = (ImageButton) findViewById(R.id.btn_sort_newold);
        this.f28460W = imageButton;
        imageButton.setVisibility(8);
        this.f28477n0 = (FrameLayout) findViewById(R.id.layout_fav_profile_list);
        this.f28478o0 = (Button) findViewById(R.id.btn_open_add_fav_profile);
        this.f28479p0 = (Button) findViewById(R.id.btn_close_fav_profile_list);
        this.f28480q0 = (ListView) findViewById(R.id.listviewfavprofile);
        this.f28477n0.setVisibility(8);
        this.f28478o0.setOnClickListener(new ViewOnClickListenerC0557x(this, i9));
        this.f28479p0.setOnClickListener(new ViewOnClickListenerC0557x(this, i10));
        if (q0.q().c("ORT_WHICH_CAT", "TV").equals("VOD")) {
            this.f28460W.setVisibility(0);
        }
        this.f28471h0 = getIntent().getExtras().getString("forFavorNot");
        if (this.f28445H.contains("time_format") && this.f28445H.getString("time_format", null).equals("24")) {
            this.f28474k0 = "24";
        }
        this.f28456S.setOnClickListener(new ViewOnClickListenerC0557x(this, 2));
        if (f28436r0.equals("default") || f28436r0.equals("ASC")) {
            this.f28459V.setBackground(channelListActivity.getDrawable(R.drawable.btn_sort_az));
        } else if (f28436r0.equals("DESC")) {
            this.f28459V.setBackground(channelListActivity.getDrawable(R.drawable.btn_sort_za));
        }
        if (U2.z("ORT_WHICH_CAT", "TV", "VOD") || U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
            f28436r0 = "NEW";
        }
        this.f28459V.setOnClickListener(new ViewOnClickListenerC0557x(this, 3));
        this.f28460W.setOnClickListener(new ViewOnClickListenerC0557x(this, 4));
        this.f28458U.setOnClickListener(new ViewOnClickListenerC0557x(this, 5));
        this.f28457T.setOnClickListener(new ViewOnClickListenerC0557x(this, 6));
        this.f28464a0.setOnEditorActionListener(new H(this, i10));
        ImageView imageView = (ImageView) findViewById(R.id.img_logo);
        double d6 = f28438t0;
        int i11 = (int) (0.75d * d6);
        int i12 = (int) (d6 * 0.25d);
        int i13 = f28437s0;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f28463Z.getLayoutParams();
        layoutParams.width = CategoriesActivity.f28379K0 / 4;
        this.f28463Z.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) imageView.getLayoutParams();
        int i14 = (int) ((i13 / 9) * f28439u0);
        layoutParams2.height = i14;
        layoutParams2.width = i14;
        imageView.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.f28466c0.getLayoutParams();
        float f8 = i13 / 8;
        layoutParams3.height = (int) (f28439u0 * f8);
        this.f28466c0.setLayoutParams(layoutParams3);
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.f28465b0.getLayoutParams();
        float f9 = f28439u0;
        layoutParams4.width = (int) (i12 * f9);
        layoutParams4.setMargins(0, (int) (f9 * f8), 0, 0);
        this.f28465b0.setLayoutParams(layoutParams4);
        FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) f28441w0.getLayoutParams();
        float f10 = f28439u0;
        float f11 = 20.0f * f10;
        layoutParams5.width = (int) ((i11 * f10) - f11);
        if (this.f28476m0) {
            layoutParams5.setMargins((int) f11, (int) ((f10 * 10.0f) + (f8 * f10)), 0, 0);
        } else {
            layoutParams5.setMargins(0, (int) ((f10 * 10.0f) + (f8 * f10)), (int) f11, 0);
        }
        f28441w0.setLayoutParams(layoutParams5);
        f28441w0.setColumnWidth((int) ((((double) i11) / 6.2d) * ((double) f28439u0)));
        ((FrameLayout.LayoutParams) this.f28477n0.getLayoutParams()).setMargins(0, (int) (f8 * f28439u0), 0, 0);
        if (Config.f29414b.equals("no") && !this.f28445H.getString("filter_status", null).equals("No") && !this.f28445H.getString("filter_status", null).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
            this.f28445H.getString("filter_status", null).equals("null");
        }
        if (!bi().equals(channelListActivity.getApplicationContext().getPackageName())) {
            finishAffinity();
        }
        if (i8 >= 33) {
            d();
            return;
        }
        if (i8 < 23) {
            Log.v("ContentValues", "Permission is granted2");
            d();
        } else if (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            Log.v("ContentValues", "Permission is granted2");
            d();
        } else {
            Log.v("ContentValues", "Permission is revoked2");
            this.f28446I.setVisibility(4);
            D.c.D(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 2);
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        q0.q().e("ORT_isChannelListActivityVisible", false);
        j jVar = this.f28475l0;
        if (jVar != null) {
            jVar.interrupt();
            this.f28475l0 = null;
        }
        f28436r0 = "default";
        this.f28452O.close();
        this.f28451N.close();
        this.f28453P.close();
        this.f28454Q.close();
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        q0.q().e("ORT_isChannelListActivityVisible", false);
        j jVar = this.f28475l0;
        if (jVar != null) {
            jVar.interrupt();
            this.f28475l0 = null;
        }
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i8, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i8, strArr, iArr);
        if (i8 == 2) {
            Log.d("XCIPTV_TAG", "External storage2");
            if (iArr[0] != 0) {
                this.f28446I.setVisibility(4);
                return;
            }
            Log.v("XCIPTV_TAG", "Permission: " + strArr[0] + "was " + iArr[0]);
            d();
            return;
        }
        if (i8 != 3) {
            return;
        }
        Log.d("XCIPTV_TAG", "External storage1");
        if (iArr[0] != 0) {
            this.f28446I.setVisibility(4);
            return;
        }
        Log.v("XCIPTV_TAG", "Permission: " + strArr[0] + "was " + iArr[0]);
        d();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        q0.q().e("ORT_isChannelListActivityVisible", true);
        f28441w0.invalidateViews();
        if (this.f28467d0.isShown()) {
            ((InputMethodManager) getSystemService("input_method")).showSoftInput(this.f28464a0, 1);
        }
        j jVar = new j(this, 5);
        this.f28475l0 = jVar;
        jVar.start();
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isChannelListActivityVisible", false);
        this.f28468e0.setVisibility(8);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f28444G)) {
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
