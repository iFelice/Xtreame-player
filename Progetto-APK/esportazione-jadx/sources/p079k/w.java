package p079k;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
public abstract class w implements E, A, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Rect f25887G;

    public static int m(l lVar, Context context, int i8) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = lVar.getCount();
        FrameLayout frameLayout = null;
        View view = null;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < count; i11++) {
            int itemViewType = lVar.getItemViewType(i11);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = lVar.getView(i11, view, frameLayout);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i8) {
                return i8;
            }
            if (measuredWidth > i9) {
                i9 = measuredWidth;
            }
        }
        return i9;
    }

    public static boolean u(o oVar) {
        int size = oVar.f25826f.size();
        for (int i8 = 0; i8 < size; i8++) {
            MenuItem item = oVar.getItem(i8);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // p079k.A
    public final boolean b(q qVar) {
        return false;
    }

    @Override // p079k.A
    public final boolean e(q qVar) {
        return false;
    }

    public abstract void l(o oVar);

    public abstract void n(View view);

    public abstract void o(boolean z7);

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i8, long j8) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (l) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (l) listAdapter).f25814a.q((MenuItem) listAdapter.getItem(i8), this, (this instanceof i) ^ true ? 0 : 4);
    }

    public abstract void p(int i8);

    public abstract void q(int i8);

    public abstract void r(PopupWindow.OnDismissListener onDismissListener);

    public abstract void s(boolean z7);

    public abstract void t(int i8);

    @Override // p079k.A
    public final void k(Context context, o oVar) {
    }
}
