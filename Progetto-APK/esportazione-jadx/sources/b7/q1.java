package b7;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import java.io.File;
import pe.hf.black20.RecordsActivity;
import pe.hf.black20.UsersHistoryActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class q1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10390G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f10391H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f10392I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ TextView f10393J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f10394K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Activity f10395L;

    public /* synthetic */ q1(Activity activity, TextView textView, Object obj, String str, AlertDialog alertDialog, int i8) {
        this.f10390G = i8;
        this.f10395L = activity;
        this.f10393J = textView;
        this.f10394K = obj;
        this.f10391H = str;
        this.f10392I = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10390G;
        AlertDialog alertDialog = this.f10392I;
        String str = this.f10391H;
        Activity activity = this.f10395L;
        Object obj = this.f10394K;
        TextView textView = this.f10393J;
        switch (i8) {
            case 0:
                textView.setText(Methods.M(String.valueOf(((File[]) obj)[2])));
                RecordsActivity recordsActivity = (RecordsActivity) activity;
                SharedPreferences.Editor editorEdit = recordsActivity.f29062H.edit();
                editorEdit.putString("rec_path", str);
                editorEdit.putString("rec_path_storage", "External2 Location is Selected - ");
                editorEdit.apply();
                alertDialog.dismiss();
                Methods.l(recordsActivity.f29061G, "External2 Storge is Selected");
                return;
            default:
                EditText editText = (EditText) textView;
                if (p000a.r.s(editText)) {
                    editText.setError("Username is Empty");
                    return;
                }
                EditText editText2 = (EditText) obj;
                if (p000a.r.s(editText2)) {
                    editText2.setError("Password is Empty");
                    return;
                }
                UsersHistoryActivity usersHistoryActivity = (UsersHistoryActivity) activity;
                c7.a aVar = usersHistoryActivity.f29231J;
                String strB = Encrypt.b(editText.getText().toString());
                String strB2 = Encrypt.b(editText2.getText().toString());
                SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("name", str);
                    contentValues.put("username", strB);
                    contentValues.put("password", strB2);
                    writableDatabase.update("user_history", contentValues, "name = ?", new String[]{str});
                    writableDatabase.close();
                    alertDialog.dismiss();
                    usersHistoryActivity.d();
                    return;
                } catch (Throwable th) {
                    writableDatabase.close();
                    throw th;
                }
        }
    }
}
