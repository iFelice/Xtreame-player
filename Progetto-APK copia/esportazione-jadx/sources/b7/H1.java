package b7;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.SettingsMenuActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class H1 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettingsMenuActivity f10030b;

    public /* synthetic */ H1(SettingsMenuActivity settingsMenuActivity, int i8) {
        this.f10029a = i8;
        this.f10030b = settingsMenuActivity;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i8 = this.f10029a;
        SettingsMenuActivity settingsMenuActivity = this.f10030b;
        switch (i8) {
            case 0:
                if (settingsMenuActivity != null) {
                    settingsMenuActivity.runOnUiThread(new p123p6.m(3, this, intent));
                    break;
                }
                break;
            default:
                Log.e("FirstReceiver", "FirstReceiver");
                if (intent.getAction().equals(ORPlayerMainActivity.FINISH_ALERT)) {
                    settingsMenuActivity.unregisterReceiver(settingsMenuActivity.f29169S);
                    settingsMenuActivity.f29170T = true;
                    settingsMenuActivity.finish();
                }
                break;
        }
    }
}
