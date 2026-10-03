package b7;

import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import pe.hf.black20.SettingsMenuActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class C1 implements RadioGroup.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f9974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SettingsMenuActivity f9975c;

    public /* synthetic */ C1(SettingsMenuActivity settingsMenuActivity, View view, int i8) {
        this.f9973a = i8;
        this.f9975c = settingsMenuActivity;
        this.f9974b = view;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i8) {
        int i9 = this.f9973a;
        SettingsMenuActivity settingsMenuActivity = this.f9975c;
        View view = this.f9974b;
        switch (i9) {
            case 0:
                if (!((RadioButton) view.findViewById(i8)).getText().equals("EXO Player")) {
                    p000a.r.n(settingsMenuActivity.f29157G, "whichplayer_tv", "VLC");
                } else {
                    p000a.r.n(settingsMenuActivity.f29157G, "whichplayer_tv", "EXO");
                }
                break;
            case 1:
                if (!((RadioButton) view.findViewById(i8)).getText().equals("EXO Player")) {
                    p000a.r.n(settingsMenuActivity.f29157G, "whichplayer_vod", "VLC");
                } else {
                    p000a.r.n(settingsMenuActivity.f29157G, "whichplayer_vod", "EXO");
                }
                break;
            case 2:
                if (!((RadioButton) view.findViewById(i8)).getText().equals("EXO Player")) {
                    p000a.r.n(settingsMenuActivity.f29157G, "whichplayer_series", "VLC");
                } else {
                    p000a.r.n(settingsMenuActivity.f29157G, "whichplayer_series", "EXO");
                }
                break;
            case 3:
                if (!((RadioButton) view.findViewById(i8)).getText().equals("EXO Player")) {
                    p000a.r.n(settingsMenuActivity.f29157G, "whichplayer_catchup", "VLC");
                } else {
                    p000a.r.n(settingsMenuActivity.f29157G, "whichplayer_catchup", "EXO");
                }
                break;
            default:
                if (!((RadioButton) view.findViewById(i8)).getText().equals("EXO Player")) {
                    p000a.r.n(settingsMenuActivity.f29157G, "whichplayer_ms", "VLC");
                } else {
                    p000a.r.n(settingsMenuActivity.f29157G, "whichplayer_ms", "EXO");
                }
                break;
        }
    }
}
