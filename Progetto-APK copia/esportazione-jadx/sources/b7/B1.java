package b7;

import android.os.AsyncTask;
import android.util.Log;
import android.widget.ListAdapter;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pe.hf.black20.R;
import pe.hf.black20.SeriesActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class B1 extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SeriesActivity f9970b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ B1(SeriesActivity seriesActivity) {
        this(seriesActivity, 0);
        this.f9969a = 0;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x03a9  */
    public final void a() throws Throwable {
        String string;
        int i8 = this.f9969a;
        String str = "container_extension";
        SeriesActivity seriesActivity = this.f9970b;
        switch (i8) {
            case 0:
                String str2 = "container_extension";
                seriesActivity.f29103T = new ArrayList();
                seriesActivity.f29104U = new ArrayList();
                SeriesActivity.f29082C0 = new JSONArray();
                String strC = !U2.z("ORT_SERIES_PORTAL", "no", "no") ? z4.q0.q().c("ORT_SERIES_PORTAL", "no") : Encrypt.a(SeriesActivity.f29080A0.f25482e);
                String strE = new F2.G(5).E(strC + "/player_api.php?username=" + Encrypt.a(SeriesActivity.f29080A0.f25480c) + "&password=" + Encrypt.a(SeriesActivity.f29080A0.f25481d) + "&action=get_series_info&series_id=" + seriesActivity.f29110a0);
                if (strE != null && !strE.isEmpty()) {
                    try {
                        JSONObject jSONObject = new JSONObject(strE);
                        seriesActivity.f29128s0 = jSONObject.getJSONObject("info");
                        if (jSONObject.getString("episodes").startsWith("[")) {
                            seriesActivity.f29129t0 = "arr";
                            SeriesActivity.f29083D0 = new JSONArray();
                            SeriesActivity.f29083D0 = jSONObject.getJSONArray("episodes");
                            for (int i9 = 0; i9 < SeriesActivity.f29083D0.length(); i9++) {
                                String string2 = SeriesActivity.f29083D0.getJSONArray(i9).getJSONObject(0).getString("season");
                                HashMap map = new HashMap();
                                map.put("season_no", string2);
                                seriesActivity.f29104U.add(map);
                                if (seriesActivity.f29125p0.equals("0")) {
                                    seriesActivity.f29125p0 = string2;
                                }
                            }
                            int i10 = 0;
                            SeriesActivity.f29082C0 = null;
                            SeriesActivity.f29082C0 = new JSONArray();
                            SeriesActivity.f29082C0 = SeriesActivity.f29083D0.getJSONArray(seriesActivity.f29130u0);
                            while (i10 < SeriesActivity.f29082C0.length()) {
                                JSONObject jSONObject2 = SeriesActivity.f29082C0.getJSONObject(i10);
                                try {
                                    if (jSONObject2.has("info")) {
                                        jSONObject2.getJSONObject("info");
                                    }
                                } catch (Exception unused) {
                                }
                                HashMap map2 = new HashMap();
                                map2.put("id", jSONObject2.getString("id"));
                                map2.put("episode_num", jSONObject2.getString("episode_num"));
                                map2.put("title", jSONObject2.getString("title"));
                                String str3 = str2;
                                map2.put(str3, jSONObject2.getString(str3));
                                map2.put("season", jSONObject2.getString("season"));
                                map2.put("plot", HttpUrl.FRAGMENT_ENCODE_SET);
                                map2.put("direct_source", jSONObject2.getString("direct_source"));
                                seriesActivity.f29103T.add(map2);
                                i10++;
                                str2 = str3;
                            }
                        } else {
                            seriesActivity.f29129t0 = "obj";
                            seriesActivity.f29102S = new JSONObject();
                            JSONObject jSONObject3 = jSONObject.getJSONObject("episodes");
                            seriesActivity.f29102S = jSONObject3;
                            JSONArray jSONArrayNames = jSONObject3.names();
                            int i11 = 0;
                            while (i11 < jSONArrayNames.length()) {
                                String string3 = jSONArrayNames.get(i11).toString();
                                HashMap map3 = new HashMap();
                                map3.put("season_no", string3);
                                JSONArray jSONArray = jSONArrayNames;
                                seriesActivity.f29104U.add(map3);
                                if (seriesActivity.f29125p0.equals("0")) {
                                    seriesActivity.f29125p0 = string3;
                                }
                                i11++;
                                jSONArrayNames = jSONArray;
                            }
                            SeriesActivity.f29082C0 = null;
                            SeriesActivity.f29082C0 = new JSONArray();
                            SeriesActivity.f29082C0 = seriesActivity.f29102S.getJSONArray(seriesActivity.f29125p0);
                            for (int i12 = 0; i12 < SeriesActivity.f29082C0.length(); i12++) {
                                JSONObject jSONObject4 = SeriesActivity.f29082C0.getJSONObject(i12);
                                if (seriesActivity.f29125p0.equals(jSONObject4.getString("season"))) {
                                    try {
                                        if (jSONObject4.has("info")) {
                                            JSONObject jSONObject5 = jSONObject4.getJSONObject("info");
                                            if (jSONObject5.has("plot")) {
                                                string = jSONObject5.getString("plot");
                                            } else {
                                                string = HttpUrl.FRAGMENT_ENCODE_SET;
                                            }
                                        } else {
                                            string = HttpUrl.FRAGMENT_ENCODE_SET;
                                        }
                                        break;
                                    } catch (Exception unused2) {
                                    }
                                    HashMap map4 = new HashMap();
                                    map4.put("id", jSONObject4.getString("id"));
                                    map4.put("episode_num", jSONObject4.getString("episode_num"));
                                    map4.put("title", jSONObject4.getString("title"));
                                    map4.put(str2, jSONObject4.getString(str2));
                                    map4.put("season", jSONObject4.getString("season"));
                                    map4.put("plot", string);
                                    map4.put("direct_source", jSONObject4.getString("direct_source"));
                                    seriesActivity.f29103T.add(map4);
                                }
                            }
                        }
                    } catch (JSONException unused3) {
                        return;
                    }
                    break;
                }
                break;
            case 1:
                seriesActivity.f29103T = null;
                seriesActivity.f29103T = new ArrayList();
                SeriesActivity.f29082C0 = new JSONArray();
                String strE2 = new F2.G(5).E((Encrypt.a(SeriesActivity.f29080A0.f25482e) + "/server/get_series_episode?token=" + Encrypt.a(seriesActivity.f29091H.getString("token", null)) + "&name=" + seriesActivity.f29109Z + "&index=" + seriesActivity.f29107X).replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET));
                if (strE2.length() != 0) {
                    String[] strArrSplit = strE2.split("\\n");
                    int i13 = 0;
                    while (i13 < strArrSplit.length) {
                        HashMap mapM = p000a.r.m("id", HttpUrl.FRAGMENT_ENCODE_SET, "episode_num", HttpUrl.FRAGMENT_ENCODE_SET);
                        mapM.put("title", strArrSplit[i13]);
                        mapM.put(str, HttpUrl.FRAGMENT_ENCODE_SET);
                        mapM.put("season", String.valueOf(seriesActivity.f29107X));
                        String strReplaceAll = (seriesActivity.f29106W + ":" + seriesActivity.f29105V + MqttTopic.TOPIC_LEVEL_SEPARATOR).replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
                        String strA = Encrypt.a(SeriesActivity.f29080A0.f25480c);
                        String strA2 = Encrypt.a(SeriesActivity.f29080A0.f25481d);
                        StringBuilder sbO = U2.o(strReplaceAll);
                        p148t.a.h(sbO, strArrSplit[i13], "?u=", strA, ":p=");
                        sbO.append(strA2);
                        mapM.put("direct_source", sbO.toString().replaceAll("\n", HttpUrl.FRAGMENT_ENCODE_SET).replace("\r", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll(" ", "%20"));
                        seriesActivity.f29103T.add(mapM);
                        i13++;
                        strArrSplit = strArrSplit;
                        str = str;
                    }
                    int i14 = Integer.parseInt(seriesActivity.f29118i0);
                    seriesActivity.f29104U = null;
                    seriesActivity.f29104U = new ArrayList();
                    for (int i15 = 1; i15 < i14 + 1; i15++) {
                        HashMap map5 = new HashMap();
                        map5.put("season_no", String.valueOf(i15));
                        seriesActivity.f29104U.add(map5);
                    }
                }
                break;
            default:
                seriesActivity.f29103T = new ArrayList();
                seriesActivity.f29104U = new ArrayList();
                SeriesActivity.f29082C0 = new JSONArray();
                try {
                    String[] strArrSplit2 = new F2.G(5).E((Encrypt.a(SeriesActivity.f29080A0.f25482e) + "/server/get_series_profile?token=" + Encrypt.a(seriesActivity.f29091H.getString("token", null)) + "&name=" + seriesActivity.f29109Z).replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET)).split("\\n");
                    seriesActivity.f29117h0 = strArrSplit2[2].replaceAll("img=", HttpUrl.FRAGMENT_ENCODE_SET);
                    seriesActivity.f29116g0 = strArrSplit2[3].replaceAll("rating=", HttpUrl.FRAGMENT_ENCODE_SET);
                    seriesActivity.f29111b0 = strArrSplit2[4].replaceAll("description=", HttpUrl.FRAGMENT_ENCODE_SET);
                    strArrSplit2[5].replaceAll("season_no=", HttpUrl.FRAGMENT_ENCODE_SET);
                    seriesActivity.f29115f0 = strArrSplit2[6].replaceAll("released_date=", HttpUrl.FRAGMENT_ENCODE_SET);
                } catch (Exception unused4) {
                    Log.d("XCIPTV_TAG", "EZS Sereis Profile Exception");
                }
                break;
        }
    }

    /* JADX INFO: Removed unreachable split cross block B:42:0x0177 */
    public final void b(Void r11) {
        int i8 = this.f9969a;
        SeriesActivity seriesActivity = this.f9970b;
        switch (i8) {
            case 0:
                super.onPostExecute(r11);
                try {
                    String string = seriesActivity.f29128s0.getJSONArray("backdrop_path").get(0).toString();
                    if (string.length() > 10) {
                        SeriesActivity seriesActivity2 = seriesActivity.f29090G;
                        try {
                            boolean zR = Methods.R(seriesActivity2);
                            N2.a aVar = seriesActivity.f29131v0;
                            if (zR) {
                                ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(seriesActivity2).n(string).g()).H(G2.c.b(aVar)).f(R.drawable.corner_shadow)).m(R.drawable.corner_shadow)).F(seriesActivity.f29127r0);
                            } else {
                                ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(seriesActivity2).n(string).g()).H(G2.c.b(aVar)).f(R.drawable.bg2)).m(R.drawable.bg2)).F(seriesActivity.f29127r0);
                            }
                        } catch (Exception unused) {
                            Log.d("XCIPTV_TAG", "Picasso Crashed");
                        }
                    }
                    break;
                } catch (JSONException unused2) {
                }
                seriesActivity.f29092I.setVisibility(8);
                SeriesActivity.f29081B0.setAdapter((ListAdapter) new C0549t(1, seriesActivity, seriesActivity.f29103T));
                SeriesActivity.f29081B0.requestFocus();
                seriesActivity.c();
                SeriesActivity.a(seriesActivity);
                break;
            case 1:
                super.onPostExecute(r11);
                seriesActivity.f29092I.setVisibility(8);
                SeriesActivity.f29081B0.setAdapter((ListAdapter) new C0549t(1, seriesActivity, seriesActivity.f29103T));
                SeriesActivity.f29081B0.requestFocus();
                if (!seriesActivity.f29108Y) {
                    seriesActivity.c();
                }
                break;
            default:
                super.onPostExecute(r11);
                seriesActivity.f29092I.setVisibility(8);
                if (seriesActivity.f29117h0.toLowerCase().contains("file")) {
                    seriesActivity.f29117h0 = seriesActivity.f29117h0.replaceAll("file:/", HttpUrl.FRAGMENT_ENCODE_SET);
                    seriesActivity.f29117h0 = Encrypt.a(SeriesActivity.f29080A0.f25482e) + seriesActivity.f29117h0;
                }
                SeriesActivity seriesActivity3 = seriesActivity.f29090G;
                try {
                    boolean zR2 = Methods.R(seriesActivity3);
                    N2.a aVar2 = seriesActivity.f29131v0;
                    if (zR2) {
                        ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(seriesActivity3).n(seriesActivity.f29117h0).b()).H(G2.c.b(aVar2)).f(R.drawable.corner_shadow)).m(R.drawable.corner_shadow)).F(seriesActivity.f29127r0);
                    } else {
                        ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(seriesActivity3).n(seriesActivity.f29117h0).b()).H(G2.c.b(aVar2)).f(R.drawable.bg2)).m(R.drawable.bg2)).F(seriesActivity.f29127r0);
                    }
                } catch (Exception unused3) {
                    Log.d("XCIPTV_TAG", "Picasso Crashed");
                }
                seriesActivity.f29095L.setText(seriesActivity.f29111b0);
                seriesActivity.f29098O.setText(seriesActivity.f29114e0);
                seriesActivity.f29100Q.setText(seriesActivity.f29116g0);
                seriesActivity.f29099P.setText(seriesActivity.f29115f0);
                SeriesActivity.a(seriesActivity);
                new B1(seriesActivity, (Object) null).execute(new Void[0]);
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) throws Throwable {
        switch (this.f9969a) {
            case 0:
                a();
                break;
            case 1:
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
        switch (this.f9969a) {
            case 0:
                b((Void) obj);
                break;
            case 1:
                b((Void) obj);
                break;
            default:
                b((Void) obj);
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        int i8 = this.f9969a;
        SeriesActivity seriesActivity = this.f9970b;
        switch (i8) {
            case 0:
                super.onPreExecute();
                seriesActivity.f29092I.setVisibility(0);
                break;
            case 1:
                super.onPreExecute();
                seriesActivity.f29092I.setVisibility(0);
                String[] strArrSplit = Encrypt.a(SeriesActivity.f29080A0.f25482e).split(":");
                seriesActivity.f29106W = strArrSplit[0] + ":" + strArrSplit[1];
                seriesActivity.f29105V = seriesActivity.f29091H.getString("streamingPort", null);
                break;
            default:
                super.onPreExecute();
                seriesActivity.f29092I.setVisibility(0);
                break;
        }
    }

    public /* synthetic */ B1(SeriesActivity seriesActivity, int i8) {
        this.f9969a = i8;
        this.f9970b = seriesActivity;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ B1(SeriesActivity seriesActivity, p000a.r rVar) {
        this(seriesActivity, 2);
        this.f9969a = 2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ B1(SeriesActivity seriesActivity, Object obj) {
        this(seriesActivity, 1);
        this.f9969a = 1;
    }
}
