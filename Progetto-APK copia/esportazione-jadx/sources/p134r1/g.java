package p134r1;

import p126q1.i;

/* JADX INFO: loaded from: classes.dex */
public final class g extends i implements Comparable {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public long f29772P;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        g gVar = (g) obj;
        if (isEndOfStream() == gVar.isEndOfStream()) {
            long j8 = this.f30906K - gVar.f30906K;
            if (j8 == 0) {
                j8 = this.f29772P - gVar.f29772P;
                if (j8 == 0) {
                    return 0;
                }
            }
            if (j8 <= 0) {
                return -1;
            }
        } else if (!isEndOfStream()) {
            return -1;
        }
        return 1;
    }
}
