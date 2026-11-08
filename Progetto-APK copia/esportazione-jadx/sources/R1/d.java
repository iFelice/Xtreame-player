package R1;

import I6.k;
import java.util.ArrayList;
import java.util.List;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f6274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f6275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f6276d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.ArrayList] */
    public d(String str, boolean z7, List list, List list2) {
        q0.h(list, "columns");
        q0.h(list2, "orders");
        this.f6273a = str;
        this.f6274b = z7;
        this.f6275c = list;
        this.f6276d = list2;
        if (list2.isEmpty()) {
            int size = list.size();
            list2 = new ArrayList(size);
            for (int i8 = 0; i8 < size; i8++) {
                list2.add("ASC");
            }
        }
        this.f6276d = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f6274b != dVar.f6274b || !q0.c(this.f6275c, dVar.f6275c) || !q0.c(this.f6276d, dVar.f6276d)) {
            return false;
        }
        String str = this.f6273a;
        boolean zU0 = k.U0(str, "index_", false);
        String str2 = dVar.f6273a;
        return zU0 ? k.U0(str2, "index_", false) : q0.c(str, str2);
    }

    public final int hashCode() {
        String str = this.f6273a;
        return this.f6276d.hashCode() + ((this.f6275c.hashCode() + ((((k.U0(str, "index_", false) ? -1184239155 : str.hashCode()) * 31) + (this.f6274b ? 1 : 0)) * 31)) * 31);
    }

    public final String toString() {
        return "Index{name='" + this.f6273a + "', unique=" + this.f6274b + ", columns=" + this.f6275c + ", orders=" + this.f6276d + "'}";
    }
}
