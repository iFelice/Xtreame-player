package E0;

import F0.v;
import I0.u;
import O0.C0292p;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Objects;
import org.eclipse.paho.client.mqttv3.DisconnectedBufferOptions;
import p094m0.P;
import p117p0.x;
import p141s0.C3185j;
import p141s0.M;
import p141s0.w;

/* JADX INFO: loaded from: classes.dex */
public final class i implements S0.h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2491G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f2492H;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i(j jVar, int i8) {
        this((Object) jVar, 0);
        this.f2491G = i8;
        int i9 = 1;
        if (i8 != 1) {
        } else {
            this((Object) jVar, i9);
        }
    }

    public final void a(S0.p pVar, long j8, long j9) {
        switch (this.f2491G) {
            case 0:
                j jVar = (j) this.f2492H;
                jVar.getClass();
                long j10 = pVar.f6369G;
                M m7 = pVar.f6372J;
                Uri uri = m7.f29910c;
                C0292p c0292p = new C0292p(m7.f29911d, j9);
                jVar.f2514m.getClass();
                jVar.f2518q.d(c0292p, pVar.f6371I, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
                F0.c cVar = (F0.c) pVar.f6374L;
                F0.c cVar2 = jVar.f2500H;
                int size = cVar2 == null ? 0 : cVar2.f3026m.size();
                long j11 = cVar.b(0).f3050b;
                int i8 = 0;
                while (i8 < size && jVar.f2500H.b(i8).f3050b < j11) {
                    i8++;
                }
                if (cVar.f3017d) {
                    if (size - i8 > cVar.f3026m.size()) {
                        x.f("DashMediaSource", "Loaded out of sync manifest");
                    } else {
                        long j12 = jVar.f2506N;
                        if (j12 == -9223372036854775807L || cVar.f3021h * 1000 > j12) {
                            jVar.f2505M = 0;
                        } else {
                            x.f("DashMediaSource", "Loaded stale dynamic manifest: " + cVar.f3021h + ", " + jVar.f2506N);
                        }
                    }
                    int i9 = jVar.f2505M;
                    jVar.f2505M = i9 + 1;
                    if (i9 < jVar.f2514m.Y(pVar.f6371I)) {
                        jVar.f2496D.postDelayed(jVar.f2523v, Math.min((jVar.f2505M - 1) * 1000, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT));
                        return;
                    } else {
                        jVar.f2495C = new u();
                        return;
                    }
                }
                jVar.f2500H = cVar;
                jVar.f2501I = cVar.f3017d & jVar.f2501I;
                jVar.f2502J = j8 - j9;
                jVar.f2503K = j8;
                jVar.f2507O += i8;
                synchronized (jVar.f2521t) {
                    if (pVar.f6370H.f29963a.equals(jVar.f2498F)) {
                        Uri uri2 = jVar.f2500H.f3024k;
                        if (uri2 == null) {
                            Uri uriBuild = pVar.f6372J.f29910c;
                            if (uriBuild.getQueryParameter("CMCD") != null) {
                                Uri.Builder builderBuildUpon = uriBuild.buildUpon();
                                builderBuildUpon.clearQuery();
                                for (String str : uriBuild.getQueryParameterNames()) {
                                    if (!str.equals("CMCD")) {
                                        Iterator<String> it = uriBuild.getQueryParameters(str).iterator();
                                        while (it.hasNext()) {
                                            builderBuildUpon.appendQueryParameter(str, it.next());
                                        }
                                    }
                                }
                                uriBuild = builderBuildUpon.build();
                            }
                            uri2 = uriBuild;
                        }
                        jVar.f2498F = uri2;
                    }
                    break;
                }
                F0.c cVar3 = jVar.f2500H;
                if (!cVar3.f3017d || jVar.f2504L != -9223372036854775807L) {
                    jVar.x(true);
                    return;
                }
                v vVar = cVar3.f3022i;
                if (vVar == null) {
                    jVar.u();
                    return;
                }
                String str2 = vVar.f3095b;
                if (Objects.equals(str2, "urn:mpeg:dash:utc:direct:2014") || Objects.equals(str2, "urn:mpeg:dash:utc:direct:2012")) {
                    try {
                        jVar.f2504L = p117p0.M.U(vVar.f3096c) - jVar.f2503K;
                        jVar.x(true);
                        return;
                    } catch (P e8) {
                        jVar.w(e8);
                        return;
                    }
                }
                if (Objects.equals(str2, "urn:mpeg:dash:utc:http-iso:2014") || Objects.equals(str2, "urn:mpeg:dash:utc:http-iso:2012")) {
                    jVar.y(vVar, new h());
                    return;
                }
                if (Objects.equals(str2, "urn:mpeg:dash:utc:http-xsdate:2014") || Objects.equals(str2, "urn:mpeg:dash:utc:http-xsdate:2012")) {
                    jVar.y(vVar, new U4.b());
                    return;
                } else if (Objects.equals(str2, "urn:mpeg:dash:utc:ntp:2014") || Objects.equals(str2, "urn:mpeg:dash:utc:ntp:2012")) {
                    jVar.u();
                    return;
                } else {
                    jVar.w(new IOException("Unsupported UTC timing scheme"));
                    return;
                }
            default:
                j jVar2 = (j) this.f2492H;
                jVar2.getClass();
                long j13 = pVar.f6369G;
                M m8 = pVar.f6372J;
                Uri uri3 = m8.f29910c;
                C0292p c0292p2 = new C0292p(m8.f29911d, j9);
                jVar2.f2514m.getClass();
                jVar2.f2518q.d(c0292p2, pVar.f6371I, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
                jVar2.f2504L = ((Long) pVar.f6374L).longValue() - j8;
                jVar2.x(true);
                return;
        }
    }

    public final S0.g b(S0.p pVar, long j8, long j9, IOException iOException, int i8) {
        long jMin;
        int i9 = this.f2491G;
        Object obj = this.f2492H;
        switch (i9) {
            case 0:
                j jVar = (j) obj;
                jVar.getClass();
                long j10 = pVar.f6369G;
                M m7 = pVar.f6372J;
                Uri uri = m7.f29910c;
                C0292p c0292p = new C0292p(m7.f29911d, j9);
                jVar.f2514m.getClass();
                if ((iOException instanceof P) || (iOException instanceof FileNotFoundException) || (iOException instanceof w) || (iOException instanceof S0.l)) {
                    jMin = -9223372036854775807L;
                } else {
                    int i10 = C3185j.f29946H;
                    Throwable cause = iOException;
                    while (true) {
                        if (cause == null) {
                            jMin = Math.min((i8 - 1) * 1000, DisconnectedBufferOptions.DISCONNECTED_BUFFER_SIZE_DEFAULT);
                        } else if ((cause instanceof C3185j) && ((C3185j) cause).f29947G == 2008) {
                            jMin = -9223372036854775807L;
                        } else {
                            cause = cause.getCause();
                        }
                    }
                }
                S0.g gVarC = jMin == -9223372036854775807L ? S0.m.f6365L : S0.m.c(jMin, false);
                jVar.f2518q.f(c0292p, pVar.f6371I, iOException, true ^ gVarC.a());
                return gVarC;
            default:
                j jVar2 = (j) obj;
                jVar2.getClass();
                long j11 = pVar.f6369G;
                M m8 = pVar.f6372J;
                Uri uri2 = m8.f29910c;
                jVar2.f2518q.f(new C0292p(m8.f29911d, j9), pVar.f6371I, iOException, true);
                jVar2.f2514m.getClass();
                jVar2.w(iOException);
                return S0.m.f6364K;
        }
    }

    @Override // S0.h
    public final void c(S0.j jVar, long j8, long j9, boolean z7) {
        Object obj = this.f2492H;
        int i8 = this.f2491G;
        switch (i8) {
            case 0:
                S0.p pVar = (S0.p) jVar;
                switch (i8) {
                    case 0:
                        ((j) obj).v(pVar, j8, j9);
                        break;
                    default:
                        ((j) obj).v(pVar, j8, j9);
                        break;
                }
                break;
            case 1:
                S0.p pVar2 = (S0.p) jVar;
                switch (i8) {
                    case 0:
                        ((j) obj).v(pVar2, j8, j9);
                        break;
                    default:
                        ((j) obj).v(pVar2, j8, j9);
                        break;
                }
                break;
        }
    }

    @Override // S0.h
    public final S0.g n(S0.j jVar, long j8, long j9, IOException iOException, int i8) {
        switch (this.f2491G) {
            case 0:
                return b((S0.p) jVar, j8, j9, iOException, i8);
            case 1:
                return b((S0.p) jVar, j8, j9, iOException, i8);
            default:
                T0.b bVar = (T0.b) this.f2492H;
                if (bVar != null) {
                    ((f) bVar).f2479G.w(iOException);
                }
                return S0.m.f6364K;
        }
    }

    @Override // S0.h
    public final void o(S0.j jVar, long j8, long j9) {
        boolean z7;
        switch (this.f2491G) {
            case 0:
                a((S0.p) jVar, j8, j9);
                return;
            case 1:
                a((S0.p) jVar, j8, j9);
                return;
            default:
                T0.b bVar = (T0.b) this.f2492H;
                if (bVar != null) {
                    synchronized (T0.c.f6514b) {
                        z7 = T0.c.f6515c;
                        break;
                    }
                    if (z7) {
                        ((f) bVar).a();
                        return;
                    } else {
                        ((f) bVar).f2479G.w(new IOException(new ConcurrentModificationException()));
                        return;
                    }
                }
                return;
        }
    }

    @Override // S0.h
    public final void p(S0.j jVar, long j8, long j9, int i8) {
        C0292p c0292p;
        switch (this.f2491G) {
            case 0:
                S0.p pVar = (S0.p) jVar;
                j jVar2 = (j) this.f2492H;
                jVar2.getClass();
                if (i8 == 0) {
                    c0292p = new C0292p(pVar.f6369G, pVar.f6370H, j8);
                } else {
                    long j10 = pVar.f6369G;
                    M m7 = pVar.f6372J;
                    Uri uri = m7.f29910c;
                    c0292p = new C0292p(m7.f29911d, j9);
                }
                jVar2.f2518q.g(c0292p, pVar.f6371I, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, i8);
                break;
        }
    }

    public /* synthetic */ i(Object obj, int i8) {
        this.f2491G = i8;
        this.f2492H = obj;
    }
}
