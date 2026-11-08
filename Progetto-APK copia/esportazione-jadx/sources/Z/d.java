package Z;

import Y.AbstractComponentCallbacksC0406s;
import android.view.ViewGroup;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class d extends g {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ViewGroup f8209H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, ViewGroup viewGroup, int i8) {
        super(abstractComponentCallbacksC0406s, "Attempting to use <fragment> tag to add fragment " + abstractComponentCallbacksC0406s + " to container " + viewGroup);
        if (i8 != 1) {
            this.f8209H = viewGroup;
            return;
        }
        q0.h(viewGroup, "container");
        super(abstractComponentCallbacksC0406s, "Attempting to add fragment " + abstractComponentCallbacksC0406s + " to container " + viewGroup + " which is not a FragmentContainerView");
        this.f8209H = viewGroup;
    }
}
