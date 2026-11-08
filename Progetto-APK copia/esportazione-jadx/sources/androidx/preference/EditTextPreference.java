package androidx.preference;

import F1.c;
import F2.G;
import Z3.H;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {
    /* JADX WARN: Illegal instructions before constructor call */
    public EditTextPreference(Context context, AttributeSet attributeSet) {
        int iE = H.e(context, R.attr.editTextPreferenceStyle, android.R.attr.editTextPreferenceStyle);
        super(context, attributeSet, iE);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f3101c, iE, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(0, typedArrayObtainStyledAttributes.getBoolean(0, false))) {
            if (G.f3114H == null) {
                G.f3114H = new G(5);
            }
            this.f9561R = G.f3114H;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final Object e(TypedArray typedArray, int i8) {
        return typedArray.getString(i8);
    }
}
