package Y;

import android.app.Dialog;
import android.content.DialogInterface;

/* JADX INFO: renamed from: Y.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnDismissListenerC0399k implements DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0401m f7892G;

    public DialogInterfaceOnDismissListenerC0399k(DialogInterfaceOnCancelListenerC0401m dialogInterfaceOnCancelListenerC0401m) {
        this.f7892G = dialogInterfaceOnCancelListenerC0401m;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC0401m dialogInterfaceOnCancelListenerC0401m = this.f7892G;
        Dialog dialog = dialogInterfaceOnCancelListenerC0401m.f7906N0;
        if (dialog != null) {
            dialogInterfaceOnCancelListenerC0401m.onDismiss(dialog);
        }
    }
}
