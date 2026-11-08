package p079k;

import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
public final class x implements PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ y f25888G;

    public x(y yVar) {
        this.f25888G = yVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f25888G.c();
    }
}
