package androidx.preference;

import F1.a;
import F1.c;
import Z3.H;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final a f9546X;

    /* JADX WARN: Illegal instructions before constructor call */
    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        int iE = H.e(context, R.attr.checkBoxPreferenceStyle, android.R.attr.checkBoxPreferenceStyle);
        super(context, attributeSet, iE);
        this.f9546X = new a(this, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f3099a, iE, 0);
        this.f9572T = H.i(typedArrayObtainStyledAttributes, 5, 0);
        String string = typedArrayObtainStyledAttributes.getString(4);
        this.f9573U = string == null ? typedArrayObtainStyledAttributes.getString(1) : string;
        this.f9575W = typedArrayObtainStyledAttributes.getBoolean(3, typedArrayObtainStyledAttributes.getBoolean(2, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void f(View view) {
        super.f(view);
        if (((AccessibilityManager) this.f9550G.getSystemService("accessibility")).isEnabled()) {
            KeyEvent.Callback callbackFindViewById = view.findViewById(android.R.id.checkbox);
            boolean z7 = callbackFindViewById instanceof CompoundButton;
            if (z7) {
                ((CompoundButton) callbackFindViewById).setOnCheckedChangeListener(null);
            }
            if (callbackFindViewById instanceof Checkable) {
                ((Checkable) callbackFindViewById).setChecked(this.f9571S);
            }
            if (z7) {
                ((CompoundButton) callbackFindViewById).setOnCheckedChangeListener(this.f9546X);
            }
            i(view.findViewById(android.R.id.summary));
        }
    }
}
