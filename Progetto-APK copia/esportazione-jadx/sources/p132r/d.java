package p132r;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Iterator, Map.Entry {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f29652G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f29653H = -1;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f29654I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ f f29655J;

    public d(f fVar) {
        this.f29655J = fVar;
        this.f29652G = fVar.f29684I - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f29654I) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i8 = this.f29653H;
        f fVar = this.f29655J;
        return q0.c(key, fVar.f(i8)) && q0.c(entry.getValue(), fVar.j(this.f29653H));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.f29654I) {
            return this.f29655J.f(this.f29653H);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f29654I) {
            return this.f29655J.j(this.f29653H);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29653H < this.f29652G;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f29654I) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i8 = this.f29653H;
        f fVar = this.f29655J;
        Object objF = fVar.f(i8);
        Object objJ = fVar.j(this.f29653H);
        return (objF == null ? 0 : objF.hashCode()) ^ (objJ != null ? objJ.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f29653H++;
        this.f29654I = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f29654I) {
            throw new IllegalStateException();
        }
        this.f29655J.h(this.f29653H);
        this.f29653H--;
        this.f29652G--;
        this.f29654I = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.f29654I) {
            return this.f29655J.i(this.f29653H, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
