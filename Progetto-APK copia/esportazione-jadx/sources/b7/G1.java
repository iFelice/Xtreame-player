package b7;

import android.view.View;
import android.widget.TextView;
import pe.hf.black20.SettingsMenuActivity;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class G1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10020G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ TextView f10021H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ SettingsMenuActivity f10022I;

    public /* synthetic */ G1(SettingsMenuActivity settingsMenuActivity, TextView textView, int i8) {
        this.f10020G = i8;
        this.f10022I = settingsMenuActivity;
        this.f10021H = textView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10020G;
        TextView textView = this.f10021H;
        SettingsMenuActivity settingsMenuActivity = this.f10022I;
        switch (i8) {
            case 0:
                settingsMenuActivity.f29165O = true;
                Methods.m(settingsMenuActivity.f29160J, "yes");
                textView.setText(settingsMenuActivity.f29157G.getString("timeShiftHR", null) + " Hr " + settingsMenuActivity.f29157G.getString("timeShiftMin", null) + " Min");
                p000a.r.n(settingsMenuActivity.f29157G, "timeShiftAuto", "yes");
                break;
            case 1:
                settingsMenuActivity.f29165O = false;
                double d6 = settingsMenuActivity.f29163M - 0.5d;
                settingsMenuActivity.f29163M = d6;
                if (d6 % 1.0d == 0.0d) {
                    settingsMenuActivity.f29164N = 0.0d;
                } else if (d6 >= 0.0d) {
                    settingsMenuActivity.f29164N = 30.0d;
                } else {
                    settingsMenuActivity.f29164N = -30.0d;
                }
                textView.setText(((int) settingsMenuActivity.f29163M) + " Hr " + Math.abs((int) settingsMenuActivity.f29164N) + " Min");
                p000a.r.n(settingsMenuActivity.f29157G, "timeShiftAuto", "no");
                break;
            default:
                settingsMenuActivity.f29165O = false;
                double d8 = settingsMenuActivity.f29163M + 0.5d;
                settingsMenuActivity.f29163M = d8;
                if (d8 % 1.0d == 0.0d) {
                    settingsMenuActivity.f29164N = 0.0d;
                } else if (d8 >= 0.0d) {
                    settingsMenuActivity.f29164N = 30.0d;
                } else {
                    settingsMenuActivity.f29164N = -30.0d;
                }
                textView.setText(((int) settingsMenuActivity.f29163M) + " Hr " + Math.abs((int) settingsMenuActivity.f29164N) + " Min");
                p000a.r.n(settingsMenuActivity.f29157G, "timeShiftAuto", "no");
                break;
        }
    }
}
