package O1;

import android.database.Observable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class D extends Observable {
    public final void a() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            RecyclerView recyclerView = ((U) ((Observable) this).mObservers.get(size)).f5305a;
            recyclerView.k(null);
            recyclerView.f9635N0.f5319f = true;
            recyclerView.Z(true);
            if (!recyclerView.f9628K.g()) {
                recyclerView.requestLayout();
            }
        }
    }

    public final void b(int i8) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            U u7 = (U) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = u7.f5305a;
            recyclerView.k(null);
            C0303b c0303b = recyclerView.f9628K;
            ArrayList arrayList = c0303b.f5335b;
            arrayList.add(c0303b.h(null, 4, i8, 1));
            c0303b.f5339f |= 4;
            if (arrayList.size() == 1) {
                u7.a();
            }
        }
    }

    public final void c(int i8, int i9) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            U u7 = (U) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = u7.f5305a;
            recyclerView.k(null);
            C0303b c0303b = recyclerView.f9628K;
            if (i9 < 1) {
                c0303b.getClass();
            } else {
                ArrayList arrayList = c0303b.f5335b;
                arrayList.add(c0303b.h(null, 1, i8, i9));
                c0303b.f5339f |= 1;
                if (arrayList.size() == 1) {
                    u7.a();
                }
            }
        }
    }

    public final void d(int i8, int i9) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            U u7 = (U) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = u7.f5305a;
            recyclerView.k(null);
            C0303b c0303b = recyclerView.f9628K;
            if (i9 < 1) {
                c0303b.getClass();
            } else {
                ArrayList arrayList = c0303b.f5335b;
                arrayList.add(c0303b.h(null, 2, i8, i9));
                c0303b.f5339f |= 2;
                if (arrayList.size() == 1) {
                    u7.a();
                }
            }
        }
    }
}
