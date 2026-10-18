package z4;

import com.google.android.gms.internal.ads.Rz;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: z4.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3239c extends AbstractC3252p implements Serializable {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Map f31837J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public transient int f31838K;

    public AbstractC3239c(Map map) {
        p190y4.k.p(map.isEmpty());
        this.f31837J = map;
    }

    @Override // z4.AbstractC3252p
    public final Map a() {
        Map map = this.f31892I;
        if (map != null) {
            return map;
        }
        Rz rzC = c();
        this.f31892I = rzC;
        return rzC;
    }

    public final void b() {
        Iterator it = this.f31837J.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        this.f31837J.clear();
        this.f31838K = 0;
    }

    public abstract Rz c();

    public abstract Collection d();

    public abstract C3242f e();

    @Override // z4.AbstractC3252p
    public final boolean equals(Object obj) {
        return super.equals(obj);
    }
}
