package b7;

import android.content.res.ColorStateList;
import android.view.View;
import pe.hf.black20.R;

/* JADX INFO: renamed from: b7.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnFocusChangeListenerC0500a0 implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0550t0 f10261b;

    public /* synthetic */ ViewOnFocusChangeListenerC0500a0(C0550t0 c0550t0, int i8) {
        this.f10260a = i8;
        this.f10261b = c0550t0;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int i8 = this.f10260a;
        C0550t0 c0550t0 = this.f10261b;
        switch (i8) {
            case 0:
                if (!z7) {
                    c0550t0.f10461W0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.browser_actions_bg_grey)));
                } else {
                    c0550t0.f10461W0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.orplayer_focuse_item_color)));
                }
                break;
            case 1:
                if (!z7) {
                    c0550t0.f10462X0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.browser_actions_bg_grey)));
                } else {
                    c0550t0.f10462X0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.orplayer_focuse_item_color)));
                }
                break;
            case 2:
                if (!z7) {
                    c0550t0.f10463Y0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.browser_actions_bg_grey)));
                } else {
                    c0550t0.f10463Y0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.orplayer_focuse_item_color)));
                }
                break;
            case 3:
                if (!z7) {
                    c0550t0.f10454S0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.browser_actions_bg_grey)));
                } else {
                    c0550t0.f10454S0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.orplayer_focuse_item_color)));
                }
                break;
            case 4:
                if (!z7) {
                    c0550t0.f10456T0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.browser_actions_bg_grey)));
                } else {
                    c0550t0.f10456T0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.orplayer_focuse_item_color)));
                }
                break;
            case 5:
                if (!z7) {
                    c0550t0.f10458U0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.browser_actions_bg_grey)));
                } else {
                    c0550t0.f10458U0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.orplayer_focuse_item_color)));
                }
                break;
            default:
                if (!z7) {
                    c0550t0.f10460V0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.browser_actions_bg_grey)));
                } else {
                    c0550t0.f10460V0.setBackgroundTintList(ColorStateList.valueOf(c0550t0.o().getColor(R.color.orplayer_focuse_item_color)));
                }
                break;
        }
    }
}
