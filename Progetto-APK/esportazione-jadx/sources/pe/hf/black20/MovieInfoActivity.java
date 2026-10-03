package pe.hf.black20;

import A0.O;
import D1.ViewOnClickListenerC0144i;
import N2.a;
import S3.e;
import android.app.Activity;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.b;
import com.bumptech.glide.l;
import com.google.android.gms.internal.ads.C1448i6;
import com.google.protobuf.U2;
import g7.c;
import h7.i;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.r;
import p039f.ViewOnClickListenerC2988c;
import p083k3.j;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class MovieInfoActivity extends Activity implements c {

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final /* synthetic */ int f28623l0 = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f28625H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public i f28626I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Button f28627J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Button f28628K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public JSONObject f28629L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public JSONObject f28630M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public TextView f28631N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public TextView f28632O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public TextView f28633P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public TextView f28634Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public TextView f28635R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public TextView f28636S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public TextView f28637T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public String f28638U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public String f28639V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public String f28640W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public String f28641X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public String f28642Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public String f28643Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public String f28644a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public String f28645b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public String f28646c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public ImageView f28647d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public FrameLayout f28648e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f28649f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public float f28650g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public ImageView f28651h0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f28653j0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final MovieInfoActivity f28624G = this;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public String f28652i0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final a f28654k0 = new a(300, true);

    public final void a() {
        Log.d("XCIPTV_TAG", "------calling GetMovieInfoOTR--------------------" + this.f28639V);
        JSONObject jSONObject = new JSONObject();
        String strC = !U2.z("ORT_VOD_PORTAL", "no", "no") ? q0.q().c("ORT_VOD_PORTAL", "no") : Encrypt.a(this.f28626I.f25482e);
        String strA = Encrypt.a(this.f28626I.f25480c);
        String strA2 = Encrypt.a(this.f28626I.f25481d);
        StringBuilder sbL = r.l(strC, "/client/content/");
        sbL.append(this.f28646c0);
        sbL.append("/vod/");
        sbL.append(this.f28639V);
        try {
            new C1448i6(0, this, this, "otrresponse", sbL.toString(), jSONObject, strA, strA2);
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "MovieInfoActivity - OTR Panel Client Devices - VolleyGETStringRequest Error");
        }
    }

    public final void b(JSONObject jSONObject) {
        a aVar = this.f28654k0;
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            String string = jSONObject2.getJSONObject("vod").getString("background_url");
            String string2 = jSONObject2.getJSONObject("vod").getString("preview_icon");
            String string3 = jSONObject2.getJSONObject("vod").getString("trailer_url");
            JSONArray jSONArray = jSONObject2.getJSONObject("vod").getJSONArray("directors");
            JSONArray jSONArray2 = jSONObject2.getJSONObject("vod").getJSONArray("cast");
            JSONArray jSONArray3 = jSONObject2.getJSONObject("vod").getJSONArray("genres");
            int length = jSONArray2.length();
            String string4 = HttpUrl.FRAGMENT_ENCODE_SET;
            if (length > 0) {
                for (int i8 = 0; i8 < jSONArray2.length(); i8++) {
                    string4 = i8 == 0 ? jSONArray2.getString(i8) : string4 + ", " + jSONArray2.getString(i8);
                }
            }
            int length2 = jSONArray3.length();
            String string5 = HttpUrl.FRAGMENT_ENCODE_SET;
            if (length2 > 0) {
                for (int i9 = 0; i9 < jSONArray3.length(); i9++) {
                    string5 = i9 == 0 ? jSONArray3.getString(i9) : string5 + ", " + jSONArray3.getString(i9);
                }
            }
            String string6 = jSONArray.length() > 0 ? jSONArray.getString(0) : HttpUrl.FRAGMENT_ENCODE_SET;
            this.f28631N.setText(jSONObject2.getJSONObject("vod").getString("display_name"));
            this.f28634Q.setText(jSONObject2.getJSONObject("vod").getString("description"));
            this.f28635R.setText(string4);
            this.f28636S.setText(string6);
            this.f28632O.setText(string5);
            String string7 = jSONObject2.getJSONObject("vod").getString("user_score");
            if (string7.length() > 0) {
                try {
                    int i10 = Integer.parseInt(string7.substring(0, 1));
                    String str = HttpUrl.FRAGMENT_ENCODE_SET;
                    for (int i11 = 0; i11 < i10; i11++) {
                        str = str + "⭐";
                        this.f28637T.setText(str + " (" + jSONObject2.getJSONObject("vod").getString("user_score") + ")");
                    }
                } catch (Exception unused) {
                    this.f28637T.setText(jSONObject2.getJSONObject("vod").getString("user_score"));
                }
            } else {
                this.f28637T.setText(jSONObject2.getJSONObject("vod").getString("user_score"));
            }
            this.f28633P.setText(Methods.w(jSONObject2.getJSONObject("vod").getString("prime_date")));
            this.f28638U = jSONObject2.getJSONObject("vod").getString("display_name");
            this.f28643Z = jSONObject2.getJSONObject("vod").getString("description");
            if (string3.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                this.f28628K.setVisibility(8);
            } else {
                this.f28628K.setVisibility(0);
            }
            MovieInfoActivity movieInfoActivity = this.f28624G;
            try {
                ((l) ((l) ((l) b.d(movieInfoActivity).n(string2).g()).H(G2.c.b(aVar)).m(R.drawable.xciptv_vod)).f(R.drawable.xciptv_vod)).F(this.f28647d0);
                ((l) ((l) ((l) b.d(movieInfoActivity).n(string).b()).H(G2.c.b(aVar)).f(R.drawable.bg2)).m(R.drawable.bg2)).F(this.f28651h0);
            } catch (Exception unused2) {
                Log.d("XCIPTV_TAG", "Picasso Crashed");
            }
        } catch (JSONException unused3) {
        }
    }

    public final void c(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            if (jSONObject2.has("access_token")) {
                String string = jSONObject2.getString("refresh_token");
                String string2 = jSONObject2.getString("access_token");
                SharedPreferences.Editor editorEdit = this.f28625H.edit();
                editorEdit.putString("otr_refresh_token", Encrypt.b(string));
                editorEdit.putString("otr_access_token", Encrypt.b(string2));
                editorEdit.apply();
                a();
            }
        } catch (JSONException unused) {
        }
    }

    @Override // g7.c
    public final void e(int i8, String str, String str2) {
        str2.getClass();
        if (str2.equals("otrresponse")) {
            Log.d("XCIPTV_TAG", "MovieInfoActivity -- onFailureJsonFastoGT renewToken");
            if (i8 == 401) {
                e.l(this.f28624G, this, this);
            }
        }
    }

    @Override // g7.c
    public final void g(JSONObject jSONObject, String str) {
        str.getClass();
        if (str.equals("renewToken")) {
            try {
                c(jSONObject);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "MovieInfoActivity -- renew Token");
            }
        } else if (str.equals("otrresponse")) {
            try {
                b(jSONObject);
            } catch (Exception unused2) {
                Log.d("XCIPTV_TAG", "MovieInfoActivity -- loginCheckOTR");
            }
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        a aVar = this.f28654k0;
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
        setContentView(R.layout.activity_movie_info);
        if (i8 >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        Bundle extras = getIntent().getExtras();
        this.f28638U = extras.getString("name");
        this.f28639V = extras.getString("stream_id");
        this.f28640W = extras.getString("streamurl");
        this.f28641X = extras.getString("category_list");
        this.f28642Y = extras.getString("position");
        this.f28653j0 = extras.getString("stream_icon");
        MovieInfoActivity movieInfoActivity = this.f28624G;
        this.f28625H = movieInfoActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28626I = O.x("ORT_PROFILE", "Default (XC)", new c7.a(movieInfoActivity, 0));
        this.f28631N = (TextView) findViewById(R.id.txt_name);
        this.f28632O = (TextView) findViewById(R.id.txt_genre);
        this.f28633P = (TextView) findViewById(R.id.txt_releasedate);
        this.f28634Q = (TextView) findViewById(R.id.txt_plot);
        this.f28636S = (TextView) findViewById(R.id.txt_director);
        this.f28637T = (TextView) findViewById(R.id.txt_rating);
        this.f28635R = (TextView) findViewById(R.id.txt_cast);
        this.f28634Q.setFocusable(false);
        this.f28651h0 = (ImageView) findViewById(R.id.img_backdrop);
        this.f28647d0 = (ImageView) findViewById(R.id.img_movie);
        this.f28648e0 = (FrameLayout) findViewById(R.id.layout_movide_details_holder);
        this.f28627J = (Button) findViewById(R.id.btn_play);
        this.f28628K = (Button) findViewById(R.id.btn_trailer);
        pe.hf.black20.util.b bVar = new pe.hf.black20.util.b(movieInfoActivity);
        this.f28649f0 = (int) bVar.f29423b;
        this.f28650g0 = bVar.a();
        int i9 = this.f28649f0 / 6;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f28647d0.getLayoutParams();
        float f8 = this.f28650g0;
        layoutParams.width = (int) (i9 * f8);
        layoutParams.height = (int) (((int) (((double) i9) * 1.5d)) * f8);
        this.f28647d0.setLayoutParams(layoutParams);
        this.f28627J.setOnClickListener(new ViewOnClickListenerC2988c(this, 10));
        this.f28628K.setOnClickListener(new ViewOnClickListenerC0144i(this, 3));
        this.f28627J.requestFocus();
        if (q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("xtreamcodes")) {
            new j(this).execute(new Void[0]);
            return;
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
            this.f28646c0 = extras.getString("packageid");
            a();
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            String string = extras.getString("poster");
            this.f28645b0 = string;
            if (!string.equals(HttpUrl.FRAGMENT_ENCODE_SET) || this.f28645b0 != null) {
                try {
                    ((l) ((l) ((l) b.d(movieInfoActivity).n(this.f28645b0).g()).H(G2.c.b(aVar)).m(R.drawable.xciptv_vod)).f(R.drawable.xciptv_vod)).F(this.f28647d0);
                    ((l) ((l) ((l) b.d(movieInfoActivity).n(this.f28645b0).b()).H(G2.c.b(aVar)).m(R.drawable.xciptv_vod)).f(R.drawable.xciptv_vod)).F(this.f28651h0);
                } catch (Exception unused) {
                    Log.d("XCIPTV_TAG", "Glide Crashed");
                }
            }
            this.f28631N.setText(this.f28638U);
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f28624G)) {
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
