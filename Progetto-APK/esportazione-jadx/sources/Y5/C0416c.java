package Y5;

import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Map;

/* JADX INFO: renamed from: Y5.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0416c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0416c f8151b = new C0416c(new IdentityHashMap());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IdentityHashMap f8152a;

    public C0416c(IdentityHashMap identityHashMap) {
        this.f8152a = identityHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0416c.class != obj.getClass()) {
            return false;
        }
        IdentityHashMap identityHashMap = this.f8152a;
        int size = identityHashMap.size();
        IdentityHashMap identityHashMap2 = ((C0416c) obj).f8152a;
        if (size != identityHashMap2.size()) {
            return false;
        }
        for (Map.Entry entry : identityHashMap.entrySet()) {
            if (!identityHashMap2.containsKey(entry.getKey()) || !a7.b.c(entry.getValue(), identityHashMap2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode = 0;
        for (Map.Entry entry : this.f8152a.entrySet()) {
            iHashCode += Arrays.hashCode(new Object[]{entry.getKey(), entry.getValue()});
        }
        return iHashCode;
    }

    public final String toString() {
        return this.f8152a.toString();
    }
}
