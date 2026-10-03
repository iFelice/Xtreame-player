package K;

import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f4271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f4272c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Objects.equals(this.f4270a, dVar.f4270a) && Objects.equals(this.f4271b, dVar.f4271b) && Objects.equals(this.f4272c, dVar.f4272c);
    }

    public final int hashCode() {
        return Objects.hash(this.f4270a, this.f4271b, this.f4272c);
    }
}
