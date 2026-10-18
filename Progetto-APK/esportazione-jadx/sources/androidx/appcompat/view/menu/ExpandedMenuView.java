package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import p079k.C;
import p079k.n;
import p079k.o;
import p079k.q;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements n, C, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final int[] f8741H = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public o f8742G;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        u uVarJ = u.J(context, attributeSet, f8741H, R.attr.listViewStyle, 0);
        if (uVarJ.F(0)) {
            setBackgroundDrawable(uVarJ.s(0));
        }
        if (uVarJ.F(1)) {
            setDivider(uVarJ.s(1));
        }
        uVarJ.P();
    }

    @Override // p079k.n
    public final boolean a(q qVar) {
        return this.f8742G.q(qVar, null, 0);
    }

    @Override // p079k.C
    public final void b(o oVar) {
        this.f8742G = oVar;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i8, long j8) {
        a((q) getAdapter().getItem(i8));
    }
}
