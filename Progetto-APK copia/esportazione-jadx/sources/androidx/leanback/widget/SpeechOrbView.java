package androidx.leanback.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class SpeechOrbView extends SearchOrbView {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final float f9246b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public N f9247c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public N f9248d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f9249e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f9250f0;

    public SpeechOrbView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f9249e0 = 0;
        this.f9250f0 = false;
        Resources resources = context.getResources();
        this.f9246b0 = resources.getFraction(R.fraction.lb_search_bar_speech_orb_max_level_zoom, 1, 1);
        this.f9248d0 = new N(resources.getColor(R.color.lb_speech_orb_not_recording), resources.getColor(R.color.lb_speech_orb_not_recording_pulsed), resources.getColor(R.color.lb_speech_orb_not_recording_icon));
        this.f9247c0 = new N(resources.getColor(R.color.lb_speech_orb_recording), resources.getColor(R.color.lb_speech_orb_recording), 0);
        c();
    }

    public final void c() {
        setOrbColors(this.f9248d0);
        setOrbIcon(getResources().getDrawable(R.drawable.lb_ic_search_mic_out));
        a(hasFocus());
        View view = this.f9216I;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        this.f9250f0 = false;
    }

    @Override // androidx.leanback.widget.SearchOrbView
    public int getLayoutResourceId() {
        return R.layout.lb_speech_orb;
    }

    public void setListeningOrbColors(N n7) {
        this.f9247c0 = n7;
    }

    public void setNotListeningOrbColors(N n7) {
        this.f9248d0 = n7;
    }

    public void setSoundLevel(int i8) {
        if (this.f9250f0) {
            int i9 = this.f9249e0;
            if (i8 > i9) {
                this.f9249e0 = ((i8 - i9) / 2) + i9;
            } else {
                this.f9249e0 = (int) (i9 * 0.7f);
            }
            float focusedZoom = (((this.f9246b0 - getFocusedZoom()) * this.f9249e0) / 100.0f) + 1.0f;
            View view = this.f9216I;
            view.setScaleX(focusedZoom);
            view.setScaleY(focusedZoom);
        }
    }
}
