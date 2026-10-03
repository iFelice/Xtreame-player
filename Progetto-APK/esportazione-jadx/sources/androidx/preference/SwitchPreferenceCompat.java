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
import androidx.appcompat.widget.SwitchCompat;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final a f9568X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final CharSequence f9569Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final CharSequence f9570Z;

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.switchPreferenceCompatStyle);
        this.f9568X = new a(this, 2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f3109k, R.attr.switchPreferenceCompatStyle, 0);
        this.f9572T = H.i(typedArrayObtainStyledAttributes, 7, 0);
        String string = typedArrayObtainStyledAttributes.getString(6);
        this.f9573U = string == null ? typedArrayObtainStyledAttributes.getString(1) : string;
        String string2 = typedArrayObtainStyledAttributes.getString(9);
        this.f9569Y = string2 == null ? typedArrayObtainStyledAttributes.getString(3) : string2;
        String string3 = typedArrayObtainStyledAttributes.getString(8);
        this.f9570Z = string3 == null ? typedArrayObtainStyledAttributes.getString(4) : string3;
        this.f9575W = typedArrayObtainStyledAttributes.getBoolean(5, typedArrayObtainStyledAttributes.getBoolean(2, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void f(View view) {
        super.f(view);
        if (((AccessibilityManager) this.f9550G.getSystemService("accessibility")).isEnabled()) {
            KeyEvent.Callback callbackFindViewById = view.findViewById(R.id.switchWidget);
            boolean z7 = callbackFindViewById instanceof SwitchCompat;
            if (z7) {
                ((SwitchCompat) callbackFindViewById).setOnCheckedChangeListener(null);
            }
            if (callbackFindViewById instanceof Checkable) {
                ((Checkable) callbackFindViewById).setChecked(this.f9571S);
            }
            if (z7) {
                SwitchCompat switchCompat = (SwitchCompat) callbackFindViewById;
                switchCompat.setTextOn(this.f9569Y);
                switchCompat.setTextOff(this.f9570Z);
                switchCompat.setOnCheckedChangeListener(this.f9568X);
            }
            i(view.findViewById(android.R.id.summary));
        }
    }
}
