package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillValue;
import android.widget.EditText;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class GuidedActionEditText extends EditText {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Drawable f9110G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0492s f9111H;

    public GuidedActionEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        this.f9110G = getBackground();
        C0492s c0492s = new C0492s();
        this.f9111H = c0492s;
        setBackground(c0492s);
    }

    @Override // android.widget.TextView, android.view.View
    public final void autofill(AutofillValue autofillValue) {
        super.autofill(autofillValue);
    }

    @Override // android.widget.TextView, android.view.View
    public int getAutofillType() {
        return 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z7, int i8, Rect rect) {
        super.onFocusChanged(z7, i8, rect);
        if (z7) {
            setBackground(this.f9110G);
        } else {
            setBackground(this.f9111H);
        }
        if (z7) {
            return;
        }
        setFocusable(false);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName((isFocused() ? EditText.class : TextView.class).getName());
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onKeyPreIme(int i8, KeyEvent keyEvent) {
        return super.onKeyPreIme(i8, keyEvent);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(E3.f.E(callback, this));
    }

    public void setImeKeyListener(InterfaceC0493t interfaceC0493t) {
    }

    public void setOnAutofillListener(r rVar) {
    }
}
