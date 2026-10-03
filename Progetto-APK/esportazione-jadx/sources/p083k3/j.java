package p083k3;

import F2.G;
import G2.c;
import Q5.a;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.webkit.WebView;
import android.widget.Toast;
import b7.S0;
import c7.d;
import com.bumptech.glide.b;
import com.bumptech.glide.l;
import com.google.android.gms.internal.ads.AbstractC1346g8;
import com.google.android.gms.internal.ads.H4;
import com.google.android.gms.internal.ads.I4;
import com.google.protobuf.U2;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.r;
import p086l.C3061x;
import p113o3.DialogInterfaceOnClickListenerC3149g;
import p120p3.h;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.DeviceStatus;
import pe.hf.black20.MovieInfoActivity;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.ProgramRemindersActivity;
import pe.hf.black20.R;
import pe.hf.black20.ServiceStatusActivity;
import pe.hf.black20.SplashActivity;
import pe.hf.black20.UsersHistoryActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.updatecontents.M3UUpdateContents;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.OTRApp;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class j extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f25969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f25970b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(S0 s7) {
        this(s7, 4);
        this.f25969a = 4;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00ee  */
    private void c(Void r19) {
        String string;
        super.onPostExecute(r19);
        Object obj = this.f25970b;
        MovieInfoActivity movieInfoActivity = (MovieInfoActivity) obj;
        movieInfoActivity.f28631N.setText(movieInfoActivity.f28638U);
        if (movieInfoActivity.f28630M != null) {
            try {
                ((MovieInfoActivity) obj).f28632O.setText(((MovieInfoActivity) obj).f28630M.getString("genre"));
                String string2 = ((MovieInfoActivity) obj).f28630M.getString("rating");
                if (string2.length() > 0) {
                    try {
                        int i8 = Integer.parseInt(string2.substring(0, 1));
                        String str = HttpUrl.FRAGMENT_ENCODE_SET;
                        int i9 = 0;
                        while (i9 < i8) {
                            String str2 = str + "⭐";
                            int i10 = i8;
                            ((MovieInfoActivity) obj).f28637T.setText(str2 + " (" + ((MovieInfoActivity) obj).f28630M.getString("rating") + ")");
                            i9++;
                            i8 = i10;
                            str = str2;
                        }
                    } catch (Exception unused) {
                        ((MovieInfoActivity) obj).f28637T.setText(((MovieInfoActivity) obj).f28630M.getString("rating"));
                    }
                }
                String string3 = ((MovieInfoActivity) obj).f28630M.getString("releasedate");
                if (((MovieInfoActivity) obj).f28630M.has("duration_secs")) {
                    String string4 = ((MovieInfoActivity) obj).f28630M.getString("duration_secs");
                    if (string4.length() > 2) {
                        string = Methods.D(Integer.parseInt(string4));
                    } else if (((MovieInfoActivity) obj).f28630M.getString("duration").equals("00:00:00")) {
                        string = HttpUrl.FRAGMENT_ENCODE_SET;
                    } else {
                        string = ((MovieInfoActivity) obj).f28630M.getString("duration");
                    }
                } else {
                    string = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                if (string3.length() > 8) {
                    String strX = Methods.x(((MovieInfoActivity) obj).f28630M.getString("releasedate"));
                    if (strX.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                        ((MovieInfoActivity) obj).f28633P.setText(string + "  " + strX);
                    } else {
                        ((MovieInfoActivity) obj).f28633P.setText(((MovieInfoActivity) obj).f28630M.getString("releasedate"));
                    }
                }
                ((MovieInfoActivity) obj).f28636S.setText(((MovieInfoActivity) obj).f28630M.getString("director"));
                ((MovieInfoActivity) obj).f28635R.setText(((MovieInfoActivity) obj).f28630M.getString("cast"));
                ((MovieInfoActivity) obj).f28634Q.setText(((MovieInfoActivity) obj).f28630M.getString("plot"));
                ((MovieInfoActivity) obj).f28643Z = ((MovieInfoActivity) obj).f28624G.getString(R.string.xc_rating) + ": " + ((MovieInfoActivity) obj).f28630M.getString("rating") + " " + ((MovieInfoActivity) obj).f28624G.getString(R.string.xc_genre) + ": " + ((MovieInfoActivity) obj).f28630M.getString("genre") + " " + ((MovieInfoActivity) obj).f28624G.getString(R.string.xc_date) + ": " + ((MovieInfoActivity) obj).f28630M.getString("releasedate");
                if (((MovieInfoActivity) obj).f28630M.getString("movie_image").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    ((l) b.d(((MovieInfoActivity) obj).f28624G).m(Integer.valueOf(R.drawable.xciptv_vod)).g()).H(c.b(((MovieInfoActivity) obj).f28654k0)).F(((MovieInfoActivity) obj).f28647d0);
                } else {
                    try {
                        ((l) ((l) ((l) b.d(((MovieInfoActivity) obj).f28624G).n(((MovieInfoActivity) obj).f28630M.getString("movie_image").replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET)).g()).H(c.b(((MovieInfoActivity) obj).f28654k0)).m(R.drawable.xciptv_vod)).f(R.drawable.xciptv_vod)).F(((MovieInfoActivity) obj).f28647d0);
                    } catch (Exception unused2) {
                        Log.d("XCIPTV_TAG", "Picasso Crashed");
                    }
                }
                new JSONArray();
                if (((MovieInfoActivity) obj).f28630M.getJSONArray("backdrop_path").length() > 0) {
                    ((MovieInfoActivity) obj).f28644a0 = ((MovieInfoActivity) obj).f28630M.getJSONArray("backdrop_path").getString(0);
                    ((MovieInfoActivity) obj).f28644a0 = ((MovieInfoActivity) obj).f28644a0.replaceAll(" ", "%20");
                    ((MovieInfoActivity) obj).f28644a0 = ((MovieInfoActivity) obj).f28644a0.replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET);
                } else {
                    ((MovieInfoActivity) obj).f28644a0 = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                if (((MovieInfoActivity) obj).f28644a0.length() >= 10) {
                    try {
                        ((MovieInfoActivity) obj).f28644a0 = ((MovieInfoActivity) obj).f28644a0.replaceAll(" ", "%20");
                        ((MovieInfoActivity) obj).f28644a0 = ((MovieInfoActivity) obj).f28644a0.replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET);
                        if (Methods.R(((MovieInfoActivity) obj).f28624G)) {
                            ((l) ((l) ((l) b.d(((MovieInfoActivity) obj).f28624G).n(((MovieInfoActivity) obj).f28644a0).b()).H(c.b(((MovieInfoActivity) obj).f28654k0)).f(R.drawable.corner_shadow)).m(R.drawable.corner_shadow)).F(((MovieInfoActivity) obj).f28651h0);
                        } else {
                            ((l) ((l) ((l) b.d(((MovieInfoActivity) obj).f28624G).n(((MovieInfoActivity) obj).f28644a0).b()).H(c.b(((MovieInfoActivity) obj).f28654k0)).f(R.drawable.bg2)).m(R.drawable.bg2)).F(((MovieInfoActivity) obj).f28651h0);
                        }
                    } catch (Exception unused3) {
                        Log.d("XCIPTV_TAG", "Glide Crashed");
                    }
                } else if (Methods.R(((MovieInfoActivity) obj).f28624G)) {
                    ((l) b.d(((MovieInfoActivity) obj).f28624G).m(Integer.valueOf(R.drawable.corner_shadow)).b()).H(c.b(((MovieInfoActivity) obj).f28654k0)).F(((MovieInfoActivity) obj).f28651h0);
                } else {
                    ((l) b.d(((MovieInfoActivity) obj).f28624G).m(Integer.valueOf(R.drawable.bg2)).b()).H(c.b(((MovieInfoActivity) obj).f28654k0)).F(((MovieInfoActivity) obj).f28651h0);
                }
                ((MovieInfoActivity) obj).f28652i0 = ((MovieInfoActivity) obj).f28630M.getString("youtube_trailer");
            } catch (JSONException unused4) {
            }
        }
        movieInfoActivity.f28627J.requestFocus();
    }

    public final void a() throws Throwable {
        ORPlayerMainActivity oRPlayerMainActivity;
        String str;
        int i8 = this.f25969a;
        int i9 = 5;
        Object obj = this.f25970b;
        switch (i8) {
            case 1:
                try {
                    ((DeviceStatus) obj).f28544M = new JSONObject(new G(i9).E(DeviceStatus.papi() + "ApiIPTV.php?tag=lic&l=" + Methods.g(Config.f29413a)));
                    ((DeviceStatus) obj).f28546O = ((DeviceStatus) obj).f28544M.getString("success");
                    ((DeviceStatus) obj).f28545N = new JSONObject(((DeviceStatus) obj).f28544M.getString("app"));
                    ((DeviceStatus) obj).f28547P = ((DeviceStatus) obj).f28545N.getString("status");
                } catch (JSONException unused) {
                    return;
                }
                break;
            case 2:
                String strC = !U2.z("ORT_VOD_PORTAL", "no", "no") ? q0.q().c("ORT_VOD_PORTAL", "no") : Encrypt.a(((MovieInfoActivity) obj).f28626I.f25482e);
                MovieInfoActivity movieInfoActivity = (MovieInfoActivity) obj;
                String strE = new G(i9).E(strC + "/player_api.php?username=" + Encrypt.a(movieInfoActivity.f28626I.f25480c) + "&password=" + Encrypt.a(movieInfoActivity.f28626I.f25481d) + "&action=get_vod_info&vod_id=" + movieInfoActivity.f28639V);
                if (strE != null) {
                    try {
                        ((MovieInfoActivity) obj).f28629L = new JSONObject(strE);
                        ((MovieInfoActivity) obj).f28630M = ((MovieInfoActivity) obj).f28629L.getJSONObject("info");
                    } catch (JSONException unused2) {
                        Log.d("XCIPTV_TAG", "-------------------No info");
                        movieInfoActivity.f28630M = null;
                        return;
                    }
                }
                break;
            case 3:
                String str2 = MqttTopic.TOPIC_LEVEL_SEPARATOR;
                String str3 = "stream_id";
                String str4 = "ORT_LAST_CHANNEL_NAME";
                String str5 = "ORT_LAST_CATEGORY_ID";
                ORPlayerMainActivity oRPlayerMainActivity2 = (ORPlayerMainActivity) obj;
                String strA = Encrypt.a(oRPlayerMainActivity2.f28795r0.f25480c);
                String strA2 = Encrypt.a(oRPlayerMainActivity2.f28795r0.f25481d);
                new ArrayList();
                q0.t(oRPlayerMainActivity2.f28782e0);
                if (oRPlayerMainActivity2.f28799v0) {
                    oRPlayerMainActivity2.f28800w0 = q0.u(oRPlayerMainActivity2.f28782e0, false, "all", "default", "0");
                } else {
                    oRPlayerMainActivity2.f28800w0 = q0.u(oRPlayerMainActivity2.f28782e0, false, "all", "default", q0.q().c("ORT_program_reminder_Category_id", HttpUrl.FRAGMENT_ENCODE_SET));
                }
                int i10 = 0;
                while (i10 < oRPlayerMainActivity2.f28800w0.size()) {
                    try {
                        if (((ORPlayerMainActivity) obj).f28799v0) {
                            if (((String) ((HashMap) ((ORPlayerMainActivity) obj).f28800w0.get(i10)).get("name")).toLowerCase().equals(q0.q().c(str4, HttpUrl.FRAGMENT_ENCODE_SET).toLowerCase())) {
                                oRPlayerMainActivity = oRPlayerMainActivity2;
                                try {
                                    q0.q().g(str5, (String) ((HashMap) ((ORPlayerMainActivity) obj).f28800w0.get(i10)).get("category_id"));
                                    String str6 = strA2;
                                    try {
                                        q0.q().g("ORT_LAST_CATEGORY_NAME", ((ORPlayerMainActivity) obj).f28794q0.G0(q0.q().c(str5, HttpUrl.FRAGMENT_ENCODE_SET)));
                                        ((ORPlayerMainActivity) obj).f28801x0 = q0.u(((ORPlayerMainActivity) obj).f28782e0, false, "all", "default", q0.q().c(str5, HttpUrl.FRAGMENT_ENCODE_SET));
                                        ((ORPlayerMainActivity) obj).f28802y0 = null;
                                        ((ORPlayerMainActivity) obj).f28802y0 = new JSONArray((Collection) ((ORPlayerMainActivity) obj).f28801x0);
                                        int i11 = 0;
                                        while (i11 < ((ORPlayerMainActivity) obj).f28802y0.length()) {
                                            JSONObject jSONObject = ((ORPlayerMainActivity) obj).f28802y0.getJSONObject(i11);
                                            if (jSONObject.getString("name").toLowerCase().equals(q0.q().c(str4, HttpUrl.FRAGMENT_ENCODE_SET).toLowerCase())) {
                                                str4 = str4;
                                                try {
                                                    q0.q().g("ORT_LAST_CHANNEL_POS", String.valueOf(i11));
                                                    q0.q().g("ORT_LAST_STREAM_ID", (String) ((HashMap) ((ORPlayerMainActivity) obj).f28800w0.get(i10)).get(str3));
                                                    if (jSONObject.getString("direct_source").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                                                        a aVarQ = q0.q();
                                                        StringBuilder sb = new StringBuilder();
                                                        str5 = str5;
                                                        try {
                                                            sb.append(Encrypt.a(((ORPlayerMainActivity) obj).f28795r0.f25482e));
                                                            sb.append("/live/");
                                                            sb.append(strA);
                                                            sb.append(str2);
                                                            str = str6;
                                                            try {
                                                                sb.append(str);
                                                                sb.append(str2);
                                                                sb.append(jSONObject.getString(str3));
                                                                sb.append(".");
                                                                str2 = str2;
                                                                str3 = str3;
                                                                try {
                                                                    sb.append(((ORPlayerMainActivity) obj).f28783f0.getString("streamFormat", null));
                                                                    aVarQ.g("ORT_LAST_STREAM_URL", sb.toString());
                                                                } catch (JSONException unused3) {
                                                                }
                                                            } catch (JSONException unused4) {
                                                                str2 = str2;
                                                                str3 = str3;
                                                            }
                                                        } catch (JSONException unused5) {
                                                            str3 = str3;
                                                            str = str6;
                                                            str2 = str2;
                                                        }
                                                    } else {
                                                        str3 = str3;
                                                        str5 = str5;
                                                        str = str6;
                                                        str2 = str2;
                                                        q0.q().g("ORT_LAST_STREAM_URL", jSONObject.getString("direct_source"));
                                                    }
                                                } catch (JSONException unused6) {
                                                    str3 = str3;
                                                    str5 = str5;
                                                }
                                            } else {
                                                str3 = str3;
                                                str4 = str4;
                                                str5 = str5;
                                                str = str6;
                                                str2 = str2;
                                            }
                                            i11++;
                                            str2 = str2;
                                            str4 = str4;
                                            str3 = str3;
                                            str6 = str;
                                            str5 = str5;
                                        }
                                    } catch (JSONException unused7) {
                                    }
                                    str3 = str3;
                                    str4 = str4;
                                    str5 = str5;
                                    str = str6;
                                    str2 = str2;
                                } catch (JSONException unused8) {
                                    str = strA2;
                                }
                            } else {
                                oRPlayerMainActivity = oRPlayerMainActivity2;
                            }
                            str = strA2;
                        } else {
                            str2 = str2;
                            str3 = str3;
                            str4 = str4;
                            str5 = str5;
                            oRPlayerMainActivity = oRPlayerMainActivity2;
                            str = strA2;
                            if (((String) ((HashMap) ((ORPlayerMainActivity) obj).f28800w0.get(i10)).get("name")).equals(q0.q().c("ORT_program_reminder_Channel_name", HttpUrl.FRAGMENT_ENCODE_SET))) {
                                q0.q().f(i10, "ORT_program_reminder_channel_pos");
                            }
                        }
                    } catch (JSONException unused9) {
                    }
                    i10++;
                    strA2 = str;
                    oRPlayerMainActivity2 = oRPlayerMainActivity;
                    str2 = str2;
                    str4 = str4;
                    str5 = str5;
                    str3 = str3;
                }
                break;
            case 4:
                String strC2 = !U2.z("ORT_VOD_PORTAL", "no", "no") ? q0.q().c("ORT_VOD_PORTAL", "no") : Encrypt.a(((S0) obj).f10184F0.f25482e);
                S0 s7 = (S0) obj;
                String strE2 = new G(i9).E(strC2 + "/player_api.php?username=" + Encrypt.a(s7.f10184F0.f25480c) + "&password=" + Encrypt.a(s7.f10184F0.f25481d) + "&action=get_vod_info&vod_id=" + s7.f10210f1);
                if (strE2 != null) {
                    try {
                        ((S0) obj).f10207c1 = new JSONObject(strE2).getJSONObject("info");
                    } catch (JSONException unused10) {
                        Log.d("XCIPTV_TAG", "-------------------No info");
                        s7.f10207c1 = null;
                        return;
                    }
                }
                break;
            case 5:
                ProgramRemindersActivity programRemindersActivity = (ProgramRemindersActivity) obj;
                new ArrayList();
                programRemindersActivity.getClass();
                q0.t(programRemindersActivity.f29029G);
                break;
            case 6:
            default:
                try {
                    URL url = new URL(Encrypt.a(((M3UUpdateContents) obj).f29379J.f25482e));
                    HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setRequestProperty("User-Agent", ((M3UUpdateContents) obj).f29376G.getString("agent", null));
                    httpURLConnection.setReadTimeout(35000);
                    httpURLConnection.setConnectTimeout(40000);
                    httpURLConnection.connect();
                    int contentLength = httpURLConnection.getContentLength();
                    InputStream inputStreamOpenStream = url.openStream();
                    File file = new File(String.valueOf(((M3UUpdateContents) obj).getFilesDir()));
                    if (!file.exists()) {
                        file.mkdir();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file + "/tv_m3u.txt");
                    byte[] bArr = new byte[1024];
                    long j8 = 0;
                    int i12 = 0;
                    while (true) {
                        int i13 = inputStreamOpenStream.read(bArr);
                        if (i13 == -1) {
                            inputStreamOpenStream.close();
                            fileOutputStream.close();
                        } else {
                            j8 += (long) i13;
                            int i14 = (((int) j8) * 100) / contentLength;
                            if (i14 % 10 == 0 && i12 != i14) {
                                i12 = i14;
                            }
                            fileOutputStream.write(bArr, 0, i13);
                        }
                    }
                } catch (FileNotFoundException e8) {
                    e8.printStackTrace();
                    return;
                } catch (MalformedURLException e9) {
                    e9.printStackTrace();
                } catch (IOException e10) {
                    e10.printStackTrace();
                    return;
                }
                break;
            case 7:
                UsersHistoryActivity usersHistoryActivity = (UsersHistoryActivity) obj;
                SharedPreferences sharedPreferences = usersHistoryActivity.f29228G.getSharedPreferences("pe.hf.black20", 0);
                usersHistoryActivity.f29229H = sharedPreferences;
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString("xciptv_profile", usersHistoryActivity.f29246Y);
                if (usersHistoryActivity.f29246Y.contains("(XC)")) {
                    editorEdit.putString("whichPanel", "xtreamcodes");
                } else if (usersHistoryActivity.f29246Y.contains("(M3U)")) {
                    editorEdit.putString("whichPanel", "m3u");
                } else if (usersHistoryActivity.f29246Y.contains("(EZS)")) {
                    editorEdit.putString("whichPanel", "ezserver");
                } else if (usersHistoryActivity.f29246Y.contains("(OTR)")) {
                    editorEdit.putString("whichPanel", "otr");
                } else {
                    editorEdit.putString("whichPanel", "xtreamcodes");
                }
                editorEdit.apply();
                editorEdit.commit();
                q0.q().g("ORT_PROFILE", usersHistoryActivity.f29246Y);
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:169:0x020e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0155  */
    /* JADX WARN: Code duplicated, block: B:39:0x015d  */
    /* JADX WARN: Code duplicated, block: B:41:0x016d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0170  */
    /* JADX WARN: Code duplicated, block: B:45:0x0178  */
    /* JADX WARN: Code duplicated, block: B:48:0x0182  */
    /* JADX WARN: Code duplicated, block: B:50:0x018b  */
    /* JADX WARN: Code duplicated, block: B:53:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:54:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:57:0x01fc  */
    public final void b(Void r18) throws Throwable {
        StringBuilder sb;
        String[] strArr;
        String str;
        String str2;
        String str3;
        HashMap map;
        String[] strArrSplit;
        String[] strArrSplit2;
        String[] strArrSplit3;
        String str4;
        BufferedReader bufferedReader;
        int i8 = this.f25969a;
        Object obj = this.f25970b;
        switch (i8) {
            case 1:
                super.onPostExecute(r18);
                DeviceStatus deviceStatus = (DeviceStatus) obj;
                deviceStatus.f28538G.setVisibility(4);
                if (deviceStatus.f28546O.equals("1") && deviceStatus.f28547P.equals("Active")) {
                    Log.d("XCIPTV_TAG", "------Valid License-----");
                    SharedPreferences sharedPreferences = deviceStatus.f28540I.getSharedPreferences("pe.hf.black20", 0);
                    deviceStatus.f28539H = sharedPreferences;
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    try {
                        editorEdit.putString("portal", ((DeviceStatus) obj).f28545N.getString("portal"));
                        editorEdit.apply();
                        break;
                    } catch (JSONException unused) {
                    }
                    Log.d("XCIPTV_TAG", "------Invalid License-----");
                    deviceStatus.startActivity(new Intent(deviceStatus, (Class<?>) SplashActivity.class));
                    deviceStatus.finish();
                } else {
                    AlertDialog alertDialogCreate = new AlertDialog.Builder(deviceStatus).create();
                    alertDialogCreate.setTitle("Failed!");
                    alertDialogCreate.setMessage(deviceStatus.f28540I.getString(R.string.xc_tv_box_license_not_active));
                    alertDialogCreate.setButton(-3, deviceStatus.f28540I.getString(R.string.xc_ok), new DialogInterfaceOnClickListenerC3149g(this, 3));
                    alertDialogCreate.show();
                }
                break;
            case 2:
                c(r18);
                break;
            case 3:
                super.onPostExecute(r18);
                ORPlayerMainActivity oRPlayerMainActivity = (ORPlayerMainActivity) obj;
                if (!oRPlayerMainActivity.f28799v0) {
                    String strA = Encrypt.a(oRPlayerMainActivity.f28795r0.f25480c);
                    String strA2 = Encrypt.a(oRPlayerMainActivity.f28795r0.f25481d);
                    q0.q().g("ORT_WHICH_CAT", "TV");
                    q0.q().g("ORT_CAT_NAME", q0.q().c("ORT_program_reminder_Category_name", HttpUrl.FRAGMENT_ENCODE_SET));
                    ORPlayerMainActivity oRPlayerMainActivity2 = oRPlayerMainActivity.f28782e0;
                    Intent intent = new Intent(oRPlayerMainActivity2, (Class<?>) PlayStreamEPGActivity.class);
                    if (U2.z("ORT_program_reminder_Direct_source", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(Encrypt.a(oRPlayerMainActivity.f28795r0.f25482e));
                        sb2.append("/live/");
                        sb2.append(strA);
                        sb2.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                        StringBuilder sbO = U2.o(r.j(sb2, strA2, MqttTopic.TOPIC_LEVEL_SEPARATOR));
                        U2.x("ORT_program_reminder_Stream_id", HttpUrl.FRAGMENT_ENCODE_SET, sbO, ".");
                        intent.putExtra("streamurl", U2.h(oRPlayerMainActivity.f28783f0, "streamFormat", null, sbO));
                    } else {
                        intent.putExtra("streamurl", q0.q().c("ORT_program_reminder_Direct_source", HttpUrl.FRAGMENT_ENCODE_SET));
                    }
                    intent.putExtra("name", q0.q().c("ORT_program_reminder_Channel_name", HttpUrl.FRAGMENT_ENCODE_SET));
                    intent.putExtra("stream_id", q0.q().c("ORT_program_reminder_Stream_id", HttpUrl.FRAGMENT_ENCODE_SET));
                    intent.putExtra("position", String.valueOf(q0.q().b("ORT_program_reminder_channel_pos")));
                    oRPlayerMainActivity2.startActivity(intent);
                } else if (!q0.q().c("ORT_LAST_STREAM_URL", HttpUrl.FRAGMENT_ENCODE_SET).isEmpty()) {
                    q0.q().g("ORT_WHICH_CAT", "TV");
                    oRPlayerMainActivity.f28799v0 = false;
                    Intent intent2 = new Intent(oRPlayerMainActivity.f28782e0, (Class<?>) ChannelListActivity.class);
                    intent2.putExtra("forFavorNot", "no");
                    oRPlayerMainActivity.startActivity(intent2);
                }
                break;
            case 4:
                super.onPostExecute(r18);
                if (((S0) obj).f10207c1 != null) {
                    try {
                        ((S0) obj).f10200V0.setText(((S0) obj).f10207c1.getString("genre"));
                        ((S0) obj).f10201W0.setText(((S0) obj).f10207c1.getString("plot"));
                        if (((S0) obj).f10207c1.getString("cast").length() > 3) {
                            ((S0) obj).f10203Y0.setText("Cast: " + ((S0) obj).f10207c1.getString("cast"));
                        }
                        if (((S0) obj).f10207c1.getString("director").length() > 3) {
                            ((S0) obj).f10202X0.setText("Director: " + ((S0) obj).f10207c1.getString("director"));
                        }
                        String string = ((S0) obj).f10207c1.getString("releasedate");
                        String string2 = ((S0) obj).f10207c1.getString("duration_secs");
                        String strD = string2.length() > 2 ? Methods.D(Integer.parseInt(string2)) : ((S0) obj).f10207c1.getString("duration").equals("00:00:00") ? HttpUrl.FRAGMENT_ENCODE_SET : ((S0) obj).f10207c1.getString("duration");
                        if (string.length() > 8) {
                            try {
                                string = Methods.x(((S0) obj).f10207c1.getString("releasedate"));
                                break;
                            } catch (Exception unused2) {
                            }
                        }
                        ((S0) obj).f10199U0.setText(strD + "   " + string);
                        String string3 = ((S0) obj).f10207c1.getString("rating");
                        if (string3.length() > 0) {
                            try {
                                int i9 = Integer.parseInt(string3.substring(0, 1));
                                String str5 = HttpUrl.FRAGMENT_ENCODE_SET;
                                for (int i10 = 0; i10 < i9; i10++) {
                                    str5 = str5 + "⭐";
                                    ((S0) obj).f10198T0.setText(str5 + " (" + ((S0) obj).f10207c1.getString("rating") + ")");
                                }
                            } catch (Exception unused3) {
                                ((S0) obj).f10198T0.setText(((S0) obj).f10207c1.getString("rating"));
                            }
                        }
                        new JSONArray();
                        if (((S0) obj).f10207c1.getJSONArray("backdrop_path").length() > 0) {
                            try {
                                ((l) ((l) b.d(((S0) obj).l()).n(((S0) obj).f10207c1.getJSONArray("backdrop_path").getString(0).replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET)).b()).H(c.b(((S0) obj).f10208d1)).f(R.drawable.blank)).F(((S0) obj).f10196R0);
                            } catch (Exception unused4) {
                                Log.d("XCIPTV_TAG", "--------Exception----------- Glide.with");
                                return;
                            }
                        } else if (!((S0) obj).f10207c1.getString("movie_image").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                            try {
                                ((l) b.d(((S0) obj).l()).n(((S0) obj).f10207c1.getString("movie_image").replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET)).b()).H(c.b(((S0) obj).f10208d1)).F(((S0) obj).f10196R0);
                            } catch (Exception unused5) {
                                Log.d("XCIPTV_TAG", "Picasso Crashed");
                                return;
                            }
                        }
                    } catch (JSONException unused6) {
                        return;
                    }
                }
                break;
            case 5:
                super.onPostExecute(r18);
                ProgramRemindersActivity programRemindersActivity = (ProgramRemindersActivity) obj;
                String strA3 = Encrypt.a(programRemindersActivity.f29036N.f25480c);
                String strA4 = Encrypt.a(programRemindersActivity.f29036N.f25481d);
                ProgramRemindersActivity programRemindersActivity2 = programRemindersActivity.f29029G;
                Intent intent3 = new Intent(programRemindersActivity2, (Class<?>) PlayStreamEPGActivity.class);
                if (programRemindersActivity.f29037O[6].equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(Encrypt.a(programRemindersActivity.f29036N.f25482e));
                    sb3.append("/live/");
                    sb3.append(strA3);
                    sb3.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                    StringBuilder sbO2 = U2.o(r.j(sb3, strA4, MqttTopic.TOPIC_LEVEL_SEPARATOR));
                    sbO2.append(programRemindersActivity.f29037O[5]);
                    sbO2.append(".");
                    intent3.putExtra("streamurl", U2.h(programRemindersActivity.f29030H, "streamFormat", null, sbO2));
                } else {
                    intent3.putExtra("streamurl", programRemindersActivity.f29037O[6]);
                }
                intent3.putExtra("name", programRemindersActivity.f29037O[1]);
                intent3.putExtra("stream_id", programRemindersActivity.f29037O[5]);
                intent3.putExtra("position", programRemindersActivity.f29037O[7]);
                programRemindersActivity2.startActivity(intent3);
                break;
            case 6:
            default:
                super.onPostExecute(r18);
                M3UUpdateContents m3UUpdateContents = (M3UUpdateContents) obj;
                m3UUpdateContents.f29388S.setVisibility(4);
                SQLiteDatabase writableDatabase = m3UUpdateContents.f29378I.getWritableDatabase();
                writableDatabase.delete("epg_channel", null, null);
                writableDatabase.delete("epg_programme", null, null);
                writableDatabase.close();
                m3UUpdateContents.f29383N = null;
                m3UUpdateContents.f29383N = new ArrayList();
                new JSONArray();
                m3UUpdateContents.f29382M = null;
                m3UUpdateContents.f29382M = new ArrayList();
                m3UUpdateContents.f29384O = null;
                m3UUpdateContents.f29384O = new JSONArray();
                try {
                    try {
                        Scanner scanner = new Scanner(new File(String.valueOf(((M3UUpdateContents) obj).getFilesDir()).concat("/tv_m3u.txt")));
                        PrintStream printStream = new PrintStream(new File(String.valueOf(((M3UUpdateContents) obj).getFilesDir()).concat("/tv_m3u2.txt")));
                        while (scanner.hasNextLine()) {
                            String strTrim = scanner.nextLine().trim();
                            if (strTrim.length() > 0) {
                                printStream.println(strTrim);
                            }
                        }
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line != null) {
                                sb.append(line);
                                sb.append('\n');
                            }
                            String[] strArrSplit4 = sb.toString().replaceAll("\"", HttpUrl.FRAGMENT_ENCODE_SET).split("\\n#EXTINF:");
                            m3UUpdateContents.f29385P = new String[strArrSplit4.length];
                            int i11 = 1;
                            while (i11 < strArrSplit4.length) {
                                m3UUpdateContents.f29386Q++;
                                String[] strArrSplit5 = strArrSplit4[i11].split("\\n");
                                String str6 = strArrSplit5[0];
                                String[] strArrSplit6 = str6.split(",");
                                String str7 = strArrSplit6.length > 1 ? strArrSplit6[1] : HttpUrl.FRAGMENT_ENCODE_SET;
                                if (str6.contains("tvg-logo=")) {
                                    String[] strArrSplit7 = str6.split("tvg-logo=");
                                    strArr = strArrSplit4;
                                    if (strArrSplit7.length > 1) {
                                        str = strArrSplit7[1].split(" ")[0];
                                    }
                                    str2 = "All";
                                    if (str6.contains("group-title=")) {
                                        strArrSplit = str6.split("group-title=");
                                        if (strArrSplit.length > 1) {
                                            strArrSplit2 = strArrSplit[1].split(",");
                                            strArrSplit3 = strArrSplit2[0].split("tvg-logo=");
                                            if (strArrSplit3.length > 1) {
                                                str4 = strArrSplit3[0];
                                            } else {
                                                str4 = strArrSplit2[0];
                                            }
                                            if (str4.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                                                str4 = "All";
                                            }
                                            if (str4.contains("user-agent=")) {
                                                str4 = str4.split("user-agent=")[0];
                                            }
                                            str2 = str4;
                                        } else {
                                            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                        }
                                    }
                                    str3 = str2;
                                    map = new HashMap();
                                    map.put("num", String.valueOf(m3UUpdateContents.f29386Q));
                                    map.put("name", str7);
                                    map.put("stream_type", "live");
                                    map.put("stream_id", String.valueOf(m3UUpdateContents.f29386Q));
                                    map.put("stream_icon", str);
                                    map.put("epg_channel_id", HttpUrl.FRAGMENT_ENCODE_SET);
                                    map.put("added", HttpUrl.FRAGMENT_ENCODE_SET);
                                    map.put("tv_archive", HttpUrl.FRAGMENT_ENCODE_SET);
                                    map.put("tv_archive_duration", HttpUrl.FRAGMENT_ENCODE_SET);
                                    map.put("custom_sid", HttpUrl.FRAGMENT_ENCODE_SET);
                                    map.put("category_id", str3);
                                    map.put("type", "live");
                                    if (strArrSplit5.length > 1) {
                                        map.put("direct_source", strArrSplit5[1]);
                                    } else {
                                        map.put("direct_source", "nolink");
                                    }
                                    m3UUpdateContents.f29382M.add(map);
                                    if (!Arrays.asList(m3UUpdateContents.f29385P).contains(str3)) {
                                        HashMap mapM = r.m("category_id", str3, "category_name", str3);
                                        mapM.put("parent_id", "0");
                                        m3UUpdateContents.f29383N.add(mapM);
                                    }
                                    m3UUpdateContents.f29385P[i11] = str3;
                                    i11++;
                                    strArrSplit4 = strArr;
                                } else {
                                    strArr = strArrSplit4;
                                }
                                str = HttpUrl.FRAGMENT_ENCODE_SET;
                                str2 = "All";
                                if (str6.contains("group-title=")) {
                                    strArrSplit = str6.split("group-title=");
                                    if (strArrSplit.length > 1) {
                                        strArrSplit2 = strArrSplit[1].split(",");
                                        strArrSplit3 = strArrSplit2[0].split("tvg-logo=");
                                        if (strArrSplit3.length > 1) {
                                            str4 = strArrSplit3[0];
                                        } else {
                                            str4 = strArrSplit2[0];
                                        }
                                        if (str4.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                                            str4 = "All";
                                        }
                                        if (str4.contains("user-agent=")) {
                                            str4 = str4.split("user-agent=")[0];
                                        }
                                        str2 = str4;
                                    } else {
                                        str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                    }
                                }
                                str3 = str2;
                                map = new HashMap();
                                map.put("num", String.valueOf(m3UUpdateContents.f29386Q));
                                map.put("name", str7);
                                map.put("stream_type", "live");
                                map.put("stream_id", String.valueOf(m3UUpdateContents.f29386Q));
                                map.put("stream_icon", str);
                                map.put("epg_channel_id", HttpUrl.FRAGMENT_ENCODE_SET);
                                map.put("added", HttpUrl.FRAGMENT_ENCODE_SET);
                                map.put("tv_archive", HttpUrl.FRAGMENT_ENCODE_SET);
                                map.put("tv_archive_duration", HttpUrl.FRAGMENT_ENCODE_SET);
                                map.put("custom_sid", HttpUrl.FRAGMENT_ENCODE_SET);
                                map.put("category_id", str3);
                                map.put("type", "live");
                                if (strArrSplit5.length > 1) {
                                    map.put("direct_source", strArrSplit5[1]);
                                } else {
                                    map.put("direct_source", "nolink");
                                }
                                m3UUpdateContents.f29382M.add(map);
                                if (!Arrays.asList(m3UUpdateContents.f29385P).contains(str3)) {
                                    HashMap mapM2 = r.m("category_id", str3, "category_name", str3);
                                    mapM2.put("parent_id", "0");
                                    m3UUpdateContents.f29383N.add(mapM2);
                                }
                                m3UUpdateContents.f29385P[i11] = str3;
                                i11++;
                                strArrSplit4 = strArr;
                            }
                            m3UUpdateContents.f29378I.a0(new JSONArray((Collection) m3UUpdateContents.f29383N));
                            JSONArray jSONArray = new JSONArray((Collection) m3UUpdateContents.f29382M);
                            m3UUpdateContents.f29384O = jSONArray;
                            if (jSONArray.length() > 0) {
                                m3UUpdateContents.f29378I.k(m3UUpdateContents.f29384O);
                            }
                            m3UUpdateContents.f29387R.setText(m3UUpdateContents.f29380K.getString(R.string.xc_completed) + "!");
                            m3UUpdateContents.f29390U = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new Date());
                            SharedPreferences.Editor editorEdit2 = m3UUpdateContents.f29376G.edit();
                            editorEdit2.putString("tvvodseries_dl_time", m3UUpdateContents.f29390U);
                            editorEdit2.putString("epg_dl_time", m3UUpdateContents.f29390U);
                            if (!m3UUpdateContents.f29376G.contains("epg_manual_download")) {
                                editorEdit2.putString("epg_manual_download", m3UUpdateContents.f29390U);
                            }
                            editorEdit2.apply();
                            editorEdit2.commit();
                            m3UUpdateContents.f29381L.setText("Close");
                            m3UUpdateContents.f29381L.setEnabled(true);
                            m3UUpdateContents.f29389T = "yes";
                            q0.q().f(0, "ORT_PROCESS_STATUS");
                            m3UUpdateContents.finish();
                            Log.d("XCIPTV_TAG", "processPorgrammeData Completed1 -- Updatecontents");
                        }
                    } catch (FileNotFoundException e8) {
                        e8.printStackTrace();
                    }
                    bufferedReader = new BufferedReader(new FileReader(new File(String.valueOf(((M3UUpdateContents) obj).getFilesDir()) + "/tv_m3u2.txt")));
                } catch (IOException unused7) {
                    Log.d("XCIPTV_TAG", "Failed to open M3U file");
                }
                sb = new StringBuilder();
                break;
            case 7:
                super.onPostExecute(r18);
                UsersHistoryActivity usersHistoryActivity = (UsersHistoryActivity) obj;
                if (Methods.R(usersHistoryActivity.f29228G)) {
                    ORPlayerMainActivity.f28777I0 = true;
                }
                usersHistoryActivity.f29243V.dismiss();
                usersHistoryActivity.sendBroadcast(new Intent("finish_alert_login"));
                usersHistoryActivity.sendBroadcast(new Intent(ORPlayerMainActivity.FINISH_ALERT));
                usersHistoryActivity.startActivity(new Intent(usersHistoryActivity, (Class<?>) SplashActivity.class));
                usersHistoryActivity.finish();
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) throws Throwable {
        int i8 = this.f25969a;
        Object obj = this.f25970b;
        switch (i8) {
            case 0:
                try {
                    k kVar = (k) obj;
                    kVar.f25978N = (H4) kVar.f25973I.get(1000L, TimeUnit.MILLISECONDS);
                    break;
                } catch (InterruptedException e8) {
                    e = e8;
                    h.h(HttpUrl.FRAGMENT_ENCODE_SET, e);
                } catch (ExecutionException e9) {
                    e = e9;
                    h.h(HttpUrl.FRAGMENT_ENCODE_SET, e);
                } catch (TimeoutException e10) {
                    h.h(HttpUrl.FRAGMENT_ENCODE_SET, e10);
                }
                k kVar2 = (k) obj;
                kVar2.getClass();
                Uri.Builder builder = new Uri.Builder();
                builder.scheme("https://").appendEncodedPath((String) AbstractC1346g8.f18906d.l());
                C3061x c3061x = kVar2.f25975K;
                builder.appendQueryParameter("query", (String) c3061x.f26413J);
                builder.appendQueryParameter("pubId", (String) c3061x.f26411H);
                builder.appendQueryParameter("mappver", (String) c3061x.f26415L);
                Map map = (Map) c3061x.f26412I;
                for (String str : map.keySet()) {
                    builder.appendQueryParameter(str, (String) map.get(str));
                }
                Uri uriBuild = builder.build();
                H4 h8 = kVar2.f25978N;
                if (h8 != null) {
                    try {
                        uriBuild = H4.d(uriBuild, h8.f13700b.c(kVar2.f25974J));
                    } catch (I4 e11) {
                        h.h("Unable to process ad data", e11);
                    }
                    break;
                }
                return U2.l(kVar2.zzq(), MqttTopic.MULTI_LEVEL_WILDCARD, uriBuild.getEncodedQuery());
            case 1:
                a();
                return null;
            case 2:
                a();
                return null;
            case 3:
                a();
                return null;
            case 4:
                a();
                return null;
            case 5:
                a();
                return null;
            case 6:
                StringBuilder sb = new StringBuilder();
                ServiceStatusActivity serviceStatusActivity = (ServiceStatusActivity) obj;
                sb.append(Encrypt.a(serviceStatusActivity.f29153a0.f25482e));
                sb.append("/server/query_user_days_left?token=");
                sb.append(Encrypt.a(serviceStatusActivity.f29134H.getString("token", null)));
                String string = sb.toString();
                Log.d("Get Login URL: ", string);
                try {
                    ((ServiceStatusActivity) obj).f29154b0 = new G(5).E(string);
                    String str2 = ((ServiceStatusActivity) obj).f29154b0;
                    break;
                } catch (Exception unused) {
                }
                return null;
            case 7:
                a();
                return null;
            case 8:
                a();
                return null;
            default:
                Boolean bool = Boolean.FALSE;
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(pe.hf.black20.util.a.f29421J).openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.connect();
                    String strValueOf = String.valueOf(OTRApp.f29417G.getFilesDir());
                    File file = new File(strValueOf);
                    file.mkdirs();
                    File file2 = new File(file, "/xciptv.apk");
                    if (file2.exists()) {
                        file2.delete();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    InputStream inputStream = httpURLConnection.getInputStream();
                    int contentLength = httpURLConnection.getContentLength();
                    byte[] bArr = new byte[4096];
                    int i9 = 0;
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 == -1) {
                            fileOutputStream.close();
                            inputStream.close();
                            pe.hf.black20.util.a.a((pe.hf.black20.util.a) obj, strValueOf);
                            return Boolean.TRUE;
                        }
                        fileOutputStream.write(bArr, 0, i10);
                        i9 += i10;
                        int i11 = (i9 * 100) / contentLength;
                    }
                } catch (MalformedURLException e12) {
                    Log.d("XCIPTV_TAG", "Update Error: " + e12.getMessage());
                    return Boolean.FALSE;
                } catch (IOException e13) {
                    Log.d("XCIPTV_TAG", "Update Error: " + e13);
                    return bool;
                }
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) throws Throwable {
        ProgressDialog progressDialog;
        int i8 = this.f25969a;
        Object obj2 = this.f25970b;
        Date date = null;
        switch (i8) {
            case 0:
                String str = (String) obj;
                WebView webView = ((k) obj2).f25976L;
                if (webView != null && str != null) {
                    webView.loadUrl(str);
                    break;
                }
                break;
            case 1:
                b((Void) obj);
                break;
            case 2:
                b((Void) obj);
                break;
            case 3:
                b((Void) obj);
                break;
            case 4:
                b((Void) obj);
                break;
            case 5:
                b((Void) obj);
                break;
            case 6:
                super.onPostExecute((String) obj);
                ServiceStatusActivity serviceStatusActivity = (ServiceStatusActivity) obj2;
                String str2 = serviceStatusActivity.f29154b0;
                if (str2 != null) {
                    String strReplaceAll = str2.replaceAll("daysleft=", HttpUrl.FRAGMENT_ENCODE_SET);
                    serviceStatusActivity.f29154b0 = strReplaceAll;
                    String strReplaceAll2 = strReplaceAll.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
                    serviceStatusActivity.f29154b0 = strReplaceAll2;
                    String strTrim = strReplaceAll2.trim();
                    serviceStatusActivity.f29154b0 = strTrim;
                    Log.d("XCIPTV_TAG", strTrim);
                    int i9 = Integer.parseInt(serviceStatusActivity.f29154b0);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, MMM dd, yyyy");
                    try {
                        date = simpleDateFormat.parse(simpleDateFormat.format(new Date()));
                    } catch (ParseException e8) {
                        e8.printStackTrace();
                    }
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(date);
                    calendar.add(11, i9 * 24);
                    serviceStatusActivity.f29149W.setText(simpleDateFormat.format(calendar.getTime()));
                }
                break;
            case 7:
                b((Void) obj);
                break;
            case 8:
                b((Void) obj);
                break;
            default:
                Boolean bool = (Boolean) obj;
                super.onPostExecute(bool);
                if (pe.hf.black20.util.a.f29418G.isShowing() && (progressDialog = pe.hf.black20.util.a.f29418G) != null) {
                    progressDialog.dismiss();
                    pe.hf.black20.util.a.f29418G = null;
                }
                if (!bool.booleanValue()) {
                    Toast.makeText(pe.hf.black20.util.a.f29419H, "Error: Try Again", 0).show();
                } else {
                    Toast.makeText(pe.hf.black20.util.a.f29419H, "Update Done", 0).show();
                }
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        int i8 = this.f25969a;
        Object obj = this.f25970b;
        switch (i8) {
            case 1:
                super.onPreExecute();
                ((DeviceStatus) obj).f28538G.setVisibility(0);
                break;
            case 2:
                super.onPreExecute();
                break;
            case 3:
                super.onPreExecute();
                ORPlayerMainActivity oRPlayerMainActivity = (ORPlayerMainActivity) obj;
                if (oRPlayerMainActivity.f28799v0) {
                    q0.q().g("ORT_LAST_PROFILE", oRPlayerMainActivity.f28783f0.getString("last_profile", null));
                    q0.q().g("ORT_LAST_CHANNEL_NAME", oRPlayerMainActivity.f28783f0.getString("last_channel_name", null));
                }
                break;
            case 4:
                super.onPreExecute();
                break;
            case 5:
                super.onPreExecute();
                break;
            case 6:
                super.onPreExecute();
                break;
            case 7:
                super.onPreExecute();
                UsersHistoryActivity usersHistoryActivity = ((UsersHistoryActivity) obj).f29228G;
                SharedPreferences sharedPreferences = Methods.f29416a;
                SharedPreferences sharedPreferences2 = usersHistoryActivity.getSharedPreferences("pe.hf.black20", 0);
                c7.a aVar = new c7.a(usersHistoryActivity, 0);
                d dVar = new d(usersHistoryActivity);
                new c7.b(usersHistoryActivity, 1);
                c7.b bVar = new c7.b(usersHistoryActivity, 0);
                SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
                editorEdit.remove("streamUrl").commit();
                editorEdit.remove("streamFormat").commit();
                editorEdit.remove("timezone").commit();
                editorEdit.remove("message").commit();
                editorEdit.remove("is_trial").commit();
                editorEdit.remove("max_connections").commit();
                editorEdit.remove("exp_date").commit();
                editorEdit.remove("status_acc").commit();
                editorEdit.remove("appname").commit();
                editorEdit.remove("appkey").commit();
                editorEdit.remove("customerid").commit();
                editorEdit.remove("expire").commit();
                editorEdit.remove("status_app").commit();
                editorEdit.remove("support_email").commit();
                editorEdit.remove("support_phone").commit();
                editorEdit.remove("portal").commit();
                editorEdit.remove("portal2").commit();
                editorEdit.remove("portal3").commit();
                editorEdit.remove("timeShiftHR").commit();
                editorEdit.remove("timeShiftMin").commit();
                if (sharedPreferences2.contains("tvvodseries_dl_time")) {
                    editorEdit.remove("tvvodseries_dl_time").commit();
                }
                if (sharedPreferences2.contains("epg_dl_time")) {
                    editorEdit.remove("epg_dl_time").commit();
                }
                if (sharedPreferences2.contains("epg_manual_download")) {
                    editorEdit.remove("epg_manual_download").commit();
                }
                if (sharedPreferences2.contains("epg_dl_to_db_time")) {
                    editorEdit.remove("epg_dl_to_db_time").commit();
                }
                if (sharedPreferences2.contains("cat_filter_dl_time")) {
                    editorEdit.remove("cat_filter_dl_time").commit();
                }
                if (sharedPreferences2.contains("tv_arraylist_search")) {
                    editorEdit.remove("tv_arraylist_search").commit();
                }
                if (sharedPreferences2.contains("last_msg_display")) {
                    editorEdit.remove("last_msg_display").commit();
                }
                editorEdit.apply();
                aVar.b0();
                SQLiteDatabase writableDatabase = dVar.getWritableDatabase();
                writableDatabase.delete("tv_category", null, null);
                writableDatabase.delete("vod_category", null, null);
                writableDatabase.delete("series_category", null, null);
                writableDatabase.delete("liststreams", null, null);
                writableDatabase.delete("vods", null, null);
                writableDatabase.delete("series", null, null);
                writableDatabase.delete("epg_channel", null, null);
                writableDatabase.delete("epg_programme", null, null);
                writableDatabase.close();
                Log.d("XCIPTV_TAG", "----- Clear All DB streams");
                bVar.getWritableDatabase().delete("category_filter", null, null);
                Methods.B();
                break;
            case 8:
                super.onPreExecute();
                M3UUpdateContents m3UUpdateContents = (M3UUpdateContents) obj;
                m3UUpdateContents.f29387R.setText(m3UUpdateContents.f29380K.getString(R.string.xc_now_updating_tv_guide));
                Log.d("XCIPTV_TAG", "------DownloadM3U");
                break;
            case 9:
                super.onPreExecute();
                if (pe.hf.black20.util.a.f29418G == null) {
                    ProgressDialog progressDialog = new ProgressDialog(pe.hf.black20.util.a.f29419H);
                    pe.hf.black20.util.a.f29418G = progressDialog;
                    progressDialog.setCancelable(false);
                    pe.hf.black20.util.a.f29418G.setMessage("Downloading...");
                    pe.hf.black20.util.a.f29418G.setIndeterminate(true);
                    pe.hf.black20.util.a.f29418G.setCanceledOnTouchOutside(false);
                    pe.hf.black20.util.a.f29418G.show();
                }
                break;
            default:
                super.onPreExecute();
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onProgressUpdate(Object[] objArr) {
        String str;
        switch (this.f25969a) {
            case 9:
                Integer[] numArr = (Integer[]) objArr;
                super.onProgressUpdate(numArr);
                pe.hf.black20.util.a.f29418G.setIndeterminate(false);
                pe.hf.black20.util.a.f29418G.setMax(100);
                pe.hf.black20.util.a.f29418G.setProgress(numArr[0].intValue());
                if (numArr[0].intValue() > 99) {
                    str = "Finishing... ";
                } else {
                    str = "Downloading... " + numArr[0] + "%";
                }
                pe.hf.black20.util.a.f29418G.setMessage(str);
                break;
            default:
                super.onProgressUpdate(objArr);
                break;
        }
    }

    public /* synthetic */ j(Object obj, int i8) {
        this.f25969a = i8;
        this.f25970b = obj;
    }

    public /* synthetic */ j(k kVar) {
        this.f25969a = 0;
        this.f25970b = kVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(DeviceStatus deviceStatus) {
        this(deviceStatus, 1);
        this.f25969a = 1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(MovieInfoActivity movieInfoActivity) {
        this(movieInfoActivity, 2);
        this.f25969a = 2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(ORPlayerMainActivity oRPlayerMainActivity) {
        this(oRPlayerMainActivity, 3);
        this.f25969a = 3;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(ProgramRemindersActivity programRemindersActivity) {
        this(programRemindersActivity, 5);
        this.f25969a = 5;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(ServiceStatusActivity serviceStatusActivity) {
        this(serviceStatusActivity, 6);
        this.f25969a = 6;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(UsersHistoryActivity usersHistoryActivity) {
        this(usersHistoryActivity, 7);
        this.f25969a = 7;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(M3UUpdateContents m3UUpdateContents) {
        this(m3UUpdateContents, 8);
        this.f25969a = 8;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(pe.hf.black20.util.a aVar) {
        this(aVar, 9);
        this.f25969a = 9;
    }
}
