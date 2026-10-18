package z4;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class D extends AbstractC3250n implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f31798G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f31799H;

    public D(Object obj, List list) {
        this.f31798G = obj;
        this.f31799H = list;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f31798G;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f31799H;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
