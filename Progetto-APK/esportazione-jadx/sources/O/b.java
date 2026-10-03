package O;

import Z3.C0433o;
import android.view.accessibility.AccessibilityManager;

/* JADX INFO: loaded from: classes.dex */
public final class b implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0433o f5007a;

    public b(C0433o c0433o) {
        this.f5007a = c0433o;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f5007a.equals(((b) obj).f5007a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f5007a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z7) {
        ((p137r4.c) this.f5007a.f8372H).setClickableOrFocusableBasedOnAccessibility(z7);
    }
}
