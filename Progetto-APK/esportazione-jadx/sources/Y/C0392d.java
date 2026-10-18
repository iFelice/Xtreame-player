package Y;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: Y.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0392d extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f7856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f7857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f7858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d0 f7859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0395g f7860e;

    public C0392d(ViewGroup viewGroup, View view, boolean z7, d0 d0Var, C0395g c0395g) {
        this.f7856a = viewGroup;
        this.f7857b = view;
        this.f7858c = z7;
        this.f7859d = d0Var;
        this.f7860e = c0395g;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.f7856a;
        View view = this.f7857b;
        viewGroup.endViewTransition(view);
        boolean z7 = this.f7858c;
        d0 d0Var = this.f7859d;
        if (z7) {
            A0.O.c(d0Var.f7861a, view);
        }
        this.f7860e.c();
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animator from operation " + d0Var + " has ended.");
        }
    }
}
