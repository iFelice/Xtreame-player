package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class MediaNowPlayingView extends LinearLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ImageView f9132G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ImageView f9133H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ImageView f9134I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ObjectAnimator f9135J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final ObjectAnimator f9136K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final ObjectAnimator f9137L;

    public MediaNowPlayingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        LayoutInflater.from(context).inflate(R.layout.lb_playback_now_playing_bars, (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R.id.bar1);
        this.f9132G = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.bar2);
        this.f9133H = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.bar3);
        this.f9134I = imageView3;
        imageView.setPivotY(imageView.getDrawable().getIntrinsicHeight());
        imageView2.setPivotY(imageView2.getDrawable().getIntrinsicHeight());
        imageView3.setPivotY(imageView3.getDrawable().getIntrinsicHeight());
        setDropScale(imageView);
        setDropScale(imageView2);
        setDropScale(imageView3);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "scaleY", 0.41666666f, 0.25f, 0.41666666f, 0.5833333f, 0.75f, 0.8333333f, 0.9166667f, 1.0f, 0.9166667f, 1.0f, 0.8333333f, 0.6666667f, 0.5f, 0.33333334f, 0.16666667f, 0.33333334f, 0.5f, 0.5833333f, 0.75f, 0.9166667f, 0.75f, 0.5833333f, 0.41666666f, 0.25f, 0.41666666f, 0.6666667f, 0.41666666f, 0.25f, 0.33333334f, 0.41666666f);
        this.f9135J = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setDuration(2320L);
        objectAnimatorOfFloat.setInterpolator(linearInterpolator);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(imageView2, "scaleY", 1.0f, 0.9166667f, 0.8333333f, 0.9166667f, 1.0f, 0.9166667f, 0.75f, 0.5833333f, 0.75f, 0.9166667f, 1.0f, 0.8333333f, 0.6666667f, 0.8333333f, 1.0f, 0.9166667f, 0.75f, 0.41666666f, 0.25f, 0.41666666f, 0.6666667f, 0.8333333f, 1.0f, 0.8333333f, 0.75f, 0.6666667f, 1.0f);
        this.f9136K = objectAnimatorOfFloat2;
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setDuration(2080L);
        objectAnimatorOfFloat2.setInterpolator(linearInterpolator);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(imageView3, "scaleY", 0.6666667f, 0.75f, 0.8333333f, 1.0f, 0.9166667f, 0.75f, 0.5833333f, 0.41666666f, 0.5833333f, 0.6666667f, 0.75f, 1.0f, 0.9166667f, 1.0f, 0.75f, 0.5833333f, 0.75f, 0.9166667f, 1.0f, 0.8333333f, 0.6666667f, 0.75f, 0.5833333f, 0.41666666f, 0.25f, 0.6666667f);
        this.f9137L = objectAnimatorOfFloat3;
        objectAnimatorOfFloat3.setRepeatCount(-1);
        objectAnimatorOfFloat3.setDuration(2000L);
        objectAnimatorOfFloat3.setInterpolator(linearInterpolator);
    }

    public static void setDropScale(View view) {
        view.setScaleY(0.083333336f);
    }

    public final void a() {
        ObjectAnimator objectAnimator = this.f9135J;
        if (!objectAnimator.isStarted()) {
            objectAnimator.start();
        }
        ObjectAnimator objectAnimator2 = this.f9136K;
        if (!objectAnimator2.isStarted()) {
            objectAnimator2.start();
        }
        ObjectAnimator objectAnimator3 = this.f9137L;
        if (!objectAnimator3.isStarted()) {
            objectAnimator3.start();
        }
        this.f9132G.setVisibility(0);
        this.f9133H.setVisibility(0);
        this.f9134I.setVisibility(0);
    }

    public final void b() {
        ObjectAnimator objectAnimator = this.f9135J;
        boolean zIsStarted = objectAnimator.isStarted();
        ImageView imageView = this.f9132G;
        if (zIsStarted) {
            objectAnimator.cancel();
            setDropScale(imageView);
        }
        ObjectAnimator objectAnimator2 = this.f9136K;
        boolean zIsStarted2 = objectAnimator2.isStarted();
        ImageView imageView2 = this.f9133H;
        if (zIsStarted2) {
            objectAnimator2.cancel();
            setDropScale(imageView2);
        }
        ObjectAnimator objectAnimator3 = this.f9137L;
        boolean zIsStarted3 = objectAnimator3.isStarted();
        ImageView imageView3 = this.f9134I;
        if (zIsStarted3) {
            objectAnimator3.cancel();
            setDropScale(imageView3);
        }
        imageView.setVisibility(8);
        imageView2.setVisibility(8);
        imageView3.setVisibility(8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getVisibility() == 0) {
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    public void setVisibility(int i8) {
        super.setVisibility(i8);
        if (i8 == 8) {
            b();
        } else {
            a();
        }
    }
}
