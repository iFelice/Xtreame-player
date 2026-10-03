package b7;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: renamed from: b7.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0516f1 extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlayStreamEPGActivity f10297b;

    public /* synthetic */ C0516f1(PlayStreamEPGActivity playStreamEPGActivity, int i8) {
        this.f10296a = i8;
        this.f10297b = playStreamEPGActivity;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i8 = this.f10296a;
        PlayStreamEPGActivity playStreamEPGActivity = this.f10297b;
        switch (i8) {
            case 0:
                super.onAnimationEnd(animator);
                playStreamEPGActivity.f28945r0.setVisibility(8);
                playStreamEPGActivity.f28957v0.setVisibility(8);
                break;
            default:
                super.onAnimationEnd(animator);
                playStreamEPGActivity.f28945r0.setVisibility(0);
                playStreamEPGActivity.f28957v0.setVisibility(0);
                break;
        }
    }
}
