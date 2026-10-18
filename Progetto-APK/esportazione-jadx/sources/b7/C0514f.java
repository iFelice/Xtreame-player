package b7;

import android.app.job.JobScheduler;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.protobuf.U2;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import pe.hf.black20.CatchupActivity;
import pe.hf.black20.CatchupPlayerActivity;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.ChannelPickerActivity;
import pe.hf.black20.LanguagePickerActivity;
import pe.hf.black20.LogViewActivity;
import pe.hf.black20.MovieInfoActivity;
import pe.hf.black20.MultiScreenActivityEXO;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.OpenSourceLicenseActivity;
import pe.hf.black20.OtherSettingsActivity;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.ProgramRemindersActivity;
import pe.hf.black20.R;
import pe.hf.black20.RadioPlayerActivity;
import pe.hf.black20.SeriesActivity;
import pe.hf.black20.ServiceStatusActivity;
import pe.hf.black20.SplashActivity;
import pe.hf.black20.UsersHistoryActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.services.OTRServices;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0514f implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10292G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f10293H;

    public /* synthetic */ C0514f(Object obj, int i8) {
        this.f10292G = i8;
        this.f10293H = obj;
    }

    private void a(int i8) {
        Date date;
        Object obj = this.f10293H;
        try {
            ((CatchupActivity) obj).f28313U = String.valueOf(Methods.i(((CatchupActivity) obj).f28323e0.parse((String) ((HashMap) ((CatchupActivity) obj).f28320b0.get(i8)).get("start")), ((CatchupActivity) obj).f28323e0.parse((String) ((HashMap) ((CatchupActivity) obj).f28320b0.get(i8)).get("end")), ((CatchupActivity) obj).f28323e0));
            ((CatchupActivity) obj).f28313U = String.valueOf(Integer.parseInt(((CatchupActivity) obj).f28313U) + 3);
        } catch (ParseException unused) {
        }
        if (U2.z("ORT_TIME_FORMAT", "12", "24")) {
            CatchupActivity catchupActivity = (CatchupActivity) obj;
            catchupActivity.f28314V = ((String) ((HashMap) catchupActivity.f28320b0.get(i8)).get("title")) + " (" + Methods.o((String) ((HashMap) catchupActivity.f28320b0.get(i8)).get("start")) + " - " + Methods.o((String) ((HashMap) catchupActivity.f28320b0.get(i8)).get("end")) + ")";
        } else {
            CatchupActivity catchupActivity2 = (CatchupActivity) obj;
            catchupActivity2.f28314V = ((String) ((HashMap) catchupActivity2.f28320b0.get(i8)).get("title")) + " (" + Methods.p((String) ((HashMap) catchupActivity2.f28320b0.get(i8)).get("start")) + " - " + Methods.p((String) ((HashMap) catchupActivity2.f28320b0.get(i8)).get("end")) + ")";
        }
        CatchupActivity catchupActivity3 = (CatchupActivity) obj;
        String str = (String) ((HashMap) catchupActivity3.f28320b0.get(i8)).get("start");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd:HH-mm");
        try {
            date = simpleDateFormat.parse(str);
        } catch (ParseException unused2) {
            date = null;
        }
        catchupActivity3.f28311S = simpleDateFormat2.format(date);
        Intent intent = new Intent(catchupActivity3.f28303K, (Class<?>) CatchupPlayerActivity.class);
        intent.putExtra("position", String.valueOf(i8));
        intent.putExtra("stream_id", catchupActivity3.f28309Q);
        intent.putExtra("duration", catchupActivity3.f28313U);
        intent.putExtra("start_time", catchupActivity3.f28311S);
        intent.putExtra("title_desc", catchupActivity3.f28314V);
        catchupActivity3.f28303K.startActivity(intent);
    }

    private void b(int i8) {
        z4.q0.q().f(i8, "ORT_SELECTED_POS");
        ChannelListActivity.f28442x0.invalidateViews();
        Object obj = this.f10293H;
        if (i8 == 0) {
            D d6 = (D) obj;
            ChannelListActivity channelListActivity = d6.f9977b;
            channelListActivity.f28473j0 = "99999";
            channelListActivity.f28472i0 = channelListActivity.f28444G.getString(R.string.xc_favorites);
            z4.q0.q().g("ORT_CAT_NAME", d6.f9977b.f28472i0);
            ChannelListActivity channelListActivity2 = d6.f9977b;
            channelListActivity2.f28463Z.setText(channelListActivity2.f28444G.getString(R.string.xc_favorites));
        } else if (i8 == 1) {
            D d8 = (D) obj;
            ChannelListActivity channelListActivity3 = d8.f9977b;
            channelListActivity3.f28473j0 = "00000";
            channelListActivity3.f28472i0 = channelListActivity3.f28444G.getString(R.string.xc_recently_added);
            z4.q0.q().g("ORT_CAT_NAME", d8.f9977b.f28472i0);
            ChannelListActivity channelListActivity4 = d8.f9977b;
            channelListActivity4.f28463Z.setText(channelListActivity4.f28444G.getString(R.string.xc_recently_added));
        } else {
            D d9 = (D) obj;
            ChannelListActivity channelListActivity5 = d9.f9977b;
            channelListActivity5.f28472i0 = (String) ((HashMap) channelListActivity5.f28448K.get(i8)).get("category_name");
            ChannelListActivity channelListActivity6 = d9.f9977b;
            channelListActivity6.f28473j0 = (String) ((HashMap) channelListActivity6.f28448K.get(i8)).get("category_id");
            ChannelListActivity channelListActivity7 = d9.f9977b;
            channelListActivity7.f28463Z.setText(channelListActivity7.f28472i0);
        }
        new D(((D) obj).f9977b, (AbstractC0559y) null).execute(new Void[0]);
    }

    private void c(int i8) {
        D d6 = (D) this.f10293H;
        d6.f9977b.f28477n0.setVisibility(8);
        z4.q0.q().f(i8, "ORT_SELECTED_POS");
        ChannelListActivity.f28442x0.invalidateViews();
        if (z4.q0.q().c("ORT_WHICH_CAT", "TV").equals("CATCHUP") || U2.z("ORT_WHICH_CAT", "TV", "RADIO")) {
            ChannelListActivity channelListActivity = d6.f9977b;
            channelListActivity.f28473j0 = (String) ((HashMap) channelListActivity.f28448K.get(i8)).get("category_id");
            ChannelListActivity channelListActivity2 = d6.f9977b;
            channelListActivity2.f28472i0 = (String) ((HashMap) channelListActivity2.f28448K.get(i8)).get("category_name");
            z4.q0.q().g("ORT_CAT_NAME", d6.f9977b.f28472i0);
            ChannelListActivity channelListActivity3 = d6.f9977b;
            channelListActivity3.f28463Z.setText(channelListActivity3.f28472i0);
        } else if (i8 == 0) {
            ChannelListActivity channelListActivity4 = d6.f9977b;
            channelListActivity4.f28473j0 = "99999";
            channelListActivity4.f28472i0 = channelListActivity4.f28444G.getString(R.string.xc_favorites);
            z4.q0.q().g("ORT_CAT_NAME", d6.f9977b.f28472i0);
            ChannelListActivity channelListActivity5 = d6.f9977b;
            channelListActivity5.f28463Z.setText(channelListActivity5.f28444G.getString(R.string.xc_favorites));
        } else if (i8 == 1) {
            ChannelListActivity channelListActivity6 = d6.f9977b;
            channelListActivity6.f28473j0 = "99998";
            channelListActivity6.f28472i0 = "RECENT SEARCH";
            z4.q0.q().g("ORT_CAT_NAME", d6.f9977b.f28472i0);
            d6.f9977b.f28463Z.setText("RECENT SEARCH");
        } else {
            ChannelListActivity channelListActivity7 = d6.f9977b;
            channelListActivity7.f28473j0 = (String) ((HashMap) channelListActivity7.f28448K.get(i8)).get("category_id");
            ChannelListActivity channelListActivity8 = d6.f9977b;
            channelListActivity8.f28472i0 = (String) ((HashMap) channelListActivity8.f28448K.get(i8)).get("category_name");
            z4.q0.q().g("ORT_CAT_NAME", d6.f9977b.f28472i0);
            ChannelListActivity channelListActivity9 = d6.f9977b;
            channelListActivity9.f28463Z.setText(channelListActivity9.f28472i0);
        }
        new D(d6.f9977b, 6).execute(new Void[0]);
    }

    private void d(int i8) {
        String strReplaceAll = HttpUrl.FRAGMENT_ENCODE_SET;
        String strK = U2.k("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET);
        String strK2 = U2.k("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
        G g8 = (G) this.f10293H;
        g8.f10013i = (HashMap) g8.f10012h.get(i8);
        String str = ChannelListActivity.THEME;
        g8.f10007c = g8.f10006b.getSharedPreferences("pe.hf.black20", 0);
        String str2 = (!U2.z("ORT_VOD_PORTAL", "no", "no") ? z4.q0.q().c("ORT_VOD_PORTAL", "no") : U2.k("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)) + "/movie/" + strK + MqttTopic.TOPIC_LEVEL_SEPARATOR + strK2 + MqttTopic.TOPIC_LEVEL_SEPARATOR;
        z4.q0.q().g("ORT_WHICH_CAT", "VOD");
        g8.f10013i = (HashMap) g8.f10012h.get(i8);
        Intent intent = new Intent(g8.f10006b, (Class<?>) MovieInfoActivity.class);
        intent.putExtra("name", (String) g8.f10013i.get("name"));
        intent.putExtra("stream_id", (String) g8.f10013i.get("stream_id"));
        intent.putExtra("stream_icon", (String) g8.f10013i.get("stream_icon"));
        if (((String) g8.f10013i.get("direct_source")).contains("http")) {
            intent.putExtra("streamurl", (String) g8.f10013i.get("direct_source"));
        } else {
            StringBuilder sbO = U2.o(str2);
            sbO.append((String) g8.f10013i.get("stream_id"));
            sbO.append(".");
            sbO.append((String) g8.f10013i.get("container_extension"));
            intent.putExtra("streamurl", sbO.toString());
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
            if (!((String) g8.f10013i.get("stream_icon")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                strReplaceAll = ((String) g8.f10013i.get("stream_icon")).replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll("http://:", Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
            }
            intent.putExtra("poster", strReplaceAll);
        }
        if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
            intent.putExtra("packageid", (String) g8.f10013i.get("custom_sid"));
        }
        intent.putExtra("position", String.valueOf(i8));
        g8.f10006b.startActivity(intent);
    }

    private void e(int i8) {
        String strK = U2.k("ORT_PROFILE_USERNAME", HttpUrl.FRAGMENT_ENCODE_SET);
        String strK2 = U2.k("ORT_PROFILE_PASSWORD", HttpUrl.FRAGMENT_ENCODE_SET);
        G g8 = (G) this.f10293H;
        g8.f10013i = (HashMap) g8.f10012h.get(i8);
        g8.f10007c = g8.f10006b.getSharedPreferences("pe.hf.black20", 0);
        String str = ChannelListActivity.THEME;
        if (U2.z("ORT_WHICH_CAT", "TV", "TV")) {
            Intent intent = new Intent(g8.f10006b, (Class<?>) PlayStreamEPGActivity.class);
            if (((String) g8.f10013i.get("direct_source")).contains("http")) {
                intent.putExtra("streamurl", (String) g8.f10013i.get("direct_source"));
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                sb.append("/live/");
                sb.append(strK);
                StringBuilder sbO = U2.o(U2.n(sb, MqttTopic.TOPIC_LEVEL_SEPARATOR, strK2, MqttTopic.TOPIC_LEVEL_SEPARATOR));
                sbO.append((String) g8.f10013i.get("stream_id"));
                sbO.append(".");
                intent.putExtra("streamurl", U2.h((SharedPreferences) g8.f10007c, "streamFormat", null, sbO));
            }
            intent.putExtra("name", (String) g8.f10013i.get("name"));
            intent.putExtra("stream_id", (String) g8.f10013i.get("stream_id"));
            intent.putExtra("position", String.valueOf(i8));
            g8.f10006b.startActivity(intent);
            return;
        }
        if (U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
            new JSONArray((Collection) g8.f10012h);
            Intent intent2 = new Intent(g8.f10006b, (Class<?>) PlayStreamEPGActivity.class);
            if (((String) g8.f10013i.get("direct_source")).contains("http")) {
                intent2.putExtra("streamurl", (String) g8.f10013i.get("direct_source"));
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                sb2.append("/live/");
                sb2.append(strK);
                StringBuilder sbO2 = U2.o(U2.n(sb2, MqttTopic.TOPIC_LEVEL_SEPARATOR, strK2, MqttTopic.TOPIC_LEVEL_SEPARATOR));
                sbO2.append((String) g8.f10013i.get("stream_id"));
                sbO2.append(".");
                intent2.putExtra("streamurl", U2.h((SharedPreferences) g8.f10007c, "streamFormat", null, sbO2));
            }
            intent2.putExtra("name", (String) g8.f10013i.get("name"));
            intent2.putExtra("stream_id", (String) g8.f10013i.get("stream_id"));
            intent2.putExtra("position", String.valueOf(i8));
            g8.f10006b.startActivity(intent2);
            return;
        }
        if (U2.z("ORT_WHICH_CAT", "TV", "CATCHUP")) {
            Intent intent3 = new Intent(g8.f10006b, (Class<?>) CatchupActivity.class);
            intent3.putExtra("name", (String) g8.f10013i.get("name"));
            intent3.putExtra("stream_id", (String) g8.f10013i.get("stream_id"));
            intent3.putExtra("tv_archive_duration", (String) g8.f10013i.get("tv_archive_duration"));
            intent3.putExtra("icon", (String) g8.f10013i.get("stream_icon"));
            g8.f10006b.startActivity(intent3);
            return;
        }
        if (U2.z("ORT_WHICH_CAT", "TV", "RADIO")) {
            Intent intent4 = new Intent(g8.f10006b, (Class<?>) RadioPlayerActivity.class);
            if (((String) g8.f10013i.get("direct_source")).contains("http")) {
                intent4.putExtra("stream", (String) g8.f10013i.get("direct_source"));
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                sb3.append("/live/");
                sb3.append(strK);
                sb3.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                sb3.append(strK2);
                sb3.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                sb3.append((String) g8.f10013i.get("stream_id"));
                sb3.append(".");
                intent4.putExtra("stream", U2.h((SharedPreferences) g8.f10007c, "streamFormat", null, sb3));
            }
            intent4.putExtra("radioname", (String) g8.f10013i.get("name"));
            intent4.putExtra("stream_icon", (String) g8.f10013i.get("stream_icon"));
            g8.f10006b.startActivity(intent4);
        }
    }

    private void f(int i8) {
        G g8 = (G) this.f10293H;
        g8.f10013i = (HashMap) g8.f10012h.get(i8);
        String str = ChannelListActivity.THEME;
        g8.f10007c = g8.f10006b.getSharedPreferences("pe.hf.black20", 0);
        z4.q0.q().g("ORT_WHICH_CAT", "SERIES");
        g8.f10013i = (HashMap) g8.f10012h.get(i8);
        Intent intent = new Intent(g8.f10006b, (Class<?>) SeriesActivity.class);
        intent.putExtra("name", (String) g8.f10013i.get("name"));
        intent.putExtra("cover", (String) g8.f10013i.get("cover"));
        intent.putExtra("series_id", (String) g8.f10013i.get("series_id"));
        intent.putExtra("episode_run_time", (String) g8.f10013i.get("episode_run_time"));
        intent.putExtra("program_desc", g8.f10006b.getString(R.string.xc_rating) + ": " + ((String) g8.f10013i.get("rating")) + "  " + g8.f10006b.getString(R.string.xc_genre) + ": " + ((String) g8.f10013i.get("genre")) + " " + g8.f10006b.getString(R.string.xc_date) + ": " + ((String) g8.f10013i.get("releaseDate")));
        g8.f10006b.startActivity(intent);
    }

    private void g(int i8) {
        z4.q0.q().f(i8, "ORT_SELECTED_POS");
        Object obj = this.f10293H;
        ((J) obj).f10089b.f28502Q.invalidateViews();
        try {
            if (i8 == 0) {
                ((J) obj).f10089b.f28499N = "99999";
                ((J) obj).f10089b.f28498M = ((J) obj).f10089b.f28496K.getString(R.string.xc_favorites);
                z4.q0.q().g("ORT_CAT_NAME", ((J) obj).f10089b.f28498M);
            } else {
                ((J) obj).f10089b.f28499N = ((J) obj).f10089b.f28495J0.getJSONObject(i8).getString("category_id");
                ((J) obj).f10089b.f28498M = ((J) obj).f10089b.f28495J0.getJSONObject(i8).getString("category_name");
                z4.q0.q().g("ORT_CAT_NAME", ((J) obj).f10089b.f28498M);
            }
            new J(((J) obj).f10089b, 1).execute(new Void[0]);
        } catch (JSONException unused) {
        }
    }

    private void h(int i8) {
        Object obj = this.f10293H;
        try {
            String strA = Encrypt.a(((J) obj).f10089b.f28500O.f25480c);
            String strA2 = Encrypt.a(((J) obj).f10089b.f28500O.f25481d);
            String string = ((J) obj).f10089b.f28493I0.getJSONObject(i8).getString("stream_id");
            ((J) obj).f10089b.f28524m0 = ((J) obj).f10089b.f28493I0.getJSONObject(i8).getString("name");
            if (((J) obj).f10089b.f28493I0.getJSONObject(i8).getString("direct_source").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                ((J) obj).f10089b.f28525n0 = Encrypt.a(((J) obj).f10089b.f28500O.f25482e) + "/live/" + strA + MqttTopic.TOPIC_LEVEL_SEPARATOR + strA2 + MqttTopic.TOPIC_LEVEL_SEPARATOR + string + "." + ((J) obj).f10089b.f28497L.getString("streamFormat", null);
            } else {
                ((J) obj).f10089b.f28525n0 = ((J) obj).f10089b.f28493I0.getJSONObject(i8).getString("direct_source");
            }
            ChannelPickerActivity.a(((J) obj).f10089b);
        } catch (JSONException e8) {
            e8.printStackTrace();
        }
    }

    private void i(int i8) {
        String string;
        Object obj = this.f10293H;
        try {
            String strA = Encrypt.a(((Y) obj).f10253b.f28739j1.f25480c);
            String strA2 = Encrypt.a(((Y) obj).f10253b.f28739j1.f25481d);
            String string2 = ((Y) obj).f10253b.f28663D1.getJSONObject(i8).getString("stream_id");
            if (((Y) obj).f10253b.f28663D1.getJSONObject(i8).getString("direct_source").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                string = Encrypt.a(((Y) obj).f10253b.f28739j1.f25482e) + "/live/" + strA + MqttTopic.TOPIC_LEVEL_SEPARATOR + strA2 + MqttTopic.TOPIC_LEVEL_SEPARATOR + string2 + "." + ((Y) obj).f10253b.f28671H.getString("streamFormat", null);
            } else {
                string = ((Y) obj).f10253b.f28663D1.getJSONObject(i8).getString("direct_source");
            }
            String string3 = ((Y) obj).f10253b.f28663D1.getJSONObject(i8).getString("name");
            if (((Y) obj).f10253b.f28687M0.equals("p1")) {
                ((Y) obj).f10253b.f28693O0 = 0.0f;
                ((Y) obj).f10253b.f28674I = string;
                ((Y) obj).f10253b.f28759t1.setText(string3);
                if (((Y) obj).f10253b.f28713W0 == 0) {
                    ((Y) obj).f10253b.f28721a1++;
                }
                ((Y) obj).f10253b.f28713W0 = 1;
                if (((Y) obj).f10253b.f28665E1) {
                    ((Y) obj).f10253b.d(((Y) obj).f10253b.f28674I);
                } else {
                    ((Y) obj).f10253b.h(((Y) obj).f10253b.f28674I);
                }
                ((Y) obj).f10253b.f28742l0.setBackground(((Y) obj).f10253b.getResources().getDrawable(R.drawable.multi_pause));
            } else if (((Y) obj).f10253b.f28687M0.equals("p2")) {
                ((Y) obj).f10253b.f28696P0 = 0.0f;
                ((Y) obj).f10253b.f28761u1.setText(string3);
                ((Y) obj).f10253b.f28677J = string;
                if (((Y) obj).f10253b.f28715X0 == 0) {
                    ((Y) obj).f10253b.f28721a1++;
                }
                ((Y) obj).f10253b.f28715X0 = 1;
                if (((Y) obj).f10253b.f28665E1) {
                    ((Y) obj).f10253b.e(((Y) obj).f10253b.f28677J);
                } else {
                    ((Y) obj).f10253b.i(((Y) obj).f10253b.f28677J);
                }
                ((Y) obj).f10253b.f28744m0.setBackground(((Y) obj).f10253b.getResources().getDrawable(R.drawable.multi_pause));
            } else if (((Y) obj).f10253b.f28687M0.equals("p3")) {
                ((Y) obj).f10253b.f28699Q0 = 0.0f;
                ((Y) obj).f10253b.f28763v1.setText(string3);
                ((Y) obj).f10253b.f28680K = string;
                if (((Y) obj).f10253b.f28717Y0 == 0) {
                    ((Y) obj).f10253b.f28721a1++;
                }
                ((Y) obj).f10253b.f28717Y0 = 1;
                if (((Y) obj).f10253b.f28665E1) {
                    ((Y) obj).f10253b.f(((Y) obj).f10253b.f28680K);
                } else {
                    ((Y) obj).f10253b.j(((Y) obj).f10253b.f28680K);
                }
                ((Y) obj).f10253b.f28746n0.setBackground(((Y) obj).f10253b.getResources().getDrawable(R.drawable.multi_pause));
            } else if (((Y) obj).f10253b.f28687M0.equals("p4")) {
                ((Y) obj).f10253b.f28702R0 = 0.0f;
                ((Y) obj).f10253b.f28765w1.setText(string3);
                ((Y) obj).f10253b.f28683L = string;
                if (((Y) obj).f10253b.f28719Z0 == 0) {
                    ((Y) obj).f10253b.f28721a1++;
                }
                ((Y) obj).f10253b.f28719Z0 = 1;
                if (((Y) obj).f10253b.f28665E1) {
                    ((Y) obj).f10253b.g(((Y) obj).f10253b.f28683L);
                } else {
                    ((Y) obj).f10253b.k(((Y) obj).f10253b.f28683L);
                }
                ((Y) obj).f10253b.f28748o0.setBackground(((Y) obj).f10253b.getResources().getDrawable(R.drawable.multi_pause));
            }
            ((Y) obj).f10253b.o();
            ((Y) obj).f10253b.f28737i1.k(((Y) obj).f10253b.f28687M0, ((Y) obj).f10253b.f28739j1.f25479b, string3, string);
            MultiScreenActivityEXO multiScreenActivityEXO = ((Y) obj).f10253b;
            multiScreenActivityEXO.f28732g0.setVisibility(8);
            multiScreenActivityEXO.o();
            new Y(multiScreenActivityEXO).execute(new Void[0]);
        } catch (JSONException e8) {
            e8.printStackTrace();
        }
    }

    private void j(View view, int i8) {
        OtherSettingsActivity otherSettingsActivity = (OtherSettingsActivity) this.f10293H;
        int i9 = 1;
        if (otherSettingsActivity.f28807I[i8].equals(otherSettingsActivity.f28806H.getString(R.string.xc_auto_sleep))) {
            if (!otherSettingsActivity.f28805G.contains("sleep_mode")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                z4.q0.q().g("ORT_SLEEP_MODE", "off");
                p000a.r.n(otherSettingsActivity.f28805G, "sleep_mode", "off");
            } else if (otherSettingsActivity.f28805G.getString("sleep_mode", null).equals("on")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                z4.q0.q().g("ORT_SLEEP_MODE", "off");
                p000a.r.n(otherSettingsActivity.f28805G, "sleep_mode", "off");
            } else {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_on, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-16711936);
                z4.q0.q().g("ORT_SLEEP_MODE", "on");
                p000a.r.n(otherSettingsActivity.f28805G, "sleep_mode", "on");
            }
        } else if (otherSettingsActivity.f28807I[i8].equals("Load EPG")) {
            if (!otherSettingsActivity.f28805G.contains("epg_load_day")) {
                p000a.r.n(otherSettingsActivity.f28805G, "epg_load_day", "48");
            } else if (otherSettingsActivity.f28805G.getString("epg_load_day", null).equals("24")) {
                SharedPreferences.Editor editorEdit = otherSettingsActivity.f28805G.edit();
                editorEdit.putString("epg_load_day", "48");
                editorEdit.apply();
            } else if (otherSettingsActivity.f28805G.getString("epg_load_day", null).equals("48")) {
                SharedPreferences.Editor editorEdit2 = otherSettingsActivity.f28805G.edit();
                editorEdit2.putString("epg_load_day", "72");
                editorEdit2.apply();
            } else if (otherSettingsActivity.f28805G.getString("epg_load_day", null).equals("72")) {
                SharedPreferences.Editor editorEdit3 = otherSettingsActivity.f28805G.edit();
                editorEdit3.putString("epg_load_day", "24");
                editorEdit3.apply();
            }
        } else if (otherSettingsActivity.f28807I[i8].equals(otherSettingsActivity.getString(R.string.auto_start_app_after_reboot))) {
            if (!otherSettingsActivity.f28805G.contains("auto_start")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                p000a.r.n(otherSettingsActivity.f28805G, "auto_start", "yes");
            } else if (otherSettingsActivity.f28805G.getString("auto_start", null).equals("no")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                p000a.r.n(otherSettingsActivity.f28805G, "auto_start", "yes");
            } else {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_on, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-16711936);
                p000a.r.n(otherSettingsActivity.f28805G, "auto_start", "no");
            }
        } else if (otherSettingsActivity.f28807I[i8].equals(otherSettingsActivity.getString(R.string.reset_volume))) {
            SharedPreferences.Editor editorEdit4 = otherSettingsActivity.f28805G.edit();
            editorEdit4.putString("last_volume", "100");
            editorEdit4.apply();
            editorEdit4.commit();
            Methods.l(otherSettingsActivity.f28806H, otherSettingsActivity.getString(R.string.volume_has_been_reset));
        } else if (otherSettingsActivity.f28807I[i8].equals(otherSettingsActivity.getString(R.string.load_last_live_tv_channel))) {
            CategoriesActivity.f28377I0 = true;
            if (!otherSettingsActivity.f28805G.contains("load_last_channel")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_on, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-16711936);
                p000a.r.n(otherSettingsActivity.f28805G, "load_last_channel", "yes");
            } else if (otherSettingsActivity.f28805G.getString("load_last_channel", null).equals("yes")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                p000a.r.n(otherSettingsActivity.f28805G, "load_last_channel", "no");
            } else {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_on, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-16711936);
                p000a.r.n(otherSettingsActivity.f28805G, "load_last_channel", "yes");
            }
        } else if (otherSettingsActivity.f28807I[i8].equals(otherSettingsActivity.getString(R.string.live_tv_enable_media_control))) {
            if (!otherSettingsActivity.f28805G.contains("livetv_mediacontrol")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_on, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-16711936);
                z4.q0.q().g("ORT_LIVETV_MEDIACONTORL", "on");
                p000a.r.n(otherSettingsActivity.f28805G, "livetv_mediacontrol", "on");
            } else if (otherSettingsActivity.f28805G.getString("livetv_mediacontrol", null).equals("off")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_on, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-16711936);
                z4.q0.q().g("ORT_LIVETV_MEDIACONTORL", "on");
                p000a.r.n(otherSettingsActivity.f28805G, "livetv_mediacontrol", "on");
            } else {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                z4.q0.q().g("ORT_LIVETV_MEDIACONTORL", "off");
                p000a.r.n(otherSettingsActivity.f28805G, "livetv_mediacontrol", "off");
            }
        } else if (otherSettingsActivity.f28807I[i8].equals(otherSettingsActivity.getString(R.string.full_screen_notch_display))) {
            if (!otherSettingsActivity.f28805G.contains("cutout")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                p000a.r.n(otherSettingsActivity.f28805G, "cutout", "off");
            } else if (otherSettingsActivity.f28805G.getString("cutout", null).equals("on")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                p000a.r.n(otherSettingsActivity.f28805G, "cutout", "off");
            } else {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_on, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-16711936);
                p000a.r.n(otherSettingsActivity.f28805G, "cutout", "on");
            }
        } else if (otherSettingsActivity.f28807I[i8].equals(otherSettingsActivity.getString(R.string.time_format))) {
            ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
            if (!otherSettingsActivity.f28805G.contains("time_format") || otherSettingsActivity.f28805G.getString("time_format", null).equals("12")) {
                ((TextView) view.findViewById(R.id.txt_status)).setText("24 Hr");
                z4.q0.q().g("ORT_TIME_FORMAT", "24");
                p000a.r.n(otherSettingsActivity.f28805G, "time_format", "24");
            } else {
                ((TextView) view.findViewById(R.id.txt_status)).setText("12 Hr");
                z4.q0.q().g("ORT_TIME_FORMAT", "12");
                p000a.r.n(otherSettingsActivity.f28805G, "time_format", "12");
            }
        } else if (otherSettingsActivity.f28807I[i8].equals("Catchup EPG Timeshift")) {
            if (!otherSettingsActivity.f28805G.contains("catchup_epg_timeshift")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                SharedPreferences.Editor editorEdit5 = otherSettingsActivity.f28805G.edit();
                editorEdit5.putString("catchup_epg_timeshift", "no");
                editorEdit5.apply();
            } else if (otherSettingsActivity.f28805G.getString("catchup_epg_timeshift", null).equals("yes")) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                SharedPreferences.Editor editorEdit6 = otherSettingsActivity.f28805G.edit();
                editorEdit6.putString("catchup_epg_timeshift", "no");
                editorEdit6.apply();
            } else {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_on, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-16711936);
                SharedPreferences.Editor editorEdit7 = otherSettingsActivity.f28805G.edit();
                editorEdit7.putString("catchup_epg_timeshift", "yes");
                editorEdit7.apply();
            }
        } else if (otherSettingsActivity.f28807I[i8].equals("OTR Layout")) {
            OtherSettingsActivity otherSettingsActivity2 = otherSettingsActivity.f28806H;
            String str = ORPlayerMainActivity.THEME;
            ((JobScheduler) otherSettingsActivity2.getSystemService("jobscheduler")).cancel(123);
            CategoriesActivity.m(otherSettingsActivity.f28806H);
            otherSettingsActivity.sendBroadcast(new Intent(ORPlayerMainActivity.FINISH_ALERT));
            Methods.Y(otherSettingsActivity.f28806H, OTRServices.class);
            if (Methods.R(otherSettingsActivity.f28806H)) {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_off, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-65536);
                SharedPreferences.Editor editorEdit8 = otherSettingsActivity.f28805G.edit();
                editorEdit8.putString("new_layout", "no");
                editorEdit8.apply();
                editorEdit8.commit();
                otherSettingsActivity.sendBroadcast(new Intent(ORPlayerMainActivity.FINISH_ALERT));
                otherSettingsActivity.finish();
            } else {
                ((TextView) p000a.r.d(otherSettingsActivity.f28806H, R.string.xc_on, (TextView) view.findViewById(R.id.txt_status), view, R.id.txt_status)).setTextColor(-16711936);
                SharedPreferences.Editor editorEdit9 = otherSettingsActivity.f28805G.edit();
                editorEdit9.putString("new_layout", "yes");
                editorEdit9.apply();
                editorEdit9.commit();
                otherSettingsActivity.sendBroadcast(new Intent(ORPlayerMainActivity.FINISH_ALERT));
                otherSettingsActivity.finish();
            }
            otherSettingsActivity.startActivity(new Intent(otherSettingsActivity, (Class<?>) SplashActivity.class));
            otherSettingsActivity.finish();
        } else if (otherSettingsActivity.f28807I[i8].equals(otherSettingsActivity.f28806H.getString(R.string.xc_app_logs))) {
            otherSettingsActivity.startActivity(new Intent(otherSettingsActivity, (Class<?>) LogViewActivity.class));
        } else if (otherSettingsActivity.f28807I[i8].equals(otherSettingsActivity.getString(R.string.service_status))) {
            otherSettingsActivity.startActivity(new Intent(otherSettingsActivity, (Class<?>) ServiceStatusActivity.class));
        } else if (otherSettingsActivity.f28807I[i8].equals("Open Source Licenses")) {
            otherSettingsActivity.startActivity(new Intent(otherSettingsActivity.f28806H, (Class<?>) OpenSourceLicenseActivity.class));
        }
        otherSettingsActivity.getClass();
        otherSettingsActivity.f28808J.setAdapter((ListAdapter) new N(otherSettingsActivity, otherSettingsActivity.f28807I, i9));
        otherSettingsActivity.f28808J.setOnItemClickListener(new C0514f(otherSettingsActivity, 13));
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i8, long j8) {
        String string;
        int i9 = this.f10292G;
        Object obj = this.f10293H;
        switch (i9) {
            case 0:
                a(i8);
                break;
            case 1:
                b(i8);
                break;
            case 2:
                c(i8);
                break;
            case 3:
                z4.q0.q().f(i8, "ORT_SELECTED_POS");
                ChannelListActivity.f28442x0.invalidateViews();
                D d6 = (D) obj;
                ChannelListActivity channelListActivity = d6.f9977b;
                channelListActivity.f28472i0 = (String) ((HashMap) channelListActivity.f28448K.get(i8)).get("category_name");
                ChannelListActivity channelListActivity2 = d6.f9977b;
                channelListActivity2.f28473j0 = (String) ((HashMap) channelListActivity2.f28448K.get(i8)).get("category_id");
                channelListActivity2.f28463Z.setText(channelListActivity2.f28472i0);
                new D(channelListActivity2, (A) null).execute(new Void[0]);
                break;
            case 4:
                d(i8);
                break;
            case 5:
                e(i8);
                break;
            case 6:
                f(i8);
                break;
            case 7:
                g(i8);
                break;
            case 8:
                h(i8);
                break;
            case 9:
                C0549t c0549t = (C0549t) obj;
                c0549t.f10416c = c0549t.f10415b.getSharedPreferences("pe.hf.black20", 0);
                c0549t.f10418e = (HashMap) c0549t.f10417d.get(i8);
                StringBuilder sbL = p000a.r.l(!U2.z("ORT_SERIES_PORTAL", "no", "no") ? z4.q0.q().c("ORT_SERIES_PORTAL", "no") : Encrypt.a(SeriesActivity.f29080A0.f25482e), "/series/");
                sbL.append(Encrypt.a(SeriesActivity.f29080A0.f25480c));
                sbL.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                sbL.append(Encrypt.a(SeriesActivity.f29080A0.f25481d));
                sbL.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                String string2 = sbL.toString();
                if (((String) c0549t.f10418e.get("direct_source")).contains("http")) {
                    string = (String) c0549t.f10418e.get("direct_source");
                } else {
                    StringBuilder sbO = U2.o(string2);
                    sbO.append((String) c0549t.f10418e.get("id"));
                    sbO.append(".");
                    sbO.append((String) c0549t.f10418e.get("container_extension"));
                    string = sbO.toString();
                }
                z4.q0.q().g("ORT_WHICH_CAT", "SERIES");
                c0549t.f10418e = (HashMap) c0549t.f10417d.get(i8);
                Intent intent = new Intent(c0549t.f10415b, (Class<?>) PlayStreamEPGActivity.class);
                intent.putExtra("name", (String) c0549t.f10418e.get("title"));
                intent.putExtra("stream_id", (String) c0549t.f10418e.get("id"));
                intent.putExtra("streamurl", string);
                intent.putExtra("position", String.valueOf(i8));
                intent.putExtra("program_desc", c0549t.f10415b.getString(R.string.xc_season) + ": " + ((String) c0549t.f10418e.get("season")) + " " + c0549t.f10415b.getString(R.string.xc_episode_no) + ": " + ((String) c0549t.f10418e.get("episode_num")));
                intent.putExtra("id", (String) c0549t.f10418e.get("id"));
                intent.putExtra("movie_poster_from_list", SeriesActivity.f29085F0);
                c0549t.f10415b.startActivity(intent);
                break;
            case 10:
                LanguagePickerActivity languagePickerActivity = (LanguagePickerActivity) obj;
                if (languagePickerActivity.f28550I[i8].equals("ENGLISH (US)")) {
                    SharedPreferences.Editor editorEdit = languagePickerActivity.f28548G.edit();
                    editorEdit.putString("language", "en");
                    editorEdit.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("عربى (AR)")) {
                    SharedPreferences.Editor editorEdit2 = languagePickerActivity.f28548G.edit();
                    editorEdit2.putString("language", "ar");
                    editorEdit2.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("বাংলা (BN)")) {
                    SharedPreferences.Editor editorEdit3 = languagePickerActivity.f28548G.edit();
                    editorEdit3.putString("language", "bn");
                    editorEdit3.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("中文 (ZH)")) {
                    SharedPreferences.Editor editorEdit4 = languagePickerActivity.f28548G.edit();
                    editorEdit4.putString("language", "zh");
                    editorEdit4.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("FRANÇAISE (FR)")) {
                    SharedPreferences.Editor editorEdit5 = languagePickerActivity.f28548G.edit();
                    editorEdit5.putString("language", "fr");
                    editorEdit5.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("DEUTSCHE (DE)")) {
                    SharedPreferences.Editor editorEdit6 = languagePickerActivity.f28548G.edit();
                    editorEdit6.putString("language", "de");
                    editorEdit6.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("हिन्दी (HI)")) {
                    SharedPreferences.Editor editorEdit7 = languagePickerActivity.f28548G.edit();
                    editorEdit7.putString("language", "hi");
                    editorEdit7.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("ITALIANA (IT)")) {
                    ((TextView) view.findViewById(R.id.txt_status)).setText("SELECTED");
                    ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
                    SharedPreferences.Editor editorEdit8 = languagePickerActivity.f28548G.edit();
                    editorEdit8.putString("language", "it");
                    editorEdit8.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("HRVATSKI (HR)")) {
                    ((TextView) view.findViewById(R.id.txt_status)).setText("SELECTED");
                    ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
                    SharedPreferences.Editor editorEdit9 = languagePickerActivity.f28548G.edit();
                    editorEdit9.putString("language", "hr");
                    editorEdit9.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("മലയാളം (ML)")) {
                    ((TextView) view.findViewById(R.id.txt_status)).setText("SELECTED");
                    ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
                    SharedPreferences.Editor editorEdit10 = languagePickerActivity.f28548G.edit();
                    editorEdit10.putString("language", "ml");
                    editorEdit10.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("POLSKI (PL)")) {
                    ((TextView) view.findViewById(R.id.txt_status)).setText("SELECTED");
                    ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
                    SharedPreferences.Editor editorEdit11 = languagePickerActivity.f28548G.edit();
                    editorEdit11.putString("language", "pl");
                    editorEdit11.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("PORTUGUESA (PT)(BR)")) {
                    ((TextView) view.findViewById(R.id.txt_status)).setText("SELECTED");
                    ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
                    SharedPreferences.Editor editorEdit12 = languagePickerActivity.f28548G.edit();
                    editorEdit12.putString("language", "pt");
                    editorEdit12.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("ESPAÑOLA (ES)")) {
                    ((TextView) view.findViewById(R.id.txt_status)).setText("SELECTED");
                    ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
                    SharedPreferences.Editor editorEdit13 = languagePickerActivity.f28548G.edit();
                    editorEdit13.putString("language", "es");
                    editorEdit13.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("ROMÂNĂ (RO)")) {
                    ((TextView) view.findViewById(R.id.txt_status)).setText("SELECTED");
                    ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
                    SharedPreferences.Editor editorEdit14 = languagePickerActivity.f28548G.edit();
                    editorEdit14.putString("language", "ro");
                    editorEdit14.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("RUSSAIN (RU)")) {
                    ((TextView) view.findViewById(R.id.txt_status)).setText("SELECTED");
                    ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
                    SharedPreferences.Editor editorEdit15 = languagePickerActivity.f28548G.edit();
                    editorEdit15.putString("language", "ru");
                    editorEdit15.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("SVENSKA (SV)")) {
                    ((TextView) view.findViewById(R.id.txt_status)).setText("SELECTED");
                    ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
                    SharedPreferences.Editor editorEdit16 = languagePickerActivity.f28548G.edit();
                    editorEdit16.putString("language", "sv");
                    editorEdit16.apply();
                    languagePickerActivity.a();
                } else if (languagePickerActivity.f28550I[i8].equals("TURKISH (TR)")) {
                    ((TextView) view.findViewById(R.id.txt_status)).setText("SELECTED");
                    ((TextView) view.findViewById(R.id.txt_status)).setTextColor(-16711936);
                    SharedPreferences.Editor editorEdit17 = languagePickerActivity.f28548G.edit();
                    editorEdit17.putString("language", "tr");
                    editorEdit17.apply();
                    languagePickerActivity.a();
                }
                languagePickerActivity.f28551J.setAdapter((ListAdapter) new N(languagePickerActivity.f28549H, languagePickerActivity.f28550I, 0));
                languagePickerActivity.f28551J.setOnItemClickListener(new C0514f(languagePickerActivity, 10));
                break;
            case 11:
                z4.q0.q().f(i8, "ORT_SELECTED_POS");
                Y y7 = (Y) obj;
                y7.f10253b.f28727d1.invalidateViews();
                MultiScreenActivityEXO multiScreenActivityEXO = y7.f10253b;
                if (i8 == 0) {
                    multiScreenActivityEXO.f28755r1 = "99999";
                    multiScreenActivityEXO.f28753q1 = multiScreenActivityEXO.f28668G.getString(R.string.xc_favorites);
                    z4.q0.q().g("ORT_CAT_NAME", multiScreenActivityEXO.f28753q1);
                } else {
                    multiScreenActivityEXO.f28755r1 = (String) ((HashMap) multiScreenActivityEXO.f28745m1.get(i8)).get("category_id");
                    multiScreenActivityEXO.f28753q1 = (String) ((HashMap) multiScreenActivityEXO.f28745m1.get(i8)).get("category_name");
                    z4.q0.q().g("ORT_CAT_NAME", multiScreenActivityEXO.f28753q1);
                }
                new Y(multiScreenActivityEXO, 1).execute(new Void[0]);
                break;
            case 12:
                i(i8);
                break;
            case 13:
                j(view, i8);
                break;
            case 14:
                ImageView imageView = (ImageView) view.findViewById(R.id.img_lock);
                try {
                    String string3 = ((V0) obj).f10242b.f28827W.getJSONObject(i8).getString("category_id");
                    if (((V0) obj).f10242b.f28814J.N(string3, "SERIES", ((V0) obj).f10242b.f28813I.f25478a).equals("yes")) {
                        ((V0) obj).f10242b.f28814J.O(string3, "SERIES");
                        imageView.setVisibility(4);
                    } else {
                        ((V0) obj).f10242b.f28814J.k(string3, "SERIES", ((V0) obj).f10242b.f28813I.f25478a);
                        imageView.setVisibility(0);
                        ((V0) obj).f10242b.f28820P.invalidateViews();
                    }
                } catch (JSONException unused) {
                    return;
                }
                break;
            case 15:
                ImageView imageView2 = (ImageView) view.findViewById(R.id.img_lock);
                try {
                    String string4 = ((V0) obj).f10242b.f28825U.getJSONObject(i8).getString("category_id");
                    if (((V0) obj).f10242b.f28814J.N(string4, "TV", ((V0) obj).f10242b.f28813I.f25478a).equals("yes")) {
                        ((V0) obj).f10242b.f28814J.O(string4, "TV");
                        imageView2.setVisibility(4);
                    } else {
                        ((V0) obj).f10242b.f28814J.k(string4, "TV", ((V0) obj).f10242b.f28813I.f25478a);
                        imageView2.setVisibility(0);
                        ((V0) obj).f10242b.f28818N.invalidateViews();
                    }
                    ORPlayerMainActivity.f28777I0 = true;
                } catch (JSONException unused2) {
                    return;
                }
                break;
            case 16:
                ImageView imageView3 = (ImageView) view.findViewById(R.id.img_lock);
                try {
                    String string5 = ((V0) obj).f10242b.f28826V.getJSONObject(i8).getString("category_id");
                    if (((V0) obj).f10242b.f28814J.N(string5, "VOD", ((V0) obj).f10242b.f28813I.f25478a).equals("yes")) {
                        ((V0) obj).f10242b.f28814J.O(string5, "VOD");
                        imageView3.setVisibility(4);
                    } else {
                        ((V0) obj).f10242b.f28814J.k(string5, "VOD", ((V0) obj).f10242b.f28813I.f25478a);
                        imageView3.setVisibility(0);
                        ((V0) obj).f10242b.f28819O.invalidateViews();
                    }
                } catch (JSONException unused3) {
                    return;
                }
                break;
            case 17:
                try {
                    String string6 = ((ProgramRemindersActivity) obj).f29034L.getJSONObject(i8).getString("id");
                    String str = ((ProgramRemindersActivity) obj).f29034L.getJSONObject(i8).getString("channel_name") + " - " + ((ProgramRemindersActivity) obj).f29034L.getJSONObject(i8).getString("show_name");
                    String string7 = ((ProgramRemindersActivity) obj).f29034L.getJSONObject(i8).getString("channel_name");
                    String string8 = ((ProgramRemindersActivity) obj).f29034L.getJSONObject(i8).getString("category_id");
                    String string9 = ((ProgramRemindersActivity) obj).f29034L.getJSONObject(i8).getString("category_name");
                    String string10 = ((ProgramRemindersActivity) obj).f29034L.getJSONObject(i8).getString("stream_id");
                    String string11 = ((ProgramRemindersActivity) obj).f29034L.getJSONObject(i8).getString("direct_source");
                    String strValueOf = String.valueOf(i8);
                    z4.q0.q().g("ORT_CAT_NAME", string9);
                    ((ProgramRemindersActivity) obj).f29037O = new String[]{string6, string7, str, string8, string9, string10, string11, strValueOf};
                    ProgramRemindersActivity.a((ProgramRemindersActivity) obj, str, string6);
                } catch (JSONException e8) {
                    e8.printStackTrace();
                    return;
                }
                break;
            default:
                z1 z1Var = (z1) obj;
                HashMap map = (HashMap) z1Var.f10536c.get(i8);
                z1Var.f10537d = map;
                boolean zEquals = ((String) map.get("name")).equals(z4.q0.q().c("ORT_PROFILE", "Default (XC)"));
                Object obj2 = z1Var.f10539f;
                if (zEquals) {
                    UsersHistoryActivity.b((UsersHistoryActivity) obj2, z1Var.f10535b.getString(R.string.xc_profile_in_use));
                } else if (((String) z1Var.f10537d.get("name")).contains("PANEL 1") || ((String) z1Var.f10537d.get("name")).contains("PANEL 2") || ((String) z1Var.f10537d.get("name")).contains("PANEL 3") || ((String) z1Var.f10537d.get("name")).contains("PANEL 4") || ((String) z1Var.f10537d.get("name")).contains("PANEL 5")) {
                    ListView listView = UsersHistoryActivity.f29223Z;
                    ((UsersHistoryActivity) obj2).getClass();
                    ((UsersHistoryActivity) obj2).f29246Y = (String) z1Var.f10537d.get("name");
                    ((UsersHistoryActivity) obj2).f29245X = (String) z1Var.f10537d.get("username");
                    ((UsersHistoryActivity) obj2).getClass();
                    ((UsersHistoryActivity) obj2).getClass();
                    ((UsersHistoryActivity) obj2).f29230I = ((SharedPreferences) z1Var.f10538e).edit();
                    if (((String) z1Var.f10537d.get("name")).contains("PANEL 1")) {
                        ((UsersHistoryActivity) obj2).f29230I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "1");
                    } else if (((String) z1Var.f10537d.get("name")).contains("PANEL 2")) {
                        ((UsersHistoryActivity) obj2).f29230I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "2");
                    } else if (((String) z1Var.f10537d.get("name")).contains("PANEL 3")) {
                        ((UsersHistoryActivity) obj2).f29230I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "3");
                    } else if (((String) z1Var.f10537d.get("name")).contains("PANEL 4")) {
                        ((UsersHistoryActivity) obj2).f29230I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "4");
                    } else if (((String) z1Var.f10537d.get("name")).contains("PANEL 5")) {
                        ((UsersHistoryActivity) obj2).f29230I.putString("XCIPTV_WHICH_PORTAL_SELECTED", "5");
                    } else {
                        ((UsersHistoryActivity) obj2).f29230I.remove("XCIPTV_WHICH_PORTAL_SELECTED").commit();
                    }
                    ((UsersHistoryActivity) obj2).f29230I.apply();
                    Methods.Y(z1Var.f10535b, OTRServices.class);
                    UsersHistoryActivity.c((UsersHistoryActivity) obj2, (String) z1Var.f10537d.get("name"), ((UsersHistoryActivity) obj2).f29245X, "no");
                } else {
                    ListView listView2 = UsersHistoryActivity.f29223Z;
                    ((UsersHistoryActivity) obj2).getClass();
                    ((UsersHistoryActivity) obj2).f29246Y = (String) z1Var.f10537d.get("name");
                    ((UsersHistoryActivity) obj2).f29245X = (String) z1Var.f10537d.get("username");
                    ((UsersHistoryActivity) obj2).getClass();
                    ((UsersHistoryActivity) obj2).getClass();
                    Methods.Y(z1Var.f10535b, OTRServices.class);
                    UsersHistoryActivity.c((UsersHistoryActivity) obj2, (String) z1Var.f10537d.get("name"), ((UsersHistoryActivity) obj2).f29245X, "yes");
                }
                break;
        }
    }
}
