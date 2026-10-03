package p141s0;

import S0.f;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import p117p0.G;
import p117p0.M;
import z4.d0;

/* JADX INFO: renamed from: s0.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3178c implements InterfaceC3184i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f29930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f29931b = new ArrayList(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f29932c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C3188m f29933d;

    public AbstractC3178c(boolean z7) {
        this.f29930a = z7;
    }

    @Override // p141s0.InterfaceC3184i
    public Map k() {
        return Collections.emptyMap();
    }

    @Override // p141s0.InterfaceC3184i
    public final void p(O o4) {
        o4.getClass();
        ArrayList arrayList = this.f29931b;
        if (arrayList.contains(o4)) {
            return;
        }
        arrayList.add(o4);
        this.f29932c++;
    }

    public final void s(int i8) {
        C3188m c3188m = this.f29933d;
        String str = M.f28050a;
        for (int i9 = 0; i9 < this.f29932c; i9++) {
            O o4 = (O) this.f29931b.get(i9);
            boolean z7 = this.f29930a;
            f fVar = (f) o4;
            synchronized (fVar) {
                d0 d0Var = f.f6329p;
                if (z7 && (c3188m.f29971i & 8) != 8) {
                    fVar.f6344i += (long) i8;
                }
            }
        }
    }

    public final void t() {
        C3188m c3188m = this.f29933d;
        String str = M.f28050a;
        for (int i8 = 0; i8 < this.f29932c; i8++) {
            O o4 = (O) this.f29931b.get(i8);
            boolean z7 = this.f29930a;
            f fVar = (f) o4;
            synchronized (fVar) {
                try {
                    d0 d0Var = f.f6329p;
                    if (z7 && (c3188m.f29971i & 8) != 8) {
                        H1.i(fVar.f6342g > 0);
                        ((G) fVar.f6339d).getClass();
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        int i9 = (int) (jElapsedRealtime - fVar.f6343h);
                        fVar.f6345j += (long) i9;
                        long j8 = fVar.f6346k;
                        long j9 = fVar.f6344i;
                        fVar.f6346k = j8 + j9;
                        if (i9 > 0) {
                            fVar.f6341f.a((int) Math.sqrt(j9), (j9 * 8000.0f) / i9);
                            if (fVar.f6345j >= 2000 || fVar.f6346k >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                                fVar.f6347l = (long) fVar.f6341f.b();
                            }
                            fVar.b(i9, fVar.f6344i, fVar.f6347l);
                            fVar.f6343h = jElapsedRealtime;
                            fVar.f6344i = 0L;
                        }
                        fVar.f6342g--;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.f29933d = null;
    }

    public final void u() {
        for (int i8 = 0; i8 < this.f29932c; i8++) {
            ((O) this.f29931b.get(i8)).getClass();
        }
    }

    public final void v(C3188m c3188m) {
        this.f29933d = c3188m;
        for (int i8 = 0; i8 < this.f29932c; i8++) {
            O o4 = (O) this.f29931b.get(i8);
            boolean z7 = this.f29930a;
            f fVar = (f) o4;
            synchronized (fVar) {
                try {
                    d0 d0Var = f.f6329p;
                    if (z7 && (c3188m.f29971i & 8) != 8) {
                        if (fVar.f6342g == 0) {
                            ((G) fVar.f6339d).getClass();
                            fVar.f6343h = SystemClock.elapsedRealtime();
                        }
                        fVar.f6342g++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
