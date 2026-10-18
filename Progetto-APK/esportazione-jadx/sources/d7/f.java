package d7;

import Z6.C0470b;
import android.app.AlertDialog;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.view.View;
import b7.G;
import com.google.protobuf.U2;
import java.text.ParseException;
import java.util.Date;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24673G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String[] f24674H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f24675I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ G f24676J;

    public /* synthetic */ f(G g8, String[] strArr, AlertDialog alertDialog, int i8) {
        this.f24673G = i8;
        this.f24676J = g8;
        this.f24674H = strArr;
        this.f24675I = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Date dateB;
        Date dateB2;
        int i8 = this.f24673G;
        AlertDialog alertDialog = this.f24675I;
        String[] strArr = this.f24674H;
        G g8 = this.f24676J;
        switch (i8) {
            case 0:
                String str = G.f10002l;
                g8.getClass();
                String str2 = strArr[0];
                String str3 = strArr[1];
                String str4 = strArr[2];
                String str5 = strArr[3];
                String str6 = strArr[4];
                try {
                    dateB = ((C0470b) g8.f10007c).b(Methods.c(str5));
                    try {
                        dateB2 = ((C0470b) g8.f10007c).b(Methods.c(str6));
                    } catch (ParseException unused) {
                        dateB2 = null;
                    }
                } catch (ParseException unused2) {
                    dateB = null;
                }
                int iH = Methods.h(dateB, dateB2);
                SharedPreferences sharedPreferences = g8.f10006b.getSharedPreferences("pe.hf.black20", 0);
                if (sharedPreferences.contains("rec_path")) {
                    String strReplaceAll = str2.replaceAll("[^a-zA-Z0-9]", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
                    new c7.c(g8.f10006b, 2).N(sharedPreferences.getString("rec_path", null) + MqttTopic.TOPIC_LEVEL_SEPARATOR + strReplaceAll + Methods.F() + ".mp4", U2.l(str2, " - ", str3), str4, "Scheduled", String.valueOf(iH + 1), Methods.u(Methods.c(str5)));
                    Methods.X(g8.f10006b);
                    g8.b(g8.f10006b.getString(R.string.recording_scheduled_successfully));
                } else {
                    g8.b(g8.f10006b.getString(R.string.recording_path_is_not_setup));
                }
                alertDialog.dismiss();
                break;
            default:
                String str7 = G.f10002l;
                g8.getClass();
                SQLiteDatabase writableDatabase = new c7.c(g8.f10006b, 1).getWritableDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put("profile_id", strArr[0]);
                contentValues.put("channel_name", strArr[1]);
                contentValues.put("show_name", strArr[2]);
                contentValues.put("show_desc", strArr[3]);
                contentValues.put("stream_id", strArr[4]);
                contentValues.put("category_id", strArr[5]);
                contentValues.put("category_name", strArr[6]);
                contentValues.put("start_time", strArr[7]);
                contentValues.put("end_time", strArr[8]);
                contentValues.put("pr_status", strArr[9]);
                contentValues.put("direct_source", strArr[10]);
                writableDatabase.insert("program_reminds", null, contentValues);
                writableDatabase.close();
                q0.q().e("ORT_isItRequiresToRunProgramReminderService", true);
                g8.b(g8.f10006b.getString(R.string.program_reminder_added));
                alertDialog.dismiss();
                break;
        }
    }
}
