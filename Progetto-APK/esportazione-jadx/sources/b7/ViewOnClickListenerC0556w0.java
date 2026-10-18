package b7;

import android.app.AlertDialog;
import android.view.View;

/* JADX INFO: renamed from: b7.w0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnClickListenerC0556w0 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10516G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10517H;

    public /* synthetic */ ViewOnClickListenerC0556w0(AlertDialog alertDialog, int i8) {
        this.f10516G = i8;
        this.f10517H = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10516G;
        AlertDialog alertDialog = this.f10517H;
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
