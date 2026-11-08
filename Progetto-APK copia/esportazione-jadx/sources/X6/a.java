package X6;

import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends TreeMap {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f7689G = new ArrayList();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public double f7690H = 0.0d;

    public final void a() {
        ArrayList arrayList = this.f7689G;
        if (arrayList.size() < 2) {
            this.f7690H = 0.0d;
        } else if (Math.abs(((Double) U2.g(arrayList, 1)).doubleValue() - ((Double) U2.g(arrayList, 2)).doubleValue()) > this.f7690H) {
            this.f7690H = Math.abs(((Double) U2.g(arrayList, 1)).doubleValue() - ((Double) U2.g(arrayList, 2)).doubleValue());
        }
    }

    @Override // java.util.TreeMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        a();
        super.clear();
        this.f7689G.clear();
    }

    @Override // java.util.TreeMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        this.f7689G.add(obj);
        a();
        return super.put(obj, obj2);
    }
}
