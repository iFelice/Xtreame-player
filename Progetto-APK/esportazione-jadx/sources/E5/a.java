package E5;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final D5.b f2930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final D5.b f2931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final D5.c f2932c;

    public a(D5.b bVar, D5.b bVar2, D5.c cVar) {
        this.f2930a = bVar;
        this.f2931b = bVar2;
        this.f2932c = cVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Objects.equals(this.f2930a, aVar.f2930a) && Objects.equals(this.f2931b, aVar.f2931b) && Objects.equals(this.f2932c, aVar.f2932c);
    }

    public final int hashCode() {
        return (Objects.hashCode(this.f2930a) ^ Objects.hashCode(this.f2931b)) ^ Objects.hashCode(this.f2932c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[ ");
        sb.append(this.f2930a);
        sb.append(" , ");
        sb.append(this.f2931b);
        sb.append(" : ");
        D5.c cVar = this.f2932c;
        sb.append(cVar == null ? "null" : Integer.valueOf(cVar.f2408a));
        sb.append(" ]");
        return sb.toString();
    }
}
