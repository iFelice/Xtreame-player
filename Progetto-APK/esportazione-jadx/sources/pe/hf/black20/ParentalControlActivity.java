package pe.hf.black20;

import A0.O;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import b7.T0;
import b7.U0;
import b7.V0;
import c7.a;
import c7.b;
import c7.d;
import h7.i;
import java.util.ArrayList;
import org.json.JSONArray;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class ParentalControlActivity extends Activity {

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static EditText f28809X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public static EditText f28810Y;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ParentalControlActivity f28811G = this;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f28812H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public i f28813I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public b f28814J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Button f28815K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Button f28816L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public TextView f28817M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ListView f28818N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ListView f28819O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public ListView f28820P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public ProgressBar f28821Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public ArrayList f28822R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public ArrayList f28823S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public ArrayList f28824T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public JSONArray f28825U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public JSONArray f28826V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public JSONArray f28827W;

    static {
        System.loadLibrary("native-lib");
    }

    public ParentalControlActivity() {
        new ArrayList();
        new ArrayList();
        new ArrayList();
    }

    public static void a(ParentalControlActivity parentalControlActivity, String str) {
        ParentalControlActivity parentalControlActivity2 = parentalControlActivity.f28811G;
        View viewInflate = LayoutInflater.from(parentalControlActivity2).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(parentalControlActivity2).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText("OK");
        button.setOnClickListener(new U0(parentalControlActivity, alertDialogCreate, 2));
        alertDialogCreate.show();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_parental_control);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        ParentalControlActivity parentalControlActivity = this.f28811G;
        if (Methods.R(parentalControlActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        int i8 = 0;
        this.f28812H = parentalControlActivity.getSharedPreferences("pe.hf.black20", 0);
        new d(parentalControlActivity);
        int i9 = 1;
        this.f28814J = new b(parentalControlActivity, 1);
        this.f28813I = O.x("ORT_PROFILE", "Default (XC)", new a(parentalControlActivity, 0));
        this.f28816L = (Button) findViewById(R.id.btn_parental_control);
        this.f28815K = (Button) findViewById(R.id.btn_reset_password);
        this.f28817M = (TextView) findViewById(R.id.txt_lock_unlock);
        this.f28818N = (ListView) findViewById(R.id.listview_tv);
        this.f28819O = (ListView) findViewById(R.id.listview_vod);
        this.f28820P = (ListView) findViewById(R.id.listview_series);
        this.f28821Q = (ProgressBar) findViewById(R.id.progress_bar);
        Object obj = null;
        if (this.f28812H.getString("pc_lock", null).equals("no")) {
            this.f28817M.setText(parentalControlActivity.getString(R.string.xc_parental_contorl_off));
            this.f28817M.setTextColor(Color.parseColor("#70E089"));
        } else {
            this.f28817M.setText(parentalControlActivity.getString(R.string.xc_parental_control_on));
            this.f28817M.setTextColor(Color.parseColor("#FF5733"));
        }
        this.f28816L.setOnClickListener(new T0(this, i8));
        this.f28815K.setOnClickListener(new T0(this, i9));
        new V0(this, obj).execute(new Void[0]);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        q0.q().e("ORT_isParentalControlActivityVisible", false);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        q0.q().e("ORT_isParentalControlActivityVisible", true);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isParentalControlActivityVisible", false);
    }
}
