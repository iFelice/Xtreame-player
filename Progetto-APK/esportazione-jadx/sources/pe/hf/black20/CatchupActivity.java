package pe.hf.black20;

import A0.O;
import G2.c;
import android.app.Activity;
import android.content.SharedPreferences;
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
import android.widget.SimpleAdapter;
import android.widget.TextView;
import b7.AsyncTaskC0517g;
import b7.C0514f;
import c7.a;
import com.bumptech.glide.l;
import com.google.protobuf.U2;
import h7.i;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.TimeZone;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONObject;
import p039f.ViewOnClickListenerC2988c;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.b;

/* JADX INFO: loaded from: classes2.dex */
public class CatchupActivity extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public ImageView f28299G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ListView f28300H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public TextView f28301I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public JSONArray f28302J;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public SharedPreferences f28304L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public i f28305M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ProgressBar f28306N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f28307O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String f28308P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public String f28309Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public String f28310R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public String f28311S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public String f28312T;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public String f28314V;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public JSONObject f28318Z;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final ArrayList f28321c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public LinearLayout f28322d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public SimpleDateFormat f28323e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public float f28324f0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final CatchupActivity f28303K = this;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public String f28313U = "60";

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public String f28315W = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public String f28316X = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public String f28317Y = "no";

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final ArrayList f28319a0 = new ArrayList();

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final ArrayList f28320b0 = new ArrayList();

    public CatchupActivity() {
        new ArrayList();
        this.f28321c0 = new ArrayList();
    }

    public static void a(CatchupActivity catchupActivity) {
        int i8;
        if (catchupActivity.f28316X.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
            catchupActivity.f28311S = catchupActivity.e();
        } else {
            catchupActivity.f28311S = catchupActivity.f28316X;
        }
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH");
        Date date = null;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(catchupActivity.f28304L.getString("timezone", null)));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            date = simpleDateFormat2.parse(simpleDateFormat.format(calendar.getTime()) + ":00:00");
        } catch (ParseException unused) {
        }
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date);
        calendar2.add(10, 0);
        catchupActivity.f28312T = simpleDateFormat2.format(calendar2.getTime());
        if (catchupActivity.f28317Y.equals("no")) {
            catchupActivity.c(catchupActivity.f28311S, catchupActivity.f28312T);
            catchupActivity.f28317Y = "yes";
        }
        try {
            i8 = Methods.i(catchupActivity.f28323e0.parse(catchupActivity.f28311S), catchupActivity.f28323e0.parse(catchupActivity.f28312T), catchupActivity.f28323e0);
        } catch (ParseException unused2) {
            i8 = 0;
        }
        int i9 = i8 / 60;
        Log.d("XCIPTV_TAG", "Number of hours----- " + i9);
        String str = "0";
        for (int i10 = 0; i10 < i9; i10++) {
            HashMap map = new HashMap();
            CatchupActivity catchupActivity2 = catchupActivity.f28303K;
            map.put("title", catchupActivity2.getString(R.string.xc_program_data_not_available));
            if (str.equals("0")) {
                if (U2.z("ORT_TIME_FORMAT", "12", "24")) {
                    map.put("date_time", Methods.o(catchupActivity.f28311S) + " - " + Methods.o(catchupActivity.d(catchupActivity.f28311S)));
                } else {
                    map.put("date_time", Methods.p(catchupActivity.f28311S) + " - " + Methods.p(catchupActivity.d(catchupActivity.f28311S)));
                }
                catchupActivity.f28311S = catchupActivity.d(catchupActivity.f28311S);
            } else {
                if (U2.z("ORT_TIME_FORMAT", "12", "24")) {
                    map.put("date_time", Methods.o(str) + " - " + Methods.o(catchupActivity.d(str)));
                } else {
                    map.put("date_time", Methods.p(str) + " - " + Methods.p(catchupActivity.d(str)));
                }
                catchupActivity.f28311S = catchupActivity.d(str);
            }
            map.put("description", HttpUrl.FRAGMENT_ENCODE_SET);
            catchupActivity.f28319a0.add(map);
            HashMap map2 = new HashMap();
            map2.put("title", catchupActivity2.getString(R.string.xc_program_data_not_available));
            if (str.equals("0")) {
                map2.put("start", catchupActivity.f28311S);
                catchupActivity.f28311S = catchupActivity.d(catchupActivity.f28311S);
            } else {
                map2.put("start", str);
                catchupActivity.f28311S = catchupActivity.d(str);
            }
            map2.put("end", catchupActivity.f28311S);
            str = catchupActivity.f28311S;
            catchupActivity.f28320b0.add(map2);
        }
        catchupActivity.b();
    }

    public final void b() {
        this.f28300H.setAdapter((ListAdapter) new SimpleAdapter(this, this.f28319a0, R.layout.activity_catchup_list_item, new String[]{"title", "date_time", "description"}, new int[]{R.id.txt_program_name, R.id.txt_date, R.id.txt_description}));
        this.f28300H.setOnItemClickListener(new C0514f(this, 0));
    }

    public final void c(String str, String str2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date date = simpleDateFormat.parse(str);
            long time = simpleDateFormat.parse(str2).getTime();
            for (long time2 = date.getTime(); time2 < time + 86400000; time2 += 86400000) {
                this.f28321c0.add(simpleDateFormat.format(Long.valueOf(time2)) + " 00:00:00");
            }
            f();
        } catch (ParseException unused) {
        }
    }

    public final String d(String str) {
        Date date = null;
        this.f28323e0.setTimeZone(TimeZone.getTimeZone(this.f28304L.getString("timezone", null)));
        try {
            date = this.f28323e0.parse(str);
        } catch (ParseException e8) {
            e8.printStackTrace();
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(10, 1);
        return this.f28323e0.format(calendar.getTime());
    }

    public final String e() {
        Date date;
        Calendar calendar = Calendar.getInstance();
        try {
            date = this.f28323e0.parse(new SimpleDateFormat("yyyy-MM-dd HH").format(calendar.getTime()) + ":00:00");
        } catch (ParseException unused) {
            date = null;
        }
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date);
        calendar2.add(10, -((Integer.parseInt(this.f28310R) * 24) - 1));
        return this.f28323e0.format(calendar2.getTime());
    }

    public final void f() {
        Date date;
        this.f28317Y = "yes";
        float f8 = this.f28324f0;
        int i8 = (int) (10.0f * f8);
        int i9 = (int) (f8 * 35.0f);
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f28321c0;
            if (i10 >= arrayList.size()) {
                return;
            }
            CatchupActivity catchupActivity = this.f28303K;
            Button button = new Button(catchupActivity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, i8, 0);
            layoutParams.height = i9;
            button.setLayoutParams(layoutParams);
            button.setTextSize(15.0f);
            button.setPadding(i8, 0, i8, 0);
            button.setBackground(catchupActivity.getDrawable(R.drawable.btn));
            button.setGravity(17);
            String str = (String) arrayList.get(i10);
            SharedPreferences sharedPreferences = Methods.f29416a;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MMM dd");
            try {
                date = simpleDateFormat.parse(str);
            } catch (ParseException unused) {
                date = null;
            }
            button.setText(simpleDateFormat2.format(date));
            button.setTag(String.valueOf(i10));
            this.f28322d0.addView(button);
            button.setOnClickListener(new ViewOnClickListenerC2988c(this, 6));
            i10++;
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        setContentView(R.layout.activity_catchup);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        CatchupActivity catchupActivity = this.f28303K;
        if (Methods.R(catchupActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        this.f28301I = (TextView) findViewById(R.id.txt_ch_name);
        this.f28299G = (ImageView) findViewById(R.id.img_ch_logo);
        this.f28300H = (ListView) findViewById(R.id.lisview_catchup);
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progressBar);
        this.f28306N = progressBar;
        progressBar.setVisibility(4);
        this.f28323e0 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        this.f28304L = catchupActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28305M = O.x("ORT_PROFILE", "Default (XC)", new a(this, 0));
        this.f28324f0 = new b(catchupActivity).a();
        this.f28304L.edit();
        Bundle extras = getIntent().getExtras();
        this.f28307O = extras.getString("name");
        this.f28308P = extras.getString("icon");
        this.f28301I.setText(this.f28307O);
        this.f28309Q = extras.getString("stream_id");
        this.f28310R = extras.getString("tv_archive_duration");
        this.f28322d0 = (LinearLayout) findViewById(R.id.layout_dates_buttons);
        if (this.f28308P.equals(HttpUrl.FRAGMENT_ENCODE_SET) || this.f28308P.equals("null") || (str = this.f28308P) == null) {
            str = "0";
        }
        ((l) ((l) ((l) com.bumptech.glide.b.d(catchupActivity).n(str).g()).H(c.b(new N2.a(300, true))).m(R.drawable.logo)).f(R.drawable.logo)).F(this.f28299G);
        new AsyncTaskC0517g(this).execute(new Void[0]);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        if (z7) {
            if (Methods.P() && Methods.T(this.f28303K)) {
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
