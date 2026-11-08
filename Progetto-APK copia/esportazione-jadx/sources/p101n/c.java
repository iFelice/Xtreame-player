package p101n;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Map.Entry {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f27291G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f27292H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public c f27293I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public c f27294J;

    public c(Object obj, Object obj2) {
        this.f27291G = obj;
        this.f27292H = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f27291G.equals(cVar.f27291G) && this.f27292H.equals(cVar.f27292H);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f27291G;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f27292H;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f27291G.hashCode() ^ this.f27292H.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f27291G + "=" + this.f27292H;
    }
}
