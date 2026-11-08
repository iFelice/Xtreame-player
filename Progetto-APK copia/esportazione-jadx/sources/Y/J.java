package Y;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class J implements I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7706b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ K f7707c;

    public J(K k8, int i8) {
        this.f7707c = k8;
        this.f7705a = i8;
    }

    @Override // Y.I
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        K k8 = this.f7707c;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = k8.f7745x;
        int i8 = this.f7705a;
        if (abstractComponentCallbacksC0406s == null || i8 >= 0 || !abstractComponentCallbacksC0406s.k().N(-1, 0)) {
            return k8.O(arrayList, arrayList2, i8, this.f7706b);
        }
        return false;
    }
}
