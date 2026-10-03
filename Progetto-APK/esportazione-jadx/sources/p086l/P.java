package p086l;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;
import p039f.C2992g;
import p039f.C2996k;
import p039f.DialogInterfaceC2997l;

/* JADX INFO: loaded from: classes.dex */
public final class P implements V, DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public DialogInterfaceC2997l f26161G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ListAdapter f26162H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public CharSequence f26163I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ W f26164J;

    public P(W w7) {
        this.f26164J = w7;
    }

    @Override // p086l.V
    public final boolean a() {
        DialogInterfaceC2997l dialogInterfaceC2997l = this.f26161G;
        if (dialogInterfaceC2997l != null) {
            return dialogInterfaceC2997l.isShowing();
        }
        return false;
    }

    @Override // p086l.V
    public final int b() {
        return 0;
    }

    @Override // p086l.V
    public final void c(int i8) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // p086l.V
    public final CharSequence d() {
        return this.f26163I;
    }

    @Override // p086l.V
    public final void dismiss() {
        DialogInterfaceC2997l dialogInterfaceC2997l = this.f26161G;
        if (dialogInterfaceC2997l != null) {
            dialogInterfaceC2997l.dismiss();
            this.f26161G = null;
        }
    }

    @Override // p086l.V
    public final Drawable e() {
        return null;
    }

    @Override // p086l.V
    public final void f(CharSequence charSequence) {
        this.f26163I = charSequence;
    }

    @Override // p086l.V
    public final void g(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // p086l.V
    public final void i(int i8) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // p086l.V
    public final void k(int i8) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // p086l.V
    public final void l(int i8, int i9) {
        if (this.f26162H == null) {
            return;
        }
        W w7 = this.f26164J;
        C2996k c2996k = new C2996k(w7.getPopupContext());
        CharSequence charSequence = this.f26163I;
        if (charSequence != null) {
            c2996k.setTitle(charSequence);
        }
        ListAdapter listAdapter = this.f26162H;
        int selectedItemPosition = w7.getSelectedItemPosition();
        C2992g c2992g = c2996k.f25100a;
        c2992g.f25056k = listAdapter;
        c2992g.f25057l = this;
        c2992g.f25060o = selectedItemPosition;
        c2992g.f25059n = true;
        DialogInterfaceC2997l dialogInterfaceC2997lCreate = c2996k.create();
        this.f26161G = dialogInterfaceC2997lCreate;
        AlertController$RecycleListView alertController$RecycleListView = dialogInterfaceC2997lCreate.f25102L.f25079f;
        alertController$RecycleListView.setTextDirection(i8);
        alertController$RecycleListView.setTextAlignment(i9);
        this.f26161G.show();
    }

    @Override // p086l.V
    public final int m() {
        return 0;
    }

    @Override // p086l.V
    public final void n(ListAdapter listAdapter) {
        this.f26162H = listAdapter;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        W w7 = this.f26164J;
        w7.setSelection(i8);
        if (w7.getOnItemClickListener() != null) {
            w7.performItemClick(null, i8, this.f26162H.getItemId(i8));
        }
        dismiss();
    }
}
