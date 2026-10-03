package p004a3;

import R2.c;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p028d3.a f8647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f8648b;

    public a(p028d3.a aVar, Map map) {
        if (aVar == null) {
            throw new NullPointerException("Null clock");
        }
        this.f8647a = aVar;
        if (map == null) {
            throw new NullPointerException("Null values");
        }
        this.f8648b = map;
    }

    public final long a(c cVar, long j8, int i8) {
        long jA = j8 - ((p028d3.c) this.f8647a).a();
        c cVar2 = (c) this.f8648b.get(cVar);
        long j9 = cVar2.f8653a;
        int i9 = i8 - 1;
        return Math.min(Math.max((long) (Math.pow(3.0d, i9) * j9 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j9 > 1 ? j9 : 2L) * ((long) i9)))), jA), cVar2.f8654b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f8647a.equals(aVar.f8647a) && this.f8648b.equals(aVar.f8648b);
    }

    public final int hashCode() {
        return ((this.f8647a.hashCode() ^ 1000003) * 1000003) ^ this.f8648b.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f8647a + ", values=" + this.f8648b + "}";
    }
}
