package Y;

import android.app.Dialog;
import android.view.View;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: Y.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0400l extends AbstractC2987b {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ AbstractC2987b f7893M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0401m f7894N;

    public C0400l(DialogInterfaceOnCancelListenerC0401m dialogInterfaceOnCancelListenerC0401m, C0403o c0403o) {
        this.f7894N = dialogInterfaceOnCancelListenerC0401m;
        this.f7893M = c0403o;
    }

    @Override // p039f.AbstractC2987b
    public final View w(int i8) {
        AbstractC2987b abstractC2987b = this.f7893M;
        if (abstractC2987b.x()) {
            return abstractC2987b.w(i8);
        }
        Dialog dialog = this.f7894N.f7906N0;
        if (dialog != null) {
            return dialog.findViewById(i8);
        }
        return null;
    }

    @Override // p039f.AbstractC2987b
    public final boolean x() {
        return this.f7893M.x() || this.f7894N.f7910R0;
    }
}
