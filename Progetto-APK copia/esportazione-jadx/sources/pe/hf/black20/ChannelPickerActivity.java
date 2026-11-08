package pe.hf.black20;

import A0.O;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import b7.H;
import b7.I;
import b7.J;
import c7.a;
import c7.b;
import c7.c;
import c7.d;
import h7.i;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import org.json.JSONArray;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class ChannelPickerActivity extends Activity {

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public static EditText f28481K0;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public TextView f28482A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public TextView f28483B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public final String[] f28484C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public int f28485D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public int f28486E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public int f28487F0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public ProgressBar f28488G;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public int f28489G0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public a f28490H;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public TextView f28491H0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public d f28492I;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public JSONArray f28493I0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public c f28494J;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public JSONArray f28495J0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final ChannelPickerActivity f28496K = this;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public SharedPreferences f28497L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public String f28498M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public String f28499N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public i f28500O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final String f28501P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public ListView f28502Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public ListView f28503R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public ArrayList f28504S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public ArrayList f28505T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f28506U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f28507V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f28508W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public int f28509X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public int f28510Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f28511Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Calendar f28512a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public TextView f28513b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public TextView f28514c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Button f28515d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public Button f28516e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Button f28517f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public String f28518g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public String f28519h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public String f28520i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f28521j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public String f28522k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public String f28523l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public String f28524m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public String f28525n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public Button f28526o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public Button f28527p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public Button f28528q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public Button f28529r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public Button f28530s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public Button f28531t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public Button f28532u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public Button f28533v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public Button f28534w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public Button f28535x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public TextView f28536y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public TextView f28537z0;

    public ChannelPickerActivity() {
        new ArrayList();
        this.f28498M = "0";
        this.f28499N = "0";
        this.f28501P = "ASC";
        this.f28484C0 = new String[]{"JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"};
        this.f28485D0 = 1;
        this.f28486E0 = 1;
        this.f28487F0 = 0;
        this.f28489G0 = 0;
        this.f28493I0 = null;
        this.f28495J0 = null;
    }

    public static void a(ChannelPickerActivity channelPickerActivity) {
        ChannelPickerActivity channelPickerActivity2 = channelPickerActivity.f28496K;
        View viewInflate = LayoutInflater.from(channelPickerActivity2).inflate(R.layout.xciptv_dialog_schedule_recording, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(channelPickerActivity2).create();
        f28481K0 = (EditText) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_min);
        channelPickerActivity.f28513b0 = (TextView) viewInflate.findViewById(R.id.txt_date);
        channelPickerActivity.f28514c0 = (TextView) viewInflate.findViewById(R.id.txt_time);
        channelPickerActivity.f28515d0 = (Button) viewInflate.findViewById(R.id.btn_pick_date);
        channelPickerActivity.f28516e0 = (Button) viewInflate.findViewById(R.id.btn_cancel);
        channelPickerActivity.f28517f0 = (Button) viewInflate.findViewById(R.id.btn_schedule);
        channelPickerActivity.f28515d0.setOnClickListener(new H(channelPickerActivity, 6));
        channelPickerActivity.f28516e0.setOnClickListener(new I(channelPickerActivity, alertDialogCreate, 2));
        channelPickerActivity.f28517f0.setOnClickListener(new I(channelPickerActivity, alertDialogCreate, 3));
        alertDialogCreate.show();
    }

    public final void b(String str, String str2, String str3, String str4, String str5) {
        Date date;
        if (str2.length() == 1) {
            str2 = "0".concat(str2);
        }
        if (str3.length() == 1) {
            str3 = "0".concat(str3);
        }
        if (str4.length() == 1) {
            str4 = "0".concat(str4);
        }
        if (str4.length() == 1) {
            str4 = "0".concat(str4);
        }
        if (this.f28522k0.length() == 1) {
            str5 = p148t.a.c("0", str5);
        }
        this.f28518g0 = str3;
        this.f28519h0 = str2;
        this.f28520i0 = str;
        this.f28521j0 = str4;
        this.f28522k0 = str5;
        TextView textView = this.f28513b0;
        String str6 = this.f28520i0 + "-" + this.f28519h0 + "-" + this.f28518g0;
        SharedPreferences sharedPreferences = Methods.f29416a;
        Log.d("XCIPTV_TAG", "---------------" + str6);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MMM dd, yyyy");
        try {
            date = simpleDateFormat.parse(str6);
        } catch (ParseException unused) {
            date = null;
        }
        textView.setText(simpleDateFormat2.format(date));
        this.f28491H0.setText(this.f28520i0 + "-" + this.f28519h0 + "-" + this.f28518g0 + " " + this.f28521j0 + ":" + this.f28522k0);
        TextView textView2 = this.f28514c0;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f28521j0);
        sb.append(":");
        sb.append(this.f28522k0);
        textView2.setText(sb.toString());
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_channel_picker);
        ChannelPickerActivity channelPickerActivity = this.f28496K;
        this.f28497L = channelPickerActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28490H = new a(channelPickerActivity, 0);
        this.f28492I = new d(channelPickerActivity);
        this.f28494J = new c(channelPickerActivity, 2);
        new b(channelPickerActivity, 1);
        this.f28500O = O.x("ORT_PROFILE", "Default (XC)", this.f28490H);
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        if (Methods.R(channelPickerActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        this.f28502Q = (ListView) findViewById(R.id.listViewCat);
        this.f28503R = (ListView) findViewById(R.id.listViewChVod);
        new b(channelPickerActivity, 0);
        this.f28488G = (ProgressBar) findViewById(R.id.progress_bar);
        Calendar calendar = Calendar.getInstance();
        this.f28512a0 = calendar;
        this.f28506U = calendar.get(1);
        this.f28507V = this.f28512a0.get(1) + 1;
        this.f28508W = this.f28512a0.get(2) + 1;
        this.f28509X = this.f28512a0.get(5);
        this.f28510Y = this.f28512a0.get(11);
        this.f28511Z = this.f28512a0.get(12);
        new J(this).execute(new Void[0]);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        q0.q().e("ORT_isChannelPickerActivityVisible", false);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        q0.q().e("ORT_isChannelPickerActivityVisible", true);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isChannelPickerActivityVisible", false);
    }
}
