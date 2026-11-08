package p039f;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.Toast;
import b7.A;
import b7.AbstractC0559y;
import b7.D;
import b7.I0;
import b7.M0;
import b7.S0;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import p086l.T;
import p086l.W;
import pe.hf.black20.CatchupActivity;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.R;
import pe.hf.black20.RadioPlayerActivity;
import pe.hf.black20.encryption.Encrypt;
import z4.q0;

/* JADX INFO: renamed from: f.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2991f implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25043G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f25044H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f25045I;

    public /* synthetic */ C2991f(int i8, Object obj, Object obj2) {
        this.f25043G = i8;
        this.f25045I = obj;
        this.f25044H = obj2;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i8, long j8) {
        int i9 = this.f25043G;
        Object obj = this.f25044H;
        Object obj2 = this.f25045I;
        switch (i9) {
            case 0:
                C2992g c2992g = (C2992g) obj2;
                C2995j c2995j = (C2995j) obj;
                c2992g.f25057l.onClick(c2995j.f25075b, i8);
                if (!c2992g.f25059n) {
                    c2995j.f25075b.dismiss();
                }
                break;
            case 1:
                T t7 = (T) obj2;
                t7.f26180m0.setSelection(i8);
                W w7 = t7.f26180m0;
                if (w7.getOnItemClickListener() != null) {
                    w7.performItemClick(view, i8, t7.f26177j0.getItemId(i8));
                }
                t7.dismiss();
                break;
            case 2:
                ChannelListActivity channelListActivity = (ChannelListActivity) obj2;
                channelListActivity.f28452O.h0((String) ((HashMap) ((ArrayList) obj).get(i8)).get("id"));
                ChannelListActivity.a(channelListActivity);
                if (q0.q().c("ORT_WHICH_CAT", "TV").equals("TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                    new D(channelListActivity, 6).execute(new Void[0]);
                } else if (U2.z("ORT_WHICH_CAT", "TV", "VOD")) {
                    new D(channelListActivity, (A) null).execute(new Void[0]);
                } else {
                    AbstractC0559y abstractC0559y = null;
                    if (U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                        new D(channelListActivity, abstractC0559y).execute(new Void[0]);
                    }
                }
                channelListActivity.f28477n0.setVisibility(8);
                break;
            case 3:
                I0 i10 = (I0) obj2;
                i10.f10037E0.h0((String) ((HashMap) ((ArrayList) obj).get(i8)).get("id"));
                I0.S(i10);
                i10.f10073o1 = false;
                i10.f10074p1 = "fav";
                i10.U("all");
                i10.f10081w1.setVisibility(8);
                break;
            case 4:
                M0 m7 = (M0) obj2;
                m7.f10121I0.h0((String) ((HashMap) ((ArrayList) obj).get(i8)).get("id"));
                M0.S(m7);
                m7.U("fav", m7.f10129Q0.getText().toString());
                m7.f10139a1.setVisibility(8);
                m7.f10115C0.requestFocus();
                break;
            case 5:
                String strK = U2.k("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET);
                String strK2 = U2.k("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
                if (!q0.q().a("ORT_remoteLongPressORPlayerTVFragment", false)) {
                    M0 m8 = (M0) obj2;
                    m8.f10131S0 = i8;
                    if (((String) obj).equals("fav")) {
                        q0.q().g("ORT_CAT_NAME", m8.l().getString(R.string.xc_favorites));
                    }
                    if (U2.z("ORT_WHICH_CAT", "TV", "TV")) {
                        Intent intent = new Intent(m8.l(), (Class<?>) PlayStreamEPGActivity.class);
                        if (((String) ((HashMap) m8.f10117E0.get(i8)).get("direct_source")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(Encrypt.a(q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                            sb.append("/live/");
                            sb.append(strK);
                            StringBuilder sbO = U2.o(U2.n(sb, MqttTopic.TOPIC_LEVEL_SEPARATOR, strK2, MqttTopic.TOPIC_LEVEL_SEPARATOR));
                            sbO.append((String) ((HashMap) m8.f10117E0.get(i8)).get("stream_id"));
                            sbO.append(".");
                            intent.putExtra("streamurl", U2.h(m8.f10119G0, "streamFormat", null, sbO));
                        } else {
                            intent.putExtra("streamurl", (String) ((HashMap) m8.f10117E0.get(i8)).get("direct_source"));
                        }
                        intent.putExtra("name", (String) ((HashMap) m8.f10117E0.get(i8)).get("name"));
                        intent.putExtra("stream_id", (String) ((HashMap) m8.f10117E0.get(i8)).get("stream_id"));
                        intent.putExtra("position", String.valueOf(i8));
                        m8.l().startActivity(intent);
                    } else if (U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                        new JSONArray((Collection) m8.f10117E0);
                        Intent intent2 = new Intent(m8.l(), (Class<?>) PlayStreamEPGActivity.class);
                        if (((String) ((HashMap) m8.f10117E0.get(i8)).get("direct_source")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(Encrypt.a(q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                            sb2.append("/live/");
                            sb2.append(strK);
                            StringBuilder sbO2 = U2.o(U2.n(sb2, MqttTopic.TOPIC_LEVEL_SEPARATOR, strK2, MqttTopic.TOPIC_LEVEL_SEPARATOR));
                            sbO2.append((String) ((HashMap) m8.f10117E0.get(i8)).get("stream_id"));
                            sbO2.append(".");
                            intent2.putExtra("streamurl", U2.h(m8.f10119G0, "streamFormat", null, sbO2));
                        } else {
                            intent2.putExtra("streamurl", (String) ((HashMap) m8.f10117E0.get(i8)).get("direct_source"));
                        }
                        intent2.putExtra("name", (String) ((HashMap) m8.f10117E0.get(i8)).get("name"));
                        intent2.putExtra("stream_id", (String) ((HashMap) m8.f10117E0.get(i8)).get("stream_id"));
                        intent2.putExtra("position", String.valueOf(i8));
                        m8.l().startActivity(intent2);
                    } else if (U2.z("ORT_WHICH_CAT", "TV", "CATCHUP")) {
                        Intent intent3 = new Intent(m8.l(), (Class<?>) CatchupActivity.class);
                        intent3.putExtra("name", (String) ((HashMap) m8.f10117E0.get(i8)).get("name"));
                        intent3.putExtra("stream_id", (String) ((HashMap) m8.f10117E0.get(i8)).get("stream_id"));
                        intent3.putExtra("tv_archive_duration", (String) ((HashMap) m8.f10117E0.get(i8)).get("tv_archive_duration"));
                        intent3.putExtra("icon", (String) ((HashMap) m8.f10117E0.get(i8)).get("stream_icon"));
                        m8.l().startActivity(intent3);
                    } else if (U2.z("ORT_WHICH_CAT", "TV", "RADIO")) {
                        Intent intent4 = new Intent(m8.l(), (Class<?>) RadioPlayerActivity.class);
                        if (((String) ((HashMap) m8.f10117E0.get(i8)).get("direct_source")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(Encrypt.a(q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                            sb3.append("/live/");
                            sb3.append(strK);
                            sb3.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                            sb3.append(strK2);
                            sb3.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                            sb3.append((String) ((HashMap) m8.f10117E0.get(i8)).get("stream_id"));
                            sb3.append(".");
                            intent4.putExtra("stream", U2.h(m8.f10119G0, "streamFormat", null, sb3));
                        } else {
                            intent4.putExtra("stream", (String) ((HashMap) m8.f10117E0.get(i8)).get("direct_source"));
                        }
                        intent4.putExtra("radioname", (String) ((HashMap) m8.f10117E0.get(i8)).get("name"));
                        intent4.putExtra("stream_icon", (String) ((HashMap) m8.f10117E0.get(i8)).get("stream_icon"));
                        m8.l().startActivity(intent4);
                    }
                } else {
                    M0 m9 = (M0) obj2;
                    ImageView imageView = (ImageView) view.findViewById(R.id.img_fav).findViewWithTag(((HashMap) m9.f10117E0.get(i8)).get("stream_id"));
                    if (!m9.f10121I0.d0((String) ((HashMap) m9.f10117E0.get(i8)).get("stream_id"), m9.f10122J0.f25478a, "_live").equals("yes")) {
                        m9.f10121I0.f0((String) ((HashMap) m9.f10117E0.get(i8)).get("stream_id"), q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_live");
                        imageView.setVisibility(0);
                        Toast.makeText(m9.l(), ((String) ((HashMap) m9.f10117E0.get(i8)).get("name")) + " - has been added to Favorites", 1).show();
                    } else {
                        m9.f10121I0.e0((String) ((HashMap) m9.f10117E0.get(i8)).get("stream_id"), q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), "_live");
                        imageView.setVisibility(8);
                        Toast.makeText(m9.l(), ((String) ((HashMap) m9.f10117E0.get(i8)).get("name")) + " - has been removed from Favorites", 1).show();
                    }
                }
                break;
            default:
                S0 s7 = (S0) obj2;
                s7.f10183E0.h0((String) ((HashMap) ((ArrayList) obj).get(i8)).get("id"));
                S0.S(s7);
                s7.f10214j1 = false;
                s7.Z(view, true);
                s7.f10209e1 = "fav";
                s7.W("all");
                s7.f10226v1.setVisibility(8);
                break;
        }
    }
}
