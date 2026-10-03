package androidx.leanback.widget;

import android.os.SystemClock;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public final class E implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f9104G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ SearchBar f9105H;

    public /* synthetic */ E(SearchBar searchBar, int i8) {
        this.f9104G = i8;
        this.f9105H = searchBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f9104G;
        SearchBar searchBar = this.f9105H;
        switch (i8) {
            case 0:
                searchBar.setSearchQueryInternal(searchBar.f9190G.getText().toString());
                break;
            default:
                searchBar.f9190G.requestFocusFromTouch();
                searchBar.f9190G.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, searchBar.f9190G.getWidth(), searchBar.f9190G.getHeight(), 0));
                searchBar.f9190G.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, searchBar.f9190G.getWidth(), searchBar.f9190G.getHeight(), 0));
                break;
        }
    }
}
