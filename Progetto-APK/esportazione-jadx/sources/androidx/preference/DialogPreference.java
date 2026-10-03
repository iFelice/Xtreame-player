package androidx.preference;

import F1.c;
import Z3.H;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class DialogPreference extends Preference {
    public DialogPreference(Context context, AttributeSet attributeSet, int i8) {
        super(context, attributeSet, i8);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f3100b, i8, 0);
        H.i(typedArrayObtainStyledAttributes, 9, 0);
        H.i(typedArrayObtainStyledAttributes, 8, 1);
        if (typedArrayObtainStyledAttributes.getDrawable(6) == null) {
            typedArrayObtainStyledAttributes.getDrawable(2);
        }
        H.i(typedArrayObtainStyledAttributes, 11, 3);
        H.i(typedArrayObtainStyledAttributes, 10, 4);
        typedArrayObtainStyledAttributes.getResourceId(7, typedArrayObtainStyledAttributes.getResourceId(5, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public void d() {
        throw null;
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, H.e(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }
}
