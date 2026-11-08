package Y;

import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class C implements p016c.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ K f7696b;

    public /* synthetic */ C(K k8, int i8) {
        this.f7695a = i8;
        this.f7696b = k8;
    }

    public final void a(p016c.b bVar) {
        int i8 = this.f7695a;
        K k8 = this.f7696b;
        switch (i8) {
            case 2:
                H h8 = (H) k8.f7711D.pollFirst();
                if (h8 != null) {
                    String str = h8.f7703G;
                    AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sK = k8.f7724c.k(str);
                    if (abstractComponentCallbacksC0406sK != null) {
                        abstractComponentCallbacksC0406sK.v(h8.f7704H, bVar.f10541G, bVar.f10542H);
                    } else {
                        Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
                    }
                } else {
                    Log.w("FragmentManager", "No Activities were started for result for " + this);
                }
                break;
            default:
                H h9 = (H) k8.f7711D.pollFirst();
                if (h9 != null) {
                    String str2 = h9.f7703G;
                    AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sK2 = k8.f7724c.k(str2);
                    if (abstractComponentCallbacksC0406sK2 != null) {
                        abstractComponentCallbacksC0406sK2.v(h9.f7704H, bVar.f10541G, bVar.f10542H);
                    } else {
                        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str2);
                    }
                } else {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                }
                break;
        }
    }

    public final void b(Object obj) {
        switch (this.f7695a) {
            case 0:
                Map map = (Map) obj;
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i8 = 0; i8 < arrayList.size(); i8++) {
                    iArr[i8] = ((Boolean) arrayList.get(i8)).booleanValue() ? 0 : -1;
                }
                K k8 = this.f7696b;
                H h8 = (H) k8.f7711D.pollFirst();
                if (h8 == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                } else {
                    String str = h8.f7703G;
                    if (k8.f7724c.k(str) == null) {
                        Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
                    }
                }
                break;
            case 1:
            default:
                a((p016c.b) obj);
                break;
            case 2:
                a((p016c.b) obj);
                break;
        }
    }
}
