package O1;

import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class U {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f5305a;

    public U(RecyclerView recyclerView) {
        this.f5305a = recyclerView;
    }

    public final void a() {
        RecyclerView recyclerView = this.f5305a;
        if (recyclerView.f9663d0 && recyclerView.f9661c0) {
            WeakHashMap weakHashMap = N.N.f4843a;
            recyclerView.postOnAnimation(recyclerView.f9636O);
        } else {
            recyclerView.f9675k0 = true;
            recyclerView.requestLayout();
        }
    }
}
