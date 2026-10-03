package b7;

import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ListAdapter;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.h1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class AsyncTaskC0522h1 extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlayStreamEPGActivity f10310b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0522h1(PlayStreamEPGActivity playStreamEPGActivity) {
        this(playStreamEPGActivity, 0);
        this.f10309a = 0;
    }

    public final void a() {
        int i8 = this.f10309a;
        PlayStreamEPGActivity playStreamEPGActivity = this.f10310b;
        switch (i8) {
            case 0:
                ArrayList arrayListU = z4.q0.u(playStreamEPGActivity.f28906e0, false, "all", playStreamEPGActivity.f28903c2, z4.q0.q().c("ORT_program_reminder_Category_id", HttpUrl.FRAGMENT_ENCODE_SET));
                for (int i9 = 0; i9 < arrayListU.size(); i9++) {
                    if (((String) ((HashMap) arrayListU.get(i9)).get("name")).equals(z4.q0.q().c("ORT_program_reminder_Channel_name", HttpUrl.FRAGMENT_ENCODE_SET))) {
                        z4.q0.q().f(i9, "ORT_program_reminder_channel_pos");
                    }
                }
                break;
            default:
                playStreamEPGActivity.f28939p0 = null;
                playStreamEPGActivity.f28939p0 = new JSONArray();
                Log.d("XCIPTV_TAG", "------------category_id[cat_position]--" + playStreamEPGActivity.f28951t0[playStreamEPGActivity.f28855I1]);
                if (playStreamEPGActivity.f28951t0[playStreamEPGActivity.f28855I1].equals("99999")) {
                    playStreamEPGActivity.f28858J1.clear();
                    Object obj = "tv_archive_duration";
                    Object obj2 = "direct_source";
                    playStreamEPGActivity.f28858J1 = playStreamEPGActivity.f28863L0.r0(playStreamEPGActivity.f28903c2, z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
                    playStreamEPGActivity.f28861K1 = new ArrayList();
                    int i10 = 0;
                    while (i10 < playStreamEPGActivity.f28858J1.size()) {
                        HashMap map = new HashMap();
                        map.put("num", ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25429a);
                        map.put("name", ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25430b);
                        map.put("stream_type", ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25431c);
                        map.put("stream_id", ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25432d);
                        map.put("stream_icon", ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25433e);
                        map.put("epg_channel_id", ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25434f);
                        map.put("added", ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25435g);
                        map.put("category_id", ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25436h);
                        map.put("custom_sid", ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25437i);
                        map.put("tv_archive", ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25438j);
                        Object obj3 = obj2;
                        map.put(obj3, ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25439k);
                        Object obj4 = obj;
                        map.put(obj4, ((h7.d) playStreamEPGActivity.f28858J1.get(i10)).f25440l);
                        playStreamEPGActivity.f28861K1.add(map);
                        i10++;
                        obj2 = obj3;
                        obj = obj4;
                    }
                    playStreamEPGActivity.f28939p0 = new JSONArray((Collection) playStreamEPGActivity.f28861K1);
                } else if (playStreamEPGActivity.f28951t0[playStreamEPGActivity.f28855I1].equals("99998")) {
                    ArrayList arrayListL = Methods.L(playStreamEPGActivity.f28906e0);
                    playStreamEPGActivity.f28847F2 = arrayListL;
                    if (arrayListL.size() > 0) {
                        playStreamEPGActivity.f28861K1 = playStreamEPGActivity.f28847F2;
                        playStreamEPGActivity.f28939p0 = new JSONArray((Collection) playStreamEPGActivity.f28861K1);
                    } else {
                        playStreamEPGActivity.f28861K1 = null;
                        playStreamEPGActivity.f28861K1 = new ArrayList();
                        playStreamEPGActivity.f28939p0 = null;
                        playStreamEPGActivity.f28939p0 = new JSONArray();
                    }
                } else {
                    playStreamEPGActivity.f28858J1.clear();
                    Object obj5 = "tv_archive_duration";
                    playStreamEPGActivity.f28858J1 = playStreamEPGActivity.f28863L0.l0("all", playStreamEPGActivity.f28951t0[playStreamEPGActivity.f28855I1], playStreamEPGActivity.f28903c2);
                    playStreamEPGActivity.f28861K1 = new ArrayList();
                    int i11 = 0;
                    while (i11 < playStreamEPGActivity.f28858J1.size()) {
                        HashMap map2 = new HashMap();
                        map2.put("num", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25429a);
                        map2.put("name", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25430b);
                        map2.put("stream_type", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25431c);
                        map2.put("stream_id", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25432d);
                        map2.put("stream_icon", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25433e);
                        map2.put("epg_channel_id", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25434f);
                        map2.put("added", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25435g);
                        map2.put("category_id", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25436h);
                        map2.put("custom_sid", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25437i);
                        map2.put("tv_archive", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25438j);
                        map2.put("direct_source", ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25439k);
                        Object obj6 = obj5;
                        map2.put(obj6, ((h7.d) playStreamEPGActivity.f28858J1.get(i11)).f25440l);
                        playStreamEPGActivity.f28861K1.add(map2);
                        i11++;
                        obj5 = obj6;
                    }
                    playStreamEPGActivity.f28939p0 = new JSONArray((Collection) playStreamEPGActivity.f28861K1);
                }
                break;
        }
    }

    public final void b(Void r10) {
        int i8 = this.f10309a;
        PlayStreamEPGActivity playStreamEPGActivity = this.f10310b;
        switch (i8) {
            case 0:
                super.onPostExecute(r10);
                String strA = Encrypt.a(playStreamEPGActivity.f28872O0.f25480c);
                String strA2 = Encrypt.a(playStreamEPGActivity.f28872O0.f25481d);
                playStreamEPGActivity.V();
                playStreamEPGActivity.W();
                playStreamEPGActivity.finish();
                if (U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                    playStreamEPGActivity.sendBroadcast(new Intent("SeriesActivity_finish_alert"));
                }
                z4.q0.q().g("ORT_WHICH_CAT", "TV");
                z4.q0.q().g("ORT_CAT_NAME", z4.q0.q().c("ORT_program_reminder_Category_name", HttpUrl.FRAGMENT_ENCODE_SET));
                PlayStreamEPGActivity playStreamEPGActivity2 = playStreamEPGActivity.f28906e0;
                Intent intent = new Intent(playStreamEPGActivity2, (Class<?>) PlayStreamEPGActivity.class);
                if (U2.z("ORT_program_reminder_Direct_source", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(Encrypt.a(playStreamEPGActivity.f28872O0.f25482e));
                    sb.append("/live/");
                    sb.append(strA);
                    sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                    StringBuilder sbO = U2.o(p000a.r.j(sb, strA2, MqttTopic.TOPIC_LEVEL_SEPARATOR));
                    U2.x("ORT_program_reminder_Stream_id", HttpUrl.FRAGMENT_ENCODE_SET, sbO, ".");
                    intent.putExtra("streamurl", U2.h(playStreamEPGActivity.f28909f0, "streamFormat", null, sbO));
                } else {
                    intent.putExtra("streamurl", z4.q0.q().c("ORT_program_reminder_Direct_source", HttpUrl.FRAGMENT_ENCODE_SET));
                }
                intent.putExtra("name", z4.q0.q().c("ORT_program_reminder_Channel_name", HttpUrl.FRAGMENT_ENCODE_SET));
                intent.putExtra("stream_id", z4.q0.q().c("ORT_program_reminder_Stream_id", HttpUrl.FRAGMENT_ENCODE_SET));
                intent.putExtra("position", String.valueOf(z4.q0.q().b("ORT_program_reminder_channel_pos")));
                playStreamEPGActivity2.startActivity(intent);
                break;
            default:
                super.onPostExecute(r10);
                playStreamEPGActivity.f28842E0.setText(playStreamEPGActivity.f28954u0[playStreamEPGActivity.f28855I1]);
                if (!z4.q0.q().c("ORT_WHICH_CAT", "TV").equals("VOD")) {
                    playStreamEPGActivity.f28945r0.setAdapter((ListAdapter) new C0525i1(playStreamEPGActivity, playStreamEPGActivity.f28861K1));
                    int i9 = 1;
                    playStreamEPGActivity.f28945r0.setOnItemLongClickListener(new K(this, i9));
                    playStreamEPGActivity.f28945r0.setOnItemClickListener(new C0554v0(this, i9));
                    playStreamEPGActivity.f28945r0.setOnItemSelectedListener(new p086l.G0(this, 2));
                }
                try {
                    playStreamEPGActivity.f28841D2 = playStreamEPGActivity.f28939p0.getJSONObject(playStreamEPGActivity.f28875P0).getString("stream_icon");
                    break;
                } catch (JSONException unused) {
                }
                if (playStreamEPGActivity.f28936o0) {
                    playStreamEPGActivity.f28936o0 = false;
                }
                playStreamEPGActivity.f28918i0 = playStreamEPGActivity.f28915h0;
                if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes") || U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
                    if (z4.q0.q().b("ORT_PROCESS_STATUS") == 0) {
                        playStreamEPGActivity.N(playStreamEPGActivity.f28863L0.H0(playStreamEPGActivity.f28924k0), "no");
                    }
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
                    playStreamEPGActivity.P();
                    playStreamEPGActivity.M();
                }
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        switch (this.f10309a) {
            case 0:
                a();
                break;
            default:
                a();
                break;
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        switch (this.f10309a) {
            case 0:
                b((Void) obj);
                break;
            default:
                b((Void) obj);
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        switch (this.f10309a) {
            case 0:
                super.onPreExecute();
                break;
            default:
                super.onPreExecute();
                break;
        }
    }

    public /* synthetic */ AsyncTaskC0522h1(PlayStreamEPGActivity playStreamEPGActivity, int i8) {
        this.f10309a = i8;
        this.f10310b = playStreamEPGActivity;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0522h1(PlayStreamEPGActivity playStreamEPGActivity, Object obj) {
        this(playStreamEPGActivity, 1);
        this.f10309a = 1;
    }
}
