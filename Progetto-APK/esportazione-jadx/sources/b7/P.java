package b7;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import pe.hf.black20.LoginActivity;
import pe.hf.black20.MultiScreenActivityEXO;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class P implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f10162b;

    public /* synthetic */ P(Activity activity, int i8) {
        this.f10161a = i8;
        this.f10162b = activity;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int i8 = this.f10161a;
        Activity activity = this.f10162b;
        switch (i8) {
            case 0:
                LoginActivity loginActivity = (LoginActivity) activity;
                if (!z7) {
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) loginActivity.f28614w0.getLayoutParams();
                    int i9 = loginActivity.f28597f0 * 35;
                    layoutParams.height = i9;
                    layoutParams.width = i9;
                    loginActivity.f28614w0.setLayoutParams(layoutParams);
                } else {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) loginActivity.f28614w0.getLayoutParams();
                    int i10 = loginActivity.f28597f0 * 50;
                    layoutParams2.height = i10;
                    layoutParams2.width = i10;
                    loginActivity.f28614w0.setLayoutParams(layoutParams2);
                }
                break;
            case 1:
                LoginActivity loginActivity2 = (LoginActivity) activity;
                if (!z7) {
                    FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) loginActivity2.f28600i0.getLayoutParams();
                    int i11 = loginActivity2.f28597f0 * 50;
                    layoutParams3.height = i11;
                    layoutParams3.width = i11;
                    loginActivity2.f28600i0.setLayoutParams(layoutParams3);
                } else {
                    FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) loginActivity2.f28600i0.getLayoutParams();
                    int i12 = loginActivity2.f28597f0 * 60;
                    layoutParams4.height = i12;
                    layoutParams4.width = i12;
                    loginActivity2.f28600i0.setLayoutParams(layoutParams4);
                }
                break;
            default:
                MultiScreenActivityEXO multiScreenActivityEXO = (MultiScreenActivityEXO) activity;
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28734h0.getLayoutParams();
                    int i13 = multiScreenActivityEXO.f28657A1;
                    layoutParams5.height = i13;
                    layoutParams5.width = i13;
                    multiScreenActivityEXO.f28734h0.setLayoutParams(layoutParams5);
                } else {
                    LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28734h0.getLayoutParams();
                    int i14 = multiScreenActivityEXO.f28771z1;
                    layoutParams6.height = i14;
                    layoutParams6.width = i14;
                    multiScreenActivityEXO.f28734h0.setLayoutParams(layoutParams6);
                }
                break;
        }
    }
}
