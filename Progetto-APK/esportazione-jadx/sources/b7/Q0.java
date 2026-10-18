package b7;

import D1.C0152q;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import pe.hf.black20.MovieInfoActivity;
import pe.hf.black20.encryption.Encrypt;

/* JADX INFO: loaded from: classes2.dex */
public final class Q0 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10168G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ R0 f10169H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ String f10170I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ String f10171J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f10172K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ C0152q f10173L;

    public Q0(C0152q c0152q, int i8, R0 r7, String str, String str2, int i9) {
        this.f10173L = c0152q;
        this.f10168G = i8;
        this.f10169H = r7;
        this.f10170I = str;
        this.f10171J = str2;
        this.f10172K = i9;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean zA = z4.q0.q().a("ORT_remoteLongPressORPlayerVODFragment", false);
        String strReplaceAll = HttpUrl.FRAGMENT_ENCODE_SET;
        C0152q c0152q = this.f10173L;
        if (zA) {
            z4.q0.q().e("ORT_remoteLongPressORPlayerVODFragment", false);
            c0152q.f2204K = (HashMap) ((ArrayList) c0152q.f2203J).get(this.f10168G);
            Object obj = c0152q.f2206M;
            boolean zContains = ((S0) obj).f10215k1.contains("\"stream_id\":\"" + ((String) ((HashMap) c0152q.f2204K).get("stream_id")) + "\"");
            R0 r7 = this.f10169H;
            if (zContains) {
                ((S0) obj).f10183E0.e0((String) ((HashMap) c0152q.f2204K).get("stream_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), "_vod");
                ((ImageView) r7.f10176c0.findViewWithTag(((HashMap) c0152q.f2204K).get("stream_id"))).setVisibility(8);
                Toast.makeText(((S0) obj).l(), ((String) ((HashMap) c0152q.f2204K).get("name")) + " - has been removed from Favorites", 1).show();
            } else {
                ((S0) obj).f10183E0.f0((String) ((HashMap) c0152q.f2204K).get("stream_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_vod");
                Toast.makeText(((S0) obj).l(), ((String) ((HashMap) c0152q.f2204K).get("name")) + " - has been added to Favorites", 1).show();
                ((ImageView) r7.f10176c0.findViewWithTag(((HashMap) c0152q.f2204K).get("stream_id"))).setVisibility(0);
            }
            ((S0) obj).X();
            return;
        }
        new c7.d(((S0) c0152q.f2206M).l());
        Object obj2 = c0152q.f2206M;
        c0152q.f2205L = ((S0) obj2).l().getSharedPreferences("pe.hf.black20", 0);
        StringBuilder sbL = p000a.r.l(!U2.z("ORT_VOD_PORTAL", "no", "no") ? z4.q0.q().c("ORT_VOD_PORTAL", "no") : U2.k("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET), "/movie/");
        sbL.append(this.f10170I);
        sbL.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
        String strJ = p000a.r.j(sbL, this.f10171J, MqttTopic.TOPIC_LEVEL_SEPARATOR);
        z4.q0.q().g("ORT_WHICH_CAT", "VOD");
        ArrayList arrayList = (ArrayList) c0152q.f2203J;
        int i8 = this.f10172K;
        c0152q.f2204K = (HashMap) arrayList.get(i8);
        Intent intent = new Intent(((S0) obj2).l(), (Class<?>) MovieInfoActivity.class);
        intent.putExtra("name", (String) ((HashMap) c0152q.f2204K).get("name"));
        intent.putExtra("stream_id", (String) ((HashMap) c0152q.f2204K).get("stream_id"));
        intent.putExtra("stream_icon", (String) ((HashMap) c0152q.f2204K).get("stream_icon"));
        if (((String) ((HashMap) c0152q.f2204K).get("direct_source")).contains("http")) {
            intent.putExtra("streamurl", (String) ((HashMap) c0152q.f2204K).get("direct_source"));
        } else {
            StringBuilder sbO = U2.o(strJ);
            sbO.append((String) ((HashMap) c0152q.f2204K).get("stream_id"));
            sbO.append(".");
            sbO.append((String) ((HashMap) c0152q.f2204K).get("container_extension"));
            intent.putExtra("streamurl", sbO.toString());
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            if (!((String) ((HashMap) c0152q.f2204K).get("stream_icon")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                strReplaceAll = ((String) ((HashMap) c0152q.f2204K).get("stream_icon")).replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll("http://:", Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
            }
            intent.putExtra("poster", strReplaceAll);
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
            ((S0) obj2).f10211g1 = (String) ((HashMap) c0152q.f2204K).get("custom_sid");
            intent.putExtra("packageid", ((S0) obj2).f10211g1);
        }
        intent.putExtra("position", String.valueOf(i8));
        ((S0) obj2).l().startActivity(intent);
    }
}
