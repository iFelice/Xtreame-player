package p079k;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import p039f.DialogInterfaceC2997l;

/* JADX INFO: loaded from: classes.dex */
public final class p implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, z {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public o f25845G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public DialogInterfaceC2997l f25846H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public k f25847I;

    @Override // p079k.z
    public final void d(o oVar, boolean z7) {
        DialogInterfaceC2997l dialogInterfaceC2997l;
        if ((z7 || oVar == this.f25845G) && (dialogInterfaceC2997l = this.f25846H) != null) {
            dialogInterfaceC2997l.dismiss();
        }
    }

    @Override // p079k.z
    public final boolean o(o oVar) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        k kVar = this.f25847I;
        if (kVar.f25813L == null) {
            kVar.f25813L = new j(kVar);
        }
        this.f25845G.q(kVar.f25813L.getItem(i8), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f25847I.d(this.f25845G, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i8, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        o oVar = this.f25845G;
        if (i8 == 82 || i8 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f25846H.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f25846H.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                oVar.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return oVar.performShortcut(i8, keyEvent, 0);
    }
}
