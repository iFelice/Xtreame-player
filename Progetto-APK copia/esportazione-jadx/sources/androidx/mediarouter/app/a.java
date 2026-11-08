package androidx.mediarouter.app;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class a implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ MediaRouteExpandCollapseButton f9545G;

    public a(MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton) {
        this.f9545G = mediaRouteExpandCollapseButton;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = this.f9545G;
        boolean z7 = !mediaRouteExpandCollapseButton.f9540N;
        mediaRouteExpandCollapseButton.f9540N = z7;
        if (z7) {
            mediaRouteExpandCollapseButton.setImageDrawable(mediaRouteExpandCollapseButton.f9536J);
            mediaRouteExpandCollapseButton.f9536J.start();
            mediaRouteExpandCollapseButton.setContentDescription(mediaRouteExpandCollapseButton.f9539M);
        } else {
            mediaRouteExpandCollapseButton.setImageDrawable(mediaRouteExpandCollapseButton.f9537K);
            mediaRouteExpandCollapseButton.f9537K.start();
            mediaRouteExpandCollapseButton.setContentDescription(mediaRouteExpandCollapseButton.f9538L);
        }
        View.OnClickListener onClickListener = mediaRouteExpandCollapseButton.f9541O;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
