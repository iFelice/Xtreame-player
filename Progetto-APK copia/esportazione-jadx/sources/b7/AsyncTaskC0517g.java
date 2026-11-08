package b7;

import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.util.Log;
import com.google.protobuf.U2;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pe.hf.black20.CatchupActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class AsyncTaskC0517g extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CatchupActivity f10299b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0517g(CatchupActivity catchupActivity) {
        this(catchupActivity, 0);
        this.f10298a = 0;
    }

    public final void a() {
        int i8;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        Date date;
        Date date2;
        int i9 = this.f10298a;
        String str6 = "date_time";
        String str7 = "24";
        String str8 = "1";
        String str9 = "has_archive";
        String str10 = "yes";
        CatchupActivity catchupActivity = this.f10299b;
        String str11 = "description";
        String str12 = "end";
        String str13 = "catchup_epg_timeshift";
        Object obj = "start_o";
        switch (i9) {
            case 0:
                String str14 = "catchup_epg_timeshift";
                Object obj2 = "1";
                String str15 = "has_archive";
                catchupActivity.f28302J = null;
                catchupActivity.f28302J = new JSONArray();
                try {
                    catchupActivity.f28318Z = new JSONObject(new F2.G(5).E(Encrypt.a(catchupActivity.f28305M.f25482e) + "/player_api.php?username=" + Encrypt.a(catchupActivity.f28305M.f25480c) + "&password=" + Encrypt.a(catchupActivity.f28305M.f25481d) + "&action=get_simple_data_table&stream_id=" + catchupActivity.f28309Q));
                    JSONArray jSONArray = new JSONArray(catchupActivity.f28318Z.getString("epg_listings"));
                    catchupActivity.f28302J = jSONArray;
                    String[] strArr = new String[jSONArray.length()];
                    int i10 = 0;
                    while (i10 < catchupActivity.f28302J.length()) {
                        try {
                            catchupActivity.f28302J.getJSONObject(0).getString("start");
                            JSONObject jSONObject = catchupActivity.f28302J.getJSONObject(i10);
                            String string = jSONObject.getString("start");
                            String string2 = jSONObject.getString(str12);
                            String string3 = jSONObject.getString("start");
                            i8 = i10;
                            try {
                                String str16 = str12;
                                str = str14;
                                try {
                                    if (catchupActivity.f28304L.contains(str)) {
                                        str3 = string3;
                                        if (catchupActivity.f28304L.getString(str, null).equals(str10)) {
                                            string = Methods.d(string);
                                            string2 = Methods.d(string2);
                                        }
                                    } else {
                                        str3 = string3;
                                        string = Methods.d(string);
                                        string2 = Methods.d(string2);
                                    }
                                    String str17 = string2;
                                    String str18 = str15;
                                    str10 = str10;
                                    try {
                                        String string4 = jSONObject.getString(str18);
                                        str15 = str18;
                                        Object obj3 = obj2;
                                        try {
                                            if (string4.equals(obj3)) {
                                                HashMap map = new HashMap();
                                                obj2 = obj3;
                                                try {
                                                    map.put("title", Methods.y(jSONObject.getString("title")));
                                                    if (z4.q0.q().c("ORT_TIME_FORMAT", "12").equals(str7)) {
                                                        StringBuilder sb = new StringBuilder();
                                                        str2 = str7;
                                                        try {
                                                            sb.append(Methods.o(string));
                                                            sb.append(" - ");
                                                            sb.append(Methods.o(str17));
                                                            map.put("date_time", sb.toString());
                                                        } catch (JSONException unused) {
                                                            str12 = str16;
                                                        }
                                                    } else {
                                                        str2 = str7;
                                                        map.put("date_time", Methods.p(string) + " - " + Methods.p(str17));
                                                    }
                                                    map.put("description", Methods.y(jSONObject.getString("description")));
                                                    catchupActivity.f28319a0.add(map);
                                                    HashMap map2 = new HashMap();
                                                    map2.put("title", Methods.y(jSONObject.getString("title")));
                                                    map2.put("start", string);
                                                    map2.put(obj, str3);
                                                    str12 = str16;
                                                    try {
                                                        map2.put(str12, str17);
                                                        map2.put("description", Methods.y(jSONObject.getString("description")));
                                                        catchupActivity.f28320b0.add(map2);
                                                    } catch (JSONException unused2) {
                                                    }
                                                } catch (JSONException unused3) {
                                                    str2 = str7;
                                                }
                                                i10 = i8 + 1;
                                                str14 = str;
                                                str10 = str10;
                                                str7 = str2;
                                                obj2 = obj2;
                                                str12 = str12;
                                            } else {
                                                obj2 = obj3;
                                            }
                                            break;
                                        } catch (JSONException unused4) {
                                        }
                                        str2 = str7;
                                        str12 = str16;
                                    } catch (JSONException unused5) {
                                        str15 = str18;
                                        str12 = str16;
                                        str2 = str7;
                                    }
                                } catch (JSONException unused6) {
                                    str10 = str10;
                                }
                            } catch (JSONException unused7) {
                                str = str14;
                                str2 = str7;
                                i10 = i8 + 1;
                                str14 = str;
                                str10 = str10;
                                str7 = str2;
                                obj2 = obj2;
                                str12 = str12;
                            }
                        } catch (JSONException unused8) {
                            i8 = i10;
                        }
                        i10 = i8 + 1;
                        str14 = str;
                        str10 = str10;
                        str7 = str2;
                        obj2 = obj2;
                        str12 = str12;
                    }
                } catch (JSONException unused9) {
                    return;
                }
                break;
            default:
                catchupActivity.f28319a0.clear();
                ArrayList arrayList = catchupActivity.f28320b0;
                arrayList.clear();
                ArrayList arrayList2 = arrayList;
                int i11 = 0;
                while (i11 < catchupActivity.f28302J.length()) {
                    try {
                        String str19 = str11;
                        try {
                            catchupActivity.f28302J.getJSONObject(0).getString("start");
                            JSONObject jSONObject2 = catchupActivity.f28302J.getJSONObject(i11);
                            String string5 = jSONObject2.getString("start");
                            String string6 = jSONObject2.getString(str12);
                            String str20 = str12;
                            try {
                                String string7 = jSONObject2.getString("start");
                                String str21 = str6;
                                try {
                                    catchupActivity.f28302J.getJSONObject(0).getString("start");
                                    JSONArray jSONArray2 = catchupActivity.f28302J;
                                    jSONArray2.getJSONObject(jSONArray2.length() - 1).getString("start");
                                    String string8 = catchupActivity.f28302J.getJSONObject(i11).getString("start");
                                    if (catchupActivity.f28304L.contains(str13)) {
                                        try {
                                            i11 = i11;
                                            try {
                                                if (catchupActivity.f28304L.getString(str13, null).equals("yes")) {
                                                    string5 = Methods.d(string5);
                                                    string6 = Methods.d(string6);
                                                    string8 = Methods.d(string8);
                                                }
                                            } catch (JSONException unused10) {
                                            }
                                        } catch (JSONException unused11) {
                                            i11 = i11;
                                        }
                                    } else {
                                        i11 = i11;
                                    }
                                    String str22 = string6;
                                    if (jSONObject2.getString(str9).equals(str8)) {
                                        str8 = str8;
                                        try {
                                            if (catchupActivity.f28315W.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                                                str13 = str13;
                                                str9 = str9;
                                                obj = obj;
                                                arrayList2 = arrayList2;
                                                str5 = str19;
                                                str12 = str20;
                                                str4 = str21;
                                            } else {
                                                String str23 = catchupActivity.f28315W;
                                                SharedPreferences sharedPreferences = Methods.f29416a;
                                                str9 = str9;
                                                try {
                                                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                                                    str13 = str13;
                                                    try {
                                                        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
                                                        try {
                                                            date = simpleDateFormat.parse(str23);
                                                            try {
                                                                date2 = simpleDateFormat.parse(string8);
                                                            } catch (ParseException unused12) {
                                                                date2 = null;
                                                            }
                                                        } catch (ParseException unused13) {
                                                            date = null;
                                                        }
                                                        if ((simpleDateFormat2.format(date).equals(simpleDateFormat2.format(date2)) ? "yes" : "no").equals("yes")) {
                                                            HashMap map3 = new HashMap();
                                                            map3.put("title", Methods.y(jSONObject2.getString("title")));
                                                            if (z4.q0.q().c("ORT_TIME_FORMAT", "12").equals("24")) {
                                                                try {
                                                                    str4 = str21;
                                                                    try {
                                                                        map3.put(str4, Methods.o(string5) + " - " + Methods.o(str22));
                                                                    } catch (JSONException unused14) {
                                                                        obj = obj;
                                                                        str5 = str19;
                                                                        str12 = str20;
                                                                        i11++;
                                                                        arrayList2 = arrayList2;
                                                                        str11 = str5;
                                                                        str6 = str4;
                                                                        obj = obj;
                                                                        str8 = str8;
                                                                        str9 = str9;
                                                                        str13 = str13;
                                                                    }
                                                                } catch (JSONException unused15) {
                                                                    str4 = str21;
                                                                }
                                                            } else {
                                                                str4 = str21;
                                                                map3.put(str4, Methods.p(string5) + " - " + Methods.p(str22));
                                                            }
                                                            str5 = str19;
                                                            try {
                                                                map3.put(str5, Methods.y(jSONObject2.getString(str5)));
                                                                catchupActivity.f28319a0.add(map3);
                                                                HashMap map4 = new HashMap();
                                                                map4.put("title", Methods.y(jSONObject2.getString("title")));
                                                                map4.put("start", string5);
                                                                obj = obj;
                                                                try {
                                                                    map4.put(obj, string7);
                                                                    str12 = str20;
                                                                    try {
                                                                        map4.put(str12, str22);
                                                                        map4.put(str5, Methods.y(jSONObject2.getString(str5)));
                                                                        arrayList2 = arrayList2;
                                                                        try {
                                                                            arrayList2.add(map4);
                                                                        } catch (JSONException unused16) {
                                                                        }
                                                                    } catch (JSONException unused17) {
                                                                        arrayList2 = arrayList2;
                                                                    }
                                                                } catch (JSONException unused18) {
                                                                    str12 = str20;
                                                                }
                                                            } catch (JSONException unused19) {
                                                                obj = obj;
                                                            }
                                                        } else {
                                                            obj = obj;
                                                            arrayList2 = arrayList2;
                                                            str5 = str19;
                                                            str12 = str20;
                                                            str4 = str21;
                                                        }
                                                        break;
                                                    } catch (JSONException unused20) {
                                                    }
                                                } catch (JSONException unused21) {
                                                    str13 = str13;
                                                }
                                            }
                                        } catch (JSONException unused22) {
                                        }
                                    } else {
                                        str8 = str8;
                                        str9 = str9;
                                        obj = obj;
                                        arrayList2 = arrayList2;
                                        str5 = str19;
                                        str12 = str20;
                                        str4 = str21;
                                    }
                                } catch (JSONException unused23) {
                                    i11 = i11;
                                }
                            } catch (JSONException unused24) {
                                str12 = str20;
                                str4 = str6;
                                str5 = str19;
                            }
                        } catch (JSONException unused25) {
                        }
                    } catch (JSONException unused26) {
                        str13 = str13;
                        i11 = i11;
                        str8 = str8;
                        str9 = str9;
                        obj = obj;
                        arrayList2 = arrayList2;
                        str4 = str6;
                        str5 = str11;
                    }
                    i11++;
                    arrayList2 = arrayList2;
                    str11 = str5;
                    str6 = str4;
                    obj = obj;
                    str8 = str8;
                    str9 = str9;
                    str13 = str13;
                }
                break;
        }
    }

    public final void b(Void r9) {
        int i8 = this.f10298a;
        CatchupActivity catchupActivity = this.f10299b;
        switch (i8) {
            case 0:
                super.onPostExecute(r9);
                catchupActivity.f28306N.setVisibility(4);
                JSONArray jSONArray = catchupActivity.f28302J;
                if (jSONArray != null && jSONArray.length() > 0) {
                    ArrayList arrayList = catchupActivity.f28320b0;
                    if (arrayList.size() > 0) {
                        Log.d("XCIPTV_TAG", "EPG Length not empty");
                        catchupActivity.f28311S = catchupActivity.e();
                        catchupActivity.f28312T = (String) ((HashMap) U2.g(arrayList, 1)).get("start");
                        catchupActivity.b();
                    } else {
                        Log.d("XCIPTV_TAG", "EPG Length  empty");
                        CatchupActivity.a(catchupActivity);
                    }
                    catchupActivity.c(catchupActivity.f28311S, catchupActivity.f28312T);
                } else {
                    Log.d("XCIPTV_TAG", "EPG Length  empty");
                    CatchupActivity.a(catchupActivity);
                }
                break;
            default:
                super.onPostExecute(r9);
                catchupActivity.f28306N.setVisibility(4);
                JSONArray jSONArray2 = catchupActivity.f28302J;
                if (jSONArray2 != null && jSONArray2.length() > 0) {
                    ArrayList arrayList2 = catchupActivity.f28320b0;
                    if (arrayList2.size() <= 0) {
                        Log.d("XCIPTV_TAG", "EPG Length  empty");
                        CatchupActivity.a(catchupActivity);
                    } else {
                        Log.d("XCIPTV_TAG", "EPG Length not empty");
                        catchupActivity.f28311S = (String) ((HashMap) arrayList2.get(0)).get("start");
                        catchupActivity.f28312T = (String) ((HashMap) U2.g(arrayList2, 1)).get("start");
                        catchupActivity.b();
                    }
                } else {
                    Log.d("XCIPTV_TAG", "EPG Length  empty");
                    CatchupActivity.a(catchupActivity);
                }
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        switch (this.f10298a) {
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
        switch (this.f10298a) {
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
        int i8 = this.f10298a;
        CatchupActivity catchupActivity = this.f10299b;
        switch (i8) {
            case 0:
                super.onPreExecute();
                catchupActivity.f28306N.setVisibility(0);
                break;
            default:
                super.onPreExecute();
                catchupActivity.f28306N.setVisibility(0);
                break;
        }
    }

    public /* synthetic */ AsyncTaskC0517g(CatchupActivity catchupActivity, int i8) {
        this.f10298a = i8;
        this.f10299b = catchupActivity;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0517g(CatchupActivity catchupActivity, Object obj) {
        this(catchupActivity, 1);
        this.f10298a = 1;
    }
}
