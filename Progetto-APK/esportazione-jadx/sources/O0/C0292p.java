package O0;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import p141s0.C3188m;

/* JADX INFO: renamed from: O0.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0292p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicLong f5227c = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f5228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5229b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0292p(long j8, C3188m c3188m, long j9) {
        this(Collections.emptyMap(), 0L);
        Uri uri = c3188m.f29963a;
    }

    public C0292p(Map map, long j8) {
        this.f5228a = map;
        this.f5229b = j8;
    }
}
