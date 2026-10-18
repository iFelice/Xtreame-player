package J3;

import Y.DialogInterfaceOnCancelListenerC0401m;
import Y.K;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
public class l extends DialogInterfaceOnCancelListenerC0401m {

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public Dialog f4154S0;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public DialogInterface.OnCancelListener f4155T0;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public AlertDialog f4156U0;

    @Override // Y.DialogInterfaceOnCancelListenerC0401m
    public final Dialog T() {
        Dialog dialog = this.f4154S0;
        if (dialog != null) {
            return dialog;
        }
        this.f7902J0 = false;
        if (this.f4156U0 == null) {
            Context contextL = l();
            com.bumptech.glide.c.h(contextL);
            this.f4156U0 = new AlertDialog.Builder(contextL).create();
        }
        return this.f4156U0;
    }

    @Override // Y.DialogInterfaceOnCancelListenerC0401m
    public final void U(K k8, String str) {
        super.U(k8, str);
    }

    @Override // Y.DialogInterfaceOnCancelListenerC0401m, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f4155T0;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }
}
