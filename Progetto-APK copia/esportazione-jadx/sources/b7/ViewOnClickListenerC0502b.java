package b7;

import android.app.AlertDialog;
import android.view.View;
import android.widget.EditText;
import android.widget.ListView;
import pe.hf.black20.BackupActivity;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.ProgramRemindersActivity;
import pe.hf.black20.RecordsActivity;

/* JADX INFO: renamed from: b7.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ViewOnClickListenerC0502b implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10264G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10265H;

    public /* synthetic */ ViewOnClickListenerC0502b(AlertDialog alertDialog, int i8) {
        this.f10264G = i8;
        this.f10265H = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10264G;
        AlertDialog alertDialog = this.f10265H;
        switch (i8) {
            case 0:
                EditText editText = BackupActivity.f28260s0;
                alertDialog.dismiss();
                break;
            case 1:
                EditText editText2 = BackupActivity.f28260s0;
                alertDialog.dismiss();
                break;
            case 2:
                String str = PlayStreamEPGActivity.THEME;
                alertDialog.dismiss();
                break;
            case 3:
                String str2 = PlayStreamEPGActivity.THEME;
                alertDialog.dismiss();
                break;
            case 4:
                String str3 = PlayStreamEPGActivity.THEME;
                alertDialog.dismiss();
                break;
            case 5:
                int i9 = ProgramRemindersActivity.f29028P;
                alertDialog.dismiss();
                break;
            case 6:
                ListView listView = RecordsActivity.f29060W;
                alertDialog.dismiss();
                break;
            default:
                ListView listView2 = RecordsActivity.f29060W;
                alertDialog.dismiss();
                break;
        }
    }
}
