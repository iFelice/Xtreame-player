package F;

import android.content.res.Resources;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Resources f2982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources.Theme f2983b;

    public k(Resources resources, Resources.Theme theme) {
        this.f2982a = resources;
        this.f2983b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.f2982a.equals(kVar.f2982a) && Objects.equals(this.f2983b, kVar.f2983b);
    }

    public final int hashCode() {
        return Objects.hash(this.f2982a, this.f2983b);
    }
}
