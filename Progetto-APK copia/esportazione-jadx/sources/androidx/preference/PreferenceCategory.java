package androidx.preference;

import Z3.H;
import android.content.Context;
import android.util.AttributeSet;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, H.e(context, R.attr.preferenceCategoryStyle, android.R.attr.preferenceCategoryStyle));
    }

    @Override // androidx.preference.Preference
    public final boolean b() {
        return false;
    }
}
