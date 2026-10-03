package p079k;

import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
public final class u implements MenuItem.OnMenuItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f25883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v f25884b;

    public u(v vVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f25884b = vVar;
        this.f25883a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.f25883a.onMenuItemClick(this.f25884b.j(menuItem));
    }
}
