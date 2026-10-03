package Z5;

import com.google.android.gms.internal.ads.Cw;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class Q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f8438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f8439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f8440c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f8441d;

    public Q(AbstractC0463u abstractC0463u, HashMap map, HashMap map2, AbstractC0463u abstractC0463u2, Object obj, Map map3) {
        this.f8438a = Collections.unmodifiableMap(new HashMap(map));
        this.f8439b = Collections.unmodifiableMap(new HashMap(map2));
        this.f8440c = obj;
        this.f8441d = map3 != null ? Collections.unmodifiableMap(new HashMap(map3)) : null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Q.class != obj.getClass()) {
            return false;
        }
        Q q7 = (Q) obj;
        q7.getClass();
        if (a7.b.c(null, null) && a7.b.c(this.f8438a, q7.f8438a) && a7.b.c(this.f8439b, q7.f8439b)) {
            q7.getClass();
            if (a7.b.c(null, null) && a7.b.c(this.f8440c, q7.f8440c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{null, this.f8438a, this.f8439b, null, this.f8440c});
    }

    public final String toString() {
        p113o3.G gN = Cw.n(this);
        gN.a(null, "defaultMethodConfig");
        gN.a(this.f8438a, "serviceMethodMap");
        gN.a(this.f8439b, "serviceMap");
        gN.a(null, "retryThrottling");
        gN.a(this.f8440c, "loadBalancingConfig");
        return gN.toString();
    }
}
