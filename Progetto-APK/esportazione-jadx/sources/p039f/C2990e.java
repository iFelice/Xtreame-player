package p039f;

import android.view.View;
import android.widget.AbsListView;

/* JADX INFO: renamed from: f.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2990e implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f25041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f25042b;

    public C2990e(View view, View view2) {
        this.f25041a = view;
        this.f25042b = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i8, int i9, int i10) {
        C2995j.b(absListView, this.f25041a, this.f25042b);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i8) {
    }
}
