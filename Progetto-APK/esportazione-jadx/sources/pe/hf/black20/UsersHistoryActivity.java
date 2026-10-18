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
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import b7.L1;
import b7.M1;
import b7.z1;
import c7.a;
import c7.b;
import c7.c;
import c7.d;
import com.google.protobuf.U2;
import h7.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import org.json.JSONArray;
import p086l.ViewOnClickListenerC3020c;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class UsersHistoryActivity extends Activity {

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public static ListView f29223Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static EditText f29224a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static EditText f29225b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static EditText f29226c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static EditText f29227d0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f29229H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public SharedPreferences.Editor f29230I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public a f29231J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public d f29232K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public b f29233L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public c f29234M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public i f29235N;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public ArrayList f29237P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public Button f29238Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public Button f29239R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public Button f29240S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public Button f29241T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public Button f29242U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public AlertDialog f29243V;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public String f29245X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public String f29246Y;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final UsersHistoryActivity f29228G = this;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ArrayList f29236O = new ArrayList();

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public String f29244W = "xtreamcodes";

    public static void a(UsersHistoryActivity usersHistoryActivity) {
        UsersHistoryActivity usersHistoryActivity2 = usersHistoryActivity.f29228G;
        View viewInflate = LayoutInflater.from(usersHistoryActivity2).inflate(R.layout.xciptv_dialog_usermanagement, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(usersHistoryActivity2).create();
        f29224a0 = (EditText) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_name);
        f29225b0 = (EditText) viewInflate.findViewById(R.id.ed_username);
        f29226c0 = (EditText) viewInflate.findViewById(R.id.ed_password);
        f29227d0 = (EditText) viewInflate.findViewById(R.id.ed_server);
        TextView textView = (TextView) viewInflate.findViewById(R.id.txt_username_umd);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_password_umd);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.txt_server_umd);
        if (usersHistoryActivity.f29244W.equals("m3u")) {
            f29225b0.setVisibility(8);
            f29226c0.setVisibility(8);
            textView.setVisibility(8);
            textView2.setVisibility(8);
            textView3.setText("M3U URL");
            f29227d0.setHint("Enter M3U URL");
            f29225b0.setText("(M3U)");
            f29226c0.setText("(M3U)");
        }
        usersHistoryActivity.f29241T = (Button) viewInflate.findViewById(R.id.btn_add);
        ((Button) viewInflate.findViewById(R.id.btn_cancel)).setOnClickListener(new L1(usersHistoryActivity, alertDialogCreate, 1));
        usersHistoryActivity.f29241T.setOnClickListener(new L1(usersHistoryActivity, alertDialogCreate, 2));
        alertDialogCreate.show();
    }

    public static void b(UsersHistoryActivity usersHistoryActivity, String str) {
        UsersHistoryActivity usersHistoryActivity2 = usersHistoryActivity.f29228G;
        View viewInflate = LayoutInflater.from(usersHistoryActivity2).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(usersHistoryActivity2).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(usersHistoryActivity2.getString(R.string.xc_ok));
        button.setOnClickListener(new L1(usersHistoryActivity, alertDialogCreate, 0));
        alertDialogCreate.show();
    }

    public static void c(UsersHistoryActivity usersHistoryActivity, String str, String str2, String str3) {
        UsersHistoryActivity usersHistoryActivity2 = usersHistoryActivity.f29228G;
        View viewInflate = LayoutInflater.from(usersHistoryActivity2).inflate(R.layout.xciptv_dialog_user_remove, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(usersHistoryActivity2).create();
        usersHistoryActivity.f29243V = alertDialogCreate;
        alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(Color.parseColor("#99000000")));
        usersHistoryActivity.f29243V.setView(viewInflate);
        Button button = (Button) viewInflate.findViewById(R.id.btn_remove);
        Button button2 = (Button) viewInflate.findViewById(R.id.btn_cancel);
        Button button3 = (Button) viewInflate.findViewById(R.id.btn_login);
        if (str3.equals("no")) {
            button.setText(R.string.update_login);
            button.setBackground(usersHistoryActivity2.getDrawable(R.drawable.btn));
        }
        button2.setOnClickListener(new M1(usersHistoryActivity, 4));
        button.setOnClickListener(new W4.a(usersHistoryActivity, str3, str, 6));
        if (q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("m3u")) {
            button.setVisibility(8);
        }
        button3.setOnClickListener(new ViewOnClickListenerC3020c(16, usersHistoryActivity, str2));
        usersHistoryActivity.f29243V.show();
    }

    public final void d() {
        new JSONArray();
        this.f29236O.clear();
        this.f29236O = this.f29231J.d0();
        this.f29237P = new ArrayList();
        for (int i8 = 0; i8 < this.f29236O.size(); i8++) {
            HashMap map = new HashMap();
            map.put("id", ((i) this.f29236O.get(i8)).f25478a);
            map.put("name", ((i) this.f29236O.get(i8)).f25479b);
            map.put("username", ((i) this.f29236O.get(i8)).f25480c);
            map.put("password", ((i) this.f29236O.get(i8)).f25481d);
            map.put("server", ((i) this.f29236O.get(i8)).f25482e);
            this.f29237P.add(map);
        }
        new JSONArray((Collection) this.f29237P);
        f29223Z.setAdapter((ListAdapter) new z1(this, this.f29228G, this.f29237P));
        f29223Z.setSelection(0);
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_usermanager);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        UsersHistoryActivity usersHistoryActivity = this.f29228G;
        if (Methods.R(usersHistoryActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        ((ProgressBar) findViewById(R.id.progressBar)).setVisibility(4);
        this.f29229H = usersHistoryActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f29231J = new a(this, 0);
        this.f29232K = new d(usersHistoryActivity);
        this.f29233L = new b(usersHistoryActivity, 1);
        this.f29234M = new c(usersHistoryActivity, 0);
        f29223Z = (ListView) findViewById(R.id.listView);
        this.f29238Q = (Button) findViewById(R.id.btn_add);
        this.f29239R = (Button) findViewById(R.id.btn_m3u);
        this.f29240S = (Button) findViewById(R.id.btn_ezserver);
        this.f29242U = (Button) findViewById(R.id.btn_fastogt);
        d();
        this.f29238Q.setOnClickListener(new M1(this, 0));
        this.f29239R.setOnClickListener(new M1(this, 1));
        this.f29240S.setOnClickListener(new M1(this, 2));
        this.f29242U.setOnClickListener(new M1(this, 3));
        if (!Config.f29414b.equals("no")) {
            this.f29238Q.setVisibility(0);
            this.f29239R.setVisibility(0);
            this.f29240S.setVisibility(0);
            return;
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
            if (this.f29229H.getString("hide_other_login_type", null).equals("no")) {
                this.f29238Q.setVisibility(0);
            } else {
                this.f29238Q.setVisibility(8);
            }
            this.f29239R.setVisibility(8);
            this.f29240S.setVisibility(8);
            this.f29242U.setVisibility(8);
            return;
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            this.f29238Q.setVisibility(8);
            this.f29239R.setVisibility(8);
            this.f29242U.setVisibility(8);
            if (this.f29229H.getString("hide_other_login_type", null).equals("no")) {
                this.f29240S.setVisibility(0);
                return;
            } else {
                this.f29240S.setVisibility(8);
                return;
            }
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
            this.f29238Q.setVisibility(8);
            this.f29240S.setVisibility(8);
            this.f29242U.setVisibility(8);
            if (this.f29229H.getString("hide_other_login_type", null).equals("no")) {
                this.f29239R.setVisibility(0);
            } else {
                this.f29239R.setVisibility(8);
            }
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        q0.q().e("ORT_isUsersHistoryActivityVisible", false);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        q0.q().e("ORT_isUsersHistoryActivityVisible", true);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isUsersHistoryActivityVisible", false);
    }
}
