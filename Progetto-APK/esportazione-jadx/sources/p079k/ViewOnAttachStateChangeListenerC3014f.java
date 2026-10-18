package p079k;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: renamed from: k.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnAttachStateChangeListenerC3014f implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25770G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ w f25771H;

    public /* synthetic */ ViewOnAttachStateChangeListenerC3014f(w wVar, int i8) {
        this.f25770G = i8;
        this.f25771H = wVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        int i8 = this.f25770G;
        w wVar = this.f25771H;
        switch (i8) {
            case 0:
                i iVar = (i) wVar;
                ViewTreeObserver viewTreeObserver = iVar.f25803e0;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        iVar.f25803e0 = view.getViewTreeObserver();
                    }
                    iVar.f25803e0.removeGlobalOnLayoutListener(iVar.f25788P);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            default:
                F f8 = (F) wVar;
                ViewTreeObserver viewTreeObserver2 = f8.f25740V;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        f8.f25740V = view.getViewTreeObserver();
                    }
                    f8.f25740V.removeGlobalOnLayoutListener(f8.f25734P);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
