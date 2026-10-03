package z4;

import com.google.android.gms.internal.ads.Rz;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes.dex */
public final class Z extends AbstractC3239c {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public transient p190y4.t f31831L;

    @Override // z4.AbstractC3239c
    public final Rz c() {
        Map map = this.f31837J;
        if (map instanceof NavigableMap) {
            return new C3243g(this, (NavigableMap) this.f31837J);
        }
        return map instanceof SortedMap ? new C3246j(this, (SortedMap) this.f31837J) : new Rz(this, this.f31837J);
    }

    @Override // z4.AbstractC3239c
    public final Collection d() {
        return (List) this.f31831L.get();
    }

    @Override // z4.AbstractC3239c
    public final C3242f e() {
        Map map = this.f31837J;
        if (map instanceof NavigableMap) {
            return new C3244h(this, (NavigableMap) this.f31837J);
        }
        return map instanceof SortedMap ? new C3247k(this, (SortedMap) this.f31837J) : new C3242f(this, this.f31837J);
    }
}
