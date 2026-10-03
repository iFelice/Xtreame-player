package R1;

import com.google.protobuf.U2;
import java.util.List;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6266c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f6267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f6268e;

    public b(String str, String str2, String str3, List list, List list2) {
        q0.h(list, "columnNames");
        q0.h(list2, "referenceColumnNames");
        this.f6264a = str;
        this.f6265b = str2;
        this.f6266c = str3;
        this.f6267d = list;
        this.f6268e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (q0.c(this.f6264a, bVar.f6264a) && q0.c(this.f6265b, bVar.f6265b) && q0.c(this.f6266c, bVar.f6266c) && q0.c(this.f6267d, bVar.f6267d)) {
            return q0.c(this.f6268e, bVar.f6268e);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6268e.hashCode() + ((this.f6267d.hashCode() + U2.e(this.f6266c, U2.e(this.f6265b, this.f6264a.hashCode() * 31, 31), 31)) * 31);
    }

    public final String toString() {
        return "ForeignKey{referenceTable='" + this.f6264a + "', onDelete='" + this.f6265b + " +', onUpdate='" + this.f6266c + "', columnNames=" + this.f6267d + ", referenceColumnNames=" + this.f6268e + '}';
    }
}
