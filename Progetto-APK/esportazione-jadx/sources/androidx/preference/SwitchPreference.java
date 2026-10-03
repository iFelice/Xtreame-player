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
import android.widget.Switch;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final a f9565X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final CharSequence f9566Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final CharSequence f9567Z;

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchPreference(Context context, AttributeSet attributeSet) {
        int iE = H.e(context, R.attr.switchPreferenceStyle, android.R.attr.switchPreferenceStyle);
        super(context, attributeSet, iE);
        this.f9565X = new a(this, 1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f3108j, iE, 0);
        this.f9572T = H.i(typedArrayObtainStyledAttributes, 7, 0);
        String string = typedArrayObtainStyledAttributes.getString(6);
        this.f9573U = string == null ? typedArrayObtainStyledAttributes.getString(1) : string;
        String string2 = typedArrayObtainStyledAttributes.getString(9);
        this.f9566Y = string2 == null ? typedArrayObtainStyledAttributes.getString(3) : string2;
        String string3 = typedArrayObtainStyledAttributes.getString(8);
        this.f9567Z = string3 == null ? typedArrayObtainStyledAttributes.getString(4) : string3;
        this.f9575W = typedArrayObtainStyledAttributes.getBoolean(5, typedArrayObtainStyledAttributes.getBoolean(2, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void f(View view) {
        super.f(view);
        if (((AccessibilityManager) this.f9550G.getSystemService("accessibility")).isEnabled()) {
            KeyEvent.Callback callbackFindViewById = view.findViewById(android.R.id.switch_widget);
            boolean z7 = callbackFindViewById instanceof Switch;
            if (z7) {
                ((Switch) callbackFindViewById).setOnCheckedChangeListener(null);
            }
            if (callbackFindViewById instanceof Checkable) {
                ((Checkable) callbackFindViewById).setChecked(this.f9571S);
            }
            if (z7) {
                Switch r7 = (Switch) callbackFindViewById;
                r7.setTextOn(this.f9566Y);
                r7.setTextOff(this.f9567Z);
                r7.setOnCheckedChangeListener(this.f9565X);
            }
            i(view.findViewById(android.R.id.summary));
        }
    }
}
