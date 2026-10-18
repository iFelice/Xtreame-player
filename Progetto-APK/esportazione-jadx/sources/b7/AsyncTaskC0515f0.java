package b7;

import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.util.Log;
import com.google.protobuf.U2;
import java.util.Calendar;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class AsyncTaskC0515f0 extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0550t0 f10295b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0515f0(C0550t0 c0550t0) {
        this(c0550t0, 0);
        this.f10294a = 0;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x029e A[Catch: Exception -> 0x02da, TRY_LEAVE, TryCatch #0 {Exception -> 0x02da, blocks: (B:15:0x010c, B:16:0x0137, B:18:0x013a, B:26:0x0181, B:28:0x019f, B:33:0x01ed, B:35:0x020c, B:39:0x0281, B:41:0x028e, B:37:0x0245, B:30:0x01c7, B:43:0x029e), top: B:46:0x010c }] */
    public final void a() throws Throwable {
        String str;
        String str2;
        String str3;
        int i8 = this.f10294a;
        C0550t0 c0550t0 = this.f10295b;
        switch (i8) {
            case 0:
                String str4 = "yyyy/MM/dd HH:mm:ss";
                String str5 = "stoptime=";
                Log.d("XCIPTV_TAG", "-------------------------Calling getEPGEZS");
                h7.i iVarX = A0.O.x("ORT_PROFILE", "Default (XC)", c0550t0.f10424D0);
                StringBuilder sb = new StringBuilder();
                sb.append(Encrypt.a(iVarX.f25482e));
                sb.append("/server/get_epg_info?token=");
                sb.append(Encrypt.a(c0550t0.f10422C0.getString("token", null)));
                sb.append("&ch_name=");
                sb.append(c0550t0.f10459U1);
                sb.append("&from_year=");
                SharedPreferences sharedPreferences = Methods.f29416a;
                char c8 = 1;
                sb.append(String.valueOf(Calendar.getInstance().get(1)));
                sb.append("&from_month=");
                sb.append(Methods.K());
                sb.append("&to_month=");
                sb.append(Methods.K());
                String strReplaceAll = sb.toString().replaceAll(" ", "%20").replaceAll("[\\r\\n]+", HttpUrl.FRAGMENT_ENCODE_SET);
                p000a.r.q("PlayStreamEPGActivity - ", strReplaceAll, "XCIPTV_TAG");
                try {
                    String strE = new F2.G(5).E(strReplaceAll);
                    Log.d("XCIPTV_TAG", "data - " + strE);
                    String[] strArrSplit = strE.replaceAll("starttime=", "epg--starttime=").split("epg--");
                    String strF = Methods.F();
                    char c9 = 0;
                    int i9 = 1;
                    int i10 = 0;
                    while (i9 < strArrSplit.length) {
                        String[] strArrSplit2 = strArrSplit[i9].split("\\n");
                        String strS = Methods.s(strArrSplit2[c9].replaceAll("starttime=", HttpUrl.FRAGMENT_ENCODE_SET));
                        String strS2 = Methods.s(strArrSplit2[c8].replaceAll(str5, HttpUrl.FRAGMENT_ENCODE_SET));
                        if (!Methods.b(strS2, strF).equals("larger")) {
                            str = str5;
                            str2 = str4;
                        } else if (i10 <= 2) {
                            if (i10 == 0) {
                                str3 = str5;
                                c0550t0.f10447O1 = strArrSplit2[2].replaceAll("title=", HttpUrl.FRAGMENT_ENCODE_SET);
                                c0550t0.f10449P1 = strArrSplit2[3].replaceAll("description=", HttpUrl.FRAGMENT_ENCODE_SET);
                                if (z4.q0.q().c("ORT_TIME_FORMAT", "12").equals("24")) {
                                    c0550t0.f10451Q1 = Methods.r(c0550t0.l(), strS, "yyyyMMddHHmmss") + " - " + Methods.r(c0550t0.l(), strS2, "yyyyMMddHHmmss");
                                } else {
                                    c0550t0.f10451Q1 = Methods.q(strS) + " - " + Methods.q(strS2);
                                }
                            } else {
                                str3 = str5;
                            }
                            if (i10 == 1) {
                                c0550t0.f10453R1 = strArrSplit2[2].replaceAll("title=", HttpUrl.FRAGMENT_ENCODE_SET);
                                c0550t0.f10455S1 = strArrSplit2[3].replaceAll("description=", HttpUrl.FRAGMENT_ENCODE_SET);
                                if (z4.q0.q().c("ORT_TIME_FORMAT", "12").equals("24")) {
                                    StringBuilder sb2 = new StringBuilder();
                                    str2 = str4;
                                    sb2.append(Methods.r(c0550t0.l(), strArrSplit2[0].replaceAll("starttime=", HttpUrl.FRAGMENT_ENCODE_SET), str2));
                                    sb2.append(" - ");
                                    str = str3;
                                    sb2.append(Methods.r(c0550t0.l(), strArrSplit2[1].replaceAll(str, HttpUrl.FRAGMENT_ENCODE_SET), str2));
                                    c0550t0.f10457T1 = sb2.toString();
                                } else {
                                    str = str3;
                                    str2 = str4;
                                    c0550t0.f10457T1 = Methods.q(Methods.s(strArrSplit2[0].replaceAll("starttime=", HttpUrl.FRAGMENT_ENCODE_SET))) + " - " + Methods.q(Methods.s(strArrSplit2[1].replaceAll(str, HttpUrl.FRAGMENT_ENCODE_SET)));
                                }
                                i10++;
                            } else {
                                str = str3;
                                str2 = str4;
                            }
                            i10++;
                        } else if (i10 == 0) {
                            HashMap map = new HashMap();
                            map.put("title", c0550t0.l().getString(R.string.xc_epg_not_available_for_this_channel));
                            map.put("description", c0550t0.l().getString(R.string.xc_epg_not_available_for_this_channel));
                            map.put("start", c0550t0.l().getString(R.string.xc_unavailable));
                            map.put("end", HttpUrl.FRAGMENT_ENCODE_SET);
                            c0550t0.f10479o1.add(map);
                        }
                        i9++;
                        str5 = str;
                        str4 = str2;
                        strArrSplit = strArrSplit;
                        strF = strF;
                        c9 = 0;
                        c8 = 1;
                        break;
                    }
                    if (i10 == 0) {
                        HashMap map2 = new HashMap();
                        map2.put("title", c0550t0.l().getString(R.string.xc_epg_not_available_for_this_channel));
                        map2.put("description", c0550t0.l().getString(R.string.xc_epg_not_available_for_this_channel));
                        map2.put("start", c0550t0.l().getString(R.string.xc_unavailable));
                        map2.put("end", HttpUrl.FRAGMENT_ENCODE_SET);
                        c0550t0.f10479o1.add(map2);
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            default:
                String strC = !U2.z("ORT_VOD_PORTAL", "no", "no") ? z4.q0.q().c("ORT_VOD_PORTAL", "no") : Encrypt.a(c0550t0.f10428F0.f25482e);
                String strE2 = new F2.G(5).E(strC + "/player_api.php?username=" + Encrypt.a(c0550t0.f10428F0.f25480c) + "&password=" + Encrypt.a(c0550t0.f10428F0.f25481d) + "&action=get_vod_info&vod_id=" + c0550t0.f10437J1);
                if (strE2 != null) {
                    try {
                        c0550t0.f10443M1 = new JSONObject(strE2).getJSONObject("info");
                    } catch (JSONException unused2) {
                        Log.d("XCIPTV_TAG", "-------------------No info");
                        c0550t0.f10443M1 = null;
                    }
                }
                break;
        }
    }

    public final void b(Void r13) {
        int i8 = this.f10294a;
        C0550t0 c0550t0 = this.f10295b;
        switch (i8) {
            case 0:
                super.onPostExecute(r13);
                c0550t0.f10420A1.setText(c0550t0.f10447O1);
                c0550t0.f10423C1.setText(c0550t0.f10449P1);
                c0550t0.f10421B1.setText(c0550t0.f10451Q1);
                c0550t0.f10425D1.setText(c0550t0.f10453R1);
                c0550t0.f10429F1.setText(c0550t0.f10455S1);
                c0550t0.f10427E1.setText(c0550t0.f10457T1);
                break;
            default:
                super.onPostExecute(r13);
                JSONObject jSONObject = c0550t0.f10443M1;
                if (jSONObject != null) {
                    try {
                        c0550t0.f10484t1.setText(jSONObject.getString("genre"));
                        c0550t0.f10485u1.setText(c0550t0.f10443M1.getString("plot"));
                        if (c0550t0.f10443M1.getString("cast").length() > 3) {
                            c0550t0.f10487w1.setText("Cast: " + c0550t0.f10443M1.getString("cast"));
                        }
                        if (c0550t0.f10443M1.getString("director").length() > 3) {
                            c0550t0.f10486v1.setText("Director: " + c0550t0.f10443M1.getString("director"));
                        }
                        String string = c0550t0.f10443M1.getString("releasedate");
                        String string2 = c0550t0.f10443M1.getString("duration_secs");
                        String strD = string2.length() > 2 ? Methods.D(Integer.parseInt(string2)) : c0550t0.f10443M1.getString("duration").equals("00:00:00") ? HttpUrl.FRAGMENT_ENCODE_SET : c0550t0.f10443M1.getString("duration");
                        if (string.length() > 8) {
                            try {
                                string = Methods.x(c0550t0.f10443M1.getString("releasedate"));
                                break;
                            } catch (Exception unused) {
                            }
                        }
                        c0550t0.f10483s1.setText(strD + "   " + string);
                        c0550t0.f10443M1.getString("rating");
                        String string3 = c0550t0.f10443M1.getString("rating");
                        if (string3.length() > 0) {
                            try {
                                int i9 = Integer.parseInt(string3.substring(0, 1));
                                String str = HttpUrl.FRAGMENT_ENCODE_SET;
                                for (int i10 = 0; i10 < i9; i10++) {
                                    str = str + "⭐";
                                    c0550t0.f10482r1.setText(str + " (" + c0550t0.f10443M1.getString("rating") + ")");
                                }
                            } catch (Exception unused2) {
                                c0550t0.f10482r1.setText(c0550t0.f10443M1.getString("rating"));
                            }
                        }
                        new JSONArray();
                        int length = c0550t0.f10443M1.getJSONArray("backdrop_path").length();
                        N2.a aVar = c0550t0.f10445N1;
                        if (length > 0) {
                            try {
                                ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n(c0550t0.f10443M1.getJSONArray("backdrop_path").getString(0).replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET)).b()).H(G2.c.b(aVar)).f(R.drawable.blank)).F(c0550t0.f10480p1);
                            } catch (Exception unused3) {
                                Log.d("XCIPTV_TAG", "--------Exception----------- Glide.with");
                                return;
                            }
                        } else if (!c0550t0.f10443M1.getString("movie_image").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                            try {
                                ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n(c0550t0.f10443M1.getString("movie_image").replaceAll(" ", "%20").replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET)).b()).H(G2.c.b(aVar)).F(c0550t0.f10480p1);
                            } catch (Exception unused4) {
                                Log.d("XCIPTV_TAG", "Picasso Crashed");
                            }
                        }
                    } catch (JSONException unused5) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) throws Throwable {
        switch (this.f10294a) {
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
        switch (this.f10294a) {
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
        switch (this.f10294a) {
            case 0:
                super.onPreExecute();
                break;
            default:
                super.onPreExecute();
                break;
        }
    }

    public /* synthetic */ AsyncTaskC0515f0(C0550t0 c0550t0, int i8) {
        this.f10294a = i8;
        this.f10295b = c0550t0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0515f0(C0550t0 c0550t0, Object obj) {
        this(c0550t0, 1);
        this.f10294a = 1;
    }
}
