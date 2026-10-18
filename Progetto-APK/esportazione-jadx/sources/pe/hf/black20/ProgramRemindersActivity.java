package pe.hf.black20;

import A0.O;
import Q5.a;
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
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import b7.C0514f;
import b7.C0531k1;
import b7.ViewOnClickListenerC0502b;
import b7.ViewOnClickListenerC0505c;
import c7.b;
import c7.c;
import c7.d;
import h7.e;
import h7.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import p000a.r;
import p086l.ViewOnClickListenerC3020c;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class ProgramRemindersActivity extends Activity {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final /* synthetic */ int f29028P = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f29030H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public c f29031I;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public ArrayList f29033K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public JSONArray f29034L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ListView f29035M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public i f29036N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String[] f29037O;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ProgramRemindersActivity f29029G = this;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ArrayList f29032J = new ArrayList();

    public ProgramRemindersActivity() {
        new ArrayList();
        new ArrayList();
    }

    public static void a(ProgramRemindersActivity programRemindersActivity, String str, String str2) {
        ProgramRemindersActivity programRemindersActivity2 = programRemindersActivity.f29029G;
        View viewInflate = LayoutInflater.from(programRemindersActivity2).inflate(R.layout.xciptv_dialog_record_remove, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(programRemindersActivity2).create();
        Button button = (Button) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.btn_remove);
        Button button2 = (Button) viewInflate.findViewById(R.id.btn_cancel);
        Button button3 = (Button) viewInflate.findViewById(R.id.btn_play);
        button3.setText("Watch Live");
        ((TextView) viewInflate.findViewById(R.id.txt_title_xd)).setText(programRemindersActivity.getString(R.string.do_you_want_to_remove_program_reminder) + "\n" + str);
        button3.setOnClickListener(new ViewOnClickListenerC3020c(14, programRemindersActivity, alertDialogCreate));
        button2.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 5));
        button.setOnClickListener(new ViewOnClickListenerC0505c(programRemindersActivity, str2, alertDialogCreate, 3));
        alertDialogCreate.show();
    }

    public final void b() {
        this.f29032J.clear();
        c cVar = this.f29031I;
        a aVarQ = q0.q();
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f29032J = cVar.a0(aVarQ.c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
        this.f29033K = new ArrayList();
        int i8 = 0;
        while (i8 < this.f29032J.size()) {
            HashMap map = new HashMap();
            map.put("id", ((e) this.f29032J.get(i8)).f25441a);
            map.put("profile_id", ((e) this.f29032J.get(i8)).f25442b);
            map.put("channel_name", ((e) this.f29032J.get(i8)).f25443c);
            map.put("show_name", ((e) this.f29032J.get(i8)).f25444d);
            map.put("show_desc", ((e) this.f29032J.get(i8)).f25445e);
            map.put("stream_id", ((e) this.f29032J.get(i8)).f25446f);
            map.put("category_id", ((e) this.f29032J.get(i8)).f25447g);
            map.put("category_name", ((e) this.f29032J.get(i8)).f25448h);
            map.put("start_time", ((e) this.f29032J.get(i8)).f25449i);
            map.put("end_time", ((e) this.f29032J.get(i8)).f25450j);
            map.put("pr_status", ((e) this.f29032J.get(i8)).f25451k);
            map.put("direct_source", ((e) this.f29032J.get(i8)).f25452l);
            this.f29033K.add(map);
            i8++;
            str = str;
        }
        String str2 = str;
        if (this.f29032J.size() == 0) {
            HashMap mapM = r.m("id", str2, "profile_id", str2);
            mapM.put("channel_name", "Program Reminders");
            mapM.put("show_name", getString(R.string.you_donot_have_any_program_reminder));
            mapM.put("show_desc", str2);
            mapM.put("stream_id", str2);
            mapM.put("category_id", str2);
            mapM.put("category_name", str2);
            mapM.put("start_time", "Help");
            mapM.put("end_time", getString(R.string.go_to_epg_view_and_long_press_to_add_program_reminder));
            mapM.put("pr_status", str2);
            mapM.put("direct_source", str2);
            this.f29033K.add(mapM);
        }
        this.f29034L = new JSONArray((Collection) this.f29033K);
        this.f29035M.setAdapter((ListAdapter) new C0531k1(0, this.f29029G, this.f29033K));
        this.f29035M.requestFocus();
        this.f29035M.setOnItemClickListener(new C0514f(this, 17));
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_program_reminders);
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        ProgramRemindersActivity programRemindersActivity = this.f29029G;
        if (Methods.R(programRemindersActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        this.f29030H = programRemindersActivity.getSharedPreferences("pe.hf.black20", 0);
        this.f29031I = new c(programRemindersActivity, 1);
        new d(programRemindersActivity);
        new b(programRemindersActivity, 1);
        this.f29036N = O.x("ORT_PROFILE", "Default (XC)", new c7.a(programRemindersActivity, 0));
        this.f29035M = (ListView) findViewById(R.id.listView);
        b();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
    }
}
