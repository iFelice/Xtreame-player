package androidx.preference;

import F1.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class SeekBarPreference extends Preference {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f9563S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f9564T;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarPreferenceStyle);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f3107i, R.attr.seekBarPreferenceStyle, 0);
        int i8 = typedArrayObtainStyledAttributes.getInt(3, 0);
        int i9 = typedArrayObtainStyledAttributes.getInt(1, 100);
        i9 = i9 < i8 ? i8 : i9;
        if (i9 != this.f9563S) {
            this.f9563S = i9;
        }
        int i10 = typedArrayObtainStyledAttributes.getInt(4, 0);
        if (i10 != this.f9564T) {
            this.f9564T = Math.min(this.f9563S - i8, Math.abs(i10));
        }
        typedArrayObtainStyledAttributes.getBoolean(2, true);
        typedArrayObtainStyledAttributes.getBoolean(5, false);
        typedArrayObtainStyledAttributes.getBoolean(6, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final Object e(TypedArray typedArray, int i8) {
        return Integer.valueOf(typedArray.getInt(i8, 0));
    }
}
