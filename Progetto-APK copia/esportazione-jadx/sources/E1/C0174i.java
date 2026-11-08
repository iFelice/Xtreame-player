package E1;

import android.os.Bundle;

/* JADX INFO: renamed from: E1.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0174i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f2752a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C0181p f2753b;

    public C0174i(C0181p c0181p, boolean z7) {
        if (c0181p == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        Bundle bundle = new Bundle();
        this.f2752a = bundle;
        this.f2753b = c0181p;
        bundle.putBundle("selector", c0181p.f2796a);
        bundle.putBoolean("activeScan", z7);
    }

    public final void a() {
        if (this.f2753b == null) {
            Bundle bundle = this.f2752a.getBundle("selector");
            C0181p c0181p = null;
            if (bundle != null) {
                c0181p = new C0181p(null, bundle);
            } else {
                C0181p c0181p2 = C0181p.f2795c;
            }
            this.f2753b = c0181p;
            if (c0181p == null) {
                this.f2753b = C0181p.f2795c;
            }
        }
    }

    public final boolean b() {
        return this.f2752a.getBoolean("activeScan");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0174i)) {
            return false;
        }
        C0174i c0174i = (C0174i) obj;
        a();
        C0181p c0181p = this.f2753b;
        c0174i.a();
        return c0181p.equals(c0174i.f2753b) && b() == c0174i.b();
    }

    public final int hashCode() {
        a();
        return (this.f2753b.hashCode() ^ (b() ? 1 : 0)) == true ? 1 : 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DiscoveryRequest{ selector=");
        a();
        sb.append(this.f2753b);
        sb.append(", activeScan=");
        sb.append(b());
        sb.append(", isValid=");
        a();
        C0181p c0181p = this.f2753b;
        c0181p.a();
        sb.append(!c0181p.f2797b.contains(null));
        sb.append(" }");
        return sb.toString();
    }
}
