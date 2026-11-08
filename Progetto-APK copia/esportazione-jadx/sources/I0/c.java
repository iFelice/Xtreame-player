package I0;

import N.C0260i;
import O0.C0292p;
import O0.D;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p141s0.C3185j;
import p141s0.M;
import z4.i0;

/* JADX INFO: loaded from: classes.dex */
public final class c implements w, S0.h {

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final C0260i f3802U = new C0260i(14);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final H0.c f3803G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final s f3804H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final U4.b f3805I;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public D f3808L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public S0.m f3809M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Handler f3810N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public v f3811O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public o f3812P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public Uri f3813Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public l f3814R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f3815S;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final CopyOnWriteArrayList f3807K = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final HashMap f3806J = new HashMap();

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public long f3816T = -9223372036854775807L;

    public c(H0.c cVar, U4.b bVar, s sVar) {
        this.f3803G = cVar;
        this.f3804H = sVar;
        this.f3805I = bVar;
    }

    public final l a(Uri uri, boolean z7) {
        HashMap map = this.f3806J;
        l lVar = ((b) map.get(uri)).f3793J;
        if (lVar != null && z7) {
            if (!uri.equals(this.f3813Q)) {
                List list = this.f3812P.f3909e;
                for (int i8 = 0; i8 < list.size(); i8++) {
                    if (uri.equals(((n) list.get(i8)).f3901a)) {
                        l lVar2 = this.f3814R;
                        if (lVar2 != null && lVar2.f3889o) {
                            break;
                        }
                        this.f3813Q = uri;
                        b bVar = (b) map.get(uri);
                        l lVar3 = bVar.f3793J;
                        if (lVar3 != null && lVar3.f3889o) {
                            this.f3814R = lVar3;
                            ((H0.o) this.f3811O).u(lVar3);
                            break;
                        }
                        bVar.f(b(uri));
                        break;
                    }
                }
            }
            b bVar2 = (b) map.get(uri);
            l lVar4 = bVar2.f3793J;
            if (!bVar2.f3800Q) {
                bVar2.f3800Q = true;
                if (lVar4 != null && !lVar4.f3889o) {
                    bVar2.d(true);
                }
            }
        }
        return lVar;
    }

    public final Uri b(Uri uri) {
        h hVar;
        l lVar = this.f3814R;
        if (lVar == null || !lVar.f3896v.f3877e || (hVar = (h) ((i0) lVar.f3894t).get(uri)) == null) {
            return uri;
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.appendQueryParameter("_HLS_msn", String.valueOf(hVar.f3858b));
        int i8 = hVar.f3859c;
        if (i8 != -1) {
            builderBuildUpon.appendQueryParameter("_HLS_part", String.valueOf(i8));
        }
        return builderBuildUpon.build();
    }

    @Override // S0.h
    public final void c(S0.j jVar, long j8, long j9, boolean z7) {
        S0.p pVar = (S0.p) jVar;
        long j10 = pVar.f6369G;
        M m7 = pVar.f6372J;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        this.f3805I.getClass();
        this.f3808L.c(c0292p, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
    }

    public final boolean d(Uri uri) {
        int i8;
        b bVar = (b) this.f3806J.get(uri);
        if (bVar.f3793J == null) {
            return false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jMax = Math.max(30000L, p117p0.M.e0(bVar.f3793J.f3895u));
        l lVar = bVar.f3793J;
        return lVar.f3889o || (i8 = lVar.f3878d) == 2 || i8 == 1 || bVar.f3794K + jMax > jElapsedRealtime;
    }

    @Override // S0.h
    public final S0.g n(S0.j jVar, long j8, long j9, IOException iOException, int i8) {
        long jMin;
        S0.p pVar = (S0.p) jVar;
        long j10 = pVar.f6369G;
        M m7 = pVar.f6372J;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        this.f3805I.getClass();
        if (!(iOException instanceof P) && !(iOException instanceof FileNotFoundException) && !(iOException instanceof p141s0.w) && !(iOException instanceof S0.l)) {
            int i9 = C3185j.f29946H;
            Throwable cause = iOException;
            while (true) {
                if (cause == null) {
                    jMin = Math.min((i8 - 1) * 1000, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
                    break;
                }
                if ((cause instanceof C3185j) && ((C3185j) cause).f29947G == 2008) {
                    jMin = -9223372036854775807L;
                    break;
                }
                cause = cause.getCause();
            }
        } else {
            jMin = -9223372036854775807L;
            break;
        }
        boolean z7 = jMin == -9223372036854775807L;
        this.f3808L.f(c0292p, pVar.f6371I, iOException, z7);
        return z7 ? S0.m.f6365L : S0.m.c(jMin, false);
    }

    @Override // S0.h
    public final void o(S0.j jVar, long j8, long j9) {
        o oVar;
        S0.p pVar = (S0.p) jVar;
        p pVar2 = (p) pVar.f6374L;
        boolean z7 = pVar2 instanceof l;
        if (z7) {
            String str = pVar2.f3918a;
            o oVar2 = o.f3907n;
            Uri uri = Uri.parse(str);
            C3135s c3135s = new C3135s();
            c3135s.f26983a = "0";
            c3135s.f26995m = O.p("application/x-mpegURL");
            oVar = new o(HttpUrl.FRAGMENT_ENCODE_SET, Collections.emptyList(), Collections.singletonList(new n(uri, new C3136t(c3135s), null, null, null, null)), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
        } else {
            oVar = (o) pVar2;
        }
        this.f3812P = oVar;
        this.f3813Q = ((n) oVar.f3909e.get(0)).f3901a;
        this.f3807K.add(new a(this));
        List list = oVar.f3908d;
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            Uri uri2 = (Uri) list.get(i8);
            this.f3806J.put(uri2, new b(this, uri2));
        }
        M m7 = pVar.f6372J;
        Uri uri3 = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        b bVar = (b) this.f3806J.get(this.f3813Q);
        if (z7) {
            bVar.g((l) pVar2, c0292p);
        } else {
            bVar.d(false);
        }
        this.f3805I.getClass();
        this.f3808L.d(c0292p, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
    }

    @Override // S0.h
    public final void p(S0.j jVar, long j8, long j9, int i8) {
        C0292p c0292p;
        S0.p pVar = (S0.p) jVar;
        if (i8 == 0) {
            c0292p = new C0292p(pVar.f6369G, pVar.f6370H, j8);
        } else {
            long j10 = pVar.f6369G;
            M m7 = pVar.f6372J;
            Uri uri = m7.f29910c;
            c0292p = new C0292p(m7.f29911d, j9);
        }
        this.f3808L.g(c0292p, pVar.f6371I, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, i8);
    }
}
