package b7;

import Y.AbstractComponentCallbacksC0406s;
import Z3.RunnableC0439v;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.ads.C1448i6;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.C2991f;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.ORPlayerSpeedyLinearLayoutManager;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class S0 extends AbstractComponentCallbacksC0406s implements g7.c {

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public static final /* synthetic */ int f10180z1 = 0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public SharedPreferences f10181C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public c7.a f10182D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public c7.d f10183E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public h7.i f10184F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public int f10185G0;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public int f10186H0;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public int f10187I0;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public int f10188J0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public int f10189K0;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public ImageButton f10190L0;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public ImageButton f10191M0;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public ImageButton f10192N0;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public ImageButton f10193O0;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public ImageButton f10194P0;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public EditText f10195Q0;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public ImageView f10196R0;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public TextView f10197S0;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public TextView f10198T0;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public TextView f10199U0;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public TextView f10200V0;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public TextView f10201W0;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public TextView f10202X0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public TextView f10203Y0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public RecyclerView f10204Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public Handler f10205a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public com.google.android.gms.internal.cast.X f10206b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public JSONObject f10207c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final N2.a f10208d1 = new N2.a(300, true);

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public String f10209e1 = "all";

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public String f10210f1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public String f10211g1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public boolean f10212h1 = false;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public boolean f10213i1 = false;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public boolean f10214j1 = true;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public String f10215k1 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public ImageView f10216l1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public ProgressBar f10217m1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public Thread f10218n1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public Thread f10219o1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public JSONArray f10220p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public JSONArray f10221q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public FrameLayout f10222r1;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public FrameLayout f10223s1;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public FrameLayout f10224t1;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public FrameLayout f10225u1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public FrameLayout f10226v1;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    public Button f10227w1;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public Button f10228x1;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public ListView f10229y1;

    public static void S(S0 s7) {
        s7.getClass();
        new ArrayList();
        ArrayList arrayListI0 = s7.f10183E0.I0();
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < arrayListI0.size(); i8++) {
            HashMap map = new HashMap();
            map.put("id", ((h7.c) arrayListI0.get(i8)).f25426a);
            map.put("isactive", ((h7.c) arrayListI0.get(i8)).f25427b);
            map.put("name", ((h7.c) arrayListI0.get(i8)).f25428c);
            arrayList.add(map);
        }
        s7.f10226v1.setVisibility(0);
        s7.f10229y1.setAdapter((ListAdapter) new M(0, s7.l(), arrayList));
        s7.f10229y1.setOnItemClickListener(new C2991f(6, s7, arrayList));
        s7.f10229y1.setOnItemLongClickListener(new C0555w(s7, arrayList, 3));
    }

    public static void T(S0 s7) {
        s7.f10197S0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        s7.f10200V0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        s7.f10201W0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        s7.f10203Y0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        s7.f10202X0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        s7.f10199U0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        s7.f10198T0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
        s7.f10196R0.setImageResource(0);
    }

    public static void U(S0 s7) {
        com.google.android.gms.internal.cast.X x7 = s7.f10206b1;
        if (x7 != null) {
            s7.f10205a1.removeCallbacks(x7);
            s7.f10205a1.removeCallbacksAndMessages(null);
        }
        Handler handler = new Handler();
        s7.f10205a1 = handler;
        com.google.android.gms.internal.cast.X x8 = new com.google.android.gms.internal.cast.X(s7, 22);
        s7.f10206b1 = x8;
        handler.postDelayed(x8, 2000L);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void B() {
        this.f7961k0 = true;
        com.google.android.gms.internal.cast.X x7 = this.f10206b1;
        if (x7 != null) {
            this.f10205a1.removeCallbacks(x7);
            this.f10205a1.removeCallbacksAndMessages(null);
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void D() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerVODFragmentVisible", false);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void E() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerVODFragmentVisible", true);
        if (this.f10181C0.contains("xciptv_profile")) {
            z4.q0.q().g("ORT_PROFILE", this.f10181C0.getString("xciptv_profile", null));
        }
        this.f10184F0 = A0.O.x("ORT_PROFILE", "Default (XC)", this.f10182D0);
        z4.q0.q().g("ORT_PROFILE_ID", this.f10184F0.f25478a);
        if (ORPlayerMainActivity.f28777I0) {
            ORPlayerMainActivity.f28777I0 = false;
            W("all");
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void H() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerVODFragmentVisible", false);
    }

    public final void V() {
        Log.d("XCIPTV_TAG", "------calling GetMovieInfoOTR--------------------" + this.f10210f1);
        JSONObject jSONObject = new JSONObject();
        String strC = !U2.z("ORT_VOD_PORTAL", "no", "no") ? z4.q0.q().c("ORT_VOD_PORTAL", "no") : Encrypt.a(this.f10184F0.f25482e);
        String strA = Encrypt.a(this.f10184F0.f25480c);
        String strA2 = Encrypt.a(this.f10184F0.f25481d);
        StringBuilder sbL = p000a.r.l(strC, "/panel_pro/api/client/content/");
        sbL.append(this.f10211g1);
        sbL.append("/vod/");
        sbL.append(this.f10210f1);
        try {
            new C1448i6(0, this, this, "otrresponse", sbL.toString(), jSONObject, strA, strA2);
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "ORPlayerHomeFragment - OTR Panel Client Devices - VolleyGETStringRequest Error");
        }
    }

    public final void W(String str) {
        this.f10213i1 = false;
        this.f10217m1.setVisibility(0);
        if (this.f10214j1) {
            this.f10214j1 = true;
            this.f10216l1.setVisibility(0);
        }
        X();
        ArrayList[] arrayListArr = {new ArrayList()};
        arrayListArr[0].clear();
        ArrayList[] arrayListArr2 = {new ArrayList()};
        arrayListArr2[0].clear();
        ArrayList[] arrayListArr3 = {new ArrayList()};
        arrayListArr3[0].clear();
        ArrayList[] arrayListArr4 = {new ArrayList()};
        arrayListArr4[0].clear();
        ArrayList[] arrayListArr5 = {new ArrayList()};
        arrayListArr5[0].clear();
        ArrayList[] arrayListArr6 = {new ArrayList()};
        arrayListArr6[0].clear();
        Thread thread = new Thread(new N0(this, arrayListArr, arrayListArr2, str, new JSONArray[]{null}, arrayListArr3, arrayListArr4, arrayListArr5, arrayListArr6));
        this.f10219o1 = thread;
        thread.start();
    }

    public final void X() {
        ArrayList[] arrayListArr = {new ArrayList()};
        arrayListArr[0].clear();
        ArrayList[] arrayListArr2 = {new ArrayList()};
        arrayListArr2[0].clear();
        Thread thread = new Thread(new RunnableC0439v(this, arrayListArr, arrayListArr2, 22, 0));
        this.f10218n1 = thread;
        thread.start();
    }

    public final void Y() {
        this.f10217m1.setVisibility(8);
        this.f10216l1.setVisibility(8);
    }

    public final void Z(View view, boolean z7) {
        if (!z7) {
            this.f10212h1 = true;
            this.f10195Q0.setVisibility(0);
            this.f10191M0.setVisibility(0);
            this.f10195Q0.requestFocus();
            return;
        }
        this.f10212h1 = false;
        this.f10195Q0.setVisibility(8);
        this.f10191M0.setVisibility(8);
        this.f10190L0.requestFocus();
        ((InputMethodManager) j().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public final void a0(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            String string = jSONObject2.getJSONObject("vod").getString("background_url");
            jSONObject2.getJSONObject("vod").getString("preview_icon");
            jSONObject2.getJSONObject("vod").getString("trailer_url");
            JSONArray jSONArray = jSONObject2.getJSONObject("vod").getJSONArray("directors");
            JSONArray jSONArray2 = jSONObject2.getJSONObject("vod").getJSONArray("cast");
            JSONArray jSONArray3 = jSONObject2.getJSONObject("vod").getJSONArray("genres");
            int length = jSONArray2.length();
            String str = HttpUrl.FRAGMENT_ENCODE_SET;
            String string2 = HttpUrl.FRAGMENT_ENCODE_SET;
            if (length > 0) {
                for (int i8 = 0; i8 < jSONArray2.length(); i8++) {
                    string2 = i8 == 0 ? jSONArray2.getString(i8) : string2 + ", " + jSONArray2.getString(i8);
                }
            }
            int length2 = jSONArray3.length();
            String string3 = HttpUrl.FRAGMENT_ENCODE_SET;
            if (length2 > 0) {
                for (int i9 = 0; i9 < jSONArray3.length(); i9++) {
                    string3 = i9 == 0 ? jSONArray3.getString(i9) : string3 + ", " + jSONArray3.getString(i9);
                }
            }
            String string4 = jSONArray.length() > 0 ? jSONArray.getString(0) : HttpUrl.FRAGMENT_ENCODE_SET;
            this.f10197S0.setText(jSONObject2.getJSONObject("vod").getString("display_name"));
            this.f10201W0.setText(jSONObject2.getJSONObject("vod").getString("description"));
            this.f10203Y0.setText(string2);
            this.f10202X0.setText(string4);
            this.f10200V0.setText(string3);
            String string5 = jSONObject2.getJSONObject("vod").getString("user_score");
            if (string5.length() > 0) {
                try {
                    int i10 = Integer.parseInt(string5.substring(0, 1));
                    for (int i11 = 0; i11 < i10; i11++) {
                        str = str + "⭐";
                        this.f10198T0.setText(str + " (" + jSONObject2.getJSONObject("vod").getString("user_score") + ")");
                    }
                } catch (Exception unused) {
                    this.f10198T0.setText(jSONObject2.getJSONObject("vod").getString("user_score"));
                }
            } else {
                this.f10198T0.setText(jSONObject2.getJSONObject("vod").getString("user_score"));
            }
            this.f10199U0.setText(Methods.w(jSONObject2.getJSONObject("vod").getString("prime_date")));
            try {
                ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(l()).n(string).b()).H(G2.c.b(this.f10208d1)).f(R.drawable.bg2)).m(R.drawable.bg2)).F(this.f10196R0);
            } catch (Exception unused2) {
                Log.d("XCIPTV_TAG", "Picasso Crashed");
            }
        } catch (JSONException unused3) {
        }
    }

    public final void b0(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            if (jSONObject2.has("access_token")) {
                String string = jSONObject2.getString("refresh_token");
                String string2 = jSONObject2.getString("access_token");
                SharedPreferences.Editor editorEdit = this.f10181C0.edit();
                editorEdit.putString("otr_refresh_token", Encrypt.b(string));
                editorEdit.putString("otr_access_token", Encrypt.b(string2));
                editorEdit.apply();
                V();
            }
        } catch (JSONException unused) {
        }
    }

    @Override // g7.c
    public final void e(int i8, String str, String str2) {
        str2.getClass();
        if (str2.equals("otrresponse")) {
            Log.d("XCIPTV_TAG", "ORPlayerHomeFragment -- onFailureJsonFastoGT renewToken");
            if (i8 == 401) {
                S3.e.m(l(), this, this);
            }
        }
    }

    @Override // g7.c
    public final void g(JSONObject jSONObject, String str) {
        str.getClass();
        if (str.equals("renewToken")) {
            try {
                b0(jSONObject);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "ORPlayerHomeFragment -- renew Token");
            }
        } else if (str.equals("otrresponse")) {
            try {
                a0(jSONObject);
            } catch (Exception unused2) {
                Log.d("XCIPTV_TAG", "ORPlayerHomeFragment -- loginCheckOTR");
            }
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final View y(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i8 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.orplayer_fragment_vod, viewGroup, false);
        z4.q0.q().g("ORT_WHICH_CAT", "VOD");
        this.f10181C0 = l().getSharedPreferences("pe.hf.black20", 0);
        this.f10183E0 = new c7.d(l());
        this.f10182D0 = new c7.a(l(), 0);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 30) {
            j().getDisplay().getRealMetrics(displayMetrics);
        } else {
            j().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            j().getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        this.f10185G0 = displayMetrics.heightPixels;
        this.f10186H0 = displayMetrics.widthPixels;
        this.f10187I0 = displayMetrics.densityDpi / 160;
        int i9 = 3;
        if (Methods.P() || Methods.T(l())) {
            int i10 = (this.f10186H0 / 8) - (this.f10187I0 * 10);
            this.f10189K0 = (int) (((double) i10) * 1.5d);
            this.f10188J0 = i10;
        } else {
            int i11 = (this.f10185G0 / 3) - (this.f10187I0 * 10);
            this.f10189K0 = (int) (((double) i11) * 1.5d);
            this.f10188J0 = i11;
        }
        this.f10197S0 = (TextView) viewInflate.findViewById(R.id.txt_title);
        this.f10198T0 = (TextView) viewInflate.findViewById(R.id.txt_rating);
        this.f10199U0 = (TextView) viewInflate.findViewById(R.id.txt_duration_lenght);
        this.f10200V0 = (TextView) viewInflate.findViewById(R.id.txt_genre);
        this.f10201W0 = (TextView) viewInflate.findViewById(R.id.txt_plot);
        this.f10202X0 = (TextView) viewInflate.findViewById(R.id.txt_director);
        this.f10203Y0 = (TextView) viewInflate.findViewById(R.id.txt_cast);
        EditText editText = (EditText) viewInflate.findViewById(R.id.ed_search_vod);
        this.f10195Q0 = editText;
        editText.setVisibility(8);
        this.f10190L0 = (ImageButton) viewInflate.findViewById(R.id.btn_search_vod);
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_close_search_vod);
        this.f10191M0 = imageButton;
        imageButton.setVisibility(8);
        this.f10192N0 = (ImageButton) viewInflate.findViewById(R.id.btn_continue_watching_vod);
        this.f10193O0 = (ImageButton) viewInflate.findViewById(R.id.btn_fav_vod);
        this.f10194P0 = (ImageButton) viewInflate.findViewById(R.id.btn_all_vods);
        this.f10222r1 = (FrameLayout) viewInflate.findViewById(R.id.layout_backdrop_holder);
        this.f10223s1 = (FrameLayout) viewInflate.findViewById(R.id.layout_recycler_holder);
        this.f10224t1 = (FrameLayout) viewInflate.findViewById(R.id.layout_tools_holder);
        this.f10225u1 = (FrameLayout) viewInflate.findViewById(R.id.layout_vod_info_holder);
        this.f10196R0 = (ImageView) viewInflate.findViewById(R.id.img_backdrop);
        this.f10204Z0 = (RecyclerView) viewInflate.findViewById(R.id.recyclerview_main);
        this.f10216l1 = (ImageView) viewInflate.findViewById(R.id.loading_bg);
        this.f10217m1 = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
        Y();
        l();
        int i12 = 1;
        this.f10204Z0.setLayoutManager(new ORPlayerSpeedyLinearLayoutManager(1));
        this.f10204Z0.setFocusable(false);
        this.f10204Z0.setNestedScrollingEnabled(false);
        this.f10204Z0.setClipToPadding(false);
        this.f10204Z0.setClipChildren(false);
        this.f10226v1 = (FrameLayout) viewInflate.findViewById(R.id.layout_fav_profile_list);
        this.f10227w1 = (Button) viewInflate.findViewById(R.id.btn_open_add_fav_profile);
        this.f10228x1 = (Button) viewInflate.findViewById(R.id.btn_close_fav_profile_list);
        this.f10229y1 = (ListView) viewInflate.findViewById(R.id.listviewfavprofile);
        this.f10226v1.setVisibility(8);
        int i13 = 2;
        if (Methods.T(l()) || Methods.P()) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f10223s1.getLayoutParams();
            layoutParams.height = this.f10185G0 / 2;
            this.f10223s1.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f10222r1.getLayoutParams();
            int i14 = this.f10185G0 / 2;
            layoutParams2.height = i14;
            layoutParams2.width = (int) (((double) i14) * 1.77d);
            this.f10222r1.setLayoutParams(layoutParams2);
        } else {
            this.f10225u1.setVisibility(8);
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f10223s1.getLayoutParams();
            layoutParams3.height = this.f10185G0;
            layoutParams3.setMargins(0, this.f10187I0 * 50, 0, 0);
            this.f10223s1.setLayoutParams(layoutParams3);
            this.f10204Z0.setPadding(0, 0, 0, 0);
        }
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.f10224t1.getLayoutParams();
        layoutParams4.width = (int) (((double) (this.f10185G0 / 2)) * 1.77d);
        this.f10224t1.setLayoutParams(layoutParams4);
        this.f10227w1.setOnClickListener(new O0(this, i8));
        this.f10228x1.setOnClickListener(new O0(this, i12));
        this.f10190L0.setOnClickListener(new O0(this, i13));
        int i15 = 4;
        this.f10195Q0.setOnEditorActionListener(new androidx.leanback.widget.H(this, i15));
        this.f10191M0.setOnClickListener(new O0(this, i9));
        this.f10193O0.setOnClickListener(new O0(this, i15));
        this.f10193O0.setOnLongClickListener(new ViewOnLongClickListenerC0533l0(this, i15));
        this.f10192N0.setOnClickListener(new O0(this, 5));
        this.f10194P0.setOnClickListener(new O0(this, 6));
        W("all");
        return viewInflate;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void z() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerVODFragmentVisible", false);
        com.google.android.gms.internal.cast.X x7 = this.f10206b1;
        if (x7 != null) {
            this.f10205a1.removeCallbacks(x7);
            this.f10205a1.removeCallbacksAndMessages(null);
        }
        Thread thread = this.f10219o1;
        if (thread != null) {
            thread.interrupt();
        }
        Thread thread2 = this.f10218n1;
        if (thread2 != null) {
            thread2.interrupt();
        }
    }
}
