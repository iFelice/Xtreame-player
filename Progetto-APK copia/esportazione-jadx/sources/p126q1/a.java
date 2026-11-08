package p126q1;

import java.util.List;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final H f29531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f29532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f29533c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f29534d;

    public a(List list, long j8, long j9) {
        this.f29531a = H.s(list);
        this.f29532b = j8;
        this.f29533c = j9;
        long j10 = -9223372036854775807L;
        if (j8 != -9223372036854775807L && j9 != -9223372036854775807L) {
            j10 = j8 + j9;
        }
        this.f29534d = j10;
    }
}
