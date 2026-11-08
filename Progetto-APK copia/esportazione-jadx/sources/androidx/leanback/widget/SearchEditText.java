package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
public class SearchEditText extends V {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public L f9213N;

    public SearchEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onKeyPreIme(int i8, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4) {
            return super.onKeyPreIme(i8, keyEvent);
        }
        L l4 = this.f9213N;
        if (l4 == null) {
            return false;
        }
        ((SearchBar) ((p039f.S) l4).f24988H).getClass();
        return false;
    }

    @Override // androidx.leanback.widget.V, android.widget.TextView
    public /* bridge */ /* synthetic */ void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setFinalRecognizedText(CharSequence charSequence) {
        setText(charSequence);
        bringPointIntoView(length());
    }

    public void setOnKeyboardDismissListener(L l4) {
        this.f9213N = l4;
    }
}
