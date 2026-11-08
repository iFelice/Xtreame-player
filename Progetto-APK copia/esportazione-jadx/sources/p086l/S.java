package p086l;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import p079k.ViewTreeObserverOnGlobalLayoutListenerC3013e;

/* JADX INFO: loaded from: classes.dex */
public final class S implements PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f26173G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ T f26174H;

    public S(T t7, ViewTreeObserverOnGlobalLayoutListenerC3013e viewTreeObserverOnGlobalLayoutListenerC3013e) {
        this.f26174H = t7;
        this.f26173G = viewTreeObserverOnGlobalLayoutListenerC3013e;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f26174H.f26180m0.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f26173G);
        }
    }
}
