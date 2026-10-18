package V;

import android.text.Editable;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
public final class i implements TextWatcher {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final EditText f7008G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f7009H = false;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f7010I = true;

    public i(EditText editText) {
        this.f7008G = editText;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
        if (this.f7008G.isInEditMode() || !this.f7010I) {
            return;
        }
        if (!this.f7009H) {
            Object obj = U.a.f6622a;
        } else {
            if (i9 > i10 || !(charSequence instanceof Spannable)) {
                return;
            }
            U.a.a();
            throw null;
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
    }
}
