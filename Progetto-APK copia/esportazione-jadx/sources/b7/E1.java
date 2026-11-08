package b7;

import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.TextView;
import pe.hf.black20.R;
import pe.hf.black20.SettingsMenuActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class E1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f9990G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f9991H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ TextView f9992I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ SettingsMenuActivity f9993J;

    public /* synthetic */ E1(SettingsMenuActivity settingsMenuActivity, AlertDialog alertDialog, TextView textView, int i8) {
        this.f9990G = i8;
        this.f9993J = settingsMenuActivity;
        this.f9991H = alertDialog;
        this.f9992I = textView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f9990G;
        TextView textView = this.f9992I;
        AlertDialog alertDialog = this.f9991H;
        SettingsMenuActivity settingsMenuActivity = this.f9993J;
        switch (i8) {
            case 0:
                SharedPreferences.Editor editorEdit = settingsMenuActivity.f29157G.edit();
                editorEdit.putString("streamFormat", "ts");
                editorEdit.apply();
                editorEdit.commit();
                alertDialog.dismiss();
                SettingsMenuActivity settingsMenuActivity2 = settingsMenuActivity.f29160J;
                settingsMenuActivity.a(settingsMenuActivity2.getString(R.string.xc_default_stream_type_ts), "msg");
                textView.setText(settingsMenuActivity2.getString(R.string.xc_selected_mpegts));
                break;
            default:
                SharedPreferences.Editor editorEdit2 = settingsMenuActivity.f29157G.edit();
                editorEdit2.putString("streamFormat", "m3u8");
                editorEdit2.apply();
                editorEdit2.commit();
                alertDialog.dismiss();
                SettingsMenuActivity settingsMenuActivity3 = settingsMenuActivity.f29160J;
                settingsMenuActivity.a(settingsMenuActivity3.getString(R.string.xc_default_stream_type_hls), "msg");
                textView.setText(settingsMenuActivity3.getString(R.string.xc_selected_hls));
                break;
        }
    }
}
