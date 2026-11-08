package androidx.leanback.widget;

import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;

/* JADX INFO: loaded from: classes.dex */
public final class F implements TextWatcher {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Runnable f9106G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ SearchBar f9107H;

    public F(SearchBar searchBar, E e8) {
        this.f9107H = searchBar;
        this.f9106G = e8;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
        SearchBar searchBar = this.f9107H;
        if (searchBar.f9211e0) {
            return;
        }
        Handler handler = searchBar.f9197N;
        Runnable runnable = this.f9106G;
        handler.removeCallbacks(runnable);
        searchBar.f9197N.post(runnable);
    }
}
