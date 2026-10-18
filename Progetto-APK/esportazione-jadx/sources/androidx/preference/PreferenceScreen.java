package androidx.preference;

import Z3.H;
import android.content.Context;
import android.util.AttributeSet;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {
    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, H.e(context, R.attr.preferenceScreenStyle, android.R.attr.preferenceScreenStyle));
    }

    @Override // androidx.preference.Preference
    public final void d() {
        if (this.f9555L == null && this.f9562S.size() != 0) {
            throw null;
        }
    }
}
