package T2;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class i extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f6574a;

    public i(ArrayList arrayList) {
        this.f6574a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        return this.f6574a.equals(((i) ((o) obj)).f6574a);
    }

    public final int hashCode() {
        return this.f6574a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f6574a + "}";
    }
}
