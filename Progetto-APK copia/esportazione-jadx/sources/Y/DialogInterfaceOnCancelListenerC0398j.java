package Y;

import android.app.Dialog;
import android.content.DialogInterface;
import p113o3.C3151i;

/* JADX INFO: renamed from: Y.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0398j implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f7890G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f7891H;

    public /* synthetic */ DialogInterfaceOnCancelListenerC0398j(Object obj, int i8) {
        this.f7890G = i8;
        this.f7891H = obj;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        int i8 = this.f7890G;
        Object obj = this.f7891H;
        switch (i8) {
            case 0:
                DialogInterfaceOnCancelListenerC0401m dialogInterfaceOnCancelListenerC0401m = (DialogInterfaceOnCancelListenerC0401m) obj;
                Dialog dialog = dialogInterfaceOnCancelListenerC0401m.f7906N0;
                if (dialog != null) {
                    dialogInterfaceOnCancelListenerC0401m.onCancel(dialog);
                }
                break;
            default:
                ((C3151i) obj).b();
                break;
        }
    }
}
