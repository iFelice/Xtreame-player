package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f9571S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public CharSequence f9572T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public CharSequence f9573U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f9574V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f9575W;

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // androidx.preference.Preference
    public final void d() {
        h(!this.f9571S);
    }

    @Override // androidx.preference.Preference
    public final Object e(TypedArray typedArray, int i8) {
        return Boolean.valueOf(typedArray.getBoolean(i8, false));
    }

    @Override // androidx.preference.Preference
    public final boolean g() {
        if (!this.f9575W ? this.f9571S : !this.f9571S) {
            if (!super.g()) {
                return false;
            }
        }
        return true;
    }

    public final void h(boolean z7) {
        boolean z8 = this.f9571S != z7;
        if (z8 || !this.f9574V) {
            this.f9571S = z7;
            this.f9574V = true;
            if (z8) {
                g();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0030  */
    /* JADX WARN: Code duplicated, block: B:20:0x003a  */
    /* JADX WARN: Code duplicated, block: B:21:0x003e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0041  */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    public final void i(View view) {
        boolean z7;
        CharSequence charSequenceA;
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            int i8 = 0;
            if (!this.f9571S || TextUtils.isEmpty(this.f9572T)) {
                if (this.f9571S || TextUtils.isEmpty(this.f9573U)) {
                    z7 = true;
                } else {
                    textView.setText(this.f9573U);
                }
                if (z7) {
                    charSequenceA = a();
                    if (!TextUtils.isEmpty(charSequenceA)) {
                        textView.setText(charSequenceA);
                    } else if (z7) {
                        i8 = 8;
                    }
                } else if (z7) {
                    i8 = 8;
                }
                if (i8 != textView.getVisibility()) {
                    textView.setVisibility(i8);
                }
            }
            textView.setText(this.f9572T);
            z7 = false;
            if (z7) {
                charSequenceA = a();
                if (!TextUtils.isEmpty(charSequenceA)) {
                    textView.setText(charSequenceA);
                } else if (z7) {
                    i8 = 8;
                }
            } else if (z7) {
                i8 = 8;
            }
            if (i8 != textView.getVisibility()) {
                textView.setVisibility(i8);
            }
        }
    }
}
