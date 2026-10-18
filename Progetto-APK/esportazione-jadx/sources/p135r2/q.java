package p135r2;

import android.os.SystemClock;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f29841c = r.f29844a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f29842a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f29843b = false;

    public final synchronized void a(long j8, String str) {
        if (this.f29843b) {
            throw new IllegalStateException("Marker added to finished log");
        }
        this.f29842a.add(new p(j8, SystemClock.elapsedRealtime(), str));
    }

    public final synchronized void b(String str) {
        this.f29843b = true;
        ArrayList arrayList = this.f29842a;
        long j8 = arrayList.size() == 0 ? 0L : ((p) arrayList.get(arrayList.size() - 1)).f29840c - ((p) arrayList.get(0)).f29840c;
        if (j8 <= 0) {
            return;
        }
        long j9 = ((p) this.f29842a.get(0)).f29840c;
        r.b("(%-4d ms) %s", Long.valueOf(j8), str);
        for (p pVar : this.f29842a) {
            long j10 = pVar.f29840c;
            r.b("(+%-4d) [%2d] %s", Long.valueOf(j10 - j9), Long.valueOf(pVar.f29839b), pVar.f29838a);
            j9 = j10;
        }
    }

    public final void finalize() {
        if (this.f29843b) {
            return;
        }
        b("Request on the loose");
        r.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
    }
}
