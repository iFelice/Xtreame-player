package P4;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5915a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f5916b;

    public c(String str, Map map) {
        this.f5915a = str;
        this.f5916b = map;
    }

    public static c a(String str) {
        return new c(str, Collections.emptyMap());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f5915a.equals(cVar.f5915a) && this.f5916b.equals(cVar.f5916b);
    }

    public final int hashCode() {
        return this.f5916b.hashCode() + (this.f5915a.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f5915a + ", properties=" + this.f5916b.values() + "}";
    }
}
