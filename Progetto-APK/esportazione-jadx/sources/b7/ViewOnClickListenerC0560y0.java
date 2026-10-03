package b7;

import android.app.AlertDialog;
import android.view.View;
import pe.hf.black20.ORPlayerMainActivity;

/* JADX INFO: renamed from: b7.y0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnClickListenerC0560y0 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10527G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10528H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ ORPlayerMainActivity f10529I;

    public /* synthetic */ ViewOnClickListenerC0560y0(ORPlayerMainActivity oRPlayerMainActivity, AlertDialog alertDialog, int i8) {
        this.f10527G = i8;
        this.f10529I = oRPlayerMainActivity;
        this.f10528H = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10527G;
        ORPlayerMainActivity oRPlayerMainActivity = this.f10529I;
        AlertDialog alertDialog = this.f10528H;
        switch (i8) {
            case 0:
                alertDialog.dismiss();
                oRPlayerMainActivity.finishAffinity();
                break;
            case 1:
                alertDialog.dismiss();
                break;
            case 2:
                new p083k3.j(oRPlayerMainActivity).execute(new Void[0]);
                alertDialog.dismiss();
                break;
            case 3:
                alertDialog.dismiss();
                break;
            default:
                alertDialog.dismiss();
                break;
        }
    }
}
