package b7;

import O1.C0324x;
import Y.AbstractComponentCallbacksC0406s;
import Z3.RunnableC0439v;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
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
import android.widget.Scroller;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import p039f.C2991f;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.ORPlayerSpeedyLinearLayoutManager;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class I0 extends AbstractComponentCallbacksC0406s {

    /* JADX INFO: renamed from: A1, reason: collision with root package name */
    public static final /* synthetic */ int f10034A1 = 0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public SharedPreferences f10035C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public c7.a f10036D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public c7.d f10037E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public h7.i f10038F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public ArrayList f10039G0;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public JSONArray f10045M0;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public JSONArray f10046N0;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public int f10047O0;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public int f10048P0;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public int f10049Q0;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public int f10050R0;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public int f10051S0;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public ImageView f10052T0;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public TextView f10053U0;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public TextView f10054V0;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public TextView f10055W0;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public TextView f10056X0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public TextView f10057Y0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public TextView f10058Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public TextView f10059a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public FrameLayout f10060b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public FrameLayout f10061c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public FrameLayout f10062d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public FrameLayout f10063e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public ImageButton f10064f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public ImageButton f10065g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public ImageButton f10066h1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public ImageButton f10067i1;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public ImageButton f10068j1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public EditText f10069k1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public RecyclerView f10070l1;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public ImageView f10077s1;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public ProgressBar f10078t1;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public Thread f10079u1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public Thread f10080v1;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    public FrameLayout f10081w1;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public Button f10082x1;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public Button f10083y1;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public ListView f10084z1;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public ArrayList f10040H0 = new ArrayList();

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public ArrayList f10041I0 = new ArrayList();

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public final ArrayList f10042J0 = new ArrayList();

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public ArrayList f10043K0 = new ArrayList();

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public ArrayList f10044L0 = new ArrayList();

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public boolean f10071m1 = false;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public boolean f10072n1 = false;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public boolean f10073o1 = true;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public String f10074p1 = "all";

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public final N2.a f10075q1 = new N2.a(300, true);

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public String f10076r1 = HttpUrl.FRAGMENT_ENCODE_SET;

    public static void S(I0 i8) {
        i8.getClass();
        new ArrayList();
        ArrayList arrayListI0 = i8.f10037E0.I0();
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < arrayListI0.size(); i9++) {
            HashMap map = new HashMap();
            map.put("id", ((h7.c) arrayListI0.get(i9)).f25426a);
            map.put("isactive", ((h7.c) arrayListI0.get(i9)).f25427b);
            map.put("name", ((h7.c) arrayListI0.get(i9)).f25428c);
            arrayList.add(map);
        }
        i8.f10081w1.setVisibility(0);
        i8.f10084z1.setAdapter((ListAdapter) new M(0, i8.l(), arrayList));
        i8.f10084z1.setOnItemClickListener(new C2991f(3, i8, arrayList));
        i8.f10084z1.setOnItemLongClickListener(new C0555w(i8, arrayList, 1));
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void B() {
        this.f7961k0 = true;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void D() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerSeriesFragmentVisible", false);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void E() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerSeriesFragmentVisible", true);
        if (this.f10035C0.contains("xciptv_profile")) {
            z4.q0.q().g("ORT_PROFILE", this.f10035C0.getString("xciptv_profile", null));
        }
        this.f10038F0 = A0.O.x("ORT_PROFILE", "Default (XC)", this.f10036D0);
        z4.q0.q().g("ORT_PROFILE_ID", this.f10038F0.f25478a);
        if (ORPlayerMainActivity.f28777I0) {
            ORPlayerMainActivity.f28777I0 = false;
            U("all");
        }
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void H() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerSeriesFragmentVisible", false);
    }

    public final void T() {
        ArrayList[] arrayListArr = {new ArrayList()};
        arrayListArr[0].clear();
        ArrayList arrayList = new ArrayList();
        arrayListArr[0].clear();
        Thread thread = new Thread(new RunnableC0439v(this, arrayListArr, arrayList, 20, 0));
        this.f10079u1 = thread;
        thread.start();
    }

    public final void U(String str) {
        this.f10078t1.setVisibility(0);
        if (this.f10073o1) {
            this.f10073o1 = true;
            this.f10077s1.setVisibility(0);
        }
        T();
        this.f10072n1 = false;
        ArrayList arrayList = new ArrayList();
        this.f10039G0 = arrayList;
        arrayList.clear();
        new ArrayList[]{new ArrayList()}[0].clear();
        new ArrayList().clear();
        Thread thread = new Thread(new RunnableC0439v(this, str, new JSONArray[]{null}, 21, 0));
        this.f10080v1 = thread;
        thread.start();
    }

    public final void V() {
        this.f10078t1.setVisibility(8);
        this.f10077s1.setVisibility(8);
    }

    public final void W(View view, boolean z7) {
        if (!z7) {
            this.f10071m1 = true;
            this.f10069k1.setVisibility(0);
            this.f10065g1.setVisibility(0);
            this.f10069k1.requestFocus();
            return;
        }
        this.f10071m1 = false;
        this.f10069k1.setVisibility(8);
        this.f10065g1.setVisibility(8);
        this.f10064f1.requestFocus();
        ((InputMethodManager) j().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final View y(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i8 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.orplayer_fragment_series, viewGroup, false);
        z4.q0.q().g("ORT_WHICH_CAT", "SERIES");
        this.f10035C0 = l().getSharedPreferences("pe.hf.black20", 0);
        this.f10037E0 = new c7.d(l());
        int i9 = 1;
        new c7.b(l(), 1);
        this.f10036D0 = new c7.a(l(), 0);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 30) {
            j().getDisplay().getRealMetrics(displayMetrics);
        } else {
            j().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            j().getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        this.f10047O0 = displayMetrics.heightPixels;
        this.f10048P0 = displayMetrics.widthPixels;
        this.f10049Q0 = displayMetrics.densityDpi / 160;
        int i10 = 3;
        if (Methods.P() || Methods.T(l())) {
            int i11 = (this.f10048P0 / 8) - (this.f10049Q0 * 10);
            this.f10051S0 = (int) (((double) i11) * 1.5d);
            this.f10050R0 = i11;
        } else {
            int i12 = (this.f10047O0 / 3) - (this.f10049Q0 * 10);
            this.f10051S0 = (int) (((double) i12) * 1.5d);
            this.f10050R0 = i12;
        }
        this.f10070l1 = (RecyclerView) viewInflate.findViewById(R.id.recyclerview_main);
        l();
        this.f10070l1.setLayoutManager(new ORPlayerSpeedyLinearLayoutManager(1));
        this.f10070l1.setFocusable(false);
        this.f10070l1.setNestedScrollingEnabled(false);
        this.f10070l1.setClipToPadding(false);
        this.f10070l1.setClipChildren(false);
        this.f10060b1 = (FrameLayout) viewInflate.findViewById(R.id.layout_backdrop_holder);
        this.f10061c1 = (FrameLayout) viewInflate.findViewById(R.id.layout_recycler_holder);
        this.f10062d1 = (FrameLayout) viewInflate.findViewById(R.id.layout_tools_holder);
        this.f10063e1 = (FrameLayout) viewInflate.findViewById(R.id.layout_series_info_holder);
        this.f10052T0 = (ImageView) viewInflate.findViewById(R.id.img_backdrop);
        this.f10053U0 = (TextView) viewInflate.findViewById(R.id.txt_title);
        this.f10054V0 = (TextView) viewInflate.findViewById(R.id.txt_rating);
        this.f10055W0 = (TextView) viewInflate.findViewById(R.id.txt_duration_lenght);
        this.f10056X0 = (TextView) viewInflate.findViewById(R.id.txt_genre);
        this.f10057Y0 = (TextView) viewInflate.findViewById(R.id.txt_plot);
        this.f10058Z0 = (TextView) viewInflate.findViewById(R.id.txt_director);
        this.f10059a1 = (TextView) viewInflate.findViewById(R.id.txt_cast);
        EditText editText = (EditText) viewInflate.findViewById(R.id.ed_search_vod);
        this.f10069k1 = editText;
        editText.setVisibility(8);
        this.f10064f1 = (ImageButton) viewInflate.findViewById(R.id.btn_search_vod);
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_close_search_vod);
        this.f10065g1 = imageButton;
        imageButton.setVisibility(8);
        this.f10066h1 = (ImageButton) viewInflate.findViewById(R.id.btn_continue_watching_vod);
        this.f10067i1 = (ImageButton) viewInflate.findViewById(R.id.btn_fav_vod);
        this.f10068j1 = (ImageButton) viewInflate.findViewById(R.id.btn_all_vods);
        this.f10077s1 = (ImageView) viewInflate.findViewById(R.id.loading_bg);
        this.f10078t1 = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
        V();
        this.f10081w1 = (FrameLayout) viewInflate.findViewById(R.id.layout_fav_profile_list);
        this.f10082x1 = (Button) viewInflate.findViewById(R.id.btn_open_add_fav_profile);
        this.f10083y1 = (Button) viewInflate.findViewById(R.id.btn_close_fav_profile_list);
        this.f10084z1 = (ListView) viewInflate.findViewById(R.id.listviewfavprofile);
        this.f10081w1.setVisibility(8);
        this.f10037E0 = new c7.d(l());
        int i13 = 2;
        if (Methods.T(l()) || Methods.P()) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f10061c1.getLayoutParams();
            layoutParams.height = this.f10047O0 / 2;
            this.f10061c1.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f10060b1.getLayoutParams();
            int i14 = this.f10047O0 / 2;
            layoutParams2.height = i14;
            layoutParams2.width = (int) (((double) i14) * 1.77d);
            this.f10060b1.setLayoutParams(layoutParams2);
        } else {
            this.f10063e1.setVisibility(8);
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.f10061c1.getLayoutParams();
            layoutParams3.height = this.f10047O0;
            layoutParams3.setMargins(0, this.f10049Q0 * 50, 0, 0);
            this.f10061c1.setLayoutParams(layoutParams3);
            this.f10070l1.setPadding(0, 0, 0, 0);
        }
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.f10062d1.getLayoutParams();
        layoutParams4.width = (int) (((double) (this.f10047O0 / 2)) * 1.77d);
        this.f10062d1.setLayoutParams(layoutParams4);
        C0324x c0324x = new C0324x();
        RecyclerView recyclerView = this.f10070l1;
        RecyclerView recyclerView2 = c0324x.f5553a;
        if (recyclerView2 != recyclerView) {
            O1.f0 f0Var = c0324x.f5555c;
            if (recyclerView2 != null) {
                ArrayList arrayList = recyclerView2.f9639P0;
                if (arrayList != null) {
                    arrayList.remove(f0Var);
                }
                c0324x.f5553a.setOnFlingListener(null);
            }
            c0324x.f5553a = recyclerView;
            if (recyclerView != null) {
                if (recyclerView.getOnFlingListener() != null) {
                    throw new IllegalStateException("An instance of OnFlingListener already set.");
                }
                c0324x.f5553a.j(f0Var);
                c0324x.f5553a.setOnFlingListener(c0324x);
                c0324x.f5554b = new Scroller(c0324x.f5553a.getContext(), new DecelerateInterpolator());
                c0324x.f();
            }
        }
        this.f10082x1.setOnClickListener(new B0(this, i9));
        this.f10083y1.setOnClickListener(new B0(this, i13));
        this.f10064f1.setOnClickListener(new B0(this, i10));
        this.f10069k1.setOnEditorActionListener(new androidx.leanback.widget.H(this, i13));
        this.f10065g1.setOnClickListener(new B0(this, 4));
        this.f10064f1.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0558x0(this, 1));
        this.f10067i1.setOnClickListener(new B0(this, 5));
        this.f10067i1.setOnLongClickListener(new ViewOnLongClickListenerC0533l0(this, i13));
        this.f10066h1.setOnClickListener(new B0(this, 6));
        this.f10068j1.setOnClickListener(new B0(this, i8));
        U("all");
        return viewInflate;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void z() {
        this.f7961k0 = true;
        z4.q0.q().a("ORT_isORPlayerSeriesFragmentVisible", false);
        Thread thread = this.f10080v1;
        if (thread != null) {
            thread.interrupt();
        }
        Thread thread2 = this.f10079u1;
        if (thread2 != null) {
            thread2.interrupt();
        }
    }
}
