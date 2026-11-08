package p149t0;

import java.io.File;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class l implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f30211G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f30212H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f30213I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f30214J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final File f30215K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final long f30216L;

    public l(String str, long j8, long j9, long j10, File file) {
        this.f30211G = str;
        this.f30212H = j8;
        this.f30213I = j9;
        this.f30214J = file != null;
        this.f30215K = file;
        this.f30216L = j10;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        l lVar = (l) obj;
        String str = lVar.f30211G;
        String str2 = this.f30211G;
        if (!str2.equals(str)) {
            return str2.compareTo(lVar.f30211G);
        }
        long j8 = this.f30212H - lVar.f30212H;
        if (j8 == 0) {
            return 0;
        }
        return j8 < 0 ? -1 : 1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.f30212H);
        sb.append(", ");
        return r.i(sb, this.f30213I, "]");
    }
}
