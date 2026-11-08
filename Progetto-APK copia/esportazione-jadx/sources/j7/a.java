package j7;

import A0.O;
import F2.G;
import Z6.C0470b;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import c7.c;
import com.google.protobuf.U2;
import h7.e;
import h7.i;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.services.OTRServices;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.OTRApp;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25723G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ OTRServices f25724H;

    public /* synthetic */ a(OTRServices oTRServices, int i8) {
        this.f25723G = i8;
        this.f25724H = oTRServices;
    }

    /* JADX WARN: Code duplicated, block: B:85:0x0566  */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        String str;
        Date dateB;
        Date dateB2;
        int i8 = this.f25723G;
        OTRServices oTRServices = this.f25724H;
        switch (i8) {
            case 0:
                String str2 = "ann_interval";
                int i9 = OTRServices.f29311W;
                oTRServices.getClass();
                oTRServices.f29312G = OTRApp.f29417G.getSharedPreferences("pe.hf.black20", 0);
                if (q0.q().a("ORT_isItRequiresToRunProgramReminderService", true)) {
                    SharedPreferences sharedPreferences = Methods.f29416a;
                    ArrayList arrayList = new ArrayList();
                    c cVar = new c(oTRServices, 1);
                    arrayList.clear();
                    ArrayList arrayListA0 = cVar.a0(q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET));
                    int i10 = 0;
                    while (true) {
                        if (i10 < arrayListA0.size()) {
                            str = str2;
                            if (((e) arrayListA0.get(i10)).f25451k.toLowerCase().equals("new")) {
                                if (Methods.u(Methods.F()).equals(((e) arrayListA0.get(i10)).f25449i)) {
                                    q0.q().e("ORT_isItRequiresToRunProgramReminderService", true);
                                } else if (Methods.I(Methods.H(), ((e) arrayListA0.get(i10)).f25449i).equals("smaller")) {
                                    q0.q().e("ORT_isItRequiresToRunProgramReminderService", true);
                                }
                                oTRServices.f29314I.clear();
                                String strC = q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET);
                                c cVar2 = oTRServices.f29313H;
                                oTRServices.f29314I = cVar2.a0(strC);
                                for (int i11 = 0; i11 < oTRServices.f29314I.size(); i11++) {
                                    if (Methods.u(Methods.F()).equals(((e) oTRServices.f29314I.get(i11)).f25449i)) {
                                        cVar2.e0(((e) oTRServices.f29314I.get(i11)).f25441a, "active");
                                    }
                                }
                            }
                            i10++;
                            str2 = str;
                        } else {
                            str = str2;
                            q0.q().e("ORT_isItRequiresToRunProgramReminderService", false);
                        }
                        new Thread(new a(oTRServices, 2)).start();
                    }
                } else {
                    str = str2;
                }
                if (q0.q().a("ORT_isUpdateUserInfoRequired", true)) {
                    q0.q().e("ORT_isUpdateUserInfoRequired", false);
                    if (!oTRServices.f29312G.getString("logurl", null).equals("0")) {
                        C0470b c0470bA = C0470b.a("MM/dd/yyyy HH:mm:ss");
                        String strC2 = c0470bA.f8489G.c(new Date());
                        if (oTRServices.f29312G.contains("las_user_data_update")) {
                            try {
                                dateB2 = c0470bA.b(strC2);
                                dateB = c0470bA.b(oTRServices.f29312G.getString("las_user_data_update", null));
                            } catch (ParseException unused) {
                                dateB = null;
                                dateB2 = null;
                            }
                            if (dateB2 != null || dateB != null) {
                                SharedPreferences sharedPreferences2 = Methods.f29416a;
                                long time = dateB2.getTime() - dateB.getTime();
                                long j8 = time / 86400000;
                                long j9 = time % 86400000;
                                if (((int) (((j9 / 3600000) * 60) + ((j9 % 3600000) / 60000) + (j8 * 1440))) > 5) {
                                    new Thread(new a(oTRServices, 1)).start();
                                }
                            }
                        } else {
                            new Thread(new a(oTRServices, 1)).start();
                        }
                    }
                }
                if (oTRServices.f29312G.contains("announcement") && oTRServices.f29312G.getString("ann_status", null).equals("ACTIVE")) {
                    oTRServices.f29318M = Integer.parseInt(oTRServices.f29312G.getString(str, "1"));
                    oTRServices.f29319N += oTRServices.f29317L;
                    if (!oTRServices.f29327V) {
                        oTRServices.f29327V = true;
                        Intent intent = new Intent("PlayStreamEPGActivityProgramAndMessageReceiver");
                        intent.putExtra("what", "ann");
                        p064i0.c.a(OTRApp.f29417G).c(intent);
                    }
                    if (oTRServices.f29319N > oTRServices.f29318M * 60000) {
                        oTRServices.f29327V = false;
                        oTRServices.f29319N = 0;
                    }
                }
                Methods.X(OTRApp.f29417G);
                if (q0.q().b("ORT_PROCESS_STATUS") == 0 && Methods.O()) {
                    Log.d("XCIPTV_TAG", "--------------OTRServices Deleting epg.xml");
                    Methods.B();
                    break;
                }
                break;
            case 1:
                int i12 = OTRServices.f29311W;
                oTRServices.getClass();
                Log.d("XCIPTV_TAG", "----updateUserInfo------running");
                String strC3 = C0470b.a("MM/dd/yyyy HH:mm:ss").f8489G.c(new Date());
                SharedPreferences.Editor editorEdit = oTRServices.f29312G.edit();
                editorEdit.putString("las_user_data_update", strC3);
                editorEdit.apply();
                String strValueOf = String.valueOf(2001);
                String string = oTRServices.getString(R.string.app_name);
                i iVarX = O.x("ORT_PROFILE", "Default (XC)", new c7.a(oTRServices, 0));
                if (iVarX != null) {
                    String strA = U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u") ? "M3U" : Encrypt.a(iVarX.f25480c);
                    new JSONObject();
                    StringBuilder sb = new StringBuilder();
                    sb.append(oTRServices.f29312G.getString("logurl", null));
                    sb.append("ApiIPTV.php?tag=connv2&appid=");
                    sb.append(oTRServices.f29312G.getString("appid", null));
                    sb.append("&version=");
                    sb.append(OTRApp.f29417G.getString(R.string.app_name));
                    sb.append("-7.0-");
                    sb.append(strValueOf);
                    sb.append("&device_type=Android&p=pe.hf.black20&an=");
                    sb.append(string);
                    sb.append("&customerid=");
                    sb.append(oTRServices.f29312G.getString("customerid", null));
                    sb.append("&userid=");
                    sb.append(strA);
                    sb.append("&online=");
                    sb.append(q0.q().c("ORT_USER_ONLINE_STATUS", "no"));
                    sb.append("&did=");
                    String strE = new G(4).E(U2.h(oTRServices.f29312G, "did", null, sb).replaceAll(" ", HttpUrl.FRAGMENT_ENCODE_SET));
                    if (strE != null) {
                        try {
                            new JSONObject(strE).getString("success");
                            oTRServices.f29320O = null;
                            JSONObject jSONObject = new JSONObject(strE);
                            oTRServices.f29320O = jSONObject;
                            String string2 = jSONObject.getString("success");
                            oTRServices.f29321P = string2;
                            if (!string2.equals("0")) {
                                oTRServices.f29322Q = oTRServices.f29320O.getString("message");
                                oTRServices.f29323R = oTRServices.f29320O.getString("msgid");
                                oTRServices.f29324S = oTRServices.f29320O.getString("msg_status");
                                oTRServices.f29325T = oTRServices.f29320O.getString("msg_expire");
                                editorEdit.putString("msg_txt", oTRServices.f29322Q);
                                editorEdit.putString("msg_id", oTRServices.f29323R);
                                editorEdit.putString("msg_status", oTRServices.f29324S);
                                editorEdit.putString("msg_expire", oTRServices.f29325T);
                                editorEdit.putString("announcement", oTRServices.f29320O.getString("announcement"));
                                editorEdit.putString("ann_status", oTRServices.f29320O.getString("ann_status"));
                                editorEdit.putString("ann_expire", oTRServices.f29320O.getString("ann_expire"));
                                editorEdit.putString("ann_interval", oTRServices.f29320O.getString("ann_interval"));
                                editorEdit.putString("ann_disappear", oTRServices.f29320O.getString("ann_disappear"));
                                editorEdit.apply();
                                editorEdit.commit();
                                q0.q().e("ORT_isUpdateUserInfoRequired", false);
                                q0.q().g("ORT_USER_ONLINE_STATUS", "no");
                                if (oTRServices.f29321P.equals("1")) {
                                    if (!oTRServices.f29324S.equals("ACTIVE")) {
                                        Intent intent2 = new Intent("CategoriesActivityProgramAndMessageReceiver");
                                        intent2.putExtra("what", "msg");
                                        intent2.putExtra("success", "0");
                                        intent2.putExtra("msg_txt", "No Messages!");
                                        p064i0.c.a(oTRServices).c(intent2);
                                    } else if (q0.q().a("ORT_isPlayStreamEPGActivityVisible", false)) {
                                        Intent intent3 = new Intent("PlayStreamEPGActivityProgramAndMessageReceiver");
                                        intent3.putExtra("what", "msg");
                                        intent3.putExtra("success", "1");
                                        intent3.putExtra("msg_txt", oTRServices.f29322Q);
                                        p064i0.c.a(oTRServices).c(intent3);
                                    } else if (q0.q().a("ORT_isCategoriesActivityVisible", false)) {
                                        Intent intent4 = new Intent("CategoriesActivityProgramAndMessageReceiver");
                                        intent4.putExtra("what", "msg");
                                        intent4.putExtra("success", "1");
                                        intent4.putExtra("msg_txt", oTRServices.f29322Q);
                                        p064i0.c.a(oTRServices).c(intent4);
                                    }
                                }
                            }
                        } catch (JSONException e8) {
                            Log.d("XCIPTV_TAG", String.valueOf(e8));
                            return;
                        }
                    }
                }
                break;
            default:
                int i13 = OTRServices.f29311W;
                oTRServices.getClass();
                c cVar3 = new c(oTRServices, 1);
                if (oTRServices.f29314I.size() > 0) {
                    for (int i14 = 0; i14 < oTRServices.f29314I.size(); i14++) {
                        if (Methods.u(Methods.F()).equals(((e) oTRServices.f29314I.get(i14)).f25449i)) {
                            if (!q0.q().c("ORT_lastProgramReminderID", "0").equals(((e) oTRServices.f29314I.get(i14)).f25441a)) {
                                q0.q().g("ORT_lastProgramReminderID", ((e) oTRServices.f29314I.get(i14)).f25441a);
                                String str3 = ((e) oTRServices.f29314I.get(i14)).f25443c + " - " + ((e) oTRServices.f29314I.get(i14)).f25444d;
                                cVar3.e0(((e) oTRServices.f29314I.get(i14)).f25441a, "notified");
                                q0.q().g("ORT_program_reminder_program_details", str3);
                                q0.q().g("ORT_program_reminder_Direct_source", ((e) oTRServices.f29314I.get(i14)).f25452l);
                                q0.q().g("ORT_program_reminder_Stream_id", ((e) oTRServices.f29314I.get(i14)).f25446f);
                                q0.q().g("ORT_program_reminder_Channel_name", ((e) oTRServices.f29314I.get(i14)).f25443c);
                                q0.q().g("ORT_program_reminder_Category_id", ((e) oTRServices.f29314I.get(i14)).f25447g);
                                q0.q().g("ORT_program_reminder_Category_name", ((e) oTRServices.f29314I.get(i14)).f25448h);
                                if (q0.q().a("ORT_isPlayStreamEPGActivityVisible", false)) {
                                    Intent intent5 = new Intent("PlayStreamEPGActivityProgramAndMessageReceiver");
                                    intent5.putExtra("what", "pr");
                                    intent5.putExtra("title", oTRServices.getString(R.string.program_reminder));
                                    intent5.putExtra("desc", str3);
                                    intent5.putExtra("time", "Starts at: " + ((e) oTRServices.f29314I.get(i14)).f25449i);
                                    p064i0.c.a(oTRServices).c(intent5);
                                } else if (q0.q().a("ORT_isCategoriesActivityVisible", false)) {
                                    Intent intent6 = new Intent("CategoriesActivityProgramAndMessageReceiver");
                                    intent6.putExtra("what", "pr");
                                    intent6.putExtra("title", oTRServices.getString(R.string.program_reminder));
                                    intent6.putExtra("desc", str3);
                                    intent6.putExtra("time", "Starts at: " + ((e) oTRServices.f29314I.get(i14)).f25449i);
                                    p064i0.c.a(oTRServices).c(intent6);
                                }
                            }
                        }
                    }
                }
                cVar3.close();
                break;
        }
    }
}
