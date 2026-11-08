package b7;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.json.JSONException;
import org.json.JSONObject;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.LoginActivity;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class S extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f10179b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ S(LoginActivity loginActivity) {
        this(loginActivity, 0);
        this.f10178a = 0;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0095  */
    /* JADX WARN: Code duplicated, block: B:43:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:45:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:47:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:52:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:55:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:56:0x01be  */
    /* JADX WARN: Code duplicated, block: B:59:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:61:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:63:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:66:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:70:0x020e  */
    /* JADX WARN: Code duplicated, block: B:82:0x024d  */
    /* JADX WARN: Code duplicated, block: B:85:0x025f A[Catch: JSONException -> 0x0268, TryCatch #3 {JSONException -> 0x0268, blocks: (B:83:0x024e, B:85:0x025f, B:87:0x026b, B:89:0x0275), top: B:106:0x024e }] */
    /* JADX WARN: Code duplicated, block: B:87:0x026b A[Catch: JSONException -> 0x0268, TryCatch #3 {JSONException -> 0x0268, blocks: (B:83:0x024e, B:85:0x025f, B:87:0x026b, B:89:0x0275), top: B:106:0x024e }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0275 A[Catch: JSONException -> 0x0268, TRY_LEAVE, TryCatch #3 {JSONException -> 0x0268, blocks: (B:83:0x024e, B:85:0x025f, B:87:0x026b, B:89:0x0275), top: B:106:0x024e }] */
    /* JADX WARN: Code duplicated, block: B:91:0x027e  */
    public final void a() {
        byte b8;
        Object obj;
        String strG;
        String str;
        int iHashCode;
        byte b9;
        String str2;
        JSONObject jSONObject;
        boolean z7;
        String str3;
        String string;
        int i8 = this.f10178a;
        LoginActivity loginActivity = this.f10179b;
        switch (i8) {
            case 1:
                String string2 = loginActivity.f28571J.getString("activation_url", null);
                JSONObject jSONObject2 = new JSONObject();
                String strA = Encrypt.a(loginActivity.f28571J.getString("xco_activation_cod", null));
                String str4 = loginActivity.f28568H0;
                str4.getClass();
                int iHashCode2 = str4.hashCode();
                if (iHashCode2 != 97) {
                    if (iHashCode2 != 99) {
                        if (iHashCode2 == 108 && str4.equals("l")) {
                            b8 = 2;
                        } else {
                            b8 = -1;
                        }
                    } else if (str4.equals("c")) {
                        b8 = 1;
                    } else {
                        b8 = -1;
                    }
                } else if (str4.equals("a")) {
                    b8 = 0;
                } else {
                    b8 = -1;
                }
                try {
                    if (b8 != 0) {
                        obj = "c";
                        if (b8 != 1) {
                            if (b8 == 2) {
                                jSONObject2.put("mode", "channel");
                                jSONObject2.put("code", strA);
                                jSONObject2.put("mac", loginActivity.f28571J.getString("mac", null));
                                jSONObject2.put("sn", HttpUrl.FRAGMENT_ENCODE_SET);
                                jSONObject2.put("chipid", HttpUrl.FRAGMENT_ENCODE_SET);
                                jSONObject2.put("model", HttpUrl.FRAGMENT_ENCODE_SET);
                                jSONObject2.put("firmware_ver", HttpUrl.FRAGMENT_ENCODE_SET);
                                jSONObject2.put("cat_id", loginActivity.f28566G0);
                                jSONObject2.put("from", "0");
                                jSONObject2.put("lenght", "1");
                            }
                            String strValueOf = String.valueOf(jSONObject2);
                            String str5 = Config.f29415c;
                            strG = p027d2.v.g(new F2.G(7).F(string2, p148t.a.c("json=", new String(Base64.encode(p027d2.v.d(strValueOf, str5).getBytes(), 2)).replaceAll("\\+", "!").replaceAll(MqttTopic.TOPIC_LEVEL_SEPARATOR, ")").replaceAll("=", "("))), str5);
                            str = loginActivity.f28568H0;
                            str.getClass();
                            iHashCode = str.hashCode();
                            if (iHashCode != 97) {
                                if (iHashCode != 99) {
                                    if (iHashCode != 108 && str.equals("l")) {
                                        b9 = 2;
                                    } else {
                                        b9 = -1;
                                    }
                                } else if (str.equals(obj)) {
                                    b9 = 1;
                                } else {
                                    b9 = -1;
                                }
                            } else if (str.equals("a")) {
                                b9 = 0;
                            } else {
                                b9 = -1;
                            }
                            if (b9 != 0) {
                                try {
                                    loginActivity.f28576L0 = null;
                                    jSONObject = new JSONObject(strG);
                                    loginActivity.f28576L0 = jSONObject;
                                    if (jSONObject.has("status")) {
                                        loginActivity.f28563E0 = loginActivity.f28576L0.getString("status");
                                    } else if (!loginActivity.f28576L0.has("statrs")) {
                                        loginActivity.f28563E0 = loginActivity.f28576L0.getString("statrs");
                                    } else {
                                        str2 = "error";
                                        try {
                                            loginActivity.f28563E0 = str2;
                                        } catch (JSONException unused) {
                                            loginActivity.f28563E0 = str2;
                                            return;
                                        }
                                    }
                                } catch (JSONException unused2) {
                                    str2 = "error";
                                }
                                break;
                            } else if (b9 != 1) {
                                String strReplaceAll = strG.split(",\\{")[0].replaceAll("\\[", HttpUrl.FRAGMENT_ENCODE_SET);
                                try {
                                    loginActivity.f28576L0 = null;
                                    JSONObject jSONObject3 = new JSONObject(strReplaceAll);
                                    loginActivity.f28576L0 = jSONObject3;
                                    loginActivity.f28564F0 = jSONObject3.getString("name");
                                    loginActivity.f28566G0 = loginActivity.f28576L0.getString("id");
                                    str3 = loginActivity.f28564F0;
                                    if (str3 == null && !str3.equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                                        loginActivity.f28561C0 = true;
                                    } else {
                                        z7 = false;
                                        try {
                                            loginActivity.f28561C0 = false;
                                        } catch (JSONException unused3) {
                                            loginActivity.f28561C0 = z7;
                                            return;
                                        }
                                    }
                                } catch (JSONException unused4) {
                                    z7 = false;
                                }
                                break;
                            } else if (b9 != 2) {
                                String strReplaceAll2 = strG.split(",\\{")[0].replaceAll("\\[", HttpUrl.FRAGMENT_ENCODE_SET);
                                try {
                                    loginActivity.f28576L0 = null;
                                    JSONObject jSONObject4 = new JSONObject(strReplaceAll2);
                                    loginActivity.f28576L0 = jSONObject4;
                                    String[] strArrSplit = jSONObject4.getString("url").split("live")[1].split(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                                    loginActivity.f28572J0 = strArrSplit[1];
                                    loginActivity.f28574K0 = strArrSplit[2];
                                    loginActivity.f28562D0 = true;
                                } catch (JSONException unused5) {
                                    loginActivity.f28562D0 = false;
                                    return;
                                }
                                break;
                            }
                        } else {
                            jSONObject2.put("mode", "category");
                            jSONObject2.put("code", strA);
                            jSONObject2.put("mac", loginActivity.f28571J.getString("mac", null));
                            jSONObject2.put("sn", HttpUrl.FRAGMENT_ENCODE_SET);
                            jSONObject2.put("chipid", HttpUrl.FRAGMENT_ENCODE_SET);
                            jSONObject2.put("model", HttpUrl.FRAGMENT_ENCODE_SET);
                            jSONObject2.put("firmware_ver", HttpUrl.FRAGMENT_ENCODE_SET);
                            jSONObject2.put("cat_type", "live");
                        }
                    } else {
                        obj = "c";
                        jSONObject2.put("mode", "active");
                        jSONObject2.put("code", strA);
                        jSONObject2.put("mac", loginActivity.f28571J.getString("mac", null));
                        jSONObject2.put("sn", HttpUrl.FRAGMENT_ENCODE_SET);
                        jSONObject2.put("chipid", HttpUrl.FRAGMENT_ENCODE_SET);
                        jSONObject2.put("model", HttpUrl.FRAGMENT_ENCODE_SET);
                        jSONObject2.put("firmware_ver", HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                    break;
                } catch (JSONException unused6) {
                }
                String strValueOf2 = String.valueOf(jSONObject2);
                String str6 = Config.f29415c;
                strG = p027d2.v.g(new F2.G(7).F(string2, p148t.a.c("json=", new String(Base64.encode(p027d2.v.d(strValueOf2, str6).getBytes(), 2)).replaceAll("\\+", "!").replaceAll(MqttTopic.TOPIC_LEVEL_SEPARATOR, ")").replaceAll("=", "("))), str6);
                str = loginActivity.f28568H0;
                str.getClass();
                iHashCode = str.hashCode();
                if (iHashCode != 97) {
                    if (iHashCode != 99) {
                        if (iHashCode != 108) {
                            b9 = -1;
                        } else {
                            b9 = 2;
                        }
                    } else if (str.equals(obj)) {
                        b9 = -1;
                    } else {
                        b9 = 1;
                    }
                } else if (str.equals("a")) {
                    b9 = -1;
                } else {
                    b9 = 0;
                }
                if (b9 != 0) {
                    loginActivity.f28576L0 = null;
                    jSONObject = new JSONObject(strG);
                    loginActivity.f28576L0 = jSONObject;
                    if (jSONObject.has("status")) {
                        loginActivity.f28563E0 = loginActivity.f28576L0.getString("status");
                    } else if (!loginActivity.f28576L0.has("statrs")) {
                        str2 = "error";
                        loginActivity.f28563E0 = str2;
                    } else {
                        loginActivity.f28563E0 = loginActivity.f28576L0.getString("statrs");
                    }
                    break;
                } else if (b9 != 1) {
                    String strReplaceAll3 = strG.split(",\\{")[0].replaceAll("\\[", HttpUrl.FRAGMENT_ENCODE_SET);
                    loginActivity.f28576L0 = null;
                    JSONObject jSONObject5 = new JSONObject(strReplaceAll3);
                    loginActivity.f28576L0 = jSONObject5;
                    loginActivity.f28564F0 = jSONObject5.getString("name");
                    loginActivity.f28566G0 = loginActivity.f28576L0.getString("id");
                    str3 = loginActivity.f28564F0;
                    if (str3 == null) {
                    }
                    z7 = false;
                    loginActivity.f28561C0 = false;
                    break;
                } else if (b9 != 2) {
                    String strReplaceAll4 = strG.split(",\\{")[0].replaceAll("\\[", HttpUrl.FRAGMENT_ENCODE_SET);
                    loginActivity.f28576L0 = null;
                    JSONObject jSONObject6 = new JSONObject(strReplaceAll4);
                    loginActivity.f28576L0 = jSONObject6;
                    String[] strArrSplit2 = jSONObject6.getString("url").split("live")[1].split(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                    loginActivity.f28572J0 = strArrSplit2[1];
                    loginActivity.f28574K0 = strArrSplit2[2];
                    loginActivity.f28562D0 = true;
                    break;
                }
                break;
            default:
                if (Config.f29414b.equals("yes")) {
                    string = LoginActivity.f28556P0.getText().toString();
                } else {
                    LoginActivity.f28556P0.setText(loginActivity.f28596e0);
                    string = loginActivity.f28596e0;
                }
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string).openConnection();
                    httpURLConnection.setRequestProperty("Connection", "close");
                    httpURLConnection.setConnectTimeout(30000);
                    httpURLConnection.connect();
                    if (httpURLConnection.getResponseCode() == 200) {
                        Log.d("XCIPTV_TAG", "LoginActivity - getResponseCode == 200");
                        loginActivity.f28599h0 = false;
                    }
                } catch (IOException unused7) {
                    loginActivity.f28599h0 = true;
                }
                break;
        }
    }

    public final void b(Void r14) throws Throwable {
        int i8 = this.f10178a;
        LoginActivity loginActivity = this.f10179b;
        switch (i8) {
            case 1:
                super.onPostExecute(r14);
                String str = loginActivity.f28568H0;
                str.getClass();
                int iHashCode = str.hashCode();
                int i9 = 1;
                byte b8 = -1;
                if (iHashCode != 97) {
                    if (iHashCode != 99) {
                        if (iHashCode == 108 && str.equals("l")) {
                            b8 = 2;
                        }
                    } else if (str.equals("c")) {
                        b8 = 1;
                    }
                } else if (str.equals("a")) {
                    b8 = 0;
                }
                LoginActivity loginActivity2 = loginActivity.f28575L;
                if (b8 == 0) {
                    if (loginActivity.f28563E0.toLowerCase().equals("active")) {
                        loginActivity.f28560B0 = true;
                        loginActivity.f28568H0 = "c";
                    } else if (loginActivity.f28563E0.equals("100")) {
                        Log.d("XCIPTV_TAG", "The Code is active for the first time./ The Code is active.");
                        loginActivity.f28560B0 = true;
                        loginActivity.f28568H0 = "c";
                    } else if (loginActivity.f28563E0.equals("102")) {
                        Methods.l(loginActivity2, "This Code is Suspended.");
                        loginActivity.f28560B0 = false;
                        loginActivity.f28568H0 = "a";
                    } else if (loginActivity.f28563E0.equals("103")) {
                        Methods.l(loginActivity2, "This Code Not Found.");
                        loginActivity.f28560B0 = false;
                        loginActivity.f28568H0 = "a";
                    } else if (loginActivity.f28563E0.equals("104")) {
                        Methods.l(loginActivity2, "This Code is Expired.");
                        loginActivity.f28560B0 = false;
                        loginActivity.f28568H0 = "a";
                    } else if (loginActivity.f28563E0.equals("error")) {
                        Methods.l(loginActivity2, "Unable to Activate. Please contact support.");
                        loginActivity.f28560B0 = false;
                        loginActivity.f28568H0 = "a";
                    } else {
                        Log.d("XCIPTV_TAG", loginActivity.f28563E0);
                        Methods.l(loginActivity2, loginActivity.f28563E0);
                        loginActivity.f28560B0 = false;
                        loginActivity.f28568H0 = "a";
                    }
                    if (!loginActivity.f28560B0) {
                        Methods.l(loginActivity2, "Unable to Activate. Please contact support.");
                        if (loginActivity.f28577M.isShowing()) {
                            loginActivity.f28577M.dismiss();
                        }
                    } else {
                        loginActivity.f28560B0 = false;
                        loginActivity.f28568H0 = "c";
                        new S(loginActivity, i9).execute(new Void[0]);
                    }
                } else if (b8 == 1) {
                    if (!loginActivity.f28561C0) {
                        if (loginActivity.f28577M.isShowing()) {
                            loginActivity.f28577M.dismiss();
                        }
                        loginActivity.d(loginActivity2, "Activation Failed! Please contact support.");
                    } else {
                        loginActivity.f28561C0 = false;
                        loginActivity.f28568H0 = "l";
                        new S(loginActivity, i9).execute(new Void[0]);
                    }
                } else if (b8 == 2 && loginActivity.f28562D0) {
                    LoginActivity.f28557Q0.setText(loginActivity.f28572J0);
                    LoginActivity.f28558R0.setText(loginActivity.f28574K0);
                    loginActivity.f28594c0 = loginActivity.f28572J0;
                    loginActivity.f28595d0 = loginActivity.f28574K0;
                    if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 1")) {
                        loginActivity.f28570I0 = "PANEL 1 " + loginActivity.f28613v0;
                        loginActivity.f28596e0 = loginActivity.f28571J.getString("portal", null);
                    } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 2")) {
                        loginActivity.f28570I0 = "PANEL 2 " + loginActivity.f28613v0;
                        loginActivity.f28596e0 = loginActivity.f28571J.getString("portal2", null);
                    } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 3")) {
                        loginActivity.f28570I0 = "PANEL 3 " + loginActivity.f28613v0;
                        loginActivity.f28596e0 = loginActivity.f28571J.getString("portal3", null);
                    } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 4")) {
                        loginActivity.f28570I0 = "PANEL 4 " + loginActivity.f28613v0;
                        loginActivity.f28596e0 = loginActivity.f28571J.getString("portal4", null);
                    } else if (z4.q0.q().c("ORT_PROFILE", "Default (XC)").contains("PANEL 5")) {
                        loginActivity.f28570I0 = "PANEL 5 " + loginActivity.f28613v0;
                        loginActivity.f28596e0 = loginActivity.f28571J.getString("portal5", null);
                    } else if (loginActivity.f28571J.contains("xciptv_profile")) {
                        z4.q0.q().g("ORT_PROFILE", loginActivity.f28571J.getString("xciptv_profile", null));
                        loginActivity.f28570I0 = z4.q0.q().c("ORT_PROFILE", "Default (XC)");
                        if (loginActivity.f28565G.a0(z4.q0.q().c("ORT_PROFILE", "Default (XC)")).equals("yes")) {
                            h7.i iVarX = A0.O.x("ORT_PROFILE", "Default (XC)", loginActivity.f28565G);
                            loginActivity.f28569I = iVarX;
                            loginActivity.f28596e0 = Encrypt.a(iVarX.f25482e);
                        } else {
                            loginActivity.f28596e0 = loginActivity.f28571J.getString("portal", null);
                        }
                    } else {
                        loginActivity.f28570I0 = "PANEL 1 " + loginActivity.f28613v0;
                        loginActivity.f28596e0 = loginActivity.f28571J.getString("portal", null);
                    }
                    new Handler().postDelayed(new p045f5.a(this, 7), 8000L);
                }
                break;
            default:
                super.onPostExecute(r14);
                if (loginActivity.f28577M.isShowing()) {
                    loginActivity.f28577M.dismiss();
                }
                if (!loginActivity.f28599h0) {
                    SharedPreferences.Editor editorEdit = loginActivity.f28571J.edit();
                    editorEdit.putString("xciptv_profile", z4.q0.q().c("ORT_PROFILE", "Default (XC)"));
                    editorEdit.putString("whichPanel", "m3u");
                    editorEdit.apply();
                    editorEdit.commit();
                    loginActivity.f28565G.O(z4.q0.q().c("ORT_PROFILE", "Default (XC)"), Encrypt.b(LoginActivity.f28557Q0.getText().toString()), Encrypt.b(LoginActivity.f28558R0.getText().toString()), Encrypt.b(LoginActivity.f28556P0.getText().toString()));
                    loginActivity.startActivity(new Intent(loginActivity, (Class<?>) CategoriesActivity.class));
                    loginActivity.finish();
                } else {
                    Methods.l(loginActivity.f28575L, loginActivity.getString(R.string.unable_to_open_m3u_url));
                }
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) throws Throwable {
        String strE;
        switch (this.f10178a) {
            case 0:
                LoginActivity loginActivity = this.f10179b;
                String str = loginActivity.f28594c0;
                String str2 = loginActivity.f28595d0;
                StringBuilder sb = new StringBuilder();
                p148t.a.h(sb, loginActivity.f28596e0, "/token/createtoken?userid=", str, "&password=");
                sb.append(str2);
                try {
                    strE = new F2.G(5).E(sb.toString());
                    if (strE == null) {
                        try {
                            loginActivity.f28598g0 = "-2";
                        } catch (Exception unused) {
                            loginActivity.f28598g0 = "-2";
                            loginActivity.f28598g0 = strE.replaceAll("token=", HttpUrl.FRAGMENT_ENCODE_SET);
                            return null;
                        }
                    } else {
                        loginActivity.f28598g0 = strE.replaceAll("token=", HttpUrl.FRAGMENT_ENCODE_SET);
                    }
                } catch (Exception unused2) {
                    strE = HttpUrl.FRAGMENT_ENCODE_SET;
                }
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

    /* JADX WARN: Code duplicated, block: B:20:0x00c5  */
    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) throws Throwable {
        switch (this.f10178a) {
            case 0:
                super.onPostExecute((String) obj);
                LoginActivity loginActivity = this.f10179b;
                if (loginActivity.f28577M.isShowing()) {
                    loginActivity.f28577M.dismiss();
                }
                int length = loginActivity.f28598g0.length();
                LoginActivity loginActivity2 = loginActivity.f28575L;
                byte b8 = 0;
                if (length <= 3) {
                    String string = loginActivity.f28571J.getString("login_type", null);
                    string.getClass();
                    int iHashCode = string.hashCode();
                    if (iHashCode != 107855) {
                        if (iHashCode != 103149417) {
                            if (iHashCode == 2041217302 && string.equals("activation")) {
                                b8 = 2;
                            } else {
                                b8 = -1;
                            }
                        } else if (string.equals("login")) {
                            b8 = 1;
                        } else {
                            b8 = -1;
                        }
                    } else if (!string.equals("mac")) {
                        b8 = -1;
                    }
                    if (b8 == 0) {
                        Methods.l(loginActivity2, "Your device is not active. Please contact support and provide MAC address.");
                        break;
                    } else if (b8 == 1) {
                        Methods.l(loginActivity2, loginActivity.getString(R.string.login_failed));
                        break;
                    } else if (b8 == 2) {
                        Methods.l(loginActivity2, "Invalid Activation Code!");
                        break;
                    }
                } else {
                    loginActivity.f28565G.O(z4.q0.q().c("ORT_PROFILE", "Default (XC)"), Encrypt.b(LoginActivity.f28557Q0.getText().toString()), Encrypt.b(LoginActivity.f28558R0.getText().toString()), Encrypt.b(loginActivity.f28596e0));
                    SharedPreferences sharedPreferences = loginActivity2.getSharedPreferences("pe.hf.black20", 0);
                    loginActivity.f28571J = sharedPreferences;
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString("token", Encrypt.b(loginActivity.f28598g0));
                    editorEdit.putString("xciptv_profile", z4.q0.q().c("ORT_PROFILE", "Default (XC)"));
                    editorEdit.putString("whichPanel", "ezserver");
                    editorEdit.apply();
                    editorEdit.commit();
                    loginActivity.startActivity(new Intent(loginActivity, (Class<?>) CategoriesActivity.class));
                    loginActivity.finish();
                    break;
                }
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
        int i8 = this.f10178a;
        LoginActivity loginActivity = this.f10179b;
        switch (i8) {
            case 0:
                super.onPreExecute();
                loginActivity.f28577M.setMessage(loginActivity.f28575L.getString(R.string.xc_please_wait));
                loginActivity.f28577M.setCancelable(false);
                loginActivity.f28577M.show();
                break;
            case 1:
                super.onPreExecute();
                if (!loginActivity.f28577M.isShowing()) {
                    loginActivity.f28577M.setMessage(loginActivity.f28575L.getString(R.string.xc_please_wait));
                    loginActivity.f28577M.setCancelable(false);
                    loginActivity.f28577M.show();
                }
                break;
            default:
                super.onPreExecute();
                loginActivity.f28577M.setMessage(loginActivity.f28575L.getString(R.string.xc_please_wait));
                loginActivity.f28577M.setCancelable(false);
                loginActivity.f28577M.show();
                break;
        }
    }

    public /* synthetic */ S(LoginActivity loginActivity, int i8) {
        this.f10178a = i8;
        this.f10179b = loginActivity;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ S(LoginActivity loginActivity, p000a.r rVar) {
        this(loginActivity, 2);
        this.f10178a = 2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ S(LoginActivity loginActivity, Object obj) {
        this(loginActivity, 1);
        this.f10178a = 1;
    }
}
