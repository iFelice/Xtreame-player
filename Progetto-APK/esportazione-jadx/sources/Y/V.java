package Y;

import android.transition.Transition;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class V implements Transition.TransitionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f7796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7798c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7799d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7800e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7801f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ X f7802g;

    public V(X x7, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f7802g = x7;
        this.f7796a = obj;
        this.f7797b = arrayList;
        this.f7800e = obj2;
        this.f7801f = arrayList2;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        X x7 = this.f7802g;
        Object obj = this.f7796a;
        if (obj != null) {
            x7.t(obj, this.f7797b, null);
        }
        Object obj2 = this.f7798c;
        if (obj2 != null) {
            x7.t(obj2, this.f7799d, null);
        }
        Object obj3 = this.f7800e;
        if (obj3 != null) {
            x7.t(obj3, this.f7801f, null);
        }
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }
}
