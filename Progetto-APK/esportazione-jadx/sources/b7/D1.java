package b7;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.google.protobuf.U2;
import p086l.C3061x;
import pe.hf.black20.ParentalControlActivity;
import pe.hf.black20.PlayerSettingsActivity;
import pe.hf.black20.R;
import pe.hf.black20.SettingsMenuActivity;
import pe.hf.black20.services.OTRServices;
import pe.hf.black20.updatecontents.EZServerUpdateContents;
import pe.hf.black20.updatecontents.M3UUpdateContents;
import pe.hf.black20.updatecontents.XCUpdateContents;
import pe.hf.black20.util.Config;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class D1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f9981G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f9982H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ SettingsMenuActivity f9983I;

    public /* synthetic */ D1(SettingsMenuActivity settingsMenuActivity, AlertDialog alertDialog, int i8) {
        this.f9981G = i8;
        this.f9983I = settingsMenuActivity;
        this.f9982H = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f9981G;
        SettingsMenuActivity settingsMenuActivity = this.f9983I;
        AlertDialog alertDialog = this.f9982H;
        switch (i8) {
            case 0:
                alertDialog.dismiss();
                break;
            case 1:
                alertDialog.dismiss();
                break;
            case 2:
                alertDialog.dismiss();
                int i9 = SettingsMenuActivity.f29155W;
                settingsMenuActivity.getClass();
                if (z4.q0.q().b("ORT_PROCESS_STATUS") != 0) {
                    Toast.makeText(settingsMenuActivity.f29160J, R.string.background_update_process_is_running, 1).show();
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
                    settingsMenuActivity.startActivity(new Intent(settingsMenuActivity, (Class<?>) XCUpdateContents.class));
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
                    settingsMenuActivity.startActivity(new Intent(settingsMenuActivity, (Class<?>) EZServerUpdateContents.class));
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
                    settingsMenuActivity.startActivity(new Intent(settingsMenuActivity, (Class<?>) M3UUpdateContents.class));
                }
                break;
            case 3:
                alertDialog.dismiss();
                break;
            case 4:
                if (!p000a.r.s(SettingsMenuActivity.f29156X)) {
                    if (settingsMenuActivity.f29157G.contains("parental_contorl")) {
                        z4.q0.q().g("ORT_PARENTAL_CONTROL", settingsMenuActivity.f29157G.getString("parental_contorl", null));
                    }
                    SettingsMenuActivity settingsMenuActivity2 = settingsMenuActivity.f29160J;
                    String strF = Methods.f(settingsMenuActivity2);
                    if (SettingsMenuActivity.f29156X.getText().toString().equals(z4.q0.q().c("ORT_PARENTAL_CONTROL", "0000")) || SettingsMenuActivity.f29156X.getText().toString().equals(strF)) {
                        settingsMenuActivity.startActivity(new Intent(settingsMenuActivity, (Class<?>) ParentalControlActivity.class));
                        alertDialog.dismiss();
                    } else {
                        settingsMenuActivity.a(settingsMenuActivity2.getString(R.string.xc_password_incorrect), "msg");
                    }
                } else {
                    SettingsMenuActivity.f29156X.setError(settingsMenuActivity.f29160J.getString(R.string.xc_password_empty));
                }
                break;
            case 5:
                if (!settingsMenuActivity.f29165O) {
                    SharedPreferences.Editor editorEdit = settingsMenuActivity.f29157G.edit();
                    editorEdit.putString("timeShiftHR", String.valueOf((int) settingsMenuActivity.f29163M));
                    editorEdit.putString("timeShiftMin", String.valueOf((int) settingsMenuActivity.f29164N));
                    editorEdit.apply();
                    editorEdit.commit();
                    alertDialog.dismiss();
                } else {
                    alertDialog.dismiss();
                }
                break;
            case 6:
                alertDialog.dismiss();
                break;
            case 7:
                settingsMenuActivity.f29162L.setMessage("Please wait while we are checking update..");
                settingsMenuActivity.f29162L.show();
                try {
                    new C3061x(settingsMenuActivity, settingsMenuActivity, "getVersionCode", SettingsMenuActivity.papi() + "ApiIPTV.php?tag=checkupdate&aid=&aid=" + settingsMenuActivity.f29157G.getString("appid", null) + "&l=" + Methods.g(Config.f29413a));
                } catch (Exception unused) {
                    Log.d("XCIPTV_TAG", "SettingsMenuActivity -- VolleyGETStringRequest Error");
                    if (settingsMenuActivity.f29162L.isShowing()) {
                        settingsMenuActivity.f29162L.dismiss();
                    }
                }
                alertDialog.dismiss();
                break;
            case 8:
                Methods.Y(settingsMenuActivity.f29160J, OTRServices.class);
                Log.d("XCIPTV_TAG", "APK URL - " + settingsMenuActivity.f29171U);
                SettingsMenuActivity settingsMenuActivity3 = settingsMenuActivity.f29160J;
                pe.hf.black20.util.a aVar = new pe.hf.black20.util.a();
                pe.hf.black20.util.a.f29419H = settingsMenuActivity3;
                pe.hf.black20.util.a.f29420I = settingsMenuActivity3;
                String str = settingsMenuActivity.f29171U;
                pe.hf.black20.util.a.f29421J = str;
                if (str != null) {
                    new p083k3.j(aVar).execute(new String[0]);
                }
                alertDialog.dismiss();
                break;
            case 9:
                alertDialog.dismiss();
                break;
            case 10:
                Intent intent = new Intent(settingsMenuActivity, (Class<?>) PlayerSettingsActivity.class);
                intent.putExtra("whichPlayer", "EXO");
                settingsMenuActivity.startActivity(intent);
                alertDialog.dismiss();
                break;
            case 11:
                Intent intent2 = new Intent(settingsMenuActivity, (Class<?>) PlayerSettingsActivity.class);
                intent2.putExtra("whichPlayer", "VLC");
                settingsMenuActivity.startActivity(intent2);
                alertDialog.dismiss();
                break;
            default:
                alertDialog.dismiss();
                break;
        }
    }
}
