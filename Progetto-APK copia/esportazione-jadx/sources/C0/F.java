package C0;

import B0.C0072w;
import B0.O;
import D0.C0130u;
import O0.C0300y;
import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import android.util.SparseArray;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;
import p039f.RunnableC3004t;
import p094m0.AbstractC3124g;
import p094m0.C3131n;
import p094m0.C3136t;
import p094m0.P;
import p094m0.Q;
import p094m0.Y;
import p094m0.d0;
import p094m0.e0;
import p094m0.f0;
import p094m0.l0;
import p094m0.m0;
import p117p0.AbstractC3164b;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class F implements InterfaceC0078c, G {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f1251A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f1252B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1253a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C f1255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final PlaybackSession f1256d;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f1262j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PlaybackMetrics.Builder f1263k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1264l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Q f1267o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public F.d f1268p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public F.d f1269q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public F.d f1270r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public C3136t f1271s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public C3136t f1272t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public C3136t f1273u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1274v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1275w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1276x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1277y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f1278z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f1254b = AbstractC3164b.s();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final e0 f1258f = new e0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final d0 f1259g = new d0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashMap f1261i = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f1260h = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f1257e = SystemClock.elapsedRealtime();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1265m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1266n = 0;

    public F(Context context, PlaybackSession playbackSession) {
        this.f1253a = context.getApplicationContext();
        this.f1256d = playbackSession;
        C c8 = new C();
        this.f1255c = c8;
        c8.f1247d = this;
    }

    public final boolean a(F.d dVar) {
        String str;
        if (dVar != null) {
            String str2 = (String) dVar.f2963J;
            C c8 = this.f1255c;
            synchronized (c8) {
                str = c8.f1249f;
            }
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final void b() {
        PlaybackMetrics.Builder builder = this.f1263k;
        if (builder != null && this.f1252B) {
            builder.setAudioUnderrunCount(this.f1251A);
            this.f1263k.setVideoFramesDropped(this.f1277y);
            this.f1263k.setVideoFramesPlayed(this.f1278z);
            Long l4 = (Long) this.f1260h.get(this.f1262j);
            this.f1263k.setNetworkTransferDurationMillis(l4 == null ? 0L : l4.longValue());
            Long l8 = (Long) this.f1261i.get(this.f1262j);
            this.f1263k.setNetworkBytesRead(l8 == null ? 0L : l8.longValue());
            this.f1263k.setStreamSource((l8 == null || l8.longValue() <= 0) ? 0 : 1);
            this.f1254b.execute(new RunnableC3004t(21, this, this.f1263k.build()));
        }
        this.f1263k = null;
        this.f1262j = null;
        this.f1251A = 0;
        this.f1277y = 0;
        this.f1278z = 0;
        this.f1271s = null;
        this.f1272t = null;
        this.f1273u = null;
        this.f1252B = false;
    }

    public final void c(f0 f0Var, C0300y c0300y) {
        PlaybackMetrics.Builder builder = this.f1263k;
        if (c0300y == null) {
            return;
        }
        int iB = f0Var.b(c0300y.f5257a);
        if (iB == -1) {
            return;
        }
        d0 d0Var = this.f1259g;
        int I7 = 0;
        f0Var.g(iB, d0Var, false);
        int i8 = d0Var.f26827c;
        e0 e0Var = this.f1258f;
        f0Var.o(i8, e0Var);
        p094m0.E e8 = e0Var.f26836c.f26702b;
        if (e8 != null) {
            String str = e8.f26676b;
            if (str != null) {
                switch (str) {
                    case "application/x-mpegURL":
                        I7 = 2;
                        break;
                    case "application/vnd.ms-sstr+xml":
                        I7 = 1;
                        break;
                    case "application/dash+xml":
                        break;
                    case "application/x-rtsp":
                        I7 = 3;
                        break;
                    default:
                        I7 = 4;
                        break;
                }
            } else {
                I7 = M.I(e8.f26675a);
            }
            if (I7 == 0) {
                I7 = 3;
            } else if (I7 != 1) {
                I7 = I7 != 2 ? 1 : 4;
            } else {
                I7 = 5;
            }
        }
        builder.setStreamType(I7);
        if (e0Var.f26846m != -9223372036854775807L && !e0Var.f26844k && !e0Var.f26842i && !e0Var.a()) {
            builder.setMediaDurationMillis(M.e0(e0Var.f26846m));
        }
        builder.setPlaybackType(e0Var.a() ? 2 : 1);
        this.f1252B = true;
    }

    /* JADX WARN: Code duplicated, block: B:224:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:242:0x044a  */
    /* JADX WARN: Code duplicated, block: B:243:0x044c  */
    /* JADX WARN: Code duplicated, block: B:251:0x0466  */
    /* JADX WARN: Code duplicated, block: B:252:0x0468  */
    public final void d(Y y7, p096m2.l lVar) {
        int i8;
        boolean z7;
        N.r rVar;
        N.r rVar2;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z8;
        C3136t c3136t;
        int i13;
        int i14;
        C3131n c3131n;
        int i15;
        if (((p094m0.r) lVar.f27231H).f26967a.size() == 0) {
            return;
        }
        int i16 = 0;
        for (int i17 = 0; i17 < ((p094m0.r) lVar.f27231H).f26967a.size(); i17++) {
            int iA = ((p094m0.r) lVar.f27231H).a(i17);
            C0077b c0077b = (C0077b) ((SparseArray) lVar.f27232I).get(iA);
            c0077b.getClass();
            if (iA == 0) {
                C c8 = this.f1255c;
                synchronized (c8) {
                    try {
                        c8.f1247d.getClass();
                        f0 f0Var = c8.f1248e;
                        c8.f1248e = c0077b.f1284b;
                        Iterator it = c8.f1246c.values().iterator();
                        while (it.hasNext()) {
                            B b8 = (B) it.next();
                            if (!b8.b(f0Var, c8.f1248e) || b8.a(c0077b)) {
                                it.remove();
                                if (b8.f1239e) {
                                    if (b8.f1235a.equals(c8.f1249f)) {
                                        c8.a(b8);
                                    }
                                    ((F) c8.f1247d).e(c0077b, b8.f1235a);
                                }
                            }
                        }
                        c8.e(c0077b);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else if (iA == 11) {
                this.f1255c.g(c0077b, this.f1264l);
            } else {
                this.f1255c.f(c0077b);
            }
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (lVar.h(0)) {
            C0077b c0077b2 = (C0077b) ((SparseArray) lVar.f27232I).get(0);
            c0077b2.getClass();
            if (this.f1263k != null) {
                c(c0077b2.f1284b, c0077b2.f1286d);
            }
        }
        int i18 = 2;
        if (lVar.h(2) && this.f1263k != null) {
            z4.F fListIterator = ((O) y7).y().f26959a.listIterator(0);
            loop2: while (true) {
                if (!fListIterator.hasNext()) {
                    c3131n = null;
                    break;
                }
                l0 l0Var = (l0) fListIterator.next();
                for (int i19 = 0; i19 < l0Var.f26948a; i19++) {
                    if (l0Var.f26952e[i19] && (c3131n = l0Var.f26949b.f26860d[i19].f27045s) != null) {
                        break loop2;
                    }
                }
            }
            if (c3131n != null) {
                PlaybackMetrics.Builder builder = this.f1263k;
                int i20 = 0;
                while (true) {
                    if (i20 >= c3131n.f26963J) {
                        i15 = 1;
                        break;
                    }
                    UUID uuid = c3131n.f26960G[i20].f26954H;
                    if (uuid.equals(AbstractC3124g.f26855d)) {
                        i15 = 3;
                        break;
                    } else if (uuid.equals(AbstractC3124g.f26856e)) {
                        i15 = 2;
                        break;
                    } else {
                        if (uuid.equals(AbstractC3124g.f26854c)) {
                            i15 = 6;
                            break;
                        }
                        i20++;
                    }
                }
                builder.setDrmType(i15);
            }
        }
        if (lVar.h(1011)) {
            this.f1251A++;
        }
        Q q7 = this.f1267o;
        int i21 = 5;
        if (q7 == null) {
            i9 = 1;
        } else {
            boolean z9 = this.f1275w == 4;
            int i22 = q7.f26783G;
            int i23 = 20;
            if (i22 == 1001) {
                rVar = new N.r(i23, i16, i18, i16);
            } else {
                if (q7 instanceof C0072w) {
                    C0072w c0072w = (C0072w) q7;
                    z7 = c0072w.f1112I == 1;
                    i8 = c0072w.f1116M;
                } else {
                    i8 = 0;
                    z7 = false;
                }
                Throwable cause = q7.getCause();
                cause.getClass();
                int i24 = 27;
                int i25 = 23;
                if (cause instanceof IOException) {
                    if (cause instanceof p141s0.A) {
                        rVar = new N.r(i21, ((p141s0.A) cause).f29862J, i18, i16);
                    } else if ((cause instanceof p141s0.z) || (cause instanceof P)) {
                        rVar = new N.r(z9 ? 10 : 11, i16, i18, i16);
                    } else {
                        boolean z10 = cause instanceof p141s0.y;
                        if (z10 || (cause instanceof p141s0.P)) {
                            if (p117p0.C.b(this.f1253a).c() == 1) {
                                rVar = new N.r(3, i16, i18, i16);
                            } else {
                                Throwable cause2 = cause.getCause();
                                if (cause2 instanceof UnknownHostException) {
                                    rVar = new N.r(6, i16, i18, i16);
                                } else if (cause2 instanceof SocketTimeoutException) {
                                    rVar = new N.r(7, i16, i18, i16);
                                } else {
                                    rVar = (z10 && ((p141s0.y) cause).f30014I == 1) ? new N.r(4, i16, i18, i16) : new N.r(8, i16, i18, i16);
                                }
                            }
                        } else if (i22 == 1002) {
                            rVar = new N.r(21, i16, i18, i16);
                        } else if (cause instanceof G0.k) {
                            Throwable cause3 = cause.getCause();
                            cause3.getClass();
                            if (cause3 instanceof MediaDrm.MediaDrmStateException) {
                                int iX = M.x(((MediaDrm.MediaDrmStateException) cause3).getDiagnosticInfo());
                                switch (M.w(iX)) {
                                    case 6002:
                                        i24 = 24;
                                        break;
                                    case 6003:
                                        i24 = 28;
                                        break;
                                    case 6004:
                                        i24 = 25;
                                        break;
                                    case 6005:
                                        i24 = 26;
                                        break;
                                }
                                rVar = new N.r(i24, iX, i18, i16);
                            } else if (cause3 instanceof MediaDrmResetException) {
                                rVar = new N.r(i24, i16, i18, i16);
                            } else if (cause3 instanceof NotProvisionedException) {
                                rVar = new N.r(24, i16, i18, i16);
                            } else if (cause3 instanceof DeniedByServerException) {
                                rVar = new N.r(29, i16, i18, i16);
                            } else if (cause3 instanceof G0.C) {
                                rVar = new N.r(i25, i16, i18, i16);
                            } else {
                                rVar = cause3 instanceof G0.g ? new N.r(28, i16, i18, i16) : new N.r(30, i16, i18, i16);
                            }
                        } else if ((cause instanceof p141s0.u) && (cause.getCause() instanceof FileNotFoundException)) {
                            Throwable cause4 = cause.getCause();
                            cause4.getClass();
                            Throwable cause5 = cause4.getCause();
                            rVar = ((cause5 instanceof ErrnoException) && ((ErrnoException) cause5).errno == OsConstants.EACCES) ? new N.r(32, i16, i18, i16) : new N.r(31, i16, i18, i16);
                        } else {
                            rVar = new N.r(9, i16, i18, i16);
                        }
                    }
                } else if (z7 && (i8 == 0 || i8 == 1)) {
                    rVar = new N.r(35, i16, i18, i16);
                } else if (z7 && i8 == 3) {
                    rVar = new N.r(15, i16, i18, i16);
                } else if (z7 && i8 == 2) {
                    rVar = new N.r(i25, i16, i18, i16);
                } else {
                    if (cause instanceof K0.p) {
                        rVar2 = new N.r(13, M.x(((K0.p) cause).f4372J), i18, i16);
                    } else {
                        int i26 = 14;
                        if (cause instanceof K0.n) {
                            rVar = new N.r(i26, ((K0.n) cause).f4354G, i18, i16);
                        } else if (cause instanceof OutOfMemoryError) {
                            rVar = new N.r(i26, i16, i18, i16);
                        } else if (cause instanceof D0.r) {
                            rVar = new N.r(17, ((D0.r) cause).f1970G, i18, i16);
                        } else if (cause instanceof C0130u) {
                            rVar = new N.r(18, ((C0130u) cause).f1973G, i18, i16);
                        } else if (cause instanceof MediaCodec.CryptoException) {
                            int errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                            switch (M.w(errorCode)) {
                                case 6002:
                                    i24 = 24;
                                    break;
                                case 6003:
                                    i24 = 28;
                                    break;
                                case 6004:
                                    i24 = 25;
                                    break;
                                case 6005:
                                    i24 = 26;
                                    break;
                            }
                            rVar2 = new N.r(i24, errorCode, i18, i16);
                        } else {
                            rVar = new N.r(22, i16, i18, i16);
                        }
                    }
                    rVar = rVar2;
                }
                this.f1254b.execute(new RunnableC3004t(20, this, new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f1257e).setErrorCode(rVar.f4919H).setSubErrorCode(rVar.f4920I).setException(q7).build()));
                i9 = 1;
                this.f1252B = true;
                this.f1267o = null;
            }
            this.f1254b.execute(new RunnableC3004t(20, this, new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f1257e).setErrorCode(rVar.f4919H).setSubErrorCode(rVar.f4920I).setException(q7).build()));
            i9 = 1;
            this.f1252B = true;
            this.f1267o = null;
        }
        if (lVar.h(2)) {
            m0 m0VarY = ((O) y7).y();
            boolean zB = m0VarY.b(2);
            boolean zB2 = m0VarY.b(i9);
            boolean zB3 = m0VarY.b(3);
            if (zB || zB2 || zB3) {
                if (zB) {
                    c3136t = null;
                } else {
                    if (Objects.equals(this.f1271s, null)) {
                        c3136t = null;
                    } else {
                        int i27 = this.f1271s == null ? 1 : 0;
                        this.f1271s = null;
                        c3136t = null;
                        i10 = 10;
                        f(1, jElapsedRealtime, null, i27);
                    }
                    if (!zB2 && !Objects.equals(this.f1272t, c3136t)) {
                        if (this.f1272t == null) {
                            i14 = 1;
                        } else {
                            i14 = 0;
                        }
                        this.f1272t = c3136t;
                        f(0, jElapsedRealtime, c3136t, i14);
                    }
                    if (!zB3 && !Objects.equals(this.f1273u, c3136t)) {
                        if (this.f1273u == null) {
                            i13 = 1;
                        } else {
                            i13 = 0;
                        }
                        this.f1273u = c3136t;
                        f(2, jElapsedRealtime, c3136t, i13);
                    }
                }
                i10 = 10;
                if (!zB2) {
                    if (this.f1272t == null) {
                        i14 = 1;
                    } else {
                        i14 = 0;
                    }
                    this.f1272t = c3136t;
                    f(0, jElapsedRealtime, c3136t, i14);
                }
                if (!zB3) {
                    if (this.f1273u == null) {
                        i13 = 1;
                    } else {
                        i13 = 0;
                    }
                    this.f1273u = c3136t;
                    f(2, jElapsedRealtime, c3136t, i13);
                }
            } else {
                i10 = 10;
            }
        } else {
            i10 = 10;
        }
        if (a(this.f1268p)) {
            F.d dVar = this.f1268p;
            C3136t c3136t2 = (C3136t) dVar.f2962I;
            if (c3136t2.f27049w != -1) {
                int i28 = dVar.f2961H;
                if (!Objects.equals(this.f1271s, c3136t2)) {
                    int i29 = (this.f1271s == null && i28 == 0) ? 1 : i28;
                    this.f1271s = c3136t2;
                    f(1, jElapsedRealtime, c3136t2, i29);
                }
                this.f1268p = null;
            }
        }
        if (a(this.f1269q)) {
            F.d dVar2 = this.f1269q;
            C3136t c3136t3 = (C3136t) dVar2.f2962I;
            int i30 = dVar2.f2961H;
            if (!Objects.equals(this.f1272t, c3136t3)) {
                int i31 = (this.f1272t == null && i30 == 0) ? 1 : i30;
                this.f1272t = c3136t3;
                f(0, jElapsedRealtime, c3136t3, i31);
            }
            this.f1269q = null;
        }
        if (a(this.f1270r)) {
            F.d dVar3 = this.f1270r;
            C3136t c3136t4 = (C3136t) dVar3.f2962I;
            int i32 = dVar3.f2961H;
            if (!Objects.equals(this.f1273u, c3136t4)) {
                int i33 = (this.f1273u == null && i32 == 0) ? 1 : i32;
                this.f1273u = c3136t4;
                f(2, jElapsedRealtime, c3136t4, i33);
            }
            this.f1270r = null;
        }
        switch (p117p0.C.b(this.f1253a).c()) {
            case 0:
                i11 = 0;
                break;
            case 1:
                i11 = 9;
                break;
            case 2:
                i11 = 2;
                break;
            case 3:
                i11 = 4;
                break;
            case 4:
                i11 = 5;
                break;
            case 5:
                i11 = 6;
                break;
            case 6:
            case 8:
            default:
                i11 = 1;
                break;
            case 7:
                i11 = 3;
                break;
            case 9:
                i11 = 8;
                break;
            case 10:
                i11 = 7;
                break;
        }
        if (i11 != this.f1266n) {
            this.f1266n = i11;
            this.f1254b.execute(new RunnableC3004t(19, this, new NetworkEvent.Builder().setNetworkType(i11).setTimeSinceCreatedMillis(jElapsedRealtime - this.f1257e).build()));
        }
        O o4 = (O) y7;
        if (o4.C() != 2) {
            this.f1274v = false;
        }
        o4.c0();
        if (o4.f778N0.f1097f == null) {
            this.f1276x = false;
        } else if (lVar.h(i10)) {
            this.f1276x = true;
        }
        int iC = o4.C();
        if (this.f1274v) {
            z8 = true;
            i12 = 5;
        } else if (this.f1276x) {
            z8 = true;
            i12 = 13;
        } else if (iC == 4) {
            z8 = true;
            i12 = 11;
        } else {
            i12 = 12;
            if (iC == 2) {
                int i34 = this.f1265m;
                if (i34 == 0 || i34 == 2 || i34 == 12) {
                    z8 = true;
                    i12 = 2;
                } else if (o4.B()) {
                    o4.c0();
                    i12 = o4.f778N0.f1105n != 0 ? 10 : 6;
                    z8 = true;
                } else {
                    z8 = true;
                    i12 = 7;
                }
            } else if (iC != 3) {
                z8 = true;
                if (iC != 1 || this.f1265m == 0) {
                    i12 = this.f1265m;
                }
            } else if (o4.B()) {
                o4.c0();
                i12 = o4.f778N0.f1105n != 0 ? 9 : 3;
                z8 = true;
            } else {
                z8 = true;
                i12 = 4;
            }
        }
        if (this.f1265m != i12) {
            this.f1265m = i12;
            this.f1252B = z8;
            this.f1254b.execute(new RunnableC3004t(22, this, new PlaybackStateEvent.Builder().setState(this.f1265m).setTimeSinceCreatedMillis(jElapsedRealtime - this.f1257e).build()));
        }
        if (lVar.h(1028)) {
            C c9 = this.f1255c;
            C0077b c0077b3 = (C0077b) ((SparseArray) lVar.f27232I).get(1028);
            c0077b3.getClass();
            c9.b(c0077b3);
        }
    }

    public final void e(C0077b c0077b, String str) {
        C0300y c0300y = c0077b.f1286d;
        if ((c0300y == null || !c0300y.b()) && str.equals(this.f1262j)) {
            b();
        }
        this.f1260h.remove(str);
        this.f1261i.remove(str);
    }

    public final void f(int i8, long j8, C3136t c3136t, int i9) {
        int i10;
        TrackChangeEvent.Builder timeSinceCreatedMillis = D.f(i8).setTimeSinceCreatedMillis(j8 - this.f1257e);
        if (c3136t != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i9 != 1) {
                i10 = 3;
                if (i9 != 2) {
                    i10 = i9 != 3 ? 1 : 4;
                }
            } else {
                i10 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i10);
            String str = c3136t.f27040n;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = c3136t.f27041o;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = c3136t.f27037k;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i11 = c3136t.f27036j;
            if (i11 != -1) {
                timeSinceCreatedMillis.setBitrate(i11);
            }
            int i12 = c3136t.f27048v;
            if (i12 != -1) {
                timeSinceCreatedMillis.setWidth(i12);
            }
            int i13 = c3136t.f27049w;
            if (i13 != -1) {
                timeSinceCreatedMillis.setHeight(i13);
            }
            int i14 = c3136t.f27016G;
            if (i14 != -1) {
                timeSinceCreatedMillis.setChannelCount(i14);
            }
            int i15 = c3136t.f27017H;
            if (i15 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i15);
            }
            String str4 = c3136t.f27030d;
            if (str4 != null) {
                String str5 = M.f28050a;
                String[] strArrSplit = str4.split("-", -1);
                Pair pairCreate = Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                Object obj = pairCreate.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f8 = c3136t.f27052z;
            if (f8 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f8);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.f1252B = true;
        this.f1254b.execute(new RunnableC3004t(18, this, timeSinceCreatedMillis.build()));
    }
}
