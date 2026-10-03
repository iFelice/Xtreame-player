package D0;

import android.os.SystemClock;
import com.google.android.gms.internal.ads.C1618lM;

/* JADX INFO: loaded from: classes.dex */
public final class M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Exception f1780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f1781b = -9223372036854775807L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f1782c = -9223372036854775807L;

    public final void a(Exception exc) throws Exception {
        boolean z7;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f1780a == null) {
            this.f1780a = exc;
        }
        if (this.f1781b == -9223372036854775807L) {
            synchronized (S.f1790p0) {
                z7 = S.f1792r0 > 0;
            }
            if (!z7) {
                this.f1781b = 200 + jElapsedRealtime;
            }
        }
        long j8 = this.f1781b;
        if (j8 == -9223372036854775807L || jElapsedRealtime < j8) {
            this.f1782c = jElapsedRealtime + 50;
            return;
        }
        Exception exc2 = this.f1780a;
        if (exc2 != exc) {
            exc2.addSuppressed(exc);
        }
        Exception exc3 = this.f1780a;
        this.f1780a = null;
        this.f1781b = -9223372036854775807L;
        this.f1782c = -9223372036854775807L;
        throw exc3;
    }

    public final void b(Exception exc) throws Exception {
        boolean z7;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f1780a == null) {
            this.f1780a = exc;
        }
        if (this.f1781b == -9223372036854775807L) {
            synchronized (C1618lM.f19732Z) {
                z7 = C1618lM.f19734b0 > 0;
            }
            if (!z7) {
                this.f1781b = 200 + jElapsedRealtime;
            }
        }
        long j8 = this.f1781b;
        if (j8 == -9223372036854775807L || jElapsedRealtime < j8) {
            this.f1782c = jElapsedRealtime + 50;
            return;
        }
        Exception exc2 = this.f1780a;
        if (exc2 != exc) {
            exc2.addSuppressed(exc);
        }
        Exception exc3 = this.f1780a;
        this.f1780a = null;
        this.f1781b = -9223372036854775807L;
        this.f1782c = -9223372036854775807L;
        throw exc3;
    }
}
