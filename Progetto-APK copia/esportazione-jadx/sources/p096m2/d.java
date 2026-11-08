package p096m2;

import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Long f27213b;

    public d(String str, Long l4) {
        this.f27212a = str;
        this.f27213b = l4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return q0.c(this.f27212a, dVar.f27212a) && q0.c(this.f27213b, dVar.f27213b);
    }

    public final int hashCode() {
        int iHashCode = this.f27212a.hashCode() * 31;
        Long l4 = this.f27213b;
        return iHashCode + (l4 == null ? 0 : l4.hashCode());
    }

    public final String toString() {
        return "Preference(key=" + this.f27212a + ", value=" + this.f27213b + ')';
    }
}
