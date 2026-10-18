package b7;

import android.app.AlertDialog;
import android.view.View;
import pe.hf.black20.MultiScreenActivityEXO;

/* JADX INFO: loaded from: classes2.dex */
public final class X implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10247G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10248H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ MultiScreenActivityEXO f10249I;

    public /* synthetic */ X(MultiScreenActivityEXO multiScreenActivityEXO, AlertDialog alertDialog, int i8) {
        this.f10247G = i8;
        this.f10249I = multiScreenActivityEXO;
        this.f10248H = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10247G;
        AlertDialog alertDialog = this.f10248H;
        switch (i8) {
            case 0:
                alertDialog.dismiss();
                break;
            case 1:
                alertDialog.dismiss();
                this.f10249I.finish();
                break;
            default:
                alertDialog.dismiss();
                break;
        }
    }
}
