package pe.hf.black20;

import A0.O;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import b7.AsyncTaskC0511e;
import b7.ViewOnClickListenerC0502b;
import b7.ViewOnClickListenerC0505c;
import c7.a;
import c7.b;
import c7.c;
import c7.d;
import h7.i;
import java.util.ArrayList;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.json.JSONObject;
import pe.hf.black20.BackupActivity;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class BackupActivity extends Activity {

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static EditText f28260s0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f28262H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public a f28263I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public b f28264J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public c f28265K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public b f28266L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public d f28267M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public c f28268N;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public Button f28279Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public Button f28280Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Button f28281a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public TextView f28282b0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public JSONObject f28295o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public ProgressBar f28296p0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public Button f28298r0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final BackupActivity f28261G = this;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ArrayList f28269O = new ArrayList();

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public ArrayList f28270P = new ArrayList();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public ArrayList f28271Q = new ArrayList();

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public ArrayList f28272R = new ArrayList();

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public ArrayList f28273S = new ArrayList();

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public ArrayList f28274T = new ArrayList();

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public ArrayList f28275U = new ArrayList();

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public ArrayList f28276V = new ArrayList();

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public ArrayList f28277W = new ArrayList();

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public ArrayList f28278X = new ArrayList();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public AsyncTaskC0511e f28283c0 = null;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public String f28284d0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public String f28285e0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public String f28286f0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public String f28287g0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public String f28288h0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public String f28289i0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f28290j0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public String f28291k0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public String f28292l0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public String f28293m0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public String f28294n0 = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f28297q0 = true;

    public static void a(BackupActivity backupActivity, String str) {
        BackupActivity backupActivity2 = backupActivity.f28261G;
        View viewInflate = LayoutInflater.from(backupActivity2).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(backupActivity2).create();
        Window window = alertDialogCreate.getWindow();
        Objects.requireNonNull(window);
        ((TextView) O.w(window, new ColorDrawable(Color.parseColor("#4f000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(R.string.xc_ok);
        button.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 1));
        alertDialogCreate.show();
    }

    public final void b(String str, String str2) {
        BackupActivity backupActivity = this.f28261G;
        View viewInflate = LayoutInflater.from(backupActivity).inflate(R.layout.xciptv_dialog_cloudbackup_password, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(backupActivity).create();
        Window window = alertDialogCreate.getWindow();
        Objects.requireNonNull(window);
        f28260s0 = (EditText) O.w(window, new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.ed_password);
        TextView textView = (TextView) viewInflate.findViewById(R.id.txt_code);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_code2);
        textView.setText(str);
        textView2.setText(str2);
        this.f28298r0 = (Button) viewInflate.findViewById(R.id.btn_ok);
        Button button = (Button) viewInflate.findViewById(R.id.btn_cancel);
        button.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 0));
        this.f28298r0.setOnClickListener(new ViewOnClickListenerC0505c(this, alertDialogCreate, button, 0));
        alertDialogCreate.show();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_backup);
        BackupActivity backupActivity = this.f28261G;
        final int i8 = 0;
        SharedPreferences sharedPreferences = backupActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f28262H = sharedPreferences;
        this.f28292l0 = sharedPreferences.getString("backupurl", null);
        this.f28263I = new a(backupActivity, 0);
        this.f28264J = new b(backupActivity, 0);
        this.f28265K = new c(backupActivity, 0);
        final int i9 = 1;
        this.f28266L = new b(backupActivity, 1);
        this.f28267M = new d(backupActivity);
        this.f28268N = new c(backupActivity, 1);
        i iVarX = O.x("ORT_PROFILE", "Default (XC)", this.f28263I);
        this.f28296p0 = (ProgressBar) findViewById(R.id.progressBar);
        this.f28282b0 = (TextView) findViewById(R.id.txt_status);
        this.f28279Y = (Button) findViewById(R.id.btn_cancel);
        this.f28280Z = (Button) findViewById(R.id.btn_backup);
        this.f28281a0 = (Button) findViewById(R.id.btn_restore);
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        if (Methods.R(backupActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        String strG = Methods.g(this.f28262H.getString("customerid", null) + "-" + iVarX.f25480c + "-" + iVarX.f25482e);
        this.f28285e0 = strG;
        this.f28290j0 = strG.substring(strG.length() + (-6)).toUpperCase();
        this.f28280Z.setOnClickListener(new View.OnClickListener(this) { // from class: b7.a

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ BackupActivity f10259H;

            {
                this.f10259H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i10 = i8;
                BackupActivity backupActivity2 = this.f10259H;
                switch (i10) {
                    case 0:
                        backupActivity2.f28297q0 = true;
                        backupActivity2.b(backupActivity2.getString(R.string.your_backup_will_be_encrypted), backupActivity2.getString(R.string.you_can_not_reset_backup_password) + backupActivity2.f28290j0);
                        break;
                    case 1:
                        backupActivity2.f28297q0 = false;
                        backupActivity2.b(backupActivity2.getString(R.string.enter_backup_password), backupActivity2.getString(R.string.you_can_not_reset_backup_password) + backupActivity2.f28290j0);
                        break;
                    default:
                        AsyncTaskC0511e asyncTaskC0511e = backupActivity2.f28283c0;
                        if (asyncTaskC0511e != null) {
                            asyncTaskC0511e.cancel(true);
                        }
                        backupActivity2.finish();
                        break;
                }
            }
        });
        this.f28281a0.setOnClickListener(new View.OnClickListener(this) { // from class: b7.a

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ BackupActivity f10259H;

            {
                this.f10259H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i10 = i9;
                BackupActivity backupActivity2 = this.f10259H;
                switch (i10) {
                    case 0:
                        backupActivity2.f28297q0 = true;
                        backupActivity2.b(backupActivity2.getString(R.string.your_backup_will_be_encrypted), backupActivity2.getString(R.string.you_can_not_reset_backup_password) + backupActivity2.f28290j0);
                        break;
                    case 1:
                        backupActivity2.f28297q0 = false;
                        backupActivity2.b(backupActivity2.getString(R.string.enter_backup_password), backupActivity2.getString(R.string.you_can_not_reset_backup_password) + backupActivity2.f28290j0);
                        break;
                    default:
                        AsyncTaskC0511e asyncTaskC0511e = backupActivity2.f28283c0;
                        if (asyncTaskC0511e != null) {
                            asyncTaskC0511e.cancel(true);
                        }
                        backupActivity2.finish();
                        break;
                }
            }
        });
        final int i10 = 2;
        this.f28279Y.setOnClickListener(new View.OnClickListener(this) { // from class: b7.a

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ BackupActivity f10259H;

            {
                this.f10259H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i10;
                BackupActivity backupActivity2 = this.f10259H;
                switch (i11) {
                    case 0:
                        backupActivity2.f28297q0 = true;
                        backupActivity2.b(backupActivity2.getString(R.string.your_backup_will_be_encrypted), backupActivity2.getString(R.string.you_can_not_reset_backup_password) + backupActivity2.f28290j0);
                        break;
                    case 1:
                        backupActivity2.f28297q0 = false;
                        backupActivity2.b(backupActivity2.getString(R.string.enter_backup_password), backupActivity2.getString(R.string.you_can_not_reset_backup_password) + backupActivity2.f28290j0);
                        break;
                    default:
                        AsyncTaskC0511e asyncTaskC0511e = backupActivity2.f28283c0;
                        if (asyncTaskC0511e != null) {
                            asyncTaskC0511e.cancel(true);
                        }
                        backupActivity2.finish();
                        break;
                }
            }
        });
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        q0.q().e("ORT_isBackupActivityVisible", false);
        this.f28263I.close();
        this.f28264J.close();
        this.f28265K.close();
        this.f28266L.close();
        this.f28267M.close();
        this.f28268N.close();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        q0.q().e("ORT_isBackupActivityVisible", true);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isBackupActivityVisible", false);
    }
}
