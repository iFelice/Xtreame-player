package B0;

import com.google.android.gms.internal.measurement.H1;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: B0.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0061m implements InterfaceC0040b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final S0.d f1020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f1021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f1022c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f1023d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f1024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1025f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f1026g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f1027h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f1028i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HashMap f1029j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f1030k;

    public C0061m(S0.d dVar, int i8, int i9, int i10, int i11, int i12, boolean z7) {
        a(i10, 0, "bufferForPlaybackMs", "0");
        a(i11, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(i8, i10, "minBufferMs", "bufferForPlaybackMs");
        a(i8, i11, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        a(i9, i8, "maxBufferMs", "minBufferMs");
        a(0, 0, "backBufferDurationMs", "0");
        this.f1020a = dVar;
        this.f1021b = p117p0.M.R(i8);
        this.f1022c = p117p0.M.R(i9);
        this.f1023d = p117p0.M.R(i10);
        this.f1024e = p117p0.M.R(i11);
        this.f1025f = i12;
        this.f1026g = z7;
        this.f1027h = p117p0.M.R(0);
        this.f1028i = false;
        this.f1029j = new HashMap();
        this.f1030k = -1L;
    }

    public static void a(int i8, int i9, String str, String str2) {
        H1.c(str + " cannot be less than " + str2, i8 >= i9);
    }

    public final int b() {
        Iterator it = this.f1029j.values().iterator();
        int i8 = 0;
        while (it.hasNext()) {
            i8 += ((C0059l) it.next()).f1015b;
        }
        return i8;
    }

    public final boolean c(C0038a0 c0038a0) {
        int i8;
        C0059l c0059l = (C0059l) this.f1029j.get(c0038a0.f907a);
        c0059l.getClass();
        S0.d dVar = this.f1020a;
        synchronized (dVar) {
            i8 = dVar.f6325d * dVar.f6323b;
        }
        boolean z7 = true;
        boolean z8 = i8 >= b();
        long j8 = this.f1022c;
        long jMin = this.f1021b;
        float f8 = c0038a0.f909c;
        if (f8 > 1.0f) {
            jMin = Math.min(p117p0.M.y(jMin, f8), j8);
        }
        long jMax = Math.max(jMin, 500000L);
        long j9 = c0038a0.f908b;
        if (j9 < jMax) {
            if (!this.f1026g && z8) {
                z7 = false;
            }
            c0059l.f1014a = z7;
            if (!z7 && j9 < 500000) {
                p117p0.x.f("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j9 >= j8 || z8) {
            c0059l.f1014a = false;
        }
        return c0059l.f1014a;
    }

    public final void d() {
        if (!this.f1029j.isEmpty()) {
            this.f1020a.a(b());
            return;
        }
        S0.d dVar = this.f1020a;
        synchronized (dVar) {
            if (dVar.f6322a) {
                dVar.a(0);
            }
        }
    }
}
