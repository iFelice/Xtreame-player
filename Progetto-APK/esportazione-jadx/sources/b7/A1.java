package b7;

import Y.AbstractComponentCallbacksC0406s;
import android.content.SharedPreferences;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import pe.hf.black20.ORPlayerSpeedyLinearLayoutManager;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public class A1 extends AbstractComponentCallbacksC0406s {

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public static final /* synthetic */ int f9942a1 = 0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public SharedPreferences f9943C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public RecyclerView f9944D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public FrameLayout f9945E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public Button f9946F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public Button f9947G0;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public Button f9948H0;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public EditText f9949I0;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public ImageButton f9950J0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public ListView f9951K0;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public ArrayList f9952L0;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public int f9958R0;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public int f9959S0;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public int f9960T0;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public int f9961U0;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public int f9962V0;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public ORPlayerSpeedyLinearLayoutManager f9963W0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public LinearLayout f9965Y0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public LinearLayout f9966Z0;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public ArrayList f9953M0 = new ArrayList();

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public ArrayList f9954N0 = new ArrayList();

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public ArrayList f9955O0 = new ArrayList();

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public ArrayList f9956P0 = new ArrayList();

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public ArrayList f9957Q0 = new ArrayList();

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public String f9964X0 = HttpUrl.FRAGMENT_ENCODE_SET;

    @Override // Y.AbstractComponentCallbacksC0406s
    public final void E() {
        this.f7961k0 = true;
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final View y(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i8 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_search, viewGroup, false);
        this.f9944D0 = (RecyclerView) viewInflate.findViewById(R.id.recyclerview_main_search);
        l();
        int i9 = 1;
        ORPlayerSpeedyLinearLayoutManager oRPlayerSpeedyLinearLayoutManager = new ORPlayerSpeedyLinearLayoutManager(1);
        this.f9963W0 = oRPlayerSpeedyLinearLayoutManager;
        oRPlayerSpeedyLinearLayoutManager.r1(false);
        this.f9944D0.setLayoutManager(this.f9963W0);
        this.f9944D0.setFocusable(false);
        this.f9944D0.setNestedScrollingEnabled(false);
        this.f9944D0.setClipToPadding(false);
        this.f9944D0.setClipChildren(false);
        this.f9945E0 = (FrameLayout) viewInflate.findViewById(R.id.layout_search_holder);
        this.f9946F0 = (Button) viewInflate.findViewById(R.id.btn_search_tv_vod_series);
        this.f9947G0 = (Button) viewInflate.findViewById(R.id.btn_search_epg);
        this.f9948H0 = (Button) viewInflate.findViewById(R.id.btn_cancel);
        this.f9949I0 = (EditText) viewInflate.findViewById(R.id.ed_search);
        this.f9950J0 = (ImageButton) viewInflate.findViewById(R.id.btn_search_frm);
        this.f9951K0 = (ListView) viewInflate.findViewById(R.id.listView);
        this.f9965Y0 = (LinearLayout) viewInflate.findViewById(R.id.layout_search_view);
        this.f9966Z0 = (LinearLayout) viewInflate.findViewById(R.id.layout_progress);
        TextView textView = (TextView) viewInflate.findViewById(R.id.txt_search_title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_search_desc);
        this.f9943C0 = l().getSharedPreferences("pe.hf.black20", 0);
        new c7.d(l());
        if (Methods.O()) {
            long length = new File(String.valueOf(j().getFilesDir()).concat("/epg.xml")).length() / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            if (length > 19 || length == 0) {
                this.f9947G0.setVisibility(8);
                textView.setVisibility(8);
                textView2.setVisibility(8);
            }
        }
        this.f9965Y0.setVisibility(0);
        this.f9966Z0.setVisibility(8);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 30) {
            j().getDisplay().getRealMetrics(displayMetrics);
        } else {
            j().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            j().getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        this.f9958R0 = displayMetrics.heightPixels;
        this.f9959S0 = displayMetrics.widthPixels;
        this.f9960T0 = displayMetrics.densityDpi / 160;
        int i10 = 3;
        if (Methods.P() || Methods.T(l())) {
            int i11 = (this.f9959S0 / 8) - (this.f9960T0 * 10);
            this.f9962V0 = (int) (((double) i11) * 1.5d);
            this.f9961U0 = i11;
        } else {
            int i12 = (this.f9958R0 / 3) - (this.f9960T0 * 10);
            this.f9962V0 = (int) (((double) i12) * 1.5d);
            this.f9961U0 = i12;
        }
        this.f9946F0.setOnClickListener(new r1(this, i8));
        this.f9947G0.setOnClickListener(new r1(this, i9));
        this.f9950J0.setOnClickListener(new r1(this, 2));
        this.f9950J0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0558x0(this, 2));
        this.f9948H0.setOnClickListener(new r1(this, i10));
        return viewInflate;
    }
}
