package F1;

import android.widget.CompoundButton;
import androidx.preference.CheckBoxPreference;
import androidx.preference.SwitchPreference;
import androidx.preference.SwitchPreferenceCompat;
import androidx.preference.TwoStatePreference;

/* JADX INFO: loaded from: classes.dex */
public final class a implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TwoStatePreference f3098b;

    public /* synthetic */ a(TwoStatePreference twoStatePreference, int i8) {
        this.f3097a = i8;
        this.f3098b = twoStatePreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z7) {
        int i8 = this.f3097a;
        TwoStatePreference twoStatePreference = this.f3098b;
        switch (i8) {
            case 0:
                CheckBoxPreference checkBoxPreference = (CheckBoxPreference) twoStatePreference;
                checkBoxPreference.getClass();
                checkBoxPreference.h(z7);
                break;
            case 1:
                SwitchPreference switchPreference = (SwitchPreference) twoStatePreference;
                switchPreference.getClass();
                switchPreference.h(z7);
                break;
            default:
                SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) twoStatePreference;
                switchPreferenceCompat.getClass();
                switchPreferenceCompat.h(z7);
                break;
        }
    }
}
