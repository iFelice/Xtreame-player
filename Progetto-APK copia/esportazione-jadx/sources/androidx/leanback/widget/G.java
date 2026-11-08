package androidx.leanback.widget;

/* JADX INFO: loaded from: classes.dex */
public final class G implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ H f9108G;

    public /* synthetic */ G(H h8) {
        this.f9108G = h8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SearchBar searchBar = (SearchBar) this.f9108G.f9116b;
        searchBar.f9199P = true;
        searchBar.f9191H.requestFocus();
    }
}
