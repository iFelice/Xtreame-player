package p145s4;

import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;
import p003a2.f;

/* JADX INFO: loaded from: classes.dex */
public final class g implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f30115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30117c;

    public g(TabLayout tabLayout) {
        this.f30115a = new WeakReference(tabLayout);
    }

    public final void a(float f8, int i8) {
        TabLayout tabLayout = (TabLayout) this.f30115a.get();
        if (tabLayout != null) {
            int i9 = this.f30117c;
            tabLayout.i(i8, f8, i9 != 2 || this.f30116b == 1, (i9 == 2 && this.f30116b == 0) ? false : true);
        }
    }

    public final void b(int i8) {
        TabLayout tabLayout = (TabLayout) this.f30115a.get();
        if (tabLayout == null || tabLayout.getSelectedTabPosition() == i8 || i8 >= tabLayout.getTabCount()) {
            return;
        }
        int i9 = this.f30117c;
        tabLayout.g((i8 < 0 || i8 >= tabLayout.getTabCount()) ? null : (f) tabLayout.f24157G.get(i8), i9 == 0 || (i9 == 2 && this.f30116b == 0));
    }
}
