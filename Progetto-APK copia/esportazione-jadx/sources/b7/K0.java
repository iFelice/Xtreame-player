package b7;

import android.content.res.ColorStateList;
import android.view.View;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class K0 implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ M0 f10097b;

    public /* synthetic */ K0(M0 m7, int i8) {
        this.f10096a = i8;
        this.f10097b = m7;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int i8 = this.f10096a;
        M0 m7 = this.f10097b;
        switch (i8) {
            case 0:
                if (!z7) {
                    m7.f10127O0.setBackgroundTintList(ColorStateList.valueOf(m7.o().getColor(R.color.browser_actions_bg_grey)));
                } else {
                    m7.f10127O0.setBackgroundTintList(ColorStateList.valueOf(m7.o().getColor(R.color.orplayer_focuse_item_color)));
                }
                break;
            case 1:
                if (!z7) {
                    ORPlayerMainActivity.f28775G0 = false;
                    m7.f10115C0.setSelector(R.drawable.orplayer_card_not_selected_tv);
                } else {
                    m7.f10115C0.setSelector(R.drawable.orplayer_card_selected);
                }
                break;
            default:
                if (!z7) {
                    m7.f10128P0.setBackgroundTintList(ColorStateList.valueOf(m7.o().getColor(R.color.browser_actions_bg_grey)));
                } else {
                    m7.f10128P0.setBackgroundTintList(ColorStateList.valueOf(m7.o().getColor(R.color.orplayer_focuse_item_color)));
                }
                break;
        }
    }
}
