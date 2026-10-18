package b7;

import Y.AbstractComponentCallbacksC0406s;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
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
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import p039f.C2991f;
import p079k.ViewTreeObserverOnGlobalLayoutListenerC3013e;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class M0 extends AbstractComponentCallbacksC0406s {

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public static String f10110e1 = "";

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public static int f10111f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public static int f10112g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public static int f10113h1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static int f10114i1;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public GridView f10115C0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public ArrayList f10117E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public LinearLayout f10118F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public SharedPreferences f10119G0;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public c7.a f10120H0;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public c7.d f10121I0;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public h7.i f10122J0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public ImageButton f10123K0;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public ImageButton f10124L0;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public ImageButton f10125M0;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public ImageButton f10126N0;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public ImageButton f10127O0;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public ImageButton f10128P0;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public EditText f10129Q0;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public TextView f10132T0;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public TextView f10133U0;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public com.google.android.gms.internal.cast.X f10136X0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public ProgressBar f10137Y0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public ImageView f10138Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public FrameLayout f10139a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public Button f10140b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public Button f10141c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public ListView f10142d1;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public ArrayList f10116D0 = new ArrayList();

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public boolean f10130R0 = false;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public int f10131S0 = 0;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public String f10134V0 = "12";

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public Handler f10135W0 = new Handler();

    public static void S(M0 m7) {
        m7.getClass();
        new ArrayList();
        ArrayList arrayListI0 = m7.f10121I0.I0();
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < arrayListI0.size(); i8++) {
            HashMap map = new HashMap();
            map.put("id", ((h7.c) arrayListI0.get(i8)).f25426a);
            map.put("isactive", ((h7.c) arrayListI0.get(i8)).f25427b);
            map.put("name", ((h7.c) arrayListI0.get(i8)).f25428c);
            arrayList.add(map);
        }
        m7.f10139a1.setVisibility(0);
        m7.f10142d1.setAdapter((ListAdapter) new M(0, m7.l(), arrayList));
        m7.f10142d1.setFocusable(true);
        m7.f10141c1.setFocusable(true);
        m7.f10141c1.requestFocus();
        m7.f10142d1.setOnItemClickListener(new C2991f(4, m7, arrayList));
        m7.f10142d1.setOnItemLongClickListener(new C0555w(m7, arrayList, 2));
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void B() {
        this.f7961k0 = true;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void D() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerTVFragmentVisible", false);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void E() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerTVFragmentVisible", true);
        if (this.f10119G0.contains("xciptv_profile")) {
            z4.q0.q().g("ORT_PROFILE", this.f10119G0.getString("xciptv_profile", null));
        }
        this.f10122J0 = A0.O.x("ORT_PROFILE", "Default (XC)", this.f10120H0);
        z4.q0.q().g("ORT_PROFILE_ID", this.f10122J0.f25478a);
        if (ORPlayerMainActivity.f28777I0) {
            Log.d("XCIPTV_TAG", "--------(ORPlayerHomeActivity.isDataReloadRequired-----------Yes");
            ORPlayerMainActivity.f28777I0 = false;
            T();
        }
        this.f10115C0.setSelection(this.f10131S0);
        this.f10115C0.setSelector(R.drawable.orplayer_card_selected);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void H() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerTVFragmentVisible", false);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x010b  */
    public final void T() {
        this.f10137Y0.setVisibility(0);
        this.f10138Z0.setVisibility(0);
        this.f10116D0.clear();
        Context contextL = l();
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        c7.b bVar = new c7.b(contextL, 1);
        c7.d dVar = new c7.d(contextL);
        c7.b bVar2 = new c7.b(contextL, 0);
        SharedPreferences sharedPreferences = contextL.getSharedPreferences("pe.hf.black20", 0);
        ArrayList arrayListI0 = U2.z("ORT_WHICH_CAT", "TV", "CATCHUP") ? dVar.i0() : U2.z("ORT_WHICH_CAT", "TV", "RADIO") ? dVar.m0() : dVar.q0();
        String str = "No";
        if (Config.f29414b.equals("no") && !sharedPreferences.getString("filter_status", null).equals("No") && !sharedPreferences.getString("filter_status", null).equals(HttpUrl.FRAGMENT_ENCODE_SET) && !sharedPreferences.getString("filter_status", null).equals("null")) {
            str = "Yes";
        }
        for (int i8 = 0; i8 < arrayListI0.size(); i8++) {
            if (U2.z("ORT_PARENTAL_CONTROL_STATUS", "locked", "locked")) {
                ArrayList arrayList2 = arrayList;
                if (bVar.N(((h7.a) arrayListI0.get(i8)).f25421a, "TV", z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET)).equals("yes")) {
                    arrayList = arrayList2;
                } else if (!str.equals("Yes")) {
                    arrayList = arrayList2;
                    HashMap map = new HashMap();
                    map.put("category_id", ((h7.a) arrayListI0.get(i8)).f25421a);
                    map.put("category_name", ((h7.a) arrayListI0.get(i8)).f25422b);
                    map.put("parent_id", ((h7.a) arrayListI0.get(i8)).f25423c);
                    arrayList.add(map);
                } else if (bVar2.c0(((h7.a) arrayListI0.get(i8)).f25422b, "Live").equals("yes")) {
                    HashMap map2 = new HashMap();
                    map2.put("category_id", ((h7.a) arrayListI0.get(i8)).f25421a);
                    map2.put("category_name", ((h7.a) arrayListI0.get(i8)).f25422b);
                    map2.put("parent_id", ((h7.a) arrayListI0.get(i8)).f25423c);
                    arrayList = arrayList2;
                    arrayList.add(map2);
                } else {
                    arrayList = arrayList2;
                }
            } else if (!str.equals("Yes")) {
                HashMap map3 = new HashMap();
                map3.put("category_id", ((h7.a) arrayListI0.get(i8)).f25421a);
                map3.put("category_name", ((h7.a) arrayListI0.get(i8)).f25422b);
                map3.put("parent_id", ((h7.a) arrayListI0.get(i8)).f25423c);
                arrayList.add(map3);
            } else if (bVar2.c0(((h7.a) arrayListI0.get(i8)).f25422b, "Live").equals("yes")) {
                HashMap map4 = new HashMap();
                map4.put("category_id", ((h7.a) arrayListI0.get(i8)).f25421a);
                map4.put("category_name", ((h7.a) arrayListI0.get(i8)).f25422b);
                map4.put("parent_id", ((h7.a) arrayListI0.get(i8)).f25423c);
                arrayList.add(map4);
            }
        }
        if (arrayListI0.size() == 0) {
            HashMap mapM = p000a.r.m("category_id", "0000000000000", "category_name", "NO DATA FOUND!");
            mapM.put("parent_id", "0");
            arrayList.add(mapM);
        }
        this.f10116D0 = arrayList;
        if (arrayList.size() <= 0) {
            this.f10137Y0.setVisibility(8);
            this.f10138Z0.setVisibility(8);
            return;
        }
        new ArrayList().clear();
        z4.q0.t(l());
        f10110e1 = (String) ((HashMap) this.f10116D0.get(0)).get("category_id");
        this.f10118F0.removeAllViews();
        int i9 = f10113h1;
        int i10 = i9 * 10;
        int i11 = i9 * 35;
        for (int i12 = 0; i12 < this.f10116D0.size(); i12++) {
            Button button = new Button(l());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, i10, 0);
            layoutParams.height = i11;
            button.setLayoutParams(layoutParams);
            button.setTextSize(16.0f);
            int i13 = 2;
            button.setPadding(i10, 0, i10, f10113h1 * 2);
            button.setBackgroundColor(Color.parseColor("#00000000"));
            button.setGravity(17);
            if (z4.q0.q().a("ORT_isDemo", false)) {
                button.setText("CATEGORY " + String.valueOf(i12));
            } else {
                button.setText((CharSequence) ((HashMap) this.f10116D0.get(i12)).get("category_name"));
            }
            button.setTag(((HashMap) this.f10116D0.get(i12)).get("category_id"));
            button.setTypeface(F.n.b(l(), R.font.quicksand_regular));
            if (i12 == 0) {
                button.setTypeface(F.n.b(l(), R.font.quicksand_bold));
            }
            this.f10118F0.addView(button);
            f10110e1 = (String) ((HashMap) this.f10116D0.get(0)).get("category_id");
            z4.q0.q().g("ORT_CAT_NAME", (String) ((HashMap) this.f10116D0.get(0)).get("category_name"));
            button.setOnClickListener(new J0(this, i13));
            button.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(7, this, button));
        }
        U("none", "all");
    }

    public final void U(String str, String str2) {
        ArrayList arrayListV = z4.q0.v(l(), "default");
        ArrayList arrayList = new ArrayList();
        this.f10117E0 = arrayList;
        arrayList.clear();
        int i8 = 1;
        if (str.equals("none")) {
            this.f10117E0 = z4.q0.u(l(), false, "all", "default", f10110e1);
        } else if (str.equals("fav")) {
            this.f10117E0 = arrayListV;
        } else if (str.equals("search")) {
            this.f10117E0 = z4.q0.u(l(), true, str2, "default", "0");
        }
        this.f10115C0.setAdapter((ListAdapter) new L0(this, l(), this.f10117E0));
        this.f10115C0.requestFocus();
        this.f10115C0.setSelection(0);
        this.f10115C0.setSelector(R.drawable.orplayer_card_selected);
        this.f10115C0.setOnFocusChangeListener(new K0(this, i8));
        this.f10115C0.setOnItemLongClickListener(new F(this, 4));
        this.f10115C0.setOnItemClickListener(new C2991f(5, this, str));
        this.f10115C0.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC3013e(this, 6));
    }

    public final void V(View view, boolean z7) {
        if (!z7) {
            this.f10130R0 = true;
            this.f10129Q0.setVisibility(0);
            this.f10124L0.setVisibility(0);
            this.f10129Q0.requestFocus();
            return;
        }
        this.f10130R0 = false;
        this.f10129Q0.setVisibility(8);
        this.f10124L0.setVisibility(8);
        this.f10123K0.requestFocus();
        ((InputMethodManager) j().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final View y(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i8 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.orplayer_fragment_tv, viewGroup, false);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 30) {
            j().getDisplay().getRealMetrics(displayMetrics);
        } else {
            j().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            j().getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        f10111f1 = displayMetrics.heightPixels;
        f10112g1 = displayMetrics.widthPixels;
        f10113h1 = displayMetrics.densityDpi / 160;
        this.f10119G0 = l().getSharedPreferences("pe.hf.black20", 0);
        this.f10121I0 = new c7.d(l());
        this.f10120H0 = new c7.a(l(), 0);
        this.f10115C0 = (GridView) viewInflate.findViewById(R.id.gridViewTvFragment);
        this.f10118F0 = (LinearLayout) viewInflate.findViewById(R.id.layout_cat_btn_holder);
        this.f10123K0 = (ImageButton) viewInflate.findViewById(R.id.btn_search_tv);
        this.f10124L0 = (ImageButton) viewInflate.findViewById(R.id.btn_close_search_tv);
        this.f10125M0 = (ImageButton) viewInflate.findViewById(R.id.btn_fav_tv);
        this.f10126N0 = (ImageButton) viewInflate.findViewById(R.id.btn_all_tv);
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_epg);
        this.f10127O0 = imageButton;
        int i9 = 8;
        imageButton.setVisibility(8);
        this.f10129Q0 = (EditText) viewInflate.findViewById(R.id.ed_search_tv);
        this.f10124L0.setVisibility(8);
        this.f10129Q0.setVisibility(8);
        this.f10132T0 = (TextView) viewInflate.findViewById(R.id.txt_date_ch);
        this.f10133U0 = (TextView) viewInflate.findViewById(R.id.txt_time_ch);
        this.f10137Y0 = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
        this.f10138Z0 = (ImageView) viewInflate.findViewById(R.id.loading_bg_tv);
        this.f10128P0 = (ImageButton) viewInflate.findViewById(R.id.btn_multi);
        this.f10139a1 = (FrameLayout) viewInflate.findViewById(R.id.layout_fav_profile_list);
        this.f10140b1 = (Button) viewInflate.findViewById(R.id.btn_open_add_fav_profile);
        this.f10141c1 = (Button) viewInflate.findViewById(R.id.btn_close_fav_profile_list);
        this.f10142d1 = (ListView) viewInflate.findViewById(R.id.listviewfavprofile);
        this.f10139a1.setVisibility(8);
        int i10 = 7;
        int i11 = 5;
        int i12 = 3;
        if (Methods.P() || Methods.T(l())) {
            f10114i1 = (f10112g1 / 8) - (f10113h1 * 10);
            this.f10115C0.setNumColumns(7);
        } else {
            f10114i1 = (f10111f1 / 3) - (f10113h1 * 10);
            this.f10115C0.setNumColumns(5);
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
            this.f10127O0.setVisibility(0);
        } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            this.f10127O0.setVisibility(8);
        }
        if (this.f10119G0.contains("time_format") && this.f10119G0.getString("time_format", null).equals("24")) {
            this.f10134V0 = "24";
        }
        this.f10140b1.setOnClickListener(new J0(this, i12));
        this.f10141c1.setOnClickListener(new J0(this, 4));
        this.f10128P0.setOnClickListener(new J0(this, i11));
        this.f10128P0.setOnFocusChangeListener(new K0(this, 2));
        this.f10123K0.setOnClickListener(new J0(this, 6));
        this.f10129Q0.setOnEditorActionListener(new androidx.leanback.widget.H(this, i12));
        this.f10124L0.setOnClickListener(new J0(this, i10));
        this.f10125M0.setOnClickListener(new J0(this, i9));
        this.f10125M0.setOnLongClickListener(new ViewOnLongClickListenerC0533l0(this, i12));
        this.f10126N0.setOnClickListener(new J0(this, i8));
        this.f10127O0.setOnClickListener(new J0(this, 1));
        this.f10127O0.setOnFocusChangeListener(new K0(this, i8));
        if (this.f10119G0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("1")) {
            if (this.f10119G0.getString("btn_epg", null).equals("No")) {
                this.f10127O0.setVisibility(8);
            }
        } else if (this.f10119G0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("2")) {
            if (this.f10119G0.getString("btn_epg2", null).equals("No")) {
                this.f10127O0.setVisibility(8);
            }
        } else if (this.f10119G0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("3")) {
            if (this.f10119G0.getString("btn_epg3", null).equals("No")) {
                this.f10127O0.setVisibility(8);
            }
        } else if (this.f10119G0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("4")) {
            if (this.f10119G0.getString("btn_epg4", null).equals("No")) {
                this.f10127O0.setVisibility(8);
            }
        } else if (this.f10119G0.getString("XCIPTV_WHICH_PORTAL_SELECTED", null).equals("5") && this.f10119G0.getString("btn_epg5", null).equals("No")) {
            this.f10127O0.setVisibility(8);
        }
        Handler handler = new Handler();
        this.f10135W0 = handler;
        com.google.android.gms.internal.cast.X x7 = new com.google.android.gms.internal.cast.X(this, 19);
        this.f10136X0 = x7;
        handler.postDelayed(x7, 100L);
        T();
        return viewInflate;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void z() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerTVFragmentVisible", false);
        com.google.android.gms.internal.cast.X x7 = this.f10136X0;
        if (x7 != null) {
            this.f10135W0.removeCallbacks(x7);
        }
    }
}
