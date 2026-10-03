package b7;

import D1.AbstractC0154t;
import D1.C0145j;
import D1.C0153s;
import android.app.AlertDialog;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import android.view.View;
import android.widget.ListView;
import java.io.File;
import p094m0.AbstractC3123f;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.RecordsActivity;
import pe.hf.black20.services.RecordingServices;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class o1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10368G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f10369H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f10370I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f10371J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f10372K;

    public /* synthetic */ o1(Object obj, Object obj2, Object obj3, Object obj4, int i8) {
        this.f10368G = i8;
        this.f10369H = obj;
        this.f10370I = obj2;
        this.f10371J = obj3;
        this.f10372K = obj4;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10368G;
        Object obj = this.f10372K;
        Object obj2 = this.f10371J;
        Object obj3 = this.f10370I;
        Object obj4 = this.f10369H;
        switch (i8) {
            case 0:
                RecordsActivity recordsActivity = (RecordsActivity) obj4;
                String str = (String) obj3;
                String str2 = (String) obj2;
                AlertDialog alertDialog = (AlertDialog) obj;
                SQLiteDatabase writableDatabase = recordsActivity.f29064J.getWritableDatabase();
                try {
                    writableDatabase.delete("recordings", "id = ?", new String[]{str});
                    writableDatabase.close();
                    RecordsActivity recordsActivity2 = recordsActivity.f29061G;
                    if (Methods.S(recordsActivity2, RecordingServices.class)) {
                        Methods.Y(recordsActivity2, RecordingServices.class);
                    }
                    try {
                        File file = new File(str2);
                        if (file.exists()) {
                            Log.d("XCIPTV_TAG", "Methods - " + str2 + " file Exist and deleted.");
                            file.delete();
                        }
                        break;
                    } catch (Exception e8) {
                        Log.e("XCIPTV_TAG", "Methods - Exception while deleting file " + e8.getMessage());
                    }
                    Methods.X(recordsActivity2);
                    recordsActivity.a(recordsActivity.f29073S);
                    alertDialog.dismiss();
                    return;
                } catch (Throwable th) {
                    writableDatabase.close();
                    throw th;
                }
            case 1:
                RecordsActivity recordsActivity3 = (RecordsActivity) obj4;
                String str3 = (String) obj2;
                AlertDialog alertDialog2 = (AlertDialog) obj;
                ListView listView = RecordsActivity.f29060W;
                recordsActivity3.getClass();
                boolean zEquals = ((String) obj3).equals("Recording Now");
                RecordsActivity recordsActivity4 = recordsActivity3.f29061G;
                if (zEquals) {
                    if (Methods.S(recordsActivity4, RecordingServices.class)) {
                        Methods.Y(recordsActivity4, RecordingServices.class);
                    }
                    Methods.X(recordsActivity4);
                    recordsActivity3.f29064J.d0("Recorded", str3);
                    recordsActivity3.a(recordsActivity3.f29073S);
                    alertDialog2.dismiss();
                    return;
                }
                alertDialog2.dismiss();
                Intent intent = new Intent(recordsActivity4, (Class<?>) PlayStreamEPGActivity.class);
                z4.q0.q().g("ORT_WHICH_CAT", "VOD");
                intent.putExtra("name", recordsActivity3.f29068N);
                intent.putExtra("streamurl", recordsActivity3.f29069O);
                intent.putExtra("stream_id", recordsActivity3.f29070P);
                intent.putExtra("category_list", (String) null);
                intent.putExtra("program_desc", recordsActivity3.f29071Q);
                intent.putExtra("position", recordsActivity3.f29072R);
                intent.putExtra("isTrailer", "no");
                recordsActivity4.startActivity(intent);
                return;
            default:
                AbstractC0154t abstractC0154t = (AbstractC0154t) obj4;
                p094m0.g0 g0Var = (p094m0.g0) obj2;
                C0153s c0153s = (C0153s) obj;
                abstractC0154t.getClass();
                AbstractC3123f abstractC3123f = (AbstractC3123f) ((p094m0.Y) obj3);
                if (abstractC3123f.c(29)) {
                    B0.O o4 = (B0.O) abstractC3123f;
                    R0.k kVar = (R0.k) o4.E();
                    kVar.getClass();
                    R0.j jVar = new R0.j(kVar);
                    jVar.f(new p094m0.h0(g0Var, z4.H.x(Integer.valueOf(c0153s.f2210b))));
                    jVar.j(c0153s.f2209a.f26949b.f26859c, false);
                    o4.U(jVar.b());
                    C0145j c0145j = (C0145j) abstractC0154t;
                    switch (c0145j.f2188K) {
                        case 0:
                            c0145j.f2189L.f2243R.f(1, c0153s.f2211c);
                            break;
                    }
                    abstractC0154t.f2213J.f2253W.dismiss();
                    return;
                }
                return;
        }
    }
}
