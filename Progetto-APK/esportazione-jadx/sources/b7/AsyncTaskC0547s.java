package b7;

import android.content.Intent;
import android.os.AsyncTask;
import com.google.protobuf.U2;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;

/* JADX INFO: renamed from: b7.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class AsyncTaskC0547s extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CategoriesActivity f10406b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0547s(CategoriesActivity categoriesActivity) {
        this(categoriesActivity, 0);
        this.f10405a = 0;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        int i8 = this.f10405a;
        CategoriesActivity categoriesActivity = this.f10406b;
        switch (i8) {
            case 0:
                String str7 = MqttTopic.TOPIC_LEVEL_SEPARATOR;
                String str8 = "stream_id";
                String str9 = "ORT_LAST_CHANNEL_NAME";
                String str10 = "ORT_LAST_CATEGORY_ID";
                String strA = Encrypt.a(categoriesActivity.f28394K.f25480c);
                String strA2 = Encrypt.a(categoriesActivity.f28394K.f25481d);
                boolean z7 = categoriesActivity.f28431v0;
                CategoriesActivity categoriesActivity2 = categoriesActivity.f28389G;
                if (z7) {
                    categoriesActivity.f28432w0 = z4.q0.u(categoriesActivity2, false, "all", "default", "0");
                } else {
                    categoriesActivity.f28432w0 = z4.q0.u(categoriesActivity2, false, "all", "default", z4.q0.q().c("ORT_program_reminder_Category_id", HttpUrl.FRAGMENT_ENCODE_SET));
                }
                int i9 = 0;
                while (i9 < categoriesActivity.f28432w0.size()) {
                    try {
                        if (!categoriesActivity.f28431v0) {
                            str = str7;
                            str2 = str8;
                            str3 = str9;
                            str4 = str10;
                            str5 = strA;
                            str6 = strA2;
                            if (((String) ((HashMap) categoriesActivity.f28432w0.get(i9)).get("name")).equals(z4.q0.q().c("ORT_program_reminder_Channel_name", HttpUrl.FRAGMENT_ENCODE_SET))) {
                                z4.q0.q().f(i9, "ORT_program_reminder_channel_pos");
                            }
                        } else if (((String) ((HashMap) categoriesActivity.f28432w0.get(i9)).get("name")).toLowerCase().equals(z4.q0.q().c(str9, HttpUrl.FRAGMENT_ENCODE_SET).toLowerCase())) {
                            String str11 = strA2;
                            try {
                                z4.q0.q().g(str10, (String) ((HashMap) categoriesActivity.f28432w0.get(i9)).get("category_id"));
                                String str12 = str7;
                                try {
                                    z4.q0.q().g("ORT_LAST_CATEGORY_NAME", categoriesActivity.f28395L.G0(z4.q0.q().c(str10, HttpUrl.FRAGMENT_ENCODE_SET)));
                                    categoriesActivity.f28433x0 = z4.q0.u(categoriesActivity2, false, "all", "default", z4.q0.q().c(str10, HttpUrl.FRAGMENT_ENCODE_SET));
                                    categoriesActivity.f28434y0 = null;
                                    categoriesActivity.f28434y0 = new JSONArray((Collection) categoriesActivity.f28433x0);
                                    int i10 = 0;
                                    while (i10 < categoriesActivity.f28434y0.length()) {
                                        JSONObject jSONObject = categoriesActivity.f28434y0.getJSONObject(i10);
                                        if (jSONObject.getString("name").toLowerCase().equals(z4.q0.q().c(str9, HttpUrl.FRAGMENT_ENCODE_SET).toLowerCase())) {
                                            str3 = str9;
                                            try {
                                                z4.q0.q().g("ORT_LAST_CHANNEL_POS", String.valueOf(i10));
                                                z4.q0.q().g("ORT_LAST_STREAM_ID", (String) ((HashMap) categoriesActivity.f28432w0.get(i9)).get(str8));
                                                if (jSONObject.getString("direct_source").equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                                                    Q5.a aVarQ = z4.q0.q();
                                                    StringBuilder sb = new StringBuilder();
                                                    str4 = str10;
                                                    try {
                                                        sb.append(Encrypt.a(categoriesActivity.f28394K.f25482e));
                                                        sb.append("/live/");
                                                        sb.append(strA);
                                                        String str13 = str12;
                                                        try {
                                                            sb.append(str13);
                                                            str5 = strA;
                                                            str6 = str11;
                                                            try {
                                                                sb.append(str6);
                                                                sb.append(str13);
                                                                sb.append(jSONObject.getString(str8));
                                                                sb.append(".");
                                                                str2 = str8;
                                                                str = str13;
                                                                try {
                                                                    sb.append(categoriesActivity.f28391H.getString("streamFormat", null));
                                                                    aVarQ.g("ORT_LAST_STREAM_URL", sb.toString());
                                                                } catch (JSONException unused) {
                                                                }
                                                            } catch (JSONException unused2) {
                                                                str2 = str8;
                                                                str = str13;
                                                            }
                                                        } catch (JSONException unused3) {
                                                            str = str13;
                                                            str5 = strA;
                                                            str6 = str11;
                                                            str2 = str8;
                                                        }
                                                    } catch (JSONException unused4) {
                                                        str = str12;
                                                    }
                                                } else {
                                                    str4 = str10;
                                                    str = str12;
                                                    str5 = strA;
                                                    str6 = str11;
                                                    str2 = str8;
                                                    z4.q0.q().g("ORT_LAST_STREAM_URL", jSONObject.getString("direct_source"));
                                                }
                                            } catch (JSONException unused5) {
                                                str4 = str10;
                                            }
                                        } else {
                                            str3 = str9;
                                            str4 = str10;
                                            str = str12;
                                            str5 = strA;
                                            str6 = str11;
                                            str2 = str8;
                                        }
                                        i10++;
                                        str8 = str2;
                                        str9 = str3;
                                        str10 = str4;
                                        str11 = str6;
                                        strA = str5;
                                        str12 = str;
                                    }
                                } catch (JSONException unused6) {
                                }
                                str3 = str9;
                                str4 = str10;
                                str = str12;
                            } catch (JSONException unused7) {
                                str = str7;
                                str3 = str9;
                                str4 = str10;
                            }
                            str5 = strA;
                            str6 = str11;
                            str2 = str8;
                        } else {
                            str = str7;
                            str2 = str8;
                            str3 = str9;
                            str4 = str10;
                            str5 = strA;
                            str6 = strA2;
                        }
                    } catch (JSONException unused8) {
                    }
                    i9++;
                    strA2 = str6;
                    str8 = str2;
                    strA = str5;
                    str9 = str3;
                    str10 = str4;
                    str7 = str;
                }
                break;
            default:
                try {
                    categoriesActivity.f28409Z = new F2.G(5).E(Encrypt.a(categoriesActivity.f28394K.f25482e) + "/server/query_user_days_left?token=" + Encrypt.a(categoriesActivity.f28391H.getString("token", null)));
                } catch (Exception unused9) {
                }
                break;
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        int i8 = this.f10405a;
        Date date = null;
        CategoriesActivity categoriesActivity = this.f10406b;
        switch (i8) {
            case 0:
                super.onPostExecute((Void) obj);
                boolean z7 = categoriesActivity.f28431v0;
                CategoriesActivity categoriesActivity2 = categoriesActivity.f28389G;
                if (!z7) {
                    String strA = Encrypt.a(categoriesActivity.f28394K.f25480c);
                    String strA2 = Encrypt.a(categoriesActivity.f28394K.f25481d);
                    z4.q0.q().g("ORT_WHICH_CAT", "TV");
                    z4.q0.q().g("ORT_CAT_NAME", z4.q0.q().c("ORT_program_reminder_Category_name", HttpUrl.FRAGMENT_ENCODE_SET));
                    Intent intent = new Intent(categoriesActivity2, (Class<?>) PlayStreamEPGActivity.class);
                    if (U2.z("ORT_program_reminder_Direct_source", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(Encrypt.a(categoriesActivity.f28394K.f25482e));
                        sb.append("/live/");
                        sb.append(strA);
                        sb.append(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                        StringBuilder sbO = U2.o(p000a.r.j(sb, strA2, MqttTopic.TOPIC_LEVEL_SEPARATOR));
                        U2.x("ORT_program_reminder_Stream_id", HttpUrl.FRAGMENT_ENCODE_SET, sbO, ".");
                        intent.putExtra("streamurl", U2.h(categoriesActivity.f28391H, "streamFormat", null, sbO));
                    } else {
                        intent.putExtra("streamurl", z4.q0.q().c("ORT_program_reminder_Direct_source", HttpUrl.FRAGMENT_ENCODE_SET));
                    }
                    intent.putExtra("name", z4.q0.q().c("ORT_program_reminder_Channel_name", HttpUrl.FRAGMENT_ENCODE_SET));
                    intent.putExtra("stream_id", z4.q0.q().c("ORT_program_reminder_Stream_id", HttpUrl.FRAGMENT_ENCODE_SET));
                    intent.putExtra("position", String.valueOf(z4.q0.q().b("ORT_program_reminder_channel_pos")));
                    categoriesActivity2.startActivity(intent);
                } else if (!z4.q0.q().c("ORT_LAST_STREAM_URL", HttpUrl.FRAGMENT_ENCODE_SET).isEmpty()) {
                    z4.q0.q().g("ORT_WHICH_CAT", "TV");
                    categoriesActivity.f28431v0 = false;
                    Intent intent2 = new Intent(categoriesActivity2, (Class<?>) ChannelListActivity.class);
                    intent2.putExtra("forFavorNot", "no");
                    categoriesActivity.startActivity(intent2);
                } else {
                    z4.q0.q().e("ORT_isLoadLastLiveTVChannel", false);
                }
                break;
            default:
                super.onPostExecute((String) obj);
                String str = categoriesActivity.f28409Z;
                if (str != null) {
                    String strReplaceAll = str.replaceAll("daysleft=", HttpUrl.FRAGMENT_ENCODE_SET);
                    categoriesActivity.f28409Z = strReplaceAll;
                    String strReplaceAll2 = strReplaceAll.replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET);
                    categoriesActivity.f28409Z = strReplaceAll2;
                    String strTrim = strReplaceAll2.trim();
                    categoriesActivity.f28409Z = strTrim;
                    int i9 = Integer.parseInt(strTrim);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, MMM dd, yyyy");
                    try {
                        date = simpleDateFormat.parse(simpleDateFormat.format(new Date()));
                        break;
                    } catch (ParseException unused) {
                    }
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(date);
                    calendar.add(11, i9 * 24);
                    categoriesActivity.f28428s0.setText(categoriesActivity.getString(R.string.xc_expire) + ": " + simpleDateFormat.format(calendar.getTime()));
                }
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        switch (this.f10405a) {
            case 0:
                super.onPreExecute();
                CategoriesActivity categoriesActivity = this.f10406b;
                if (categoriesActivity.f28431v0) {
                    z4.q0.q().g("ORT_LAST_PROFILE", categoriesActivity.f28391H.getString("last_profile", null));
                    z4.q0.q().g("ORT_LAST_CHANNEL_NAME", categoriesActivity.f28391H.getString("last_channel_name", null));
                }
                break;
            default:
                super.onPreExecute();
                break;
        }
    }

    public /* synthetic */ AsyncTaskC0547s(CategoriesActivity categoriesActivity, int i8) {
        this.f10405a = i8;
        this.f10406b = categoriesActivity;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AsyncTaskC0547s(CategoriesActivity categoriesActivity, Object obj) {
        this(categoriesActivity, 1);
        this.f10405a = 1;
    }
}
