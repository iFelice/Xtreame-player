package p149t0;

import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f30219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TreeSet f30221c = new TreeSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f30222d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public r f30223e;

    public n(int i8, String str, r rVar) {
        this.f30219a = i8;
        this.f30220b = str;
        this.f30223e = rVar;
    }

    public final boolean a(long j8, long j9) {
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f30222d;
            if (i8 >= arrayList.size()) {
                return false;
            }
            m mVar = (m) arrayList.get(i8);
            long j10 = mVar.f30217a;
            long j11 = mVar.f30218b;
            if (j11 == -1) {
                if (j8 >= j10) {
                    return true;
                }
            } else if (j9 != -1 && j10 <= j8 && j8 + j9 <= j10 + j11) {
                return true;
            }
            i8++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        return this.f30219a == nVar.f30219a && this.f30220b.equals(nVar.f30220b) && this.f30221c.equals(nVar.f30221c) && this.f30223e.equals(nVar.f30223e);
    }

    public final int hashCode() {
        return this.f30223e.hashCode() + U2.e(this.f30220b, this.f30219a * 31, 31);
    }
}
