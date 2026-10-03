package p073j1;

import com.google.android.gms.internal.measurement.H1;
import java.util.Locale;
import java.util.Objects;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f25681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f25682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f25683c;

    public b(int i8, long j8, long j9) {
        H1.d(j8 < j9);
        this.f25681a = j8;
        this.f25682b = j9;
        this.f25683c = i8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f25681a == bVar.f25681a && this.f25682b == bVar.f25682b && this.f25683c == bVar.f25683c;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f25681a), Long.valueOf(this.f25682b), Integer.valueOf(this.f25683c));
    }

    public final String toString() {
        String str = M.f28050a;
        Locale locale = Locale.US;
        return "Segment: startTimeMs=" + this.f25681a + ", endTimeMs=" + this.f25682b + ", speedDivisor=" + this.f25683c;
    }
}
