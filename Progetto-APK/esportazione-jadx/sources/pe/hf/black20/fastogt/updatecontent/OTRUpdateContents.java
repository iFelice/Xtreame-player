package pe.hf.black20.fastogt.updatecontent;

import A0.O;
import D1.ViewOnClickListenerC0144i;
import S3.e;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.job.JobScheduler;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import c7.a;
import c7.d;
import com.google.android.gms.internal.ads.C1448i6;
import g7.c;
import h7.i;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import l7.g;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p086l.ViewOnClickListenerC3020c;
import p133r0.b;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class OTRUpdateContents extends Activity implements c {

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final /* synthetic */ int f29299R = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public SharedPreferences f29300G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public SharedPreferences.Editor f29301H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public a f29302I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public d f29303J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public a f29304K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public b f29305L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public i f29306M;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public Button f29308O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public TextView f29309P;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final OTRUpdateContents f29307N = this;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public String f29310Q = "yes";

    public OTRUpdateContents() {
        new ArrayList();
        new ArrayList();
        new ArrayList();
    }

    public final void a() {
        q0.q().f(0, "ORT_PROCESS_STATUS");
        this.f29310Q = "yes";
        this.f29301H.putString("tvvodseries_dl_time", new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new Date()));
        this.f29301H.apply();
        TextView textView = this.f29309P;
        StringBuilder sb = new StringBuilder();
        OTRUpdateContents oTRUpdateContents = this.f29307N;
        sb.append(oTRUpdateContents.getString(R.string.xc_completed));
        sb.append("!");
        textView.setText(sb.toString());
        this.f29308O.setText("Close");
        this.f29308O.setEnabled(true);
        this.f29310Q = "yes";
        q0.q().f(0, "ORT_PROCESS_STATUS");
        if (Methods.R(oTRUpdateContents)) {
            ORPlayerMainActivity.f28777I0 = true;
        }
        Log.d("XCIPTV_TAG", "OTRUpdateContents EPG update has been started in the backgroud");
        g.b(oTRUpdateContents);
        if (Methods.R(oTRUpdateContents)) {
            if (ORPlayerMainActivity.w(oTRUpdateContents)) {
                Log.d("XCIPTV_TAG", "OTRUpdateContents JobScheduler is Running");
            } else {
                Log.d("XCIPTV_TAG", "OTRUpdateContents JobScheduler is not Running");
                Log.d("XCIPTV_TAG", "OTRUpdateContents startBackgroudTask");
                ORPlayerMainActivity.A(oTRUpdateContents);
            }
        } else if (CategoriesActivity.i(oTRUpdateContents)) {
            Log.d("XCIPTV_TAG", "OTRUpdateContents JobScheduler is Running");
        } else {
            Log.d("XCIPTV_TAG", "OTRUpdateContents JobScheduler is not Running");
            Log.d("XCIPTV_TAG", "OTRUpdateContents startBackgroudTask");
            CategoriesActivity.l(oTRUpdateContents);
        }
        finish();
        Log.d("XCIPTV_TAG", "OTRUpdateContents is completed. ");
    }

    public final void b(String str) {
        OTRUpdateContents oTRUpdateContents = this.f29307N;
        View viewInflate = LayoutInflater.from(oTRUpdateContents).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(oTRUpdateContents).create();
        ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(str);
        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
        button.setText(oTRUpdateContents.getString(R.string.xc_ok));
        button.setOnClickListener(new ViewOnClickListenerC3020c(18, this, alertDialogCreate));
        alertDialogCreate.show();
    }

    public final void c(JSONObject jSONObject) throws Throwable {
        JSONArray jSONArray;
        String str;
        String str2;
        JSONArray jSONArray2;
        String str3;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str4;
        JSONArray jSONArray3;
        JSONArray jSONArray4;
        String str5;
        ArrayList arrayList3;
        ArrayList arrayList4;
        String str6;
        ArrayList arrayList5;
        ArrayList arrayList6;
        JSONArray jSONArray5;
        String str7 = "episodes";
        String str8 = "seasons";
        String str9 = "XCIPTV_TAG";
        String str10 = "name";
        String str11 = "id";
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        new ArrayList();
        new JSONArray();
        JSONArray jSONArray6 = new JSONArray();
        try {
            JSONArray jSONArray7 = jSONObject.getJSONObject("data").getJSONArray("packages");
            int i8 = 1;
            ArrayList arrayList15 = arrayList11;
            int i9 = 0;
            while (i9 < jSONArray7.length()) {
                JSONObject jSONObject2 = jSONArray7.getJSONObject(i9);
                JSONArray jSONArray8 = jSONArray7;
                String string = jSONObject2.getString(str10);
                int i10 = i9;
                String string2 = jSONObject2.getString(str11);
                ArrayList arrayList16 = arrayList10;
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList17 = arrayList9;
                sb.append("--------package name------");
                sb.append(string);
                Log.d(str9, sb.toString());
                JSONArray jSONArray9 = jSONObject2.getJSONArray("streams");
                JSONArray jSONArray10 = jSONObject2.getJSONArray("vods");
                String str12 = str9;
                try {
                    JSONArray jSONArray11 = jSONObject2.getJSONArray("serials");
                    ArrayList arrayList18 = arrayList14;
                    JSONArray jSONArray12 = jSONObject2.getJSONArray(str8);
                    String str13 = str7;
                    JSONArray jSONArray13 = jSONObject2.getJSONArray(str7);
                    int i11 = 0;
                    while (true) {
                        int length = jSONArray9.length();
                        jSONArray = jSONArray12;
                        str = str8;
                        str2 = "icon";
                        jSONArray2 = jSONArray11;
                        str3 = "parent_id";
                        arrayList = arrayList8;
                        arrayList2 = arrayList13;
                        str4 = "groups";
                        jSONArray3 = jSONArray10;
                        jSONArray4 = jSONArray6;
                        str5 = HttpUrl.FRAGMENT_ENCODE_SET;
                        arrayList3 = arrayList7;
                        if (i11 >= length) {
                            break;
                        }
                        i8++;
                        JSONObject jSONObject3 = jSONArray9.getJSONObject(i11);
                        JSONArray jSONArray14 = jSONArray9;
                        JSONObject jSONObject4 = jSONObject3.getJSONObject("epg");
                        int i12 = i11;
                        String string3 = jSONObject4.getString(str11);
                        String str14 = string2;
                        String string4 = jSONObject4.getString("display_name");
                        String string5 = jSONObject4.getString("icon");
                        JSONArray jSONArray15 = jSONObject3.getJSONArray("groups");
                        String str15 = string;
                        JSONArray jSONArray16 = jSONObject4.getJSONArray("urls");
                        String string6 = jSONArray16.length() > 0 ? jSONArray16.getString(0) : HttpUrl.FRAGMENT_ENCODE_SET;
                        HashMap map = new HashMap();
                        String str16 = string6;
                        map.put("num", String.valueOf(i8));
                        map.put(str10, string4);
                        map.put("stream_type", "live");
                        map.put("stream_id", jSONObject3.getString(str11));
                        map.put("stream_icon", string5);
                        map.put("epg_channel_id", string3);
                        map.put("added", HttpUrl.FRAGMENT_ENCODE_SET);
                        if (jSONArray15.length() > 0) {
                            String string7 = jSONArray15.getString(0);
                            HashMap map2 = new HashMap();
                            map2.put("category_id", string7);
                            map2.put("category_name", string7);
                            map2.put("parent_id", "0");
                            if (!arrayList12.contains(map2)) {
                                arrayList12.add(map2);
                            }
                            map.put("category_id", string7);
                            string = str15;
                        } else {
                            HashMap map3 = new HashMap();
                            string = str15;
                            map3.put("category_id", string);
                            map3.put("category_name", string);
                            map3.put("parent_id", "0");
                            if (!arrayList12.contains(map3)) {
                                arrayList12.add(map3);
                            }
                            map.put("category_id", string);
                        }
                        map.put("custom_sid", str14);
                        map.put("tv_archive", "0");
                        map.put("direct_source", str16);
                        map.put("tv_archive_duration", "0");
                        arrayList3.add(map);
                        if (jSONObject4.getJSONArray("programs").length() > 0) {
                            JSONArray jSONArray17 = jSONObject4.getJSONArray("programs");
                            jSONArray5 = jSONArray4;
                            jSONArray5.put(jSONArray17);
                        } else {
                            jSONArray5 = jSONArray4;
                        }
                        arrayList7 = arrayList3;
                        jSONArray6 = jSONArray5;
                        string2 = str14;
                        jSONArray12 = jSONArray;
                        jSONArray11 = jSONArray2;
                        arrayList8 = arrayList;
                        arrayList13 = arrayList2;
                        jSONArray10 = jSONArray3;
                        jSONArray9 = jSONArray14;
                        i11 = i12 + 1;
                        str8 = str;
                    }
                    String str17 = string2;
                    ArrayList arrayList19 = arrayList3;
                    int i13 = 0;
                    while (true) {
                        arrayList4 = arrayList12;
                        str6 = "vod";
                        if (i13 >= jSONArray3.length()) {
                            break;
                        }
                        JSONArray jSONArray18 = jSONArray3;
                        ArrayList arrayList20 = arrayList19;
                        JSONObject jSONObject5 = jSONArray18.getJSONObject(i13);
                        JSONObject jSONObject6 = jSONObject5.getJSONObject("vod");
                        String string8 = jSONObject6.getString("display_name");
                        String str18 = str2;
                        JSONArray jSONArray19 = jSONObject5.getJSONArray(str4);
                        String str19 = str4;
                        HashMap map4 = new HashMap();
                        int i14 = i13;
                        map4.put("num", String.valueOf(i8));
                        map4.put(str10, string8);
                        map4.put("stream_type", "movie");
                        map4.put("stream_id", jSONObject5.getString(str11));
                        map4.put("stream_icon", jSONObject6.getString("preview_icon"));
                        map4.put("rating", HttpUrl.FRAGMENT_ENCODE_SET);
                        map4.put("rating_5based", HttpUrl.FRAGMENT_ENCODE_SET);
                        map4.put("added", HttpUrl.FRAGMENT_ENCODE_SET);
                        if (jSONArray19.length() > 0) {
                            String string9 = jSONArray19.getString(0);
                            HashMap map5 = new HashMap();
                            map5.put("category_id", string9);
                            map5.put("category_name", string9);
                            map5.put("parent_id", "0");
                            arrayList6 = arrayList2;
                            if (!arrayList6.contains(map5)) {
                                arrayList6.add(map5);
                            }
                            map4.put("category_id", string9);
                        } else {
                            arrayList6 = arrayList2;
                            HashMap map6 = new HashMap();
                            map6.put("category_id", string);
                            map6.put("category_name", string);
                            map6.put("parent_id", "0");
                            if (!arrayList6.contains(map6)) {
                                arrayList6.add(map6);
                            }
                            map4.put("category_id", string);
                        }
                        map4.put("container_extension", HttpUrl.FRAGMENT_ENCODE_SET);
                        map4.put("custom_sid", str17);
                        JSONArray jSONArray20 = jSONObject6.getJSONArray("urls");
                        map4.put("direct_source", jSONArray20.length() > 0 ? jSONArray20.getString(0) : HttpUrl.FRAGMENT_ENCODE_SET);
                        ArrayList arrayList21 = arrayList;
                        arrayList21.add(map4);
                        i13 = i14 + 1;
                        arrayList = arrayList21;
                        arrayList2 = arrayList6;
                        arrayList19 = arrayList20;
                        arrayList12 = arrayList4;
                        jSONArray3 = jSONArray18;
                        str2 = str18;
                        str4 = str19;
                    }
                    ArrayList arrayList22 = arrayList19;
                    String str20 = str2;
                    String str21 = str4;
                    ArrayList arrayList23 = arrayList;
                    ArrayList arrayList24 = arrayList2;
                    int i15 = 0;
                    while (i15 < jSONArray2.length()) {
                        JSONArray jSONArray21 = jSONArray2;
                        String str22 = str5;
                        try {
                            JSONObject jSONObject7 = jSONArray21.getJSONObject(i15);
                            String string10 = jSONObject7.getString(str11);
                            ArrayList arrayList25 = arrayList23;
                            ArrayList arrayList26 = arrayList24;
                            String str23 = str21;
                            JSONArray jSONArray22 = jSONObject7.getJSONArray(str23);
                            String str24 = str6;
                            String string11 = jSONObject7.getString(str10);
                            String string12 = jSONObject7.getString("background_url");
                            String str25 = str20;
                            String str26 = str11;
                            String string13 = jSONObject7.getString(str25);
                            String str27 = str;
                            jSONObject7.getJSONArray(str27);
                            int i16 = i15;
                            HashMap map7 = new HashMap();
                            map7.put("num", String.valueOf(i8));
                            map7.put(str10, string11);
                            map7.put("series_id", string10);
                            map7.put("cover", string13);
                            map7.put("plot", jSONObject7.getString("description"));
                            map7.put("backdrop_path", string12);
                            if (jSONArray22.length() > 0) {
                                String string14 = jSONArray22.getString(0);
                                HashMap map8 = new HashMap();
                                map8.put("category_id", string14);
                                map8.put("category_name", string14);
                                map8.put(str3, "0");
                                arrayList5 = arrayList18;
                                if (!arrayList5.contains(map8)) {
                                    arrayList5.add(map8);
                                }
                                map7.put("category_id", string14);
                            } else {
                                arrayList5 = arrayList18;
                                HashMap map9 = new HashMap();
                                map9.put("category_id", string);
                                map9.put("category_name", string);
                                map9.put(str3, "0");
                                if (!arrayList5.contains(map9)) {
                                    arrayList5.add(map9);
                                }
                                map7.put("category_id", string);
                            }
                            JSONArray jSONArray23 = jSONObject7.getJSONArray("genres");
                            JSONArray jSONArray24 = jSONObject7.getJSONArray("directors");
                            JSONArray jSONArray25 = jSONObject7.getJSONArray("cast");
                            String str28 = string;
                            String str29 = str3;
                            String string15 = str22;
                            if (jSONArray23.length() > 0) {
                                for (int i17 = 0; i17 < jSONArray23.length(); i17++) {
                                    string15 = i17 == 0 ? jSONArray23.getString(i17) : string15 + ", " + jSONArray23.getString(i17);
                                }
                            }
                            String string16 = str22;
                            if (jSONArray24.length() > 0) {
                                for (int i18 = 0; i18 < jSONArray24.length(); i18++) {
                                    string16 = i18 == 0 ? jSONArray24.getString(i18) : string16 + ", " + jSONArray24.getString(i18);
                                }
                            }
                            String string17 = str22;
                            if (jSONArray25.length() > 0) {
                                for (int i19 = 0; i19 < jSONArray25.length(); i19++) {
                                    string17 = i19 == 0 ? jSONArray25.getString(i19) : string17 + ", " + jSONArray25.getString(i19);
                                }
                            }
                            map7.put("genre", string15);
                            map7.put("director", string16);
                            map7.put("casting", string17);
                            map7.put("rating", jSONObject7.getString("user_score"));
                            map7.put("episode_run_time", jSONObject7.getString(str27));
                            map7.put("releaseDate", jSONObject7.getString("prime_date"));
                            ArrayList arrayList27 = arrayList17;
                            arrayList27.add(map7);
                            String str30 = str12;
                            Log.d(str30, "display_name-------" + string11);
                            i15 = i16 + 1;
                            arrayList17 = arrayList27;
                            str = str27;
                            str12 = str30;
                            string = str28;
                            str5 = str22;
                            jSONArray2 = jSONArray21;
                            arrayList24 = arrayList26;
                            arrayList23 = arrayList25;
                            str11 = str26;
                            str6 = str24;
                            str21 = str23;
                            str20 = str25;
                            str3 = str29;
                            arrayList18 = arrayList5;
                        } catch (JSONException e8) {
                            e = e8;
                            str9 = str12;
                            Log.d(str9, "OTRUpdateContents -processClientContent JSONException - ".concat(String.valueOf(e)));
                            finish();
                            return;
                        }
                    }
                    ArrayList arrayList28 = arrayList23;
                    ArrayList arrayList29 = arrayList24;
                    ArrayList arrayList30 = arrayList17;
                    str9 = str12;
                    ArrayList arrayList31 = arrayList18;
                    String str31 = str;
                    String str32 = str20;
                    String str33 = str21;
                    String str34 = str11;
                    String str35 = str6;
                    int i20 = 0;
                    while (i20 < jSONArray.length()) {
                        JSONArray jSONArray26 = jSONArray;
                        JSONObject jSONObject8 = jSONArray26.getJSONObject(i20);
                        HashMap map10 = new HashMap();
                        String str36 = str34;
                        map10.put(str36, jSONObject8.getString(str36));
                        map10.put(str10, jSONObject8.getString(str10));
                        map10.put("background_url", jSONObject8.getString("background_url"));
                        String str37 = str31;
                        String str38 = str32;
                        map10.put(str38, jSONObject8.getString(str38));
                        jSONArray = jSONArray26;
                        String str39 = str33;
                        map10.put(str39, jSONObject8.getString(str39));
                        map10.put("description", jSONObject8.getString("description"));
                        String str40 = str10;
                        map10.put("season", jSONObject8.getString("season"));
                        String str41 = str13;
                        map10.put(str41, jSONObject8.getString(str41));
                        map10.put("view_count", jSONObject8.getString("view_count"));
                        map10.put("created_date", jSONObject8.getString("created_date"));
                        map10.put("pid", jSONObject8.getString("pid"));
                        ArrayList arrayList32 = arrayList16;
                        arrayList32.add(map10);
                        i20++;
                        str33 = str39;
                        str13 = str41;
                        arrayList16 = arrayList32;
                        str34 = str36;
                        str32 = str38;
                        str10 = str40;
                        str31 = str37;
                    }
                    String str42 = str31;
                    String str43 = str10;
                    ArrayList arrayList33 = arrayList16;
                    String str44 = str13;
                    String str45 = str34;
                    String str46 = str33;
                    int i21 = 0;
                    while (i21 < jSONArray13.length()) {
                        JSONArray jSONArray27 = jSONArray13;
                        JSONObject jSONObject9 = jSONArray27.getJSONObject(i21);
                        HashMap map11 = new HashMap();
                        map11.put(str45, jSONObject9.getString(str45));
                        map11.put(str46, jSONObject9.getString(str46));
                        map11.put("iarc", jSONObject9.getString("iarc"));
                        map11.put("parts", jSONObject9.getString("parts"));
                        map11.put("view_count", jSONObject9.getString("view_count"));
                        map11.put("meta", jSONObject9.getString("meta"));
                        map11.put("created_date", jSONObject9.getString("created_date"));
                        map11.put("video", jSONObject9.getString("video"));
                        map11.put("audio", jSONObject9.getString("audio"));
                        map11.put("price", jSONObject9.getString("price"));
                        map11.put("pid", jSONObject9.getString("pid"));
                        map11.put("favorite", jSONObject9.getString("favorite"));
                        map11.put("locked", jSONObject9.getString("locked"));
                        map11.put("recent", jSONObject9.getString("recent"));
                        map11.put("interrupt_time", jSONObject9.getString("interrupt_time"));
                        String str47 = str35;
                        map11.put(str47, jSONObject9.getString(str47));
                        ArrayList arrayList34 = arrayList15;
                        arrayList34.add(map11);
                        i21++;
                        jSONArray13 = jSONArray27;
                        arrayList15 = arrayList34;
                        str35 = str47;
                    }
                    ArrayList arrayList35 = arrayList15;
                    try {
                        this.f29303J.k(new JSONArray((Collection) arrayList22));
                        this.f29303J.b0(new JSONArray((Collection) arrayList28));
                        this.f29303J.N(new JSONArray((Collection) arrayList30));
                        this.f29304K.N(new JSONArray((Collection) arrayList33));
                        this.f29304K.k(new JSONArray((Collection) arrayList35));
                        i9 = i10 + 1;
                        arrayList10 = arrayList33;
                        arrayList7 = arrayList22;
                        arrayList8 = arrayList28;
                        arrayList15 = arrayList35;
                        str11 = str45;
                        jSONArray7 = jSONArray8;
                        str10 = str43;
                        arrayList13 = arrayList29;
                        jSONArray6 = jSONArray4;
                        arrayList12 = arrayList4;
                        arrayList9 = arrayList30;
                        str7 = str44;
                        arrayList14 = arrayList31;
                        str8 = str42;
                    } catch (JSONException e9) {
                        e = e9;
                        Log.d(str9, "OTRUpdateContents -processClientContent JSONException - ".concat(String.valueOf(e)));
                        finish();
                        return;
                    }
                } catch (JSONException e10) {
                    e = e10;
                    str9 = str12;
                    Log.d(str9, "OTRUpdateContents -processClientContent JSONException - ".concat(String.valueOf(e)));
                    finish();
                    return;
                }
            }
            this.f29303J.a0(new JSONArray((Collection) arrayList12));
            this.f29303J.c0(new JSONArray((Collection) arrayList13));
            this.f29303J.O(new JSONArray((Collection) arrayList14));
            this.f29305L.E(jSONArray6);
            a();
            finish();
        } catch (JSONException e11) {
            e = e11;
        }
    }

    public final void d() {
        try {
            new C1448i6(0, this, this, "clientContent", Encrypt.a(this.f29306M.f25482e) + "/panel_pro/api/client/content", new JSONObject(new HashMap()), Encrypt.a(this.f29306M.f25480c), Encrypt.a(this.f29306M.f25481d));
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "OTRUpdateContents - OTR Panel Client Devices - VolleyGETStringRequest Error");
        }
    }

    @Override // g7.c
    public final void e(int i8, String str, String str2) {
        Log.d("XCIPTV_TAG", "OTRUpdateContents - onFailureJson - " + str);
        str2.getClass();
        if (str2.equals("renewToken")) {
            Log.d("XCIPTV_TAG", "OTRUpdateContents - clientContent  - VolleyError error" + String.valueOf(i8));
            q0.q().f(0, "ORT_PROCESS_STATUS");
            finish();
            return;
        }
        if (str2.equals("clientContent")) {
            Log.d("XCIPTV_TAG", "OTRUpdateContents - clientContent  - VolleyError error" + String.valueOf(i8));
            if (i8 == 401) {
                q0.q().f(0, "ORT_PROCESS_STATUS");
                e.l(this.f29307N, this, this);
            } else {
                q0.q().f(0, "ORT_PROCESS_STATUS");
                finish();
            }
        }
    }

    @Override // g7.c
    public final void g(JSONObject jSONObject, String str) throws Throwable {
        str.getClass();
        if (!str.equals("renewToken")) {
            if (str.equals("clientContent")) {
                try {
                    Log.d("XCIPTV_TAG", "OTRUpdateContents -- onSuccessJsonFastoGT clientContent");
                    c(jSONObject);
                    return;
                } catch (Exception e8) {
                    Log.d("XCIPTV_TAG", "OTRUpdateContents -- onSuccessJsonFastoGT clientContent Exception".concat(String.valueOf(e8)));
                    return;
                }
            }
            return;
        }
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            if (jSONObject2.has("access_token")) {
                String string = jSONObject2.getString("refresh_token");
                String string2 = jSONObject2.getString("access_token");
                this.f29301H.putString("otr_refresh_token", Encrypt.b(string));
                this.f29301H.putString("otr_access_token", Encrypt.b(string2));
                this.f29301H.apply();
                d();
            } else {
                q0.q().f(0, "ORT_PROCESS_STATUS");
                finish();
            }
        } catch (JSONException unused) {
            q0.q().f(0, "ORT_PROCESS_STATUS");
            finish();
        }
        this.f29301H.apply();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.f29310Q.equals("yes")) {
            q0.q().f(0, "ORT_PROCESS_STATUS");
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_update_contents);
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        OTRUpdateContents oTRUpdateContents = this.f29307N;
        if (Methods.R(oTRUpdateContents)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        Log.d("XCIPTV_TAG", "OTRUpdateContents -----------Calling OTRUpdateContents---------------");
        this.f29300G = oTRUpdateContents.getSharedPreferences("pe.hf.black20", 0);
        this.f29302I = new a(oTRUpdateContents, 0);
        this.f29303J = new d(oTRUpdateContents);
        new c7.b(oTRUpdateContents, 0);
        this.f29304K = new a(oTRUpdateContents, 1);
        this.f29305L = new b(oTRUpdateContents, 1);
        this.f29306M = O.x("ORT_PROFILE", "Default (XC)", this.f29302I);
        this.f29301H = this.f29300G.edit();
        TextView textView = (TextView) findViewById(R.id.txt_info);
        this.f29309P = textView;
        textView.setText(oTRUpdateContents.getString(R.string.xc_please_wait));
        this.f29308O = (Button) findViewById(R.id.btn_cancel);
        if (Methods.Q(oTRUpdateContents)) {
            this.f29310Q = "no";
            this.f29308O.setEnabled(false);
            this.f29308O.setText(oTRUpdateContents.getString(R.string.xc_please_wait));
            if (CategoriesActivity.i(oTRUpdateContents)) {
                Log.d("XCIPTV_TAG", "OTRUpdateContents Background Process is running");
            } else {
                Log.d("XCIPTV_TAG", "OTRUpdateContents Background Process is no running");
            }
            q0.q().f(0, "ORT_PROCESS_STATUS");
            if (Methods.R(oTRUpdateContents)) {
                if (ORPlayerMainActivity.w(oTRUpdateContents)) {
                    Log.d("XCIPTV_TAG", "OTRUpdateContents JobScheduler is Running");
                    Log.d("XCIPTV_TAG", "OTRUpdateContents stopBackgroundTask");
                    ((JobScheduler) oTRUpdateContents.getSystemService("jobscheduler")).cancel(123);
                } else {
                    Log.d("XCIPTV_TAG", "OTRUpdateContents JobScheduler is not Running");
                    Log.d("XCIPTV_TAG", "OTRUpdateContents stopBackgroundTask");
                }
            } else if (CategoriesActivity.i(oTRUpdateContents)) {
                Log.d("XCIPTV_TAG", "OTRUpdateContents JobScheduler is Running");
                Log.d("XCIPTV_TAG", "OTRUpdateContents stopBackgroundTask");
                CategoriesActivity.m(oTRUpdateContents);
            } else {
                Log.d("XCIPTV_TAG", "OTRUpdateContents JobScheduler is not Running");
                Log.d("XCIPTV_TAG", "OTRUpdateContents stopBackgroundTask");
            }
            if (q0.q().b("ORT_PROCESS_STATUS") == 0) {
                q0.q().f(1, "ORT_PROCESS_STATUS");
                d();
            } else {
                b(oTRUpdateContents.getString(R.string.xc_another_process_running));
            }
        } else {
            b("Please check your internet connection.");
            this.f29308O.setEnabled(true);
            this.f29308O.setText(oTRUpdateContents.getString(R.string.xc_close));
        }
        this.f29308O.setOnClickListener(new ViewOnClickListenerC0144i(this, 4));
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
    }
}
