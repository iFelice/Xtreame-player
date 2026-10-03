package p086l;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import p079k.l;
import p079k.o;
import p079k.q;

/* JADX INFO: loaded from: classes.dex */
public final class Q0 extends C3066z0 {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f26167S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f26168T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public N0 f26169U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public q f26170V;

    public Q0(Context context, boolean z7) {
        super(context, z7);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.f26167S = 21;
            this.f26168T = 22;
        } else {
            this.f26167S = 22;
            this.f26168T = 21;
        }
    }

    @Override // p086l.C3066z0, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        l lVar;
        int headersCount;
        int iPointToPosition;
        int i8;
        if (this.f26169U != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                lVar = (l) headerViewListAdapter.getWrappedAdapter();
            } else {
                lVar = (l) adapter;
                headersCount = 0;
            }
            q item = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i8 = iPointToPosition - headersCount) < 0 || i8 >= lVar.getCount()) ? null : lVar.getItem(i8);
            q qVar = this.f26170V;
            if (qVar != item) {
                o oVar = lVar.f25814a;
                if (qVar != null) {
                    this.f26169U.r(oVar, qVar);
                }
                this.f26170V = item;
                if (item != null) {
                    this.f26169U.q(oVar, item);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i8, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i8 == this.f26167S) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i8 != this.f26168T) {
            return super.onKeyDown(i8, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (l) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (l) adapter).f25814a.c(false);
        return true;
    }

    public void setHoverListener(N0 n7) {
        this.f26169U = n7;
    }

    @Override // p086l.C3066z0, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
