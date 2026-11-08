package d7;

import android.app.AlertDialog;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24664G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f24665H;

    public /* synthetic */ b(AlertDialog alertDialog, int i8) {
        this.f24664G = i8;
        this.f24665H = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f24664G;
        AlertDialog alertDialog = this.f24665H;
        switch (i8) {
            case 0:
                alertDialog.dismiss();
                break;
            default:
                alertDialog.dismiss();
                break;
        }
    }
}
