package b7;

import android.content.DialogInterface;
import android.content.Intent;
import pe.hf.black20.LoginActivity;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.SettingsMenuActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class F1 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10000G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ SettingsMenuActivity f10001H;

    public /* synthetic */ F1(SettingsMenuActivity settingsMenuActivity, int i8) {
        this.f10000G = i8;
        this.f10001H = settingsMenuActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        switch (this.f10000G) {
            case 0:
                dialogInterface.dismiss();
                Intent intent = new Intent(ORPlayerMainActivity.FINISH_ALERT);
                SettingsMenuActivity settingsMenuActivity = this.f10001H;
                settingsMenuActivity.sendBroadcast(intent);
                settingsMenuActivity.finish();
                settingsMenuActivity.startActivity(new Intent(settingsMenuActivity, (Class<?>) LoginActivity.class));
                settingsMenuActivity.finish();
                break;
            default:
                dialogInterface.dismiss();
                break;
        }
    }
}
