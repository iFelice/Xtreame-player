package b7;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.Button;
import pe.hf.black20.LoginActivity;
import pe.hf.black20.UsersHistoryActivity;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class Q implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10165G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f10166H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10167I;

    public /* synthetic */ Q(LoginActivity loginActivity, AlertDialog alertDialog, int i8) {
        this.f10165G = i8;
        this.f10166H = loginActivity;
        this.f10167I = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10165G;
        AlertDialog alertDialog = this.f10167I;
        LoginActivity loginActivity = this.f10166H;
        switch (i8) {
            case 0:
                Button button = LoginActivity.f28554N0;
                loginActivity.m("PANEL 1 " + loginActivity.f28613v0);
                loginActivity.h();
                SharedPreferences.Editor editorEdit = loginActivity.f28571J.edit();
                loginActivity.f28573K = editorEdit;
                editorEdit.putString("XCIPTV_WHICH_PORTAL_SELECTED", "1");
                loginActivity.f28573K.apply();
                loginActivity.f28573K.commit();
                alertDialog.dismiss();
                break;
            case 1:
                Button button2 = LoginActivity.f28554N0;
                loginActivity.m("PANEL 2 " + loginActivity.f28613v0);
                loginActivity.h();
                SharedPreferences.Editor editorEdit2 = loginActivity.f28571J.edit();
                loginActivity.f28573K = editorEdit2;
                editorEdit2.putString("XCIPTV_WHICH_PORTAL_SELECTED", "2");
                loginActivity.f28573K.apply();
                loginActivity.f28573K.commit();
                alertDialog.dismiss();
                break;
            case 2:
                Button button3 = LoginActivity.f28554N0;
                loginActivity.m("PANEL 3 " + loginActivity.f28613v0);
                loginActivity.h();
                SharedPreferences.Editor editorEdit3 = loginActivity.f28571J.edit();
                loginActivity.f28573K = editorEdit3;
                editorEdit3.putString("XCIPTV_WHICH_PORTAL_SELECTED", "3");
                loginActivity.f28573K.apply();
                loginActivity.f28573K.commit();
                alertDialog.dismiss();
                break;
            case 3:
                Button button4 = LoginActivity.f28554N0;
                loginActivity.m("PANEL 4 " + loginActivity.f28613v0);
                loginActivity.h();
                SharedPreferences.Editor editorEdit4 = loginActivity.f28571J.edit();
                loginActivity.f28573K = editorEdit4;
                editorEdit4.putString("XCIPTV_WHICH_PORTAL_SELECTED", "4");
                loginActivity.f28573K.apply();
                loginActivity.f28573K.commit();
                alertDialog.dismiss();
                break;
            case 4:
                Button button5 = LoginActivity.f28554N0;
                loginActivity.m("PANEL 5 " + loginActivity.f28613v0);
                loginActivity.h();
                SharedPreferences.Editor editorEdit5 = loginActivity.f28571J.edit();
                loginActivity.f28573K = editorEdit5;
                editorEdit5.putString("XCIPTV_WHICH_PORTAL_SELECTED", "4");
                loginActivity.f28573K.apply();
                loginActivity.f28573K.commit();
                alertDialog.dismiss();
                break;
            case 5:
                Button button6 = LoginActivity.f28554N0;
                loginActivity.l("xtreamcodes");
                loginActivity.q();
                alertDialog.dismiss();
                break;
            case 6:
                Button button7 = LoginActivity.f28554N0;
                loginActivity.l("ezserver");
                loginActivity.q();
                alertDialog.dismiss();
                break;
            case 7:
                Button button8 = LoginActivity.f28554N0;
                loginActivity.l("m3u");
                loginActivity.q();
                alertDialog.dismiss();
                break;
            case 8:
                Button button9 = LoginActivity.f28554N0;
                loginActivity.l("otr");
                loginActivity.q();
                alertDialog.dismiss();
                break;
            case 9:
                Button button10 = LoginActivity.f28554N0;
                loginActivity.getClass();
                loginActivity.startActivity(new Intent(loginActivity, (Class<?>) UsersHistoryActivity.class));
                alertDialog.dismiss();
                break;
            default:
                loginActivity.p(loginActivity.f28570I0);
                alertDialog.dismiss();
                break;
        }
    }
}
