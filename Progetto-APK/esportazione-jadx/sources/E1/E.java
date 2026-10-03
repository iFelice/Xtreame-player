package E1;

import android.content.ComponentName;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class E {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC0179n f2622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f2623b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f2624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f0 f2625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0180o f2626e;

    public E(AbstractC0179n abstractC0179n, boolean z7) {
        this.f2622a = abstractC0179n;
        this.f2625d = abstractC0179n.f2786b;
        this.f2624c = z7;
    }

    public final F a(String str) {
        ArrayList arrayList = this.f2623b;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (((F) arrayList.get(i8)).f2628b.equals(str)) {
                return (F) arrayList.get(i8);
            }
        }
        return null;
    }

    public final String toString() {
        return "MediaRouter.RouteProviderInfo{ packageName=" + ((ComponentName) this.f2625d.f2740b).getPackageName() + " }";
    }
}
