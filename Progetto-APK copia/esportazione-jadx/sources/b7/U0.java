package b7;

import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.view.View;
import pe.hf.black20.ParentalControlActivity;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class U0 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10236G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10237H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ ParentalControlActivity f10238I;

    public /* synthetic */ U0(ParentalControlActivity parentalControlActivity, AlertDialog alertDialog, int i8) {
        this.f10236G = i8;
        this.f10238I = parentalControlActivity;
        this.f10237H = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10236G;
        AlertDialog alertDialog = this.f10237H;
        switch (i8) {
            case 0:
                ParentalControlActivity parentalControlActivity = this.f10238I;
                String strF = Methods.f(parentalControlActivity.f28811G);
                p000a.r.q("Master Parental Password is ---- ", strF, "XCIPTV_TAG");
                if (p000a.r.s(ParentalControlActivity.f28809X)) {
                    ParentalControlActivity.f28809X.setError("Old Password is Empty");
                } else if (!p000a.r.s(ParentalControlActivity.f28810Y)) {
                    if (parentalControlActivity.f28812H.contains("parental_contorl")) {
                        z4.q0.q().g("ORT_PARENTAL_CONTROL", parentalControlActivity.f28812H.getString("parental_contorl", null));
                    }
                    if (ParentalControlActivity.f28809X.getText().toString().equals(z4.q0.q().c("ORT_PARENTAL_CONTROL", "0000")) || ParentalControlActivity.f28809X.getText().toString().equals(strF)) {
                        SharedPreferences.Editor editorEdit = parentalControlActivity.f28812H.edit();
                        editorEdit.putString("parental_contorl", ParentalControlActivity.f28810Y.getText().toString());
                        editorEdit.remove("parental_recovery");
                        editorEdit.apply();
                        editorEdit.commit();
                        alertDialog.dismiss();
                        ParentalControlActivity.a(parentalControlActivity, "Password has been changed successfully!");
                    } else {
                        ParentalControlActivity.a(parentalControlActivity, "Old password is incorrect!");
                    }
                } else {
                    ParentalControlActivity.f28810Y.setError("New Password is Empty");
                }
                break;
            case 1:
                alertDialog.dismiss();
                break;
            default:
                alertDialog.dismiss();
                break;
        }
    }
}
