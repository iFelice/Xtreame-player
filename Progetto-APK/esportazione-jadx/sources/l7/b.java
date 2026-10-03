package l7;

import F2.G;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import com.google.protobuf.U2;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.r;
import p123p6.m;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.updatecontents.EZServerUpdateContents;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EZServerUpdateContents f26637b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(EZServerUpdateContents eZServerUpdateContents) {
        this(eZServerUpdateContents, 1);
        this.f26636a = 1;
    }

    public final void a() throws Throwable {
        String str;
        String str2;
        int i8 = this.f26636a;
        String str3 = "%20";
        EZServerUpdateContents eZServerUpdateContents = this.f26637b;
        switch (i8) {
            case 0:
                try {
                    String strE = new G(5).E((Encrypt.a(eZServerUpdateContents.f29350J.f25482e) + "/server/inquery_server_httpport?token=" + Encrypt.a(eZServerUpdateContents.f29347G.getString("token", null))).replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET));
                    eZServerUpdateContents.f29364X = strE;
                    eZServerUpdateContents.f29364X = strE.replaceAll("httpport=", HttpUrl.FRAGMENT_ENCODE_SET);
                } catch (Exception unused) {
                    return;
                }
                break;
            case 1:
            default:
                String str4 = "name=";
                String str5 = "CH=";
                eZServerUpdateContents.f29353M = null;
                eZServerUpdateContents.f29353M = new ArrayList();
                eZServerUpdateContents.f29359S = null;
                eZServerUpdateContents.f29359S = new JSONArray();
                StringBuilder sb = new StringBuilder();
                Object obj = "category_id";
                sb.append(Encrypt.a(eZServerUpdateContents.f29350J.f25482e));
                sb.append("/server/get_channel_list?token=");
                String str6 = "category=";
                sb.append(Encrypt.a(eZServerUpdateContents.f29347G.getString("token", null)));
                sb.append("&mine=1");
                try {
                    String[] strArrSplit = new G(5).E(sb.toString().replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET)).replaceAll("CH=", "channel--CH=").split("channel--");
                    int i9 = 1;
                    while (i9 < strArrSplit.length) {
                        String[] strArrSplit2 = strArrSplit[i9].split("\\n");
                        HashMap map = new HashMap();
                        String str7 = str3;
                        map.put("num", strArrSplit2[0].replaceAll(str5, HttpUrl.FRAGMENT_ENCODE_SET));
                        map.put("stream_id", String.valueOf(i9));
                        map.put("name", strArrSplit2[1].replaceAll(str4, HttpUrl.FRAGMENT_ENCODE_SET));
                        map.put("stream_type", "live");
                        map.put("epg_channel_id", HttpUrl.FRAGMENT_ENCODE_SET);
                        map.put("added", HttpUrl.FRAGMENT_ENCODE_SET);
                        map.put("custom_sid", "0");
                        map.put("tv_archive", HttpUrl.FRAGMENT_ENCODE_SET);
                        map.put("tv_archive_duration", HttpUrl.FRAGMENT_ENCODE_SET);
                        String[] strArrSplit3 = strArrSplit[i9].split("icon=")[1].split("\\n");
                        if (strArrSplit3.length > 0) {
                            str2 = strArrSplit3[0];
                            if (str2.toLowerCase().contains("file")) {
                                str2 = Encrypt.a(eZServerUpdateContents.f29350J.f25482e) + str2.replaceAll("file:/", HttpUrl.FRAGMENT_ENCODE_SET);
                            }
                        } else {
                            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                        }
                        map.put("stream_icon", str2);
                        String str8 = str6;
                        Object obj2 = obj;
                        map.put(obj2, strArrSplit2[4].replaceAll(str8, HttpUrl.FRAGMENT_ENCODE_SET));
                        String[] strArr = strArrSplit;
                        map.put("status", strArrSplit2[6].replaceAll("status=", HttpUrl.FRAGMENT_ENCODE_SET));
                        String strReplaceAll = strArrSplit2[1].replaceAll(str4, HttpUrl.FRAGMENT_ENCODE_SET);
                        String strA = Encrypt.a(eZServerUpdateContents.f29350J.f25480c);
                        String strA2 = Encrypt.a(eZServerUpdateContents.f29350J.f25481d);
                        StringBuilder sb2 = new StringBuilder();
                        String str9 = str4;
                        sb2.append(eZServerUpdateContents.f29365Y);
                        sb2.append(":");
                        sb2.append(eZServerUpdateContents.f29364X);
                        sb2.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                        sb2.append(strReplaceAll);
                        sb2.append("?u=");
                        sb2.append(strA);
                        sb2.append(":p=");
                        sb2.append(strA2);
                        map.put("direct_source", sb2.toString().replaceAll("\n", HttpUrl.FRAGMENT_ENCODE_SET).replace("\r", HttpUrl.FRAGMENT_ENCODE_SET).replaceAll(" ", str7));
                        eZServerUpdateContents.f29353M.add(map);
                        i9++;
                        str5 = str5;
                        strArrSplit = strArr;
                        obj = obj2;
                        str3 = str7;
                        str4 = str9;
                        str6 = str8;
                        break;
                    }
                } catch (Exception unused2) {
                }
                eZServerUpdateContents.f29359S = new JSONArray((Collection) eZServerUpdateContents.f29353M);
                break;
            case 2:
                eZServerUpdateContents.f29355O = null;
                eZServerUpdateContents.f29355O = new ArrayList();
                eZServerUpdateContents.f29362V = null;
                eZServerUpdateContents.f29362V = new JSONArray();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(Encrypt.a(eZServerUpdateContents.f29350J.f25482e));
                sb3.append("/server/get_series?token=");
                Object obj3 = "category_id";
                sb3.append(Encrypt.a(eZServerUpdateContents.f29347G.getString("token", null)));
                sb3.append("&position=0&limit=1000");
                try {
                    String[] strArrSplit4 = new G(5).E(sb3.toString().replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET)).replaceAll("series=", "serieslist--series=").split("serieslist--");
                    int i10 = 1;
                    while (i10 < strArrSplit4.length) {
                        eZServerUpdateContents.f29366Z++;
                        String[] strArrSplit5 = strArrSplit4[i10].split("img=")[1].split("\\n");
                        if (strArrSplit5.length > 0) {
                            str = strArrSplit5[0];
                            if (str.toLowerCase().contains("file")) {
                                str = Encrypt.a(eZServerUpdateContents.f29350J.f25482e) + str.replaceAll("file:/", HttpUrl.FRAGMENT_ENCODE_SET);
                            }
                        } else {
                            str = HttpUrl.FRAGMENT_ENCODE_SET;
                        }
                        String[] strArrSplit6 = strArrSplit4[i10].split("\\n");
                        HashMap map2 = new HashMap();
                        map2.put("num", String.valueOf(eZServerUpdateContents.f29366Z));
                        map2.put("name", strArrSplit6[0].replaceAll("series=", HttpUrl.FRAGMENT_ENCODE_SET));
                        map2.put("series_id", String.valueOf(eZServerUpdateContents.f29366Z));
                        map2.put("cover", str);
                        map2.put("plot", HttpUrl.FRAGMENT_ENCODE_SET);
                        map2.put("cast", HttpUrl.FRAGMENT_ENCODE_SET);
                        map2.put("director", HttpUrl.FRAGMENT_ENCODE_SET);
                        map2.put("genre", HttpUrl.FRAGMENT_ENCODE_SET);
                        map2.put("releaseDate", HttpUrl.FRAGMENT_ENCODE_SET);
                        map2.put("last_modified", HttpUrl.FRAGMENT_ENCODE_SET);
                        map2.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                        map2.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                        map2.put("backdrop_path", HttpUrl.FRAGMENT_ENCODE_SET);
                        map2.put("youtube_trailer", HttpUrl.FRAGMENT_ENCODE_SET);
                        map2.put("episode_run_time", strArrSplit6[3].replaceAll("season_no=", HttpUrl.FRAGMENT_ENCODE_SET));
                        String strReplaceAll2 = strArrSplit6[1].replaceAll("category=", HttpUrl.FRAGMENT_ENCODE_SET);
                        Object obj4 = obj3;
                        map2.put(obj4, strReplaceAll2);
                        eZServerUpdateContents.f29355O.add(map2);
                        i10++;
                        obj3 = obj4;
                    }
                } catch (Exception unused3) {
                    Log.d("XCIPTV_TAG", "Get Series List Exception");
                }
                eZServerUpdateContents.f29362V = new JSONArray((Collection) eZServerUpdateContents.f29355O);
                break;
        }
    }

    public final void b() {
        int i8 = this.f26636a;
        EZServerUpdateContents eZServerUpdateContents = this.f26637b;
        switch (i8) {
            case 1:
                eZServerUpdateContents.f29358R = null;
                eZServerUpdateContents.f29363W = null;
                eZServerUpdateContents.f29358R = new ArrayList();
                eZServerUpdateContents.f29363W = new JSONArray();
                try {
                    String[] strArrSplit = new G(5).E((Encrypt.a(eZServerUpdateContents.f29350J.f25482e) + "/server/get_series_category?token=" + Encrypt.a(eZServerUpdateContents.f29347G.getString("token", null))).replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET)).split("\\n");
                    for (int i9 = 0; i9 < strArrSplit.length; i9++) {
                        HashMap map = new HashMap();
                        map.put("category_id", strArrSplit[i9].replaceAll("category=", HttpUrl.FRAGMENT_ENCODE_SET));
                        map.put("category_name", strArrSplit[i9].replaceAll("category=", HttpUrl.FRAGMENT_ENCODE_SET));
                        map.put("parent_id", "0");
                        eZServerUpdateContents.f29358R.add(map);
                    }
                } catch (Exception unused) {
                    Log.d("XCIPTV_TAG", "Get Series Cat List Exception");
                }
                eZServerUpdateContents.f29363W = new JSONArray((Collection) eZServerUpdateContents.f29358R);
                break;
            case 2:
            default:
                eZServerUpdateContents.f29357Q = null;
                eZServerUpdateContents.f29361U = null;
                eZServerUpdateContents.f29357Q = new ArrayList();
                eZServerUpdateContents.f29361U = new JSONArray();
                try {
                    String[] strArrSplit2 = new G(5).E((Encrypt.a(eZServerUpdateContents.f29350J.f25482e) + "/server/get_movie_category?token=" + Encrypt.a(eZServerUpdateContents.f29347G.getString("token", null))).replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET)).split("\\n");
                    for (int i10 = 0; i10 < strArrSplit2.length; i10++) {
                        HashMap map2 = new HashMap();
                        map2.put("category_id", strArrSplit2[i10].replaceAll("category=", HttpUrl.FRAGMENT_ENCODE_SET));
                        map2.put("category_name", strArrSplit2[i10].replaceAll("category=", HttpUrl.FRAGMENT_ENCODE_SET));
                        map2.put("parent_id", "0");
                        eZServerUpdateContents.f29357Q.add(map2);
                    }
                } catch (Exception unused2) {
                }
                JSONArray jSONArray = new JSONArray((Collection) eZServerUpdateContents.f29357Q);
                eZServerUpdateContents.f29361U = jSONArray;
                eZServerUpdateContents.f29349I.c0(jSONArray);
                r.o(eZServerUpdateContents.f29349I, "vods", null, null);
                break;
            case 3:
                eZServerUpdateContents.f29356P = null;
                eZServerUpdateContents.f29360T = null;
                eZServerUpdateContents.f29356P = new ArrayList();
                eZServerUpdateContents.f29360T = new JSONArray();
                try {
                    String[] strArrSplit3 = new G(5).E((Encrypt.a(eZServerUpdateContents.f29350J.f25482e) + "/server/get_channel_category?token=" + Encrypt.a(eZServerUpdateContents.f29347G.getString("token", null))).replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET)).split("\\n");
                    for (int i11 = 0; i11 < strArrSplit3.length; i11++) {
                        HashMap map3 = new HashMap();
                        map3.put("category_id", strArrSplit3[i11].replaceAll("category=", HttpUrl.FRAGMENT_ENCODE_SET));
                        map3.put("category_name", strArrSplit3[i11].replaceAll("category=", HttpUrl.FRAGMENT_ENCODE_SET));
                        map3.put("parent_id", "0");
                        eZServerUpdateContents.f29356P.add(map3);
                    }
                } catch (Exception unused3) {
                }
                eZServerUpdateContents.f29360T = new JSONArray((Collection) eZServerUpdateContents.f29356P);
                break;
        }
    }

    public final void c(Long l4) throws Throwable {
        int i8 = this.f26636a;
        int i9 = 4;
        EZServerUpdateContents eZServerUpdateContents = this.f26637b;
        switch (i8) {
            case 0:
                super.onPostExecute(l4);
                SharedPreferences.Editor editorEdit = eZServerUpdateContents.f29347G.edit();
                editorEdit.putString("streamingPort", eZServerUpdateContents.f29364X);
                editorEdit.apply();
                editorEdit.commit();
                new b(eZServerUpdateContents, i9).execute(new Void[0]);
                break;
            case 1:
            case 3:
            default:
                super.onPostExecute(l4);
                if (eZServerUpdateContents.f29374h0) {
                    eZServerUpdateContents.f29371e0.setVisibility(4);
                    if (!eZServerUpdateContents.f29375i0) {
                        new b(eZServerUpdateContents, 2).execute(new Void[0]);
                    }
                }
                break;
            case 2:
                super.onPostExecute(l4);
                if (eZServerUpdateContents.f29362V.length() > 0) {
                    eZServerUpdateContents.f29349I.E(eZServerUpdateContents.f29362V);
                }
                new b(eZServerUpdateContents).execute(new Void[0]);
                break;
            case 4:
                super.onPostExecute(l4);
                eZServerUpdateContents.f29367a0.setText(eZServerUpdateContents.f29351K.getString(R.string.xc_completed) + "!");
                if (eZServerUpdateContents.f29359S.length() > 0) {
                    eZServerUpdateContents.f29349I.k(eZServerUpdateContents.f29359S);
                }
                new b(eZServerUpdateContents, (Object) null).execute(new Void[0]);
                break;
        }
    }

    public final void d(Void r10) {
        int i8 = this.f26636a;
        EZServerUpdateContents eZServerUpdateContents = this.f26637b;
        switch (i8) {
            case 1:
                super.onPostExecute(r10);
                Log.d("XCIPTV_TAG", "-----Completed - TV Categories added to Local Databse");
                TextView textView = eZServerUpdateContents.f29370d0;
                StringBuilder sb = new StringBuilder();
                EZServerUpdateContents eZServerUpdateContents2 = eZServerUpdateContents.f29351K;
                sb.append(eZServerUpdateContents2.getString(R.string.xc_completed));
                sb.append("!");
                textView.setText(sb.toString());
                if (eZServerUpdateContents.f29363W.length() > 0) {
                    eZServerUpdateContents.f29349I.O(eZServerUpdateContents.f29363W);
                }
                eZServerUpdateContents.f29369c0.setText(eZServerUpdateContents2.getString(R.string.xc_completed) + "!");
                eZServerUpdateContents.f29373g0 = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new Date());
                eZServerUpdateContents.f29368b0.setText(eZServerUpdateContents2.getString(R.string.xc_completed));
                SharedPreferences.Editor editorEdit = eZServerUpdateContents.f29347G.edit();
                editorEdit.putString("tvvodseries_dl_time", eZServerUpdateContents.f29373g0);
                editorEdit.putString("epg_dl_time", eZServerUpdateContents.f29373g0);
                if (!eZServerUpdateContents.f29347G.contains("epg_manual_download")) {
                    editorEdit.putString("epg_manual_download", eZServerUpdateContents.f29373g0);
                }
                editorEdit.apply();
                editorEdit.commit();
                eZServerUpdateContents.f29352L.setText("Close");
                eZServerUpdateContents.f29352L.setEnabled(true);
                eZServerUpdateContents.f29372f0 = "yes";
                q0.q().f(0, "ORT_PROCESS_STATUS");
                if (Methods.R(eZServerUpdateContents2)) {
                    ORPlayerMainActivity.f28777I0 = true;
                }
                eZServerUpdateContents.finish();
                Log.d("XCIPTV_TAG", "EZServerUpdateContents processPorgrammeData Completed1 -- Updatecontents");
                if (CategoriesActivity.i(eZServerUpdateContents2)) {
                    Log.d("XCIPTV_TAG", "EZServerUpdateContents JobScheduler is Running");
                } else {
                    Log.d("XCIPTV_TAG", "EZServerUpdateContents JobScheduler is not Running");
                    Log.d("XCIPTV_TAG", "EZServerUpdateContents JobScheduler Started");
                    CategoriesActivity.l(eZServerUpdateContents2);
                }
                break;
            case 2:
            default:
                super.onPostExecute(r10);
                for (int i9 = 0; i9 < eZServerUpdateContents.f29361U.length(); i9++) {
                    if (i9 == eZServerUpdateContents.f29361U.length() - 1) {
                        eZServerUpdateContents.f29374h0 = true;
                        Log.d("XCIPTV_TAG", "EZServerUpdateContents isVodDownloadFished ------- True");
                    } else {
                        Log.d("XCIPTV_TAG", "EZServerUpdateContents isVodDownloadFished ------- False");
                    }
                    try {
                        new Handler().postDelayed(new m(4, this, eZServerUpdateContents.f29361U.getJSONObject(i9).getString("category_name")), 2000L);
                    } catch (JSONException e8) {
                        e8.printStackTrace();
                    }
                }
                eZServerUpdateContents.f29368b0.setText(eZServerUpdateContents.f29351K.getString(R.string.xc_updating) + "!");
                Log.d("XCIPTV_TAG", "EZServerUpdateContents -----Completed - All VOD Categoires added to Local Databse");
                break;
            case 3:
                super.onPostExecute(r10);
                Log.d("XCIPTV_TAG", "EZServerUpdateContents -----Completed - TV Categories added to Local Databse");
                eZServerUpdateContents.f29367a0.setText(eZServerUpdateContents.f29351K.getString(R.string.xc_completed) + "!");
                if (eZServerUpdateContents.f29360T.length() > 0) {
                    eZServerUpdateContents.f29349I.a0(eZServerUpdateContents.f29360T);
                }
                new b(eZServerUpdateContents, (U2) null).execute(new Void[0]);
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0244 A[Catch: all -> 0x02ad, JSONException -> 0x02b2, LOOP:1: B:51:0x023e->B:53:0x0244, LOOP_END, TryCatch #12 {JSONException -> 0x02b2, all -> 0x02ad, blocks: (B:50:0x0238, B:51:0x023e, B:53:0x0244, B:56:0x02af), top: B:95:0x0238 }] */
    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) throws Throwable {
        String str;
        String str2;
        String str3;
        String str4;
        JSONArray jSONArray;
        SQLiteDatabase writableDatabase;
        ContentValues contentValues;
        int i8;
        String str5;
        String str6;
        switch (this.f26636a) {
            case 0:
                a();
                return null;
            case 1:
                b();
                return null;
            case 2:
                a();
                return null;
            case 3:
                b();
                return null;
            case 4:
                a();
                return null;
            case 5:
                b();
                return null;
            default:
                String[] strArr = (String[]) objArr;
                String str7 = "added";
                String str8 = "\\n";
                String str9 = "direct_source";
                String str10 = "name=";
                String str11 = "category_id";
                EZServerUpdateContents eZServerUpdateContents = this.f26637b;
                eZServerUpdateContents.f29354N = null;
                eZServerUpdateContents.f29354N = new ArrayList();
                new JSONArray();
                StringBuilder sb = new StringBuilder();
                sb.append(Encrypt.a(eZServerUpdateContents.f29350J.f25482e));
                sb.append("/server/get_movie_list?token=");
                String str12 = "custom_sid";
                String str13 = "container_extension";
                sb.append(Encrypt.a(eZServerUpdateContents.f29347G.getString("token", null)));
                sb.append("&category=");
                sb.append(strArr[0]);
                String str14 = " ";
                String strReplaceAll = sb.toString().replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET);
                JSONArray jSONArray2 = new JSONArray();
                try {
                    String str15 = "%20";
                    String[] strArrSplit = new G(5).E(strReplaceAll).replaceAll("name=", "vod----name=").split("vod----");
                    int i9 = 1;
                    while (i9 < strArrSplit.length) {
                        eZServerUpdateContents.f29366Z++;
                        String[] strArr2 = strArr;
                        String[] strArrSplit2 = strArrSplit[i9].split("img=")[1].split(str8);
                        if (strArrSplit2.length > 0) {
                            str6 = strArrSplit2[0];
                            str5 = str7;
                            try {
                                if (str6.toLowerCase().contains("file")) {
                                    str6 = Encrypt.a(eZServerUpdateContents.f29350J.f25482e) + str6.replaceAll("file:/", HttpUrl.FRAGMENT_ENCODE_SET);
                                }
                            } catch (Exception unused) {
                                str3 = str13;
                                str = str5;
                                str2 = str11;
                                str4 = str12;
                                jSONArray = jSONArray2;
                                writableDatabase = eZServerUpdateContents.f29349I.getWritableDatabase();
                                writableDatabase.beginTransaction();
                                contentValues = new ContentValues();
                                i8 = 0;
                                while (i8 < jSONArray.length()) {
                                    JSONObject jSONObject = jSONArray.getJSONObject(i8);
                                    contentValues.put("num", jSONObject.getString("num"));
                                    contentValues.put("name", jSONObject.getString("name"));
                                    contentValues.put("stream_type", jSONObject.getString("stream_type"));
                                    contentValues.put("stream_id", jSONObject.getString("stream_id"));
                                    contentValues.put("stream_icon", jSONObject.getString("stream_icon"));
                                    contentValues.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                                    contentValues.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                                    String str16 = str;
                                    contentValues.put(str16, HttpUrl.FRAGMENT_ENCODE_SET);
                                    JSONArray jSONArray3 = jSONArray;
                                    String str17 = str2;
                                    contentValues.put(str17, jSONObject.getString(str17));
                                    String str18 = str3;
                                    contentValues.put(str18, jSONObject.getString(str18));
                                    String str19 = str4;
                                    contentValues.put(str19, HttpUrl.FRAGMENT_ENCODE_SET);
                                    contentValues.put(str9, jSONObject.getString(str9));
                                    writableDatabase.insert("vods", null, contentValues);
                                    i8++;
                                    jSONArray = jSONArray3;
                                    str3 = str18;
                                    str = str16;
                                    str4 = str19;
                                    str2 = str17;
                                }
                                writableDatabase.setTransactionSuccessful();
                                writableDatabase.endTransaction();
                                return null;
                            }
                        } else {
                            str5 = str7;
                            str6 = HttpUrl.FRAGMENT_ENCODE_SET;
                        }
                        String[] strArrSplit3 = strArrSplit[i9].split(str8);
                        HashMap map = new HashMap();
                        String[] strArr3 = strArrSplit;
                        map.put("num", String.valueOf(eZServerUpdateContents.f29366Z));
                        map.put("stream_id", String.valueOf(eZServerUpdateContents.f29366Z));
                        String str20 = str8;
                        map.put("name", strArrSplit3[0].replaceAll(str10, HttpUrl.FRAGMENT_ENCODE_SET));
                        map.put("stream_type", "video");
                        map.put("stream_icon", str6);
                        map.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                        map.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                        String str21 = str5;
                        try {
                            map.put(str21, HttpUrl.FRAGMENT_ENCODE_SET);
                            String str22 = str13;
                            try {
                                map.put(str22, HttpUrl.FRAGMENT_ENCODE_SET);
                                String str23 = str12;
                                try {
                                    map.put(str23, HttpUrl.FRAGMENT_ENCODE_SET);
                                    str4 = str23;
                                    try {
                                        str3 = str22;
                                        String str24 = str11;
                                        try {
                                            map.put(str24, strArr2[0]);
                                            String strReplaceAll2 = strArrSplit3[0].replaceAll(str10, HttpUrl.FRAGMENT_ENCODE_SET);
                                            String strA = Encrypt.a(eZServerUpdateContents.f29350J.f25480c);
                                            String str25 = str10;
                                            String strA2 = Encrypt.a(eZServerUpdateContents.f29350J.f25481d);
                                            str2 = str24;
                                            try {
                                                StringBuilder sb2 = new StringBuilder();
                                                str = str21;
                                                try {
                                                    sb2.append(eZServerUpdateContents.f29365Y);
                                                    sb2.append(":");
                                                    sb2.append(eZServerUpdateContents.f29364X);
                                                    sb2.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                                                    sb2.append(strReplaceAll2);
                                                    sb2.append("?u=");
                                                    sb2.append(strA);
                                                    sb2.append(":p=");
                                                    sb2.append(strA2);
                                                    String strReplace = sb2.toString().replaceAll("\n", HttpUrl.FRAGMENT_ENCODE_SET).replace("\r", HttpUrl.FRAGMENT_ENCODE_SET);
                                                    String str26 = str14;
                                                    String str27 = str15;
                                                    str9 = str9;
                                                    try {
                                                        map.put(str9, strReplace.replaceAll(str26, str27));
                                                        eZServerUpdateContents.f29354N.add(map);
                                                        i9++;
                                                        str14 = str26;
                                                        str15 = str27;
                                                        str9 = str9;
                                                        str10 = str25;
                                                        str12 = str4;
                                                        str13 = str3;
                                                        strArr = strArr2;
                                                        str11 = str2;
                                                        strArrSplit = strArr3;
                                                        str8 = str20;
                                                        str7 = str;
                                                    } catch (Exception unused2) {
                                                        jSONArray = jSONArray2;
                                                        writableDatabase = eZServerUpdateContents.f29349I.getWritableDatabase();
                                                        writableDatabase.beginTransaction();
                                                        contentValues = new ContentValues();
                                                        i8 = 0;
                                                        while (i8 < jSONArray.length()) {
                                                            JSONObject jSONObject2 = jSONArray.getJSONObject(i8);
                                                            contentValues.put("num", jSONObject2.getString("num"));
                                                            contentValues.put("name", jSONObject2.getString("name"));
                                                            contentValues.put("stream_type", jSONObject2.getString("stream_type"));
                                                            contentValues.put("stream_id", jSONObject2.getString("stream_id"));
                                                            contentValues.put("stream_icon", jSONObject2.getString("stream_icon"));
                                                            contentValues.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                                                            contentValues.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                                                            String str110 = str;
                                                            contentValues.put(str110, HttpUrl.FRAGMENT_ENCODE_SET);
                                                            JSONArray jSONArray4 = jSONArray;
                                                            String str111 = str2;
                                                            contentValues.put(str111, jSONObject2.getString(str111));
                                                            String str112 = str3;
                                                            contentValues.put(str112, jSONObject2.getString(str112));
                                                            String str113 = str4;
                                                            contentValues.put(str113, HttpUrl.FRAGMENT_ENCODE_SET);
                                                            contentValues.put(str9, jSONObject2.getString(str9));
                                                            writableDatabase.insert("vods", null, contentValues);
                                                            i8++;
                                                            jSONArray = jSONArray4;
                                                            str3 = str112;
                                                            str = str110;
                                                            str4 = str113;
                                                            str2 = str111;
                                                        }
                                                        writableDatabase.setTransactionSuccessful();
                                                        writableDatabase.endTransaction();
                                                        return null;
                                                    }
                                                } catch (Exception unused3) {
                                                    str9 = str9;
                                                    jSONArray = jSONArray2;
                                                    writableDatabase = eZServerUpdateContents.f29349I.getWritableDatabase();
                                                    writableDatabase.beginTransaction();
                                                    contentValues = new ContentValues();
                                                    i8 = 0;
                                                    while (i8 < jSONArray.length()) {
                                                        JSONObject jSONObject3 = jSONArray.getJSONObject(i8);
                                                        contentValues.put("num", jSONObject3.getString("num"));
                                                        contentValues.put("name", jSONObject3.getString("name"));
                                                        contentValues.put("stream_type", jSONObject3.getString("stream_type"));
                                                        contentValues.put("stream_id", jSONObject3.getString("stream_id"));
                                                        contentValues.put("stream_icon", jSONObject3.getString("stream_icon"));
                                                        contentValues.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                                                        contentValues.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                                                        String str114 = str;
                                                        contentValues.put(str114, HttpUrl.FRAGMENT_ENCODE_SET);
                                                        JSONArray jSONArray5 = jSONArray;
                                                        String str115 = str2;
                                                        contentValues.put(str115, jSONObject3.getString(str115));
                                                        String str116 = str3;
                                                        contentValues.put(str116, jSONObject3.getString(str116));
                                                        String str117 = str4;
                                                        contentValues.put(str117, HttpUrl.FRAGMENT_ENCODE_SET);
                                                        contentValues.put(str9, jSONObject3.getString(str9));
                                                        writableDatabase.insert("vods", null, contentValues);
                                                        i8++;
                                                        jSONArray = jSONArray5;
                                                        str3 = str116;
                                                        str = str114;
                                                        str4 = str117;
                                                        str2 = str115;
                                                    }
                                                    writableDatabase.setTransactionSuccessful();
                                                    writableDatabase.endTransaction();
                                                    return null;
                                                }
                                            } catch (Exception unused4) {
                                                str9 = str9;
                                                str = str21;
                                            }
                                        } catch (Exception unused5) {
                                            str9 = str9;
                                            str = str21;
                                            str2 = str24;
                                        }
                                    } catch (Exception unused6) {
                                        str9 = str9;
                                        str = str21;
                                        str3 = str22;
                                        str2 = str11;
                                    }
                                } catch (Exception unused7) {
                                    str9 = str9;
                                    str = str21;
                                    str3 = str22;
                                    str4 = str23;
                                    str2 = str11;
                                    jSONArray = jSONArray2;
                                    writableDatabase = eZServerUpdateContents.f29349I.getWritableDatabase();
                                    writableDatabase.beginTransaction();
                                    contentValues = new ContentValues();
                                    i8 = 0;
                                    while (i8 < jSONArray.length()) {
                                        JSONObject jSONObject4 = jSONArray.getJSONObject(i8);
                                        contentValues.put("num", jSONObject4.getString("num"));
                                        contentValues.put("name", jSONObject4.getString("name"));
                                        contentValues.put("stream_type", jSONObject4.getString("stream_type"));
                                        contentValues.put("stream_id", jSONObject4.getString("stream_id"));
                                        contentValues.put("stream_icon", jSONObject4.getString("stream_icon"));
                                        contentValues.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                                        contentValues.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                                        String str118 = str;
                                        contentValues.put(str118, HttpUrl.FRAGMENT_ENCODE_SET);
                                        JSONArray jSONArray6 = jSONArray;
                                        String str119 = str2;
                                        contentValues.put(str119, jSONObject4.getString(str119));
                                        String str1110 = str3;
                                        contentValues.put(str1110, jSONObject4.getString(str1110));
                                        String str1111 = str4;
                                        contentValues.put(str1111, HttpUrl.FRAGMENT_ENCODE_SET);
                                        contentValues.put(str9, jSONObject4.getString(str9));
                                        writableDatabase.insert("vods", null, contentValues);
                                        i8++;
                                        jSONArray = jSONArray6;
                                        str3 = str1110;
                                        str = str118;
                                        str4 = str1111;
                                        str2 = str119;
                                    }
                                    writableDatabase.setTransactionSuccessful();
                                    writableDatabase.endTransaction();
                                    return null;
                                }
                            } catch (Exception unused8) {
                                str = str21;
                                str3 = str22;
                                str2 = str11;
                                str4 = str12;
                                jSONArray = jSONArray2;
                                writableDatabase = eZServerUpdateContents.f29349I.getWritableDatabase();
                                writableDatabase.beginTransaction();
                                contentValues = new ContentValues();
                                i8 = 0;
                                while (i8 < jSONArray.length()) {
                                    JSONObject jSONObject5 = jSONArray.getJSONObject(i8);
                                    contentValues.put("num", jSONObject5.getString("num"));
                                    contentValues.put("name", jSONObject5.getString("name"));
                                    contentValues.put("stream_type", jSONObject5.getString("stream_type"));
                                    contentValues.put("stream_id", jSONObject5.getString("stream_id"));
                                    contentValues.put("stream_icon", jSONObject5.getString("stream_icon"));
                                    contentValues.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                                    contentValues.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                                    String str1112 = str;
                                    contentValues.put(str1112, HttpUrl.FRAGMENT_ENCODE_SET);
                                    JSONArray jSONArray7 = jSONArray;
                                    String str1113 = str2;
                                    contentValues.put(str1113, jSONObject5.getString(str1113));
                                    String str1114 = str3;
                                    contentValues.put(str1114, jSONObject5.getString(str1114));
                                    String str1115 = str4;
                                    contentValues.put(str1115, HttpUrl.FRAGMENT_ENCODE_SET);
                                    contentValues.put(str9, jSONObject5.getString(str9));
                                    writableDatabase.insert("vods", null, contentValues);
                                    i8++;
                                    jSONArray = jSONArray7;
                                    str3 = str1114;
                                    str = str1112;
                                    str4 = str1115;
                                    str2 = str1113;
                                }
                                writableDatabase.setTransactionSuccessful();
                                writableDatabase.endTransaction();
                                return null;
                            }
                        } catch (Exception unused9) {
                            str9 = str9;
                            str = str21;
                            str2 = str11;
                            str3 = str13;
                            str4 = str12;
                            jSONArray = jSONArray2;
                            writableDatabase = eZServerUpdateContents.f29349I.getWritableDatabase();
                            writableDatabase.beginTransaction();
                            contentValues = new ContentValues();
                            i8 = 0;
                            while (i8 < jSONArray.length()) {
                                JSONObject jSONObject6 = jSONArray.getJSONObject(i8);
                                contentValues.put("num", jSONObject6.getString("num"));
                                contentValues.put("name", jSONObject6.getString("name"));
                                contentValues.put("stream_type", jSONObject6.getString("stream_type"));
                                contentValues.put("stream_id", jSONObject6.getString("stream_id"));
                                contentValues.put("stream_icon", jSONObject6.getString("stream_icon"));
                                contentValues.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                                contentValues.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                                String str1116 = str;
                                contentValues.put(str1116, HttpUrl.FRAGMENT_ENCODE_SET);
                                JSONArray jSONArray8 = jSONArray;
                                String str1117 = str2;
                                contentValues.put(str1117, jSONObject6.getString(str1117));
                                String str1118 = str3;
                                contentValues.put(str1118, jSONObject6.getString(str1118));
                                String str1119 = str4;
                                contentValues.put(str1119, HttpUrl.FRAGMENT_ENCODE_SET);
                                contentValues.put(str9, jSONObject6.getString(str9));
                                writableDatabase.insert("vods", null, contentValues);
                                i8++;
                                jSONArray = jSONArray8;
                                str3 = str1118;
                                str = str1116;
                                str4 = str1119;
                                str2 = str1117;
                            }
                            writableDatabase.setTransactionSuccessful();
                            writableDatabase.endTransaction();
                            return null;
                        }
                    }
                    str9 = str9;
                    str = str7;
                    str2 = str11;
                    str3 = str13;
                    str4 = str12;
                    jSONArray = new JSONArray((Collection) eZServerUpdateContents.f29354N);
                } catch (Exception unused10) {
                    str9 = str9;
                    str = str7;
                }
                writableDatabase = eZServerUpdateContents.f29349I.getWritableDatabase();
                writableDatabase.beginTransaction();
                try {
                    contentValues = new ContentValues();
                    i8 = 0;
                    while (i8 < jSONArray.length()) {
                        JSONObject jSONObject7 = jSONArray.getJSONObject(i8);
                        contentValues.put("num", jSONObject7.getString("num"));
                        contentValues.put("name", jSONObject7.getString("name"));
                        contentValues.put("stream_type", jSONObject7.getString("stream_type"));
                        contentValues.put("stream_id", jSONObject7.getString("stream_id"));
                        contentValues.put("stream_icon", jSONObject7.getString("stream_icon"));
                        contentValues.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                        contentValues.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                        String str11110 = str;
                        contentValues.put(str11110, HttpUrl.FRAGMENT_ENCODE_SET);
                        JSONArray jSONArray9 = jSONArray;
                        String str11111 = str2;
                        contentValues.put(str11111, jSONObject7.getString(str11111));
                        String str11112 = str3;
                        contentValues.put(str11112, jSONObject7.getString(str11112));
                        String str11113 = str4;
                        contentValues.put(str11113, HttpUrl.FRAGMENT_ENCODE_SET);
                        contentValues.put(str9, jSONObject7.getString(str9));
                        writableDatabase.insert("vods", null, contentValues);
                        i8++;
                        jSONArray = jSONArray9;
                        str3 = str11112;
                        str = str11110;
                        str4 = str11113;
                        str2 = str11111;
                    }
                    writableDatabase.setTransactionSuccessful();
                    break;
                } catch (JSONException unused11) {
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
                writableDatabase.endTransaction();
                return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        switch (this.f26636a) {
            case 0:
                super.onCancelled();
                break;
            case 1:
            case 3:
            case 5:
            default:
                super.onCancelled();
                break;
            case 2:
                super.onCancelled();
                break;
            case 4:
                super.onCancelled();
                break;
            case 6:
                super.onCancelled();
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) throws Throwable {
        switch (this.f26636a) {
            case 0:
                c((Long) obj);
                break;
            case 1:
                d((Void) obj);
                break;
            case 2:
                c((Long) obj);
                break;
            case 3:
                d((Void) obj);
                break;
            case 4:
                c((Long) obj);
                break;
            case 5:
                d((Void) obj);
                break;
            default:
                c((Long) obj);
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        int i8 = this.f26636a;
        EZServerUpdateContents eZServerUpdateContents = this.f26637b;
        switch (i8) {
            case 0:
                super.onPreExecute();
                TextView textView = eZServerUpdateContents.f29367a0;
                EZServerUpdateContents eZServerUpdateContents2 = eZServerUpdateContents.f29351K;
                textView.setText(eZServerUpdateContents2.getString(R.string.xc_updating));
                eZServerUpdateContents.f29371e0.setVisibility(0);
                eZServerUpdateContents.f29369c0.setText(eZServerUpdateContents2.getString(R.string.xc_now_updating_live_tv));
                break;
            case 1:
                super.onPreExecute();
                break;
            case 2:
                super.onPreExecute();
                eZServerUpdateContents.f29375i0 = true;
                TextView textView2 = eZServerUpdateContents.f29370d0;
                EZServerUpdateContents eZServerUpdateContents3 = eZServerUpdateContents.f29351K;
                textView2.setText(eZServerUpdateContents3.getString(R.string.xc_updating));
                eZServerUpdateContents.f29369c0.setText(eZServerUpdateContents3.getString(R.string.xc_now_updating_series));
                eZServerUpdateContents.f29371e0.setVisibility(0);
                break;
            case 3:
                super.onPreExecute();
                eZServerUpdateContents.f29369c0.setText(eZServerUpdateContents.f29351K.getString(R.string.xc_now_updating_live_tv));
                break;
            case 4:
                super.onPreExecute();
                SQLiteDatabase writableDatabase = eZServerUpdateContents.f29349I.getWritableDatabase();
                writableDatabase.delete("epg_channel", null, null);
                writableDatabase.delete("epg_programme", null, null);
                writableDatabase.close();
                TextView textView3 = eZServerUpdateContents.f29367a0;
                EZServerUpdateContents eZServerUpdateContents4 = eZServerUpdateContents.f29351K;
                textView3.setText(eZServerUpdateContents4.getString(R.string.xc_updating));
                eZServerUpdateContents.f29371e0.setVisibility(0);
                eZServerUpdateContents.f29369c0.setText(eZServerUpdateContents4.getString(R.string.xc_now_updating_live_tv));
                break;
            case 5:
                super.onPreExecute();
                eZServerUpdateContents.f29369c0.setText(eZServerUpdateContents.f29351K.getString(R.string.xc_now_updating_vod));
                break;
            default:
                super.onPreExecute();
                TextView textView4 = eZServerUpdateContents.f29368b0;
                EZServerUpdateContents eZServerUpdateContents5 = eZServerUpdateContents.f29351K;
                textView4.setText(eZServerUpdateContents5.getString(R.string.xc_updating));
                eZServerUpdateContents.f29369c0.setText(eZServerUpdateContents5.getString(R.string.xc_now_updating_vod));
                break;
        }
    }

    public /* synthetic */ b(EZServerUpdateContents eZServerUpdateContents, int i8) {
        this.f26636a = i8;
        this.f26637b = eZServerUpdateContents;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(EZServerUpdateContents eZServerUpdateContents, U2 u7) {
        this(eZServerUpdateContents, 5);
        this.f26636a = 5;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(EZServerUpdateContents eZServerUpdateContents, Object obj) {
        this(eZServerUpdateContents, 3);
        this.f26636a = 3;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(EZServerUpdateContents eZServerUpdateContents, a aVar) {
        this(eZServerUpdateContents, 6);
        this.f26636a = 6;
    }
}
