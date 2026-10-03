package pe.hf.black20;

import A0.O;
import G2.c;
import android.app.Activity;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import b7.B1;
import b7.C0549t;
import c7.a;
import c7.b;
import c7.d;
import com.bumptech.glide.l;
import com.google.protobuf.U2;
import h7.i;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.r;
import p039f.G;
import p086l.ViewOnClickListenerC3020c;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class SeriesActivity extends Activity {

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public static i f29080A0 = null;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public static ListView f29081B0 = null;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public static JSONArray f29082C0 = null;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public static JSONArray f29083D0 = null;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public static int f29084E0 = 0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public static String f29085F0 = null;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public static String f29086G0 = "";

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static a f29087x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static b f29088y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static d f29089z0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f29091H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ProgressBar f29092I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public a f29093J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public TextView f29094K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public TextView f29095L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public TextView f29096M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public TextView f29097N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public TextView f29098O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public TextView f29099P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public TextView f29100Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public ImageView f29101R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public JSONObject f29102S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public ArrayList f29103T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public ArrayList f29104U;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public String f29106W;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public String f29109Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public String f29110a0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public String f29122m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f29123n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public float f29124o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public String f29125p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public LinearLayout f29126q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public ImageView f29127r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public JSONObject f29128s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public String f29129t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f29130u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final N2.a f29131v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public G f29132w0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final SeriesActivity f29090G = this;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public String f29105V = "8000";

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public int f29107X = 1;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f29108Y = false;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public String f29111b0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public String f29112c0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public String f29113d0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public String f29114e0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public String f29115f0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public String f29116g0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public String f29117h0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public String f29118i0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f29119j0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public String f29120k0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public ArrayList f29121l0 = new ArrayList();

    public SeriesActivity() {
        new ArrayList();
        this.f29122m0 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f29125p0 = "0";
        this.f29128s0 = new JSONObject();
        this.f29129t0 = "arr";
        this.f29130u0 = 0;
        this.f29131v0 = new N2.a(300, true);
    }

    public static void a(SeriesActivity seriesActivity) {
        seriesActivity.getClass();
        try {
            if (seriesActivity.f29128s0.has("genre")) {
                seriesActivity.f29114e0 = seriesActivity.f29128s0.getString("genre");
            }
            if (seriesActivity.f29128s0.has("plot")) {
                seriesActivity.f29111b0 = seriesActivity.f29128s0.getString("plot");
            }
            if (seriesActivity.f29128s0.has("director")) {
                seriesActivity.f29113d0 = seriesActivity.f29128s0.getString("director");
            }
            if (seriesActivity.f29128s0.has("cast")) {
                seriesActivity.f29112c0 = seriesActivity.f29128s0.getString("cast");
            }
            if (seriesActivity.f29128s0.has("releaseDate")) {
                seriesActivity.f29115f0 = seriesActivity.f29128s0.getString("releaseDate");
            }
            if (seriesActivity.f29128s0.has("rating")) {
                seriesActivity.f29116g0 = seriesActivity.f29128s0.getString("rating");
            }
            if (seriesActivity.f29128s0.has("youtube_trailer")) {
                seriesActivity.f29128s0.getString("youtube_trailer");
            }
        } catch (JSONException unused) {
        }
        if (seriesActivity.f29112c0.length() == 0) {
            seriesActivity.f29096M.setVisibility(8);
        } else {
            seriesActivity.f29096M.setText(seriesActivity.f29112c0);
        }
        if (seriesActivity.f29113d0.length() == 0) {
            seriesActivity.f29097N.setVisibility(8);
        } else {
            seriesActivity.f29097N.setText(seriesActivity.f29113d0);
        }
        if (seriesActivity.f29114e0.length() == 0) {
            seriesActivity.f29098O.setVisibility(8);
        } else {
            seriesActivity.f29098O.setText(seriesActivity.f29114e0);
        }
        if (seriesActivity.f29111b0.length() == 0) {
            seriesActivity.f29095L.setVisibility(8);
        } else {
            seriesActivity.f29095L.setText(seriesActivity.f29111b0);
        }
        if (seriesActivity.f29116g0.length() == 0 || seriesActivity.f29116g0.equals("0")) {
            seriesActivity.f29100Q.setVisibility(8);
        } else if (seriesActivity.f29116g0.length() > 0) {
            String strSubstring = seriesActivity.f29116g0.substring(0, 1);
            seriesActivity.f29116g0 = strSubstring;
            int i8 = Integer.parseInt(strSubstring);
            String strA = HttpUrl.FRAGMENT_ENCODE_SET;
            for (int i9 = 0; i9 < i8; i9++) {
                strA = U2.A(strA, "⭐");
                TextView textView = seriesActivity.f29100Q;
                StringBuilder sbL = r.l(strA, " (");
                sbL.append(seriesActivity.f29116g0);
                sbL.append(")");
                textView.setText(sbL.toString());
            }
        }
        if (seriesActivity.f29115f0.length() == 0) {
            seriesActivity.f29099P.setVisibility(8);
        } else {
            seriesActivity.f29099P.setText(seriesActivity.f29115f0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0131 A[Catch: JSONException -> 0x017a, TryCatch #2 {JSONException -> 0x017a, blocks: (B:24:0x0113, B:26:0x0131, B:28:0x0137), top: B:37:0x0113 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0136  */
    /* JADX WARN: Code duplicated, block: B:37:0x0113 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final void b(JSONArray jSONArray) {
        ArrayList arrayList;
        int i8;
        JSONArray jSONArray2;
        String string;
        Cursor cursorRawQuery = null;
        this.f29103T = null;
        this.f29103T = new ArrayList();
        f29081B0.setAdapter((ListAdapter) null);
        a aVar = this.f29093J;
        aVar.f11478H = null;
        aVar.f11478H = new ArrayList();
        SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            if (i9 == 0) {
                try {
                    str = "\"" + jSONArray.getString(i9) + "\"";
                } catch (JSONException unused) {
                }
            } else {
                str = str + ", \"" + jSONArray.getString(i9) + "\"";
            }
        }
        try {
            cursorRawQuery = writableDatabase.rawQuery("SELECT * FROM episodes WHERE id in (" + str + ")", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    Log.d("XCIPTV_TAG", cursorRawQuery.getString(0));
                    f7.a aVar2 = new f7.a();
                    cursorRawQuery.getString(0);
                    cursorRawQuery.getString(1);
                    cursorRawQuery.getString(2);
                    cursorRawQuery.getString(3);
                    cursorRawQuery.getString(4);
                    cursorRawQuery.getString(5);
                    cursorRawQuery.getString(6);
                    cursorRawQuery.getString(7);
                    cursorRawQuery.getString(8);
                    cursorRawQuery.getString(9);
                    cursorRawQuery.getString(10);
                    cursorRawQuery.getString(11);
                    cursorRawQuery.getString(12);
                    cursorRawQuery.getString(13);
                    cursorRawQuery.getString(14);
                    aVar2.f25224a = cursorRawQuery.getString(15);
                    aVar.f11478H.add(aVar2);
                } while (cursorRawQuery.moveToNext());
            }
        } catch (Throwable unused2) {
            if (cursorRawQuery != null) {
            }
            arrayList = aVar.f11478H;
            Log.d("XCIPTV_TAG", " otr_episodes.size() ----- " + String.valueOf(arrayList.size()));
            for (i8 = 0; i8 < arrayList.size(); i8++) {
                try {
                    JSONObject jSONObject = new JSONObject(((f7.a) arrayList.get(i8)).f25224a);
                    jSONArray2 = new JSONArray(jSONObject.getString("urls"));
                    if (jSONArray2.length() > 0) {
                        string = jSONArray2.getString(0);
                    } else {
                        string = HttpUrl.FRAGMENT_ENCODE_SET;
                    }
                    HashMap map = new HashMap();
                    map.put("id", jSONObject.getString("display_name"));
                    map.put("episode_num", String.valueOf(i8 + 1));
                    map.put("title", jSONObject.getString("display_name"));
                    map.put("container_extension", HttpUrl.FRAGMENT_ENCODE_SET);
                    map.put("season", this.f29122m0);
                    map.put("plot", jSONObject.getString("description"));
                    map.put("direct_source", string);
                    this.f29103T.add(map);
                } catch (JSONException unused3) {
                }
                this.f29092I.setVisibility(8);
                f29081B0.setAdapter((ListAdapter) new C0549t(1, this, this.f29103T));
                f29081B0.requestFocus();
            }
        }
        cursorRawQuery.close();
        arrayList = aVar.f11478H;
        Log.d("XCIPTV_TAG", " otr_episodes.size() ----- " + String.valueOf(arrayList.size()));
        while (i8 < arrayList.size()) {
            JSONObject jSONObject2 = new JSONObject(((f7.a) arrayList.get(i8)).f25224a);
            jSONArray2 = new JSONArray(jSONObject2.getString("urls"));
            if (jSONArray2.length() > 0) {
                string = jSONArray2.getString(0);
            } else {
                string = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            HashMap map2 = new HashMap();
            map2.put("id", jSONObject2.getString("display_name"));
            map2.put("episode_num", String.valueOf(i8 + 1));
            map2.put("title", jSONObject2.getString("display_name"));
            map2.put("container_extension", HttpUrl.FRAGMENT_ENCODE_SET);
            map2.put("season", this.f29122m0);
            map2.put("plot", jSONObject2.getString("description"));
            map2.put("direct_source", string);
            this.f29103T.add(map2);
            this.f29092I.setVisibility(8);
            f29081B0.setAdapter((ListAdapter) new C0549t(1, this, this.f29103T));
            f29081B0.requestFocus();
        }
    }

    public final void c() {
        this.f29108Y = true;
        float f8 = this.f29124o0;
        int i8 = (int) (10.0f * f8);
        int i9 = (int) (f8 * 35.0f);
        for (int i10 = 0; i10 < this.f29104U.size(); i10++) {
            SeriesActivity seriesActivity = this.f29090G;
            Button button = new Button(seriesActivity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, i8, 0);
            layoutParams.height = i9;
            button.setLayoutParams(layoutParams);
            button.setTextSize(15.0f);
            button.setPadding(i8, 0, i8, 0);
            button.setBackground(seriesActivity.getDrawable(R.drawable.btn));
            button.setGravity(17);
            button.setText("SEASON " + ((String) ((HashMap) this.f29104U.get(i10)).get("season_no")));
            if (q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("otr")) {
                button.setTag(((HashMap) this.f29104U.get(i10)).get("episodes"));
                this.f29122m0 = (String) ((HashMap) this.f29104U.get(i10)).get("season_no");
            } else if (this.f29129t0.equals("arr")) {
                button.setTag(String.valueOf(i10));
            } else {
                button.setTag(((HashMap) this.f29104U.get(i10)).get("season_no"));
            }
            this.f29126q0.addView(button);
            button.setOnClickListener(new ViewOnClickListenerC3020c(15, this, button));
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRequestedOrientation(0);
        setContentView(R.layout.activity_series);
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        this.f29092I = (ProgressBar) findViewById(R.id.progress_bar);
        this.f29094K = (TextView) findViewById(R.id.txt_name);
        this.f29095L = (TextView) findViewById(R.id.txt_plot);
        this.f29096M = (TextView) findViewById(R.id.txt_cast);
        this.f29097N = (TextView) findViewById(R.id.txt_director);
        this.f29098O = (TextView) findViewById(R.id.txt_genre);
        this.f29099P = (TextView) findViewById(R.id.txt_releaseDate);
        this.f29100Q = (TextView) findViewById(R.id.txt_rating);
        this.f29127r0 = (ImageView) findViewById(R.id.img_backdrop);
        this.f29092I.setVisibility(8);
        this.f29101R = (ImageView) findViewById(R.id.img_cover);
        f29081B0 = (ListView) findViewById(R.id.listview_episode);
        SeriesActivity seriesActivity = this.f29090G;
        this.f29091H = seriesActivity.getSharedPreferences("pe.hf.black20", 0);
        f29087x0 = new a(seriesActivity, 0);
        f29088y0 = new b(seriesActivity, 0);
        f29089z0 = new d(seriesActivity);
        this.f29093J = new a(seriesActivity, 1);
        f29080A0 = O.x("ORT_PROFILE", "Default (XC)", f29087x0);
        Bundle extras = getIntent().getExtras();
        String string = extras.getString("name");
        this.f29109Z = string;
        f29086G0 = string;
        f29085F0 = extras.getString("cover");
        this.f29110a0 = extras.getString("series_id");
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
            this.f29119j0 = extras.getString("otr_backdrop_path");
            this.f29120k0 = extras.getString("otr_plot");
        }
        this.f29118i0 = extras.getString("episode_run_time");
        this.f29094K.setText(this.f29109Z.toUpperCase());
        this.f29126q0 = (LinearLayout) findViewById(R.id.layout_season_buttons);
        pe.hf.black20.util.b bVar = new pe.hf.black20.util.b(seriesActivity);
        this.f29123n0 = (int) bVar.f29423b;
        this.f29124o0 = bVar.a();
        int i9 = this.f29123n0 / 8;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f29101R.getLayoutParams();
        float f8 = this.f29124o0;
        layoutParams.width = (int) (i9 * f8);
        layoutParams.height = (int) (((int) (((double) i9) * 1.5d)) * f8);
        layoutParams.setMargins(0, 0, 0, 0);
        this.f29101R.setLayoutParams(layoutParams);
        IntentFilter intentFilter = new IntentFilter("SeriesActivity_finish_alert");
        G g8 = new G(this, 19);
        this.f29132w0 = g8;
        if (i8 >= 33) {
            U4.a.f(seriesActivity, g8, intentFilter, 4);
        } else {
            registerReceiver(g8, intentFilter);
        }
        boolean zEquals = f29085F0.equals(HttpUrl.FRAGMENT_ENCODE_SET);
        N2.a aVar = this.f29131v0;
        if (zEquals) {
            ((l) com.bumptech.glide.b.d(seriesActivity).m(Integer.valueOf(R.drawable.logo)).g()).H(c.b(aVar)).F(this.f29101R);
        } else {
            try {
                String strReplaceAll = f29085F0.replaceAll(" ", "%20");
                f29085F0 = strReplaceAll;
                f29085F0 = strReplaceAll.replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET);
                ((l) ((l) ((l) com.bumptech.glide.b.d(seriesActivity).n(f29085F0).b()).H(c.b(aVar)).m(R.drawable.xciptv_vod)).f(R.drawable.xciptv_vod)).F(this.f29101R);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "Picasso Crashed");
            }
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
            new B1(this).execute(new Void[0]);
            return;
        }
        if (!U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
            new B1(this, (r) null).execute(new Void[0]);
            return;
        }
        Log.d("XCIPTV_TAG", "---------------etSeriesDetailsOTR ()");
        this.f29095L.setText(this.f29120k0);
        try {
            ((l) ((l) ((l) com.bumptech.glide.b.d(seriesActivity).n(this.f29119j0).b()).H(c.b(aVar)).m(R.drawable.xciptv_vod)).f(R.drawable.xciptv_vod)).F(this.f29127r0);
        } catch (Exception unused2) {
        }
        try {
            this.f29121l0 = this.f29093J.e0(new JSONArray(this.f29118i0));
            this.f29104U = new ArrayList();
            for (int i10 = 0; i10 < this.f29121l0.size(); i10++) {
                HashMap map = new HashMap();
                map.put("season_no", ((f7.b) this.f29121l0.get(i10)).f25225a);
                map.put("episodes", ((f7.b) this.f29121l0.get(i10)).f25226b);
                this.f29104U.add(map);
            }
            c();
            if (this.f29104U.size() > 0) {
                this.f29122m0 = ((f7.b) this.f29121l0.get(0)).f25225a;
                b(new JSONArray(((f7.b) this.f29121l0.get(0)).f25226b));
            }
        } catch (JSONException unused3) {
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.f29132w0);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        f29081B0.invalidateViews();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f29090G)) {
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
