package androidx.leanback.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class D implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f9103b;

    public /* synthetic */ D(SearchBar searchBar, int i8) {
        this.f9102a = i8;
        this.f9103b = searchBar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int i8 = this.f9102a;
        SearchBar searchBar = this.f9103b;
        switch (i8) {
            case 0:
                if (z7) {
                    searchBar.f9197N.post(new E(searchBar, 1));
                } else {
                    searchBar.f9198O.hideSoftInputFromWindow(searchBar.f9190G.getWindowToken(), 0);
                }
                searchBar.d(z7);
                break;
            default:
                if (z7) {
                    searchBar.f9198O.hideSoftInputFromWindow(searchBar.f9190G.getWindowToken(), 0);
                    if (searchBar.f9199P) {
                        searchBar.a();
                        searchBar.f9199P = false;
                    }
                } else {
                    searchBar.b();
                }
                searchBar.d(z7);
                break;
        }
    }
}
