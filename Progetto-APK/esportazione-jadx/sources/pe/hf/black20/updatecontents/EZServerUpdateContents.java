package pe.hf.black20.updatecontents;

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
import p086l.ViewOnClickListenerC3020c;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class EZServerUpdateContents extends Activity {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public SharedPreferences f29347G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public a f29348H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public d f29349I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public i f29350J;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Button f29352L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ArrayList f29353M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ArrayList f29354N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ArrayList f29355O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public ArrayList f29356P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public ArrayList f29357Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public ArrayList f29358R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public JSONArray f29359S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public JSONArray f29360T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public JSONArray f29361U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public JSONArray f29362V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public JSONArray f29363W;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public String f29365Y;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public TextView f29367a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public TextView f29368b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public TextView f29369c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public TextView f29370d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public ProgressBar f29371e0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public String f29373g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f29374h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f29375i0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final EZServerUpdateContents f29351K = this;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public String f29364X = "8000";

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f29366Z = 1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public String f29372f0 = "yes";

    public EZServerUpdateContents() {
        new ArrayList();
        new ArrayList();
        new ArrayList();
        new ArrayList();
        new ArrayList();
        new ArrayList();
        this.f29374h0 = false;
        this.f29375i0 = false;
    }

    public final void a(String str) {
        EZServerUpdateContents eZServerUpdateContents = this.f29351K;
        View viewInflate = LayoutInflater.from(eZServerUpdateContents).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(eZServerUpdateContents).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(eZServerUpdateContents.getString(R.string.xc_ok));
        button.setOnClickListener(new ViewOnClickListenerC3020c(19, this, alertDialogCreate));
        alertDialogCreate.show();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.f29372f0.equals("yes")) {
            q0.q().f(0, "ORT_PROCESS_STATUS");
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_update_ezs_contents);
        Log.d("XCIPTV_TAG", "-----------Calling EZServerUpdateContents---------------");
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        EZServerUpdateContents eZServerUpdateContents = this.f29351K;
        if (Methods.R(eZServerUpdateContents)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        int i8 = 0;
        this.f29347G = eZServerUpdateContents.getSharedPreferences("pe.hf.black20", 0);
        this.f29348H = new a(eZServerUpdateContents, 0);
        this.f29349I = new d(eZServerUpdateContents);
        new b(eZServerUpdateContents, 0);
        this.f29350J = O.x("ORT_PROFILE", "Default (XC)", this.f29348H);
        this.f29367a0 = (TextView) findViewById(R.id.txt_tv_status);
        this.f29368b0 = (TextView) findViewById(R.id.txt_vod_status);
        this.f29370d0 = (TextView) findViewById(R.id.txt_series_status);
        this.f29369c0 = (TextView) findViewById(R.id.txt_info);
        this.f29352L = (Button) findViewById(R.id.btn_cancel);
        String[] strArrSplit = Encrypt.a(this.f29350J.f25482e).split(":");
        this.f29365Y = strArrSplit[0] + ":" + strArrSplit[1];
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progressBar);
        this.f29371e0 = progressBar;
        progressBar.setVisibility(8);
        if (Methods.Q(eZServerUpdateContents)) {
            this.f29372f0 = "no";
            this.f29352L.setEnabled(false);
            this.f29352L.setText(eZServerUpdateContents.getString(R.string.xc_please_wait));
            q0.q().f(0, "ORT_PROCESS_STATUS");
            EZServerUpdateContents eZServerUpdateContents2 = this.f29351K;
            if (CategoriesActivity.i(eZServerUpdateContents2)) {
                Log.d("XCIPTV_TAG", "EZServerUpdateContents JobScheduler is Running");
                CategoriesActivity.m(eZServerUpdateContents2);
            } else {
                Log.d("XCIPTV_TAG", "EZServerUpdateContents JobScheduler is Not Running");
            }
            if (q0.q().b("ORT_PROCESS_STATUS") == 0) {
                SharedPreferences.Editor editorEdit = this.f29347G.edit();
                if (this.f29347G.contains("tvvodseries_dl_time")) {
                    editorEdit.remove("tvvodseries_dl_time").commit();
                }
                if (this.f29347G.contains("epg_dl_time")) {
                    editorEdit.remove("epg_dl_time").commit();
                }
                editorEdit.apply();
                q0.q().f(1, "ORT_PROCESS_STATUS");
                new l7.b(this, i8).execute(new Void[0]);
            } else {
                a(eZServerUpdateContents.getString(R.string.xc_another_process_running));
            }
        } else {
            a("Please check your internet connection.");
            this.f29352L.setEnabled(true);
            this.f29352L.setText(eZServerUpdateContents.getString(R.string.xc_close));
        }
        this.f29352L.setOnClickListener(new ViewOnClickListenerC2988c(this, 25));
        EZServerUpdateContents eZServerUpdateContents3 = this.f29351K;
        if (!CategoriesActivity.i(eZServerUpdateContents3)) {
            Log.d("XCIPTV_TAG", "EZServerUpdateContents JobScheduler is Not Running");
        } else {
            Log.d("XCIPTV_TAG", "EZServerUpdateContents JobScheduler is Running");
            CategoriesActivity.m(eZServerUpdateContents3);
        }
    }
}
