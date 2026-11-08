package Y;

import android.view.View;
import android.view.ViewGroup;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: Y.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnAttachStateChangeListenerC0413z implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8001G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ P f8002H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f8003I;

    public ViewOnAttachStateChangeListenerC0413z(A a8, P p7) {
        this.f8003I = a8;
        this.f8002H = p7;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        int i8 = this.f8001G;
        Object obj = this.f8003I;
        switch (i8) {
            case 0:
                P p7 = this.f8002H;
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = p7.f7778c;
                p7.k();
                e0.f((ViewGroup) abstractComponentCallbacksC0406s.f7963m0.getParent(), ((A) obj).f7692G.E()).e();
                break;
            default:
                View view2 = (View) obj;
                view2.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap = N.N.f4843a;
                N.C.c(view2);
                break;
        }
    }

    public ViewOnAttachStateChangeListenerC0413z(P p7, View view) {
        this.f8002H = p7;
        this.f8003I = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
