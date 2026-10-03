package p086l;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* JADX INFO: renamed from: l.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3024e implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26248G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f26249H;

    public /* synthetic */ RunnableC3024e(ActionBarOverlayLayout actionBarOverlayLayout, int i8) {
        this.f26248G = i8;
        this.f26249H = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f26248G;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f26249H;
        switch (i8) {
            case 0:
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.f8814f0 = actionBarOverlayLayout.f8795J.animate().translationY(0.0f).setListener(actionBarOverlayLayout.f8815g0);
                break;
            default:
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.f8814f0 = actionBarOverlayLayout.f8795J.animate().translationY(-actionBarOverlayLayout.f8795J.getHeight()).setListener(actionBarOverlayLayout.f8815g0);
                break;
        }
    }
}
