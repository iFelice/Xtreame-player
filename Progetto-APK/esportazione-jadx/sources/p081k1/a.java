package p081k1;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f25903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f25904b;

    public a(long j8, long j9) {
        this.f25903a = j9;
        this.f25904b = j8;
    }

    @Override // p081k1.b
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 PrivateCommand { ptsAdjustment=");
        sb.append(this.f25903a);
        sb.append(", identifier= ");
        return r.i(sb, this.f25904b, " }");
    }
}
