package X4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import p079k.AbstractC3012d;

/* JADX INFO: loaded from: classes.dex */
public final class h extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup.LayoutParams f7671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f7673c;

    public h(i iVar, ViewGroup.LayoutParams layoutParams, int i8) {
        this.f7673c = iVar;
        this.f7671a = layoutParams;
        this.f7672b = i8;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        i iVar = this.f7673c;
        p096m2.e eVar = iVar.f7679L;
        View view = iVar.f7678K;
        if (((AbstractC3012d) eVar.f27215H).h() != null) {
            ((AbstractC3012d) eVar.f27215H).h().onClick(view);
        }
        iVar.f7678K.setAlpha(1.0f);
        iVar.f7678K.setTranslationX(0.0f);
        ViewGroup.LayoutParams layoutParams = this.f7671a;
        layoutParams.height = this.f7672b;
        iVar.f7678K.setLayoutParams(layoutParams);
    }
}
