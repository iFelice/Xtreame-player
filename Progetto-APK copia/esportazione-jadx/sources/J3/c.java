package J3;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class c extends DialogFragment {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Dialog f4136G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public DialogInterface.OnCancelListener f4137H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public AlertDialog f4138I;

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f4137H;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f4136G;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f4138I == null) {
            Activity activity = getActivity();
            com.bumptech.glide.c.h(activity);
            this.f4138I = new AlertDialog.Builder(activity).create();
        }
        return this.f4138I;
    }

    @Override // android.app.DialogFragment
    public final void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
