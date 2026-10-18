package p125q0;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class t implements Comparable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f29530H = -9223372036854775807L;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f29529G = new ArrayList();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.f29530H, ((t) obj).f29530H);
    }
}
