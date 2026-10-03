package Y;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;

/* JADX INFO: renamed from: Y.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class AnimationAnimationListenerC0393e implements Animation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d0 f7869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f7870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f7871c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0395g f7872d;

    public AnimationAnimationListenerC0393e(d0 d0Var, ViewGroup viewGroup, View view, C0395g c0395g) {
        this.f7869a = d0Var;
        this.f7870b = viewGroup;
        this.f7871c = view;
        this.f7872d = c0395g;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f7870b.post(new p000a.f(this, 7));
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f7869a + " has ended.");
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f7869a + " has reached onAnimationStart.");
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }
}
