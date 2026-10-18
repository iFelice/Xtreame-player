package z4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: z4.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3240d implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Iterator f31839G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f31840H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Collection f31841I = null;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Iterator f31842J = P.f31822G;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ AbstractC3239c f31843K;

    public C3240d(AbstractC3239c abstractC3239c) {
        this.f31843K = abstractC3239c;
        this.f31839G = abstractC3239c.f31837J.entrySet().iterator();
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        return this.f31839G.hasNext() || this.f31842J.hasNext();
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        if (!this.f31842J.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f31839G.next();
            this.f31840H = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.f31841I = collection;
            this.f31842J = collection.iterator();
        }
        return this.f31842J.next();
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void remove() {
        this.f31842J.remove();
        Collection collection = this.f31841I;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.f31839G.remove();
        }
        this.f31843K.f31838K--;
    }
}
