package p079k;

import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
public final class t implements MenuItem.OnActionExpandListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f25881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v f25882b;

    public t(v vVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f25882b = vVar;
        this.f25881a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f25881a.onMenuItemActionCollapse(this.f25882b.j(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f25881a.onMenuItemActionExpand(this.f25882b.j(menuItem));
    }
}
