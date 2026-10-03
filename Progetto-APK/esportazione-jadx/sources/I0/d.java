package I0;

import com.google.android.gms.internal.measurement.H1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f3819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3820d;

    public d(String str, double d6) {
        this.f3817a = str;
        this.f3818b = 2;
        this.f3819c = d6;
        this.f3820d = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f3818b == dVar.f3818b && Double.compare(this.f3819c, dVar.f3819c) == 0 && Objects.equals(this.f3817a, dVar.f3817a) && Objects.equals(this.f3820d, dVar.f3820d);
    }

    public final int hashCode() {
        return Objects.hash(this.f3817a, Integer.valueOf(this.f3818b), Double.valueOf(this.f3819c), this.f3820d);
    }

    public d(String str, String str2, int i8) {
        boolean z7 = true;
        if (i8 == 1 && !str2.startsWith("0x") && !str2.startsWith("0X")) {
            z7 = false;
        }
        H1.i(z7);
        this.f3817a = str;
        this.f3818b = i8;
        this.f3820d = str2;
        this.f3819c = 0.0d;
    }
}
