package W5;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ArrayList f7494e = new ArrayList(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f7495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7498d;

    public static b a(int i8, int i9, int i10, int i11) {
        b bVar;
        ArrayList arrayList = f7494e;
        synchronized (arrayList) {
            if (arrayList.size() > 0) {
                bVar = (b) arrayList.remove(0);
                bVar.f7495a = 0;
                bVar.f7496b = 0;
                bVar.f7497c = 0;
                bVar.f7498d = 0;
            } else {
                bVar = new b();
            }
        }
        bVar.f7498d = i8;
        bVar.f7495a = i9;
        bVar.f7496b = i10;
        bVar.f7497c = i11;
        return bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f7495a == bVar.f7495a && this.f7496b == bVar.f7496b && this.f7497c == bVar.f7497c && this.f7498d == bVar.f7498d;
    }

    public final int hashCode() {
        return (((((this.f7495a * 31) + this.f7496b) * 31) + this.f7497c) * 31) + this.f7498d;
    }

    public final String toString() {
        return "ExpandableListPosition{groupPos=" + this.f7495a + ", childPos=" + this.f7496b + ", flatListPos=" + this.f7497c + ", type=" + this.f7498d + '}';
    }
}
