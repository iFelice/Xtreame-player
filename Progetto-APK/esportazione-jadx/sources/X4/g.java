package X4;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
public final class g implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float f7666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f7667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f7668c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ float f7669d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ i f7670e;

    public g(i iVar, float f8, float f9, float f10, float f11) {
        this.f7670e = iVar;
        this.f7666a = f8;
        this.f7667b = f9;
        this.f7668c = f10;
        this.f7669d = f11;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = (valueAnimator.getAnimatedFraction() * this.f7667b) + this.f7666a;
        float animatedFraction2 = (valueAnimator.getAnimatedFraction() * this.f7669d) + this.f7668c;
        i iVar = this.f7670e;
        iVar.c(animatedFraction);
        iVar.f7678K.setAlpha(animatedFraction2);
    }
}
