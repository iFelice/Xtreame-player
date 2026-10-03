package U0;

import B0.AbstractC0051h;
import B0.C0053i;
import B0.C0055j;
import B0.C0072w;
import B0.Z;
import D0.RunnableC0121k;
import O0.C0300y;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.view.Surface;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.measurement.H1;
import p094m0.C3136t;
import p094m0.w0;

/* JADX INFO: renamed from: U0.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0335a extends AbstractC0051h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f6691G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f6692H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final x0 f6693I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p016c.g f6694J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p171w0.g f6695K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public C3136t f6696L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public C3136t f6697M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public p171w0.d f6698N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public p171w0.g f6699O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public VideoDecoderOutputBuffer f6700P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f6701Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public Object f6702R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public Surface f6703S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public A f6704T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public B f6705U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public G0.l f6706V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public G0.l f6707W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public int f6708X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f6709Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f6710Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public long f6711a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public long f6712b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f6713c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f6714d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f6715e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public w0 f6716f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public long f6717g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f6718h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f6719i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f6720j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public long f6721k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public C0053i f6722l0;

    public AbstractC0335a(long j8, Handler handler, N n7, int i8) {
        super(2);
        this.f6691G = j8;
        this.f6692H = i8;
        this.f6712b0 = -9223372036854775807L;
        this.f6694J = new p016c.g();
        this.f6695K = new p171w0.g(0, 0);
        this.f6693I = new x0(handler, n7);
        this.f6708X = 0;
        this.f6701Q = -1;
        this.f6710Z = 0;
        this.f6722l0 = new C0053i();
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00cc  */
    public final boolean a(long j8) throws C0072w {
        boolean z7;
        int iSkipSource;
        if (this.f6700P == null) {
            p171w0.d dVar = this.f6698N;
            dVar.getClass();
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) dVar.dequeueOutputBuffer();
            this.f6700P = videoDecoderOutputBuffer;
            if (videoDecoderOutputBuffer == null) {
                return false;
            }
            C0053i c0053i = this.f6722l0;
            int i8 = c0053i.f969f;
            int i9 = videoDecoderOutputBuffer.skippedOutputBufferCount;
            c0053i.f969f = i8 + i9;
            this.f6720j0 -= i9;
        }
        if (this.f6700P.isEndOfStream()) {
            if (this.f6708X == 2) {
                f();
                d();
            } else {
                this.f6700P.release();
                this.f6700P = null;
                this.f6715e0 = true;
            }
            return false;
        }
        if (this.f6711a0 == -9223372036854775807L) {
            this.f6711a0 = j8;
        }
        VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = this.f6700P;
        videoDecoderOutputBuffer2.getClass();
        long j9 = videoDecoderOutputBuffer2.timeUs;
        long j10 = j9 - j8;
        if (this.f6701Q != -1) {
            p016c.g gVar = this.f6694J;
            C3136t c3136t = (C3136t) gVar.k(j9);
            if (c3136t != null) {
                this.f6697M = c3136t;
            } else if (this.f6697M == null) {
                this.f6697M = (C3136t) gVar.j();
            }
            long streamOffsetUs = j9 - getStreamOffsetUs();
            boolean z8 = getState() == 2;
            int i10 = this.f6710Z;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 3) {
                        throw new IllegalStateException();
                    }
                    long jR = p117p0.M.R(SystemClock.elapsedRealtime()) - this.f6721k0;
                    if (!z8 || j10 >= -30000 || jR <= 100000) {
                        if (getState() != 2 && j8 != this.f6711a0) {
                            if (j10 < -500000 && (iSkipSource = skipSource(j8)) != 0) {
                                this.f6722l0.f973j++;
                                j(iSkipSource, this.f6720j0);
                                c();
                            } else if (j10 < -30000) {
                                j(0, 1);
                                videoDecoderOutputBuffer2.release();
                            } else if (j10 < 30000) {
                                C3136t c3136t2 = this.f6697M;
                                c3136t2.getClass();
                                g(videoDecoderOutputBuffer2, streamOffsetUs, c3136t2);
                            }
                        }
                        z7 = false;
                    }
                    z7 = true;
                }
                C3136t c3136t3 = this.f6697M;
                c3136t3.getClass();
                g(videoDecoderOutputBuffer2, streamOffsetUs, c3136t3);
                z7 = true;
            } else {
                if (z8) {
                    C3136t c3136t4 = this.f6697M;
                    c3136t4.getClass();
                    g(videoDecoderOutputBuffer2, streamOffsetUs, c3136t4);
                } else {
                    if (getState() != 2) {
                    }
                    z7 = false;
                }
                z7 = true;
            }
        } else if (j10 < -30000) {
            this.f6722l0.f969f++;
            videoDecoderOutputBuffer2.release();
            z7 = true;
        } else {
            z7 = false;
        }
        if (z7) {
            this.f6700P.getClass();
            this.f6720j0--;
            this.f6700P = null;
        }
        return z7;
    }

    public final boolean b() throws C0072w {
        p171w0.d dVar = this.f6698N;
        if (dVar == null || this.f6708X == 2 || this.f6714d0) {
            return false;
        }
        if (this.f6699O == null) {
            p171w0.g gVar = (p171w0.g) dVar.dequeueInputBuffer();
            this.f6699O = gVar;
            if (gVar == null) {
                return false;
            }
        }
        p171w0.g gVar2 = this.f6699O;
        gVar2.getClass();
        if (this.f6708X == 1) {
            gVar2.setFlags(4);
            p171w0.d dVar2 = this.f6698N;
            dVar2.getClass();
            dVar2.queueInputBuffer(gVar2);
            this.f6699O = null;
            this.f6708X = 2;
            return false;
        }
        Z formatHolder = getFormatHolder();
        int source = readSource(formatHolder, gVar2, 0);
        if (source == -5) {
            e(formatHolder);
            return true;
        }
        if (source != -4) {
            if (source == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        if (gVar2.isEndOfStream()) {
            this.f6714d0 = true;
            p171w0.d dVar3 = this.f6698N;
            dVar3.getClass();
            dVar3.queueInputBuffer(gVar2);
            this.f6699O = null;
            return false;
        }
        if (this.f6713c0) {
            long j8 = gVar2.f30906K;
            C3136t c3136t = this.f6696L;
            c3136t.getClass();
            this.f6694J.b(c3136t, j8);
            this.f6713c0 = false;
        }
        gVar2.g();
        gVar2.f30902G = this.f6696L;
        p171w0.d dVar4 = this.f6698N;
        dVar4.getClass();
        dVar4.queueInputBuffer(gVar2);
        this.f6720j0++;
        this.f6709Y = true;
        this.f6722l0.f966c++;
        this.f6699O = null;
        return true;
    }

    public final void c() throws C0072w {
        this.f6720j0 = 0;
        if (this.f6708X != 0) {
            f();
            d();
            return;
        }
        this.f6699O = null;
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.f6700P;
        if (videoDecoderOutputBuffer != null) {
            videoDecoderOutputBuffer.release();
            this.f6700P = null;
        }
        p171w0.d dVar = this.f6698N;
        dVar.getClass();
        dVar.flush();
        dVar.setOutputStartTimeUs(getLastResetPositionUs());
        this.f6709Y = false;
    }

    public abstract C0055j canReuseDecoder(String str, C3136t c3136t, C3136t c3136t2);

    public abstract p171w0.d createDecoder(C3136t c3136t, CryptoConfig cryptoConfig);

    public final void d() throws C0072w {
        CryptoConfig cryptoConfigF;
        x0 x0Var = this.f6693I;
        if (this.f6698N != null) {
            return;
        }
        G0.l lVar = this.f6707W;
        A0.O.M(this.f6706V, lVar);
        this.f6706V = lVar;
        if (lVar != null) {
            cryptoConfigF = lVar.f();
            if (cryptoConfigF == null && this.f6706V.getError() == null) {
                return;
            }
        } else {
            cryptoConfigF = null;
        }
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            C3136t c3136t = this.f6696L;
            c3136t.getClass();
            p171w0.d dVarCreateDecoder = createDecoder(c3136t, cryptoConfigF);
            this.f6698N = dVarCreateDecoder;
            dVarCreateDecoder.setOutputStartTimeUs(getLastResetPositionUs());
            i(this.f6701Q);
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            p171w0.d dVar = this.f6698N;
            dVar.getClass();
            String name = dVar.getName();
            long j8 = jElapsedRealtime2 - jElapsedRealtime;
            Object obj = x0Var.f22390H;
            if (((Handler) obj) != null) {
                ((Handler) obj).post(new RunnableC0121k(x0Var, name, jElapsedRealtime2, j8, 1));
            }
            this.f6722l0.f964a++;
        } catch (OutOfMemoryError e8) {
            throw createRendererException(e8, this.f6696L, 4001);
        } catch (p171w0.e e9) {
            p117p0.x.d("DecoderVideoRenderer", "Video codec error", e9);
            x0Var.z(e9);
            throw createRendererException(e9, this.f6696L, 4001);
        }
    }

    public final void e(Z z7) throws C0072w {
        C0055j c0055jCanReuseDecoder;
        this.f6713c0 = true;
        C3136t c3136t = z7.f904b;
        c3136t.getClass();
        G0.l lVar = z7.f903a;
        A0.O.M(this.f6707W, lVar);
        this.f6707W = lVar;
        C3136t c3136t2 = this.f6696L;
        this.f6696L = c3136t;
        p171w0.d dVar = this.f6698N;
        x0 x0Var = this.f6693I;
        if (dVar == null) {
            d();
            C3136t c3136t3 = this.f6696L;
            c3136t3.getClass();
            x0Var.q(c3136t3, null);
            return;
        }
        if (lVar != this.f6706V) {
            String name = dVar.getName();
            c3136t2.getClass();
            c0055jCanReuseDecoder = new C0055j(name, c3136t2, c3136t, 0, 128);
        } else {
            String name2 = dVar.getName();
            c3136t2.getClass();
            c0055jCanReuseDecoder = canReuseDecoder(name2, c3136t2, c3136t);
        }
        if (c0055jCanReuseDecoder.f996d == 0) {
            if (this.f6709Y) {
                this.f6708X = 1;
            } else {
                f();
                d();
            }
        }
        C3136t c3136t4 = this.f6696L;
        c3136t4.getClass();
        x0Var.q(c3136t4, c0055jCanReuseDecoder);
    }

    @Override // B0.AbstractC0051h
    public final void enableMayRenderStartOfStream() {
        if (this.f6710Z == 0) {
            this.f6710Z = 1;
        }
    }

    public final void f() {
        this.f6699O = null;
        this.f6700P = null;
        this.f6708X = 0;
        this.f6709Y = false;
        this.f6720j0 = 0;
        p171w0.d dVar = this.f6698N;
        if (dVar != null) {
            this.f6722l0.f965b++;
            dVar.release();
            x0 x0Var = this.f6693I;
            String name = this.f6698N.getName();
            Handler handler = (Handler) x0Var.f22390H;
            if (handler != null) {
                handler.post(new r(3, x0Var, name));
            }
            this.f6698N = null;
        }
        A0.O.M(this.f6706V, null);
        this.f6706V = null;
    }

    public final void g(VideoDecoderOutputBuffer videoDecoderOutputBuffer, long j8, C3136t c3136t) {
        B b8 = this.f6705U;
        if (b8 != null) {
            ((p117p0.G) getClock()).getClass();
            b8.b(j8, System.nanoTime(), c3136t, null);
        }
        this.f6721k0 = p117p0.M.R(SystemClock.elapsedRealtime());
        int i8 = videoDecoderOutputBuffer.mode;
        boolean z7 = i8 == 1 && this.f6703S != null;
        boolean z8 = i8 == 0 && this.f6704T != null;
        if (!z8 && !z7) {
            j(0, 1);
            videoDecoderOutputBuffer.release();
            return;
        }
        int i9 = videoDecoderOutputBuffer.width;
        int i10 = videoDecoderOutputBuffer.height;
        w0 w0Var = this.f6716f0;
        x0 x0Var = this.f6693I;
        if (w0Var == null || w0Var.f27063a != i9 || w0Var.f27064b != i10) {
            w0 w0Var2 = new w0(i9, i10);
            this.f6716f0 = w0Var2;
            x0Var.A(w0Var2);
        }
        if (z8) {
            A a8 = this.f6704T;
            a8.getClass();
            a8.setOutputBuffer(videoDecoderOutputBuffer);
        } else {
            Surface surface = this.f6703S;
            surface.getClass();
            h(videoDecoderOutputBuffer, surface);
        }
        this.f6719i0 = 0;
        this.f6722l0.f968e++;
        if (this.f6710Z != 3) {
            this.f6710Z = 3;
            Object obj = this.f6702R;
            if (obj != null) {
                x0Var.v(obj);
            }
        }
    }

    public abstract void h(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface);

    @Override // B0.AbstractC0051h, B0.y0
    public final void handleMessage(int i8, Object obj) {
        Object obj2;
        if (i8 != 1) {
            if (i8 == 7) {
                this.f6705U = (B) obj;
                return;
            }
            return;
        }
        if (obj instanceof Surface) {
            this.f6703S = (Surface) obj;
            this.f6704T = null;
            this.f6701Q = 1;
        } else if (obj instanceof A) {
            this.f6703S = null;
            this.f6704T = (A) obj;
            this.f6701Q = 0;
        } else {
            this.f6703S = null;
            this.f6704T = null;
            this.f6701Q = -1;
            obj = null;
        }
        Object obj3 = this.f6702R;
        x0 x0Var = this.f6693I;
        if (obj3 == obj) {
            if (obj != null) {
                w0 w0Var = this.f6716f0;
                if (w0Var != null) {
                    x0Var.A(w0Var);
                }
                if (this.f6710Z != 3 || (obj2 = this.f6702R) == null) {
                    return;
                }
                x0Var.v(obj2);
                return;
            }
            return;
        }
        this.f6702R = obj;
        if (obj == null) {
            this.f6716f0 = null;
            this.f6710Z = Math.min(this.f6710Z, 1);
            return;
        }
        if (this.f6698N != null) {
            i(this.f6701Q);
        }
        w0 w0Var2 = this.f6716f0;
        if (w0Var2 != null) {
            x0Var.A(w0Var2);
        }
        this.f6710Z = Math.min(this.f6710Z, 1);
        if (getState() == 2) {
            long j8 = this.f6691G;
            this.f6712b0 = j8 > 0 ? SystemClock.elapsedRealtime() + j8 : -9223372036854775807L;
        }
    }

    public abstract void i(int i8);

    @Override // B0.AbstractC0051h
    public final boolean isEnded() {
        return this.f6715e0;
    }

    @Override // B0.AbstractC0051h
    public final boolean isReady() {
        if (this.f6696L != null && ((isSourceReady() || this.f6700P != null) && (this.f6710Z == 3 || this.f6701Q == -1))) {
            this.f6712b0 = -9223372036854775807L;
            return true;
        }
        if (this.f6712b0 == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.f6712b0) {
            return true;
        }
        this.f6712b0 = -9223372036854775807L;
        return false;
    }

    public final void j(int i8, int i9) {
        int i10;
        C0053i c0053i = this.f6722l0;
        c0053i.f971h += i8;
        int i11 = i8 + i9;
        c0053i.f970g += i11;
        this.f6718h0 += i11;
        int i12 = this.f6719i0 + i11;
        this.f6719i0 = i12;
        c0053i.f972i = Math.max(i12, c0053i.f972i);
        int i13 = this.f6692H;
        if (i13 <= 0 || (i10 = this.f6718h0) < i13 || i10 <= 0) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j8 = jElapsedRealtime - this.f6717g0;
        x0 x0Var = this.f6693I;
        int i14 = this.f6718h0;
        Handler handler = (Handler) x0Var.f22390H;
        if (handler != null) {
            handler.post(new L(x0Var, i14, j8));
        }
        this.f6718h0 = 0;
        this.f6717g0 = jElapsedRealtime;
    }

    @Override // B0.AbstractC0051h
    public final void onDisabled() {
        x0 x0Var = this.f6693I;
        this.f6696L = null;
        this.f6716f0 = null;
        this.f6710Z = Math.min(this.f6710Z, 0);
        try {
            A0.O.M(this.f6707W, null);
            this.f6707W = null;
            f();
        } finally {
            x0Var.j(this.f6722l0);
        }
    }

    @Override // B0.AbstractC0051h
    public final void onEnabled(boolean z7, boolean z8) {
        C0053i c0053i = new C0053i();
        this.f6722l0 = c0053i;
        x0 x0Var = this.f6693I;
        Handler handler = (Handler) x0Var.f22390H;
        if (handler != null) {
            handler.post(new M(x0Var, c0053i, 0));
        }
        this.f6710Z = z8 ? 1 : 0;
    }

    @Override // B0.AbstractC0051h
    public final void onPositionReset(long j8, boolean z7) throws C0072w {
        this.f6714d0 = false;
        this.f6715e0 = false;
        this.f6710Z = Math.min(this.f6710Z, 1);
        this.f6711a0 = -9223372036854775807L;
        this.f6719i0 = 0;
        if (this.f6698N != null) {
            c();
        }
        if (z7) {
            long j9 = this.f6691G;
            this.f6712b0 = j9 > 0 ? SystemClock.elapsedRealtime() + j9 : -9223372036854775807L;
        } else {
            this.f6712b0 = -9223372036854775807L;
        }
        this.f6694J.f();
    }

    @Override // B0.AbstractC0051h
    public final void onStarted() {
        this.f6718h0 = 0;
        this.f6717g0 = SystemClock.elapsedRealtime();
        this.f6721k0 = p117p0.M.R(SystemClock.elapsedRealtime());
    }

    @Override // B0.AbstractC0051h
    public final void onStopped() {
        this.f6712b0 = -9223372036854775807L;
        if (this.f6718h0 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j8 = jElapsedRealtime - this.f6717g0;
            x0 x0Var = this.f6693I;
            int i8 = this.f6718h0;
            Handler handler = (Handler) x0Var.f22390H;
            if (handler != null) {
                handler.post(new L(x0Var, i8, j8));
            }
            this.f6718h0 = 0;
            this.f6717g0 = jElapsedRealtime;
        }
    }

    @Override // B0.AbstractC0051h
    public final void render(long j8, long j9) throws C0072w {
        if (this.f6715e0) {
            return;
        }
        if (this.f6696L == null) {
            Z formatHolder = getFormatHolder();
            this.f6695K.clear();
            int source = readSource(formatHolder, this.f6695K, 2);
            if (source != -5) {
                if (source == -4) {
                    H1.i(this.f6695K.isEndOfStream());
                    this.f6714d0 = true;
                    this.f6715e0 = true;
                    return;
                }
                return;
            }
            e(formatHolder);
        }
        d();
        if (this.f6698N != null) {
            try {
                Trace.beginSection("drainAndFeed");
                while (a(j8)) {
                }
                while (b()) {
                }
                Trace.endSection();
                synchronized (this.f6722l0) {
                }
            } catch (p171w0.e e8) {
                p117p0.x.d("DecoderVideoRenderer", "Video codec error", e8);
                this.f6693I.z(e8);
                throw createRendererException(e8, this.f6696L, 4003);
            }
        }
    }

    @Override // B0.AbstractC0051h
    public final void onStreamChanged(C3136t[] c3136tArr, long j8, long j9, C0300y c0300y) {
    }
}
