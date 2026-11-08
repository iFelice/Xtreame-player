package p145s4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
public final class d extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f30096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f30097b;

    public d(e eVar, int i8) {
        this.f30097b = eVar;
        this.f30096a = i8;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i8 = this.f30096a;
        e eVar = this.f30097b;
        eVar.f30101J = i8;
        eVar.f30102K = 0.0f;
    }
}
