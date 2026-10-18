package d7;

import A0.O;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import b7.G;
import com.google.protobuf.U2;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p000a.r;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.epg.EPGActivityXMLTV;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24666G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f24667H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ G f24668I;

    public /* synthetic */ c(G g8, SharedPreferences sharedPreferences, int i8) {
        this.f24666G = i8;
        this.f24668I = g8;
        this.f24667H = sharedPreferences;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f24666G;
        SharedPreferences sharedPreferences = this.f24667H;
        G g8 = this.f24668I;
        switch (i8) {
            case 0:
                String str = view.getTag().toString().split("::")[1];
                O.I(g8.f10008d);
                String strD = G.d(str);
                Intent intent = new Intent(g8.f10006b, (Class<?>) PlayStreamEPGActivity.class);
                if (G.f10002l.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(EPGActivityXMLTV.f29270w0);
                    sb.append("/live/");
                    sb.append(EPGActivityXMLTV.f29271x0);
                    sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                    String strJ = r.j(sb, EPGActivityXMLTV.f29272y0, MqttTopic.TOPIC_LEVEL_SEPARATOR);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(strJ);
                    sb2.append(strD);
                    sb2.append(".");
                    intent.putExtra("streamurl", U2.h(sharedPreferences, "streamFormat", null, sb2));
                } else {
                    intent.putExtra("streamurl", G.f10002l);
                }
                intent.putExtra("name", G.f10004n);
                intent.putExtra("stream_id", strD);
                intent.putExtra("position", G.f10003m);
                g8.f10006b.startActivity(intent);
                break;
            default:
                String strD2 = G.d(view.getTag().toString().split("::")[1]);
                O.I(g8.f10008d);
                Intent intent2 = new Intent(g8.f10006b, (Class<?>) PlayStreamEPGActivity.class);
                if (G.f10002l.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(EPGActivityXMLTV.f29270w0);
                    sb3.append("/live/");
                    sb3.append(EPGActivityXMLTV.f29271x0);
                    sb3.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                    String strJ2 = r.j(sb3, EPGActivityXMLTV.f29272y0, MqttTopic.TOPIC_LEVEL_SEPARATOR);
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(strJ2);
                    sb4.append(strD2);
                    sb4.append(".");
                    intent2.putExtra("streamurl", U2.h(sharedPreferences, "streamFormat", null, sb4));
                } else {
                    intent2.putExtra("streamurl", G.f10002l);
                }
                intent2.putExtra("name", G.f10004n);
                intent2.putExtra("stream_id", strD2);
                intent2.putExtra("position", G.f10003m);
                g8.f10006b.startActivity(intent2);
                break;
        }
    }
}
