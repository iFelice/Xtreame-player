package pe.hf.black20.updatecontents;

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
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import c7.a;
import c7.b;
import c7.d;
import h7.i;
import java.util.ArrayList;
import org.json.JSONArray;
import p039f.ViewOnClickListenerC2988c;
import p083k3.j;
import p086l.ViewOnClickListenerC3020c;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class M3UUpdateContents extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public SharedPreferences f29376G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public a f29377H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public d f29378I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public i f29379J;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Button f29381L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ArrayList f29382M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ArrayList f29383N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public JSONArray f29384O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String[] f29385P;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public TextView f29387R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public ProgressBar f29388S;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public String f29390U;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final M3UUpdateContents f29380K = this;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f29386Q = 1;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public String f29389T = "yes";

    public M3UUpdateContents() {
        new ArrayList();
        new ArrayList();
        new ArrayList();
        new ArrayList();
        new ArrayList();
        new ArrayList();
    }

    public final void a(String str) {
        M3UUpdateContents m3UUpdateContents = this.f29380K;
        View viewInflate = LayoutInflater.from(m3UUpdateContents).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(m3UUpdateContents).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(m3UUpdateContents.getString(R.string.xc_ok));
        button.setOnClickListener(new ViewOnClickListenerC3020c(20, this, alertDialogCreate));
        alertDialogCreate.show();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.f29389T.equals("yes")) {
            q0.q().f(0, "ORT_PROCESS_STATUS");
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_update_m3u_contents);
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        M3UUpdateContents m3UUpdateContents = this.f29380K;
        if (Methods.R(m3UUpdateContents)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        this.f29376G = m3UUpdateContents.getSharedPreferences("pe.hf.black20", 0);
        this.f29377H = new a(m3UUpdateContents, 0);
        this.f29378I = new d(m3UUpdateContents);
        new b(m3UUpdateContents, 0);
        this.f29379J = O.x("ORT_PROFILE", "Default (XC)", this.f29377H);
        this.f29387R = (TextView) findViewById(R.id.txt_info);
        this.f29381L = (Button) findViewById(R.id.btn_cancel);
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progressBar);
        this.f29388S = progressBar;
        progressBar.setVisibility(8);
        if (Methods.Q(m3UUpdateContents)) {
            this.f29389T = "no";
            this.f29381L.setEnabled(false);
            this.f29381L.setText(m3UUpdateContents.getString(R.string.xc_please_wait));
            this.f29388S.setVisibility(0);
            if (q0.q().b("ORT_PROCESS_STATUS") == 0) {
                SharedPreferences.Editor editorEdit = this.f29376G.edit();
                if (this.f29376G.contains("tvvodseries_dl_time")) {
                    editorEdit.remove("tvvodseries_dl_time").commit();
                }
                if (this.f29376G.contains("epg_dl_time")) {
                    editorEdit.remove("epg_dl_time").commit();
                }
                editorEdit.apply();
                q0.q().f(1, "ORT_PROCESS_STATUS");
                new j(this).execute(new Void[0]);
            } else {
                a(m3UUpdateContents.getString(R.string.xc_another_process_running));
            }
        } else {
            a("Please check your internet connection.");
            this.f29381L.setEnabled(true);
            this.f29381L.setText(m3UUpdateContents.getString(R.string.xc_close));
        }
        this.f29381L.setOnClickListener(new ViewOnClickListenerC2988c(this, 26));
    }
}
