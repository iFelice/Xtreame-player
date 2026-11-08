package Z6;

import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeZone f8544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Locale f8546c;

    public v(TimeZone timeZone, boolean z7, int i8, Locale locale) {
        this.f8544a = timeZone;
        if (z7) {
            this.f8545b = Integer.MIN_VALUE | i8;
        } else {
            this.f8545b = i8;
        }
        this.f8546c = Y6.a.a(locale);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f8544a.equals(vVar.f8544a) && this.f8545b == vVar.f8545b && this.f8546c.equals(vVar.f8546c);
    }

    public final int hashCode() {
        return this.f8544a.hashCode() + ((this.f8546c.hashCode() + (this.f8545b * 31)) * 31);
    }
}
