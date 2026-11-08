package z4;

import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: z4.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3252p implements X {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public transient Set f31890G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient C3251o f31891H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public transient Map f31892I;

    public abstract Map a();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof X) {
            return ((AbstractC3239c) this).a().equals(((AbstractC3239c) ((X) obj)).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a().toString();
    }
}
