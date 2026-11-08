package d7;

import A0.O;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import b7.G;
import com.google.protobuf.U2;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p000a.r;
import pe.hf.black20.R;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements View.OnLongClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24669G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ G f24670H;

    public /* synthetic */ d(G g8, int i8) {
        this.f24669G = i8;
        this.f24670H = g8;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        String str;
        String strC;
        String str2;
        String str3;
        String strH;
        int i8 = this.f24669G;
        G g8 = this.f24670H;
        switch (i8) {
            case 0:
                g8.b(g8.f10006b.getString(R.string.no_program_data) + ", " + g8.f10006b.getString(R.string.unable_to_set_program_reminder));
                break;
            default:
                String[] strArrSplit = view.getTag().toString().split("::");
                String str4 = strArrSplit[0];
                String str5 = strArrSplit[1];
                String strD = G.d(str5);
                String str6 = strArrSplit[2];
                SharedPreferences sharedPreferences = g8.f10006b.getSharedPreferences("pe.hf.black20", 0);
                String strC2 = q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET);
                String str7 = EPGActivityXMLTV.f29269v0;
                String str8 = EPGActivityXMLTV.f29268u0;
                new ArrayList();
                ArrayList arrayListO = EPGActivityXMLTV.f29252C0.O(str4, str6, "no-title");
                if (arrayListO.size() > 0) {
                    strC = Methods.c(((g) arrayListO.get(0)).f24677a);
                    String strC3 = Methods.c(((g) arrayListO.get(0)).f24678b);
                    str3 = ((g) arrayListO.get(0)).f24680d;
                    str2 = ((g) arrayListO.get(0)).f24681e;
                    str = strC3;
                } else {
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                    strC = str;
                    str2 = strC;
                    str3 = str2;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(EPGActivityXMLTV.f29270w0);
                sb.append("/live/");
                sb.append(EPGActivityXMLTV.f29271x0);
                sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                String strJ = r.j(sb, EPGActivityXMLTV.f29272y0, MqttTopic.TOPIC_LEVEL_SEPARATOR);
                if (G.f10002l.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(strJ);
                    sb2.append(strD);
                    sb2.append(".");
                    strH = U2.h(sharedPreferences, "streamFormat", null, sb2);
                } else {
                    strH = G.f10002l;
                }
                String[] strArr = {strC2, str5, str3, str2, strD, str7, str8, Methods.u(Methods.c(strC)), Methods.u(Methods.c(str)), "new", G.f10002l};
                String[] strArr2 = {str5, str3, strH, strC, str};
                View viewInflate = LayoutInflater.from(g8.f10006b).inflate(R.layout.xciptv_dialog_program_reminders, (ViewGroup) null);
                AlertDialog alertDialogCreate = new AlertDialog.Builder(g8.f10006b).create();
                Button button = (Button) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.btn_schedule_rec);
                Button button2 = (Button) viewInflate.findViewById(R.id.btn_program_reminder);
                Button button3 = (Button) viewInflate.findViewById(R.id.btn_cancel);
                button.setOnClickListener(new f(g8, strArr2, alertDialogCreate, 0));
                button2.setOnClickListener(new f(g8, strArr, alertDialogCreate, 1));
                button3.setOnClickListener(new b(alertDialogCreate, 0));
                alertDialogCreate.show();
                break;
        }
        return true;
    }
}
