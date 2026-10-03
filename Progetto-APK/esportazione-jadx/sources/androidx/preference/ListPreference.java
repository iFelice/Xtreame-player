package androidx.preference;

import F1.b;
import F1.c;
import F2.G;
import Z3.H;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import okhttp3.HttpUrl;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class ListPreference extends DialogPreference {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final CharSequence[] f9548S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final String f9549T;

    public ListPreference(Context context, AttributeSet attributeSet, int i8) {
        super(context, attributeSet, i8);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f3102d, i8, 0);
        CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(2);
        this.f9548S = textArray == null ? typedArrayObtainStyledAttributes.getTextArray(0) : textArray;
        if (typedArrayObtainStyledAttributes.getTextArray(3) == null) {
            typedArrayObtainStyledAttributes.getTextArray(1);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(4, typedArrayObtainStyledAttributes.getBoolean(4, false))) {
            if (G.f3115I == null) {
                G.f3115I = new G(6);
            }
            this.f9561R = G.f3115I;
            c();
        }
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, c.f3104f, i8, 0);
        this.f9549T = H.i(typedArrayObtainStyledAttributes2, 33, 7);
        typedArrayObtainStyledAttributes2.recycle();
    }

    @Override // androidx.preference.Preference
    public final CharSequence a() {
        b bVar = this.f9561R;
        if (bVar != null) {
            return ((G) bVar).J(this);
        }
        CharSequence charSequenceH = h();
        CharSequence charSequenceA = super.a();
        String str = this.f9549T;
        if (str == null) {
            return charSequenceA;
        }
        Object[] objArr = new Object[1];
        if (charSequenceH == null) {
            charSequenceH = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        objArr[0] = charSequenceH;
        String str2 = String.format(str, objArr);
        if (TextUtils.equals(str2, charSequenceA)) {
            return charSequenceA;
        }
        Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return str2;
    }

    @Override // androidx.preference.Preference
    public final Object e(TypedArray typedArray, int i8) {
        return typedArray.getString(i8);
    }

    public final CharSequence h() {
        return null;
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, H.e(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }
}
