package b7;

import android.app.AlertDialog;
import android.view.View;
import pe.hf.black20.CategoriesActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class r implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10396G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10397H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ CategoriesActivity f10398I;

    public /* synthetic */ r(CategoriesActivity categoriesActivity, AlertDialog alertDialog, int i8) {
        this.f10396G = i8;
        this.f10398I = categoriesActivity;
        this.f10397H = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10396G;
        CategoriesActivity categoriesActivity = this.f10398I;
        AlertDialog alertDialog = this.f10397H;
        switch (i8) {
            case 0:
                alertDialog.dismiss();
                break;
            case 1:
                alertDialog.dismiss();
                categoriesActivity.finishAffinity();
                break;
            case 2:
                alertDialog.dismiss();
                break;
            case 3:
                new AsyncTaskC0547s(categoriesActivity).execute(new Void[0]);
                alertDialog.dismiss();
                break;
            default:
                alertDialog.dismiss();
                break;
        }
    }
}
