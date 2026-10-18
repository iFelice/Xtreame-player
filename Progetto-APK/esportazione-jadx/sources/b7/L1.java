package b7;

import android.app.AlertDialog;
import android.view.View;
import pe.hf.black20.UsersHistoryActivity;
import pe.hf.black20.encryption.Encrypt;

/* JADX INFO: loaded from: classes2.dex */
public final class L1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10103G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10104H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ UsersHistoryActivity f10105I;

    public /* synthetic */ L1(UsersHistoryActivity usersHistoryActivity, AlertDialog alertDialog, int i8) {
        this.f10103G = i8;
        this.f10105I = usersHistoryActivity;
        this.f10104H = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        int i8 = this.f10103G;
        AlertDialog alertDialog = this.f10104H;
        switch (i8) {
            case 0:
                alertDialog.dismiss();
                break;
            case 1:
                alertDialog.dismiss();
                break;
            case 2:
                if (p000a.r.s(UsersHistoryActivity.f29224a0)) {
                    UsersHistoryActivity.f29224a0.setError("Name is Empty");
                } else if (p000a.r.s(UsersHistoryActivity.f29225b0)) {
                    UsersHistoryActivity.f29225b0.setError("Username is Empty");
                } else if (p000a.r.s(UsersHistoryActivity.f29226c0)) {
                    UsersHistoryActivity.f29226c0.setError("Password is Empty");
                } else if (!p000a.r.s(UsersHistoryActivity.f29227d0)) {
                    UsersHistoryActivity usersHistoryActivity = this.f10105I;
                    String str = "XC";
                    if (!usersHistoryActivity.f29244W.equals("xtreamcodes")) {
                        if (usersHistoryActivity.f29244W.equals("m3u")) {
                            str = "M3U";
                        } else if (usersHistoryActivity.f29244W.equals("ezserver")) {
                            str = "EZS";
                        } else if (usersHistoryActivity.f29244W.equals("otr")) {
                            str = "OTR";
                        }
                    }
                    usersHistoryActivity.f29231J.O(UsersHistoryActivity.f29224a0.getText().toString() + " (" + str + ")", Encrypt.b(UsersHistoryActivity.f29225b0.getText().toString()), Encrypt.b(UsersHistoryActivity.f29226c0.getText().toString()), Encrypt.b(UsersHistoryActivity.f29227d0.getText().toString()));
                    alertDialog.dismiss();
                    usersHistoryActivity.d();
                } else {
                    UsersHistoryActivity.f29227d0.setError("Server name is Empty");
                }
                break;
            default:
                alertDialog.dismiss();
                break;
        }
    }
}
