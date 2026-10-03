package pe.hf.black20;

import A0.O;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import b7.C0554v0;
import b7.M;
import b7.ViewOnClickListenerC0502b;
import b7.o1;
import c7.c;
import h7.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import pe.hf.black20.ChannelPickerActivity;
import pe.hf.black20.R;
import pe.hf.black20.RecordsActivity;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class RecordsActivity extends Activity {

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static ListView f29060W;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences f29062H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Button f29063I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public c f29064J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public JSONArray f29065K;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ArrayList f29067M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public String f29068N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f29069O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String f29070P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public String f29071Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public String f29072R;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public Button f29074T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public Button f29075U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public Button f29076V;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final RecordsActivity f29061G = this;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ArrayList f29066L = new ArrayList();

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public String f29073S = "Recorded";

    public final void a(String str) {
        this.f29066L.clear();
        this.f29066L = this.f29064J.b0(str);
        this.f29067M = new ArrayList();
        for (int i8 = 0; i8 < this.f29066L.size(); i8++) {
            HashMap map = new HashMap();
            map.put("id", ((f) this.f29066L.get(i8)).f25453a);
            map.put("title", ((f) this.f29066L.get(i8)).f25454b);
            map.put("path", ((f) this.f29066L.get(i8)).f25455c);
            map.put("stream", ((f) this.f29066L.get(i8)).f25456d);
            map.put("status", ((f) this.f29066L.get(i8)).f25457e);
            map.put("length", ((f) this.f29066L.get(i8)).f25458f);
            map.put("date", ((f) this.f29066L.get(i8)).f25459g);
            this.f29067M.add(map);
        }
        this.f29065K = new JSONArray((Collection) this.f29067M);
        f29060W.setAdapter((ListAdapter) new M(4, this, this.f29067M));
        f29060W.requestFocus();
        f29060W.setOnItemClickListener(new C0554v0(this, 2));
    }

    public final void b(String str, String str2, String str3) {
        RecordsActivity recordsActivity = this.f29061G;
        View viewInflate = LayoutInflater.from(recordsActivity).inflate(R.layout.xciptv_dialog_record_remove, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(recordsActivity).create();
        Button button = (Button) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.btn_remove);
        Button button2 = (Button) viewInflate.findViewById(R.id.btn_cancel);
        Button button3 = (Button) viewInflate.findViewById(R.id.btn_play);
        if (str3.equals("Scheduled")) {
            button3.setVisibility(8);
        }
        if (str3.equals("Recording Now")) {
            button3.setText("STOP Recording");
        }
        button2.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 6));
        button.setOnClickListener(new o1(this, str, str2, alertDialogCreate, 0));
        button3.setOnClickListener(new o1(this, str3, str, alertDialogCreate, 1));
        alertDialogCreate.show();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_recording);
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        RecordsActivity recordsActivity = this.f29061G;
        if (Methods.R(recordsActivity)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        final int i8 = 0;
        this.f29062H = recordsActivity.getSharedPreferences("pe.hf.black20", 0);
        f29060W = (ListView) findViewById(R.id.listview_record);
        final int i9 = 2;
        this.f29064J = new c(recordsActivity, 2);
        this.f29063I = (Button) findViewById(R.id.btn_folder);
        this.f29075U = (Button) findViewById(R.id.btn_my_recordings);
        this.f29074T = (Button) findViewById(R.id.btn_my_schedule);
        this.f29076V = (Button) findViewById(R.id.btn_add_schedule);
        this.f29063I.setOnClickListener(new View.OnClickListener(this) { // from class: b7.n1

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ RecordsActivity f10361H;

            {
                this.f10361H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i10 = i8;
                final RecordsActivity recordsActivity2 = this.f10361H;
                switch (i10) {
                    case 0:
                        RecordsActivity recordsActivity3 = recordsActivity2.f29061G;
                        View viewInflate = LayoutInflater.from(recordsActivity3).inflate(R.layout.xciptv_dialog_storage_selector, (ViewGroup) null);
                        final AlertDialog alertDialogCreate = new AlertDialog.Builder(recordsActivity3).create();
                        TextView textView = (TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title);
                        final TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_storage);
                        textView.setText("Change recording location");
                        textView2.setText("Total: 0 MB  Free: 0");
                        Button button = (Button) viewInflate.findViewById(R.id.btn_cancel);
                        Button button2 = (Button) viewInflate.findViewById(R.id.btn_internal);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_external);
                        Button button4 = (Button) viewInflate.findViewById(R.id.btn_external2);
                        button2.setVisibility(8);
                        button3.setVisibility(8);
                        button4.setVisibility(8);
                        final File[] externalFilesDirs = recordsActivity3.getExternalFilesDirs(null);
                        final String strConcat = HttpUrl.FRAGMENT_ENCODE_SET;
                        String strConcat2 = strConcat;
                        for (int i11 = 0; i11 < externalFilesDirs.length; i11++) {
                            if (i11 == 0) {
                                File file = new File(String.valueOf(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES)));
                                if (!file.exists()) {
                                    file.mkdir();
                                }
                                button2.setVisibility(0);
                            }
                            if (i11 == 1) {
                                strConcat = String.valueOf(externalFilesDirs[1]).concat("/Movies");
                                File file2 = new File(strConcat);
                                if (!file2.exists()) {
                                    file2.mkdir();
                                }
                                button3.setVisibility(0);
                            }
                            if (i11 == 2) {
                                strConcat2 = String.valueOf(externalFilesDirs[2]).concat("/Movies");
                                File file3 = new File(strConcat2);
                                if (!file3.exists()) {
                                    file3.mkdir();
                                }
                                button4.setVisibility(0);
                            }
                        }
                        if (recordsActivity2.f29062H.contains("rec_path")) {
                            textView2.setText(recordsActivity2.f29062H.getString("rec_path_storage", null) + " - " + Methods.M(recordsActivity2.f29062H.getString("rec_path", null)));
                        }
                        button2.setOnClickListener(new ViewOnClickListenerC0505c(recordsActivity2, textView2, alertDialogCreate, 4));
                        button3.setOnClickListener(new View.OnClickListener() { // from class: b7.p1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                ListView listView = RecordsActivity.f29060W;
                                RecordsActivity recordsActivity4 = recordsActivity2;
                                recordsActivity4.getClass();
                                textView2.setText(Methods.M(String.valueOf(externalFilesDirs[1])));
                                SharedPreferences.Editor editorEdit = recordsActivity4.f29062H.edit();
                                editorEdit.putString("rec_path", strConcat);
                                editorEdit.putString("rec_path_storage", "External1 Location is Selected - ");
                                editorEdit.apply();
                                editorEdit.apply();
                                alertDialogCreate.dismiss();
                                Methods.l(recordsActivity4.f29061G, "External1 Storge is Selected");
                            }
                        });
                        button4.setOnClickListener(new q1(recordsActivity2, textView2, externalFilesDirs, strConcat2, alertDialogCreate, 0));
                        button.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 7));
                        alertDialogCreate.show();
                        break;
                    case 1:
                        recordsActivity2.f29073S = "Recorded";
                        recordsActivity2.a("Recorded");
                        break;
                    case 2:
                        recordsActivity2.f29073S = "Scheduled";
                        recordsActivity2.a("Scheduled");
                        break;
                    default:
                        ListView listView = RecordsActivity.f29060W;
                        recordsActivity2.getClass();
                        Intent intent = new Intent(recordsActivity2, (Class<?>) ChannelPickerActivity.class);
                        recordsActivity2.startActivity(intent);
                        intent.addFlags(67108864);
                        recordsActivity2.startActivity(intent);
                        break;
                }
            }
        });
        final int i10 = 1;
        this.f29075U.setOnClickListener(new View.OnClickListener(this) { // from class: b7.n1

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ RecordsActivity f10361H;

            {
                this.f10361H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i10;
                final RecordsActivity recordsActivity2 = this.f10361H;
                switch (i11) {
                    case 0:
                        RecordsActivity recordsActivity3 = recordsActivity2.f29061G;
                        View viewInflate = LayoutInflater.from(recordsActivity3).inflate(R.layout.xciptv_dialog_storage_selector, (ViewGroup) null);
                        final AlertDialog alertDialogCreate = new AlertDialog.Builder(recordsActivity3).create();
                        TextView textView = (TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title);
                        final TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_storage);
                        textView.setText("Change recording location");
                        textView2.setText("Total: 0 MB  Free: 0");
                        Button button = (Button) viewInflate.findViewById(R.id.btn_cancel);
                        Button button2 = (Button) viewInflate.findViewById(R.id.btn_internal);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_external);
                        Button button4 = (Button) viewInflate.findViewById(R.id.btn_external2);
                        button2.setVisibility(8);
                        button3.setVisibility(8);
                        button4.setVisibility(8);
                        final File[] externalFilesDirs = recordsActivity3.getExternalFilesDirs(null);
                        final String strConcat = HttpUrl.FRAGMENT_ENCODE_SET;
                        String strConcat2 = strConcat;
                        for (int i12 = 0; i12 < externalFilesDirs.length; i12++) {
                            if (i12 == 0) {
                                File file = new File(String.valueOf(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES)));
                                if (!file.exists()) {
                                    file.mkdir();
                                }
                                button2.setVisibility(0);
                            }
                            if (i12 == 1) {
                                strConcat = String.valueOf(externalFilesDirs[1]).concat("/Movies");
                                File file2 = new File(strConcat);
                                if (!file2.exists()) {
                                    file2.mkdir();
                                }
                                button3.setVisibility(0);
                            }
                            if (i12 == 2) {
                                strConcat2 = String.valueOf(externalFilesDirs[2]).concat("/Movies");
                                File file3 = new File(strConcat2);
                                if (!file3.exists()) {
                                    file3.mkdir();
                                }
                                button4.setVisibility(0);
                            }
                        }
                        if (recordsActivity2.f29062H.contains("rec_path")) {
                            textView2.setText(recordsActivity2.f29062H.getString("rec_path_storage", null) + " - " + Methods.M(recordsActivity2.f29062H.getString("rec_path", null)));
                        }
                        button2.setOnClickListener(new ViewOnClickListenerC0505c(recordsActivity2, textView2, alertDialogCreate, 4));
                        button3.setOnClickListener(new View.OnClickListener() { // from class: b7.p1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                ListView listView = RecordsActivity.f29060W;
                                RecordsActivity recordsActivity4 = recordsActivity2;
                                recordsActivity4.getClass();
                                textView2.setText(Methods.M(String.valueOf(externalFilesDirs[1])));
                                SharedPreferences.Editor editorEdit = recordsActivity4.f29062H.edit();
                                editorEdit.putString("rec_path", strConcat);
                                editorEdit.putString("rec_path_storage", "External1 Location is Selected - ");
                                editorEdit.apply();
                                editorEdit.apply();
                                alertDialogCreate.dismiss();
                                Methods.l(recordsActivity4.f29061G, "External1 Storge is Selected");
                            }
                        });
                        button4.setOnClickListener(new q1(recordsActivity2, textView2, externalFilesDirs, strConcat2, alertDialogCreate, 0));
                        button.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 7));
                        alertDialogCreate.show();
                        break;
                    case 1:
                        recordsActivity2.f29073S = "Recorded";
                        recordsActivity2.a("Recorded");
                        break;
                    case 2:
                        recordsActivity2.f29073S = "Scheduled";
                        recordsActivity2.a("Scheduled");
                        break;
                    default:
                        ListView listView = RecordsActivity.f29060W;
                        recordsActivity2.getClass();
                        Intent intent = new Intent(recordsActivity2, (Class<?>) ChannelPickerActivity.class);
                        recordsActivity2.startActivity(intent);
                        intent.addFlags(67108864);
                        recordsActivity2.startActivity(intent);
                        break;
                }
            }
        });
        this.f29074T.setOnClickListener(new View.OnClickListener(this) { // from class: b7.n1

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ RecordsActivity f10361H;

            {
                this.f10361H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = i9;
                final RecordsActivity recordsActivity2 = this.f10361H;
                switch (i11) {
                    case 0:
                        RecordsActivity recordsActivity3 = recordsActivity2.f29061G;
                        View viewInflate = LayoutInflater.from(recordsActivity3).inflate(R.layout.xciptv_dialog_storage_selector, (ViewGroup) null);
                        final AlertDialog alertDialogCreate = new AlertDialog.Builder(recordsActivity3).create();
                        TextView textView = (TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title);
                        final TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_storage);
                        textView.setText("Change recording location");
                        textView2.setText("Total: 0 MB  Free: 0");
                        Button button = (Button) viewInflate.findViewById(R.id.btn_cancel);
                        Button button2 = (Button) viewInflate.findViewById(R.id.btn_internal);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_external);
                        Button button4 = (Button) viewInflate.findViewById(R.id.btn_external2);
                        button2.setVisibility(8);
                        button3.setVisibility(8);
                        button4.setVisibility(8);
                        final File[] externalFilesDirs = recordsActivity3.getExternalFilesDirs(null);
                        final String strConcat = HttpUrl.FRAGMENT_ENCODE_SET;
                        String strConcat2 = strConcat;
                        for (int i12 = 0; i12 < externalFilesDirs.length; i12++) {
                            if (i12 == 0) {
                                File file = new File(String.valueOf(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES)));
                                if (!file.exists()) {
                                    file.mkdir();
                                }
                                button2.setVisibility(0);
                            }
                            if (i12 == 1) {
                                strConcat = String.valueOf(externalFilesDirs[1]).concat("/Movies");
                                File file2 = new File(strConcat);
                                if (!file2.exists()) {
                                    file2.mkdir();
                                }
                                button3.setVisibility(0);
                            }
                            if (i12 == 2) {
                                strConcat2 = String.valueOf(externalFilesDirs[2]).concat("/Movies");
                                File file3 = new File(strConcat2);
                                if (!file3.exists()) {
                                    file3.mkdir();
                                }
                                button4.setVisibility(0);
                            }
                        }
                        if (recordsActivity2.f29062H.contains("rec_path")) {
                            textView2.setText(recordsActivity2.f29062H.getString("rec_path_storage", null) + " - " + Methods.M(recordsActivity2.f29062H.getString("rec_path", null)));
                        }
                        button2.setOnClickListener(new ViewOnClickListenerC0505c(recordsActivity2, textView2, alertDialogCreate, 4));
                        button3.setOnClickListener(new View.OnClickListener() { // from class: b7.p1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                ListView listView = RecordsActivity.f29060W;
                                RecordsActivity recordsActivity4 = recordsActivity2;
                                recordsActivity4.getClass();
                                textView2.setText(Methods.M(String.valueOf(externalFilesDirs[1])));
                                SharedPreferences.Editor editorEdit = recordsActivity4.f29062H.edit();
                                editorEdit.putString("rec_path", strConcat);
                                editorEdit.putString("rec_path_storage", "External1 Location is Selected - ");
                                editorEdit.apply();
                                editorEdit.apply();
                                alertDialogCreate.dismiss();
                                Methods.l(recordsActivity4.f29061G, "External1 Storge is Selected");
                            }
                        });
                        button4.setOnClickListener(new q1(recordsActivity2, textView2, externalFilesDirs, strConcat2, alertDialogCreate, 0));
                        button.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 7));
                        alertDialogCreate.show();
                        break;
                    case 1:
                        recordsActivity2.f29073S = "Recorded";
                        recordsActivity2.a("Recorded");
                        break;
                    case 2:
                        recordsActivity2.f29073S = "Scheduled";
                        recordsActivity2.a("Scheduled");
                        break;
                    default:
                        ListView listView = RecordsActivity.f29060W;
                        recordsActivity2.getClass();
                        Intent intent = new Intent(recordsActivity2, (Class<?>) ChannelPickerActivity.class);
                        recordsActivity2.startActivity(intent);
                        intent.addFlags(67108864);
                        recordsActivity2.startActivity(intent);
                        break;
                }
            }
        });
        final int i11 = 3;
        this.f29076V.setOnClickListener(new View.OnClickListener(this) { // from class: b7.n1

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ RecordsActivity f10361H;

            {
                this.f10361H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i12 = i11;
                final RecordsActivity recordsActivity2 = this.f10361H;
                switch (i12) {
                    case 0:
                        RecordsActivity recordsActivity3 = recordsActivity2.f29061G;
                        View viewInflate = LayoutInflater.from(recordsActivity3).inflate(R.layout.xciptv_dialog_storage_selector, (ViewGroup) null);
                        final AlertDialog alertDialogCreate = new AlertDialog.Builder(recordsActivity3).create();
                        TextView textView = (TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title);
                        final TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_storage);
                        textView.setText("Change recording location");
                        textView2.setText("Total: 0 MB  Free: 0");
                        Button button = (Button) viewInflate.findViewById(R.id.btn_cancel);
                        Button button2 = (Button) viewInflate.findViewById(R.id.btn_internal);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_external);
                        Button button4 = (Button) viewInflate.findViewById(R.id.btn_external2);
                        button2.setVisibility(8);
                        button3.setVisibility(8);
                        button4.setVisibility(8);
                        final File[] externalFilesDirs = recordsActivity3.getExternalFilesDirs(null);
                        final String strConcat = HttpUrl.FRAGMENT_ENCODE_SET;
                        String strConcat2 = strConcat;
                        for (int i13 = 0; i13 < externalFilesDirs.length; i13++) {
                            if (i13 == 0) {
                                File file = new File(String.valueOf(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES)));
                                if (!file.exists()) {
                                    file.mkdir();
                                }
                                button2.setVisibility(0);
                            }
                            if (i13 == 1) {
                                strConcat = String.valueOf(externalFilesDirs[1]).concat("/Movies");
                                File file2 = new File(strConcat);
                                if (!file2.exists()) {
                                    file2.mkdir();
                                }
                                button3.setVisibility(0);
                            }
                            if (i13 == 2) {
                                strConcat2 = String.valueOf(externalFilesDirs[2]).concat("/Movies");
                                File file3 = new File(strConcat2);
                                if (!file3.exists()) {
                                    file3.mkdir();
                                }
                                button4.setVisibility(0);
                            }
                        }
                        if (recordsActivity2.f29062H.contains("rec_path")) {
                            textView2.setText(recordsActivity2.f29062H.getString("rec_path_storage", null) + " - " + Methods.M(recordsActivity2.f29062H.getString("rec_path", null)));
                        }
                        button2.setOnClickListener(new ViewOnClickListenerC0505c(recordsActivity2, textView2, alertDialogCreate, 4));
                        button3.setOnClickListener(new View.OnClickListener() { // from class: b7.p1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                ListView listView = RecordsActivity.f29060W;
                                RecordsActivity recordsActivity4 = recordsActivity2;
                                recordsActivity4.getClass();
                                textView2.setText(Methods.M(String.valueOf(externalFilesDirs[1])));
                                SharedPreferences.Editor editorEdit = recordsActivity4.f29062H.edit();
                                editorEdit.putString("rec_path", strConcat);
                                editorEdit.putString("rec_path_storage", "External1 Location is Selected - ");
                                editorEdit.apply();
                                editorEdit.apply();
                                alertDialogCreate.dismiss();
                                Methods.l(recordsActivity4.f29061G, "External1 Storge is Selected");
                            }
                        });
                        button4.setOnClickListener(new q1(recordsActivity2, textView2, externalFilesDirs, strConcat2, alertDialogCreate, 0));
                        button.setOnClickListener(new ViewOnClickListenerC0502b(alertDialogCreate, 7));
                        alertDialogCreate.show();
                        break;
                    case 1:
                        recordsActivity2.f29073S = "Recorded";
                        recordsActivity2.a("Recorded");
                        break;
                    case 2:
                        recordsActivity2.f29073S = "Scheduled";
                        recordsActivity2.a("Scheduled");
                        break;
                    default:
                        ListView listView = RecordsActivity.f29060W;
                        recordsActivity2.getClass();
                        Intent intent = new Intent(recordsActivity2, (Class<?>) ChannelPickerActivity.class);
                        recordsActivity2.startActivity(intent);
                        intent.addFlags(67108864);
                        recordsActivity2.startActivity(intent);
                        break;
                }
            }
        });
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        q0.q().e("ORT_isRecordsActivityVisible", false);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        a(this.f29073S);
        q0.q().e("ORT_isRecordsActivityVisible", true);
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        q0.q().e("ORT_isRecordsActivityVisible", false);
    }
}
