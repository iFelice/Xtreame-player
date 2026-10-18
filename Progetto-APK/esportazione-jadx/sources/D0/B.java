package D0;

import B0.AbstractC0051h;
import B0.AbstractC0067q;
import B0.C0053i;
import B0.C0055j;
import B0.C0072w;
import B0.InterfaceC0046e0;
import B0.RunnableC0052h0;
import O0.C0300y;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import com.google.android.gms.internal.measurement.H1;
import p039f.RunnableC3004t;
import p094m0.C3121d;
import p094m0.C3122e;
import p094m0.C3135s;
import p094m0.C3136t;

/* JADX INFO: loaded from: classes.dex */
public abstract class B extends AbstractC0051h implements InterfaceC0046e0 {
    private static final int MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT = 10;
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    private static final String TAG = "DecoderAudioRenderer";
    private boolean allowPositionDiscontinuity;
    private final InterfaceC0131v audioSink;
    private boolean audioTrackNeedsConfigure;
    private long currentPositionUs;
    private p171w0.d decoder;
    private C0053i decoderCounters;
    private G0.l decoderDrmSession;
    private boolean decoderReceivedBuffers;
    private int decoderReinitializationState;
    private int encoderDelay;
    private int encoderPadding;
    private final C0124n eventDispatcher;
    private boolean firstStreamSampleRead;
    private final p171w0.g flagsOnlyBuffer;
    private boolean hasPendingReportedSkippedSilence;
    private p171w0.g inputBuffer;
    private C3136t inputFormat;
    private boolean inputStreamEnded;
    private boolean isStarted;
    private long largestQueuedPresentationTimeUs;
    private long lastBufferInStreamPresentationTimeUs;
    private long nextBufferToWritePresentationTimeUs;
    private SimpleDecoderOutputBuffer outputBuffer;
    private boolean outputStreamEnded;
    private long outputStreamOffsetUs;
    private int pendingOutputStreamOffsetCount;
    private final long[] pendingOutputStreamOffsetsUs;
    private G0.l sourceDrmSession;

    public B(Handler handler, InterfaceC0125o interfaceC0125o, InterfaceC0131v interfaceC0131v) {
        super(1);
        this.eventDispatcher = new C0124n(handler, interfaceC0125o);
        this.audioSink = interfaceC0131v;
        ((S) interfaceC0131v).f1854u = new p039f.S(this);
        this.flagsOnlyBuffer = new p171w0.g(0, 0);
        this.decoderReinitializationState = 0;
        this.audioTrackNeedsConfigure = true;
        f(-9223372036854775807L);
        this.pendingOutputStreamOffsetsUs = new long[10];
        this.largestQueuedPresentationTimeUs = -9223372036854775807L;
        this.lastBufferInStreamPresentationTimeUs = -9223372036854775807L;
        this.nextBufferToWritePresentationTimeUs = -9223372036854775807L;
    }

    public final boolean a() throws C0127q, C0072w {
        if (this.outputBuffer == null) {
            SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = (SimpleDecoderOutputBuffer) this.decoder.dequeueOutputBuffer();
            this.outputBuffer = simpleDecoderOutputBuffer;
            if (simpleDecoderOutputBuffer == null) {
                return false;
            }
            int i8 = simpleDecoderOutputBuffer.skippedOutputBufferCount;
            if (i8 > 0) {
                this.decoderCounters.f969f += i8;
                ((S) this.audioSink).f1807O = true;
            }
            if (simpleDecoderOutputBuffer.isFirstSample()) {
                ((S) this.audioSink).f1807O = true;
                if (this.pendingOutputStreamOffsetCount != 0) {
                    f(this.pendingOutputStreamOffsetsUs[0]);
                    int i9 = this.pendingOutputStreamOffsetCount - 1;
                    this.pendingOutputStreamOffsetCount = i9;
                    long[] jArr = this.pendingOutputStreamOffsetsUs;
                    System.arraycopy(jArr, 1, jArr, 0, i9);
                }
            }
        }
        if (this.outputBuffer.isEndOfStream()) {
            if (this.decoderReinitializationState == 2) {
                e();
                c();
                this.audioTrackNeedsConfigure = true;
            } else {
                this.outputBuffer.release();
                this.outputBuffer = null;
                try {
                    this.outputStreamEnded = true;
                    ((S) this.audioSink).w();
                    this.nextBufferToWritePresentationTimeUs = this.lastBufferInStreamPresentationTimeUs;
                } catch (C0130u e8) {
                    throw createRendererException(e8, e8.f1975I, e8.f1974H, 5002);
                }
            }
            return false;
        }
        this.nextBufferToWritePresentationTimeUs = -9223372036854775807L;
        if (this.audioTrackNeedsConfigure) {
            C3135s c3135sA = getOutputFormat(this.decoder).a();
            c3135sA.f26976I = this.encoderDelay;
            c3135sA.f26977J = this.encoderPadding;
            C3136t c3136t = this.inputFormat;
            c3135sA.f26993k = c3136t.f27038l;
            c3135sA.f26994l = c3136t.f27039m;
            c3135sA.f26983a = c3136t.f27027a;
            c3135sA.f26984b = c3136t.f27028b;
            c3135sA.f26985c = z4.H.s(c3136t.f27029c);
            C3136t c3136t2 = this.inputFormat;
            c3135sA.f26986d = c3136t2.f27030d;
            c3135sA.f26987e = c3136t2.f27031e;
            c3135sA.f26988f = c3136t2.f27032f;
            ((S) this.audioSink).d(new C3136t(c3135sA), getChannelMapping(this.decoder));
            this.audioTrackNeedsConfigure = false;
        }
        InterfaceC0131v interfaceC0131v = this.audioSink;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer2 = this.outputBuffer;
        if (!((S) interfaceC0131v).n(simpleDecoderOutputBuffer2.timeUs, 1, simpleDecoderOutputBuffer2.data)) {
            this.nextBufferToWritePresentationTimeUs = this.outputBuffer.timeUs;
            return false;
        }
        this.decoderCounters.f968e++;
        this.outputBuffer.release();
        this.outputBuffer = null;
        return true;
    }

    public final boolean b() throws C0072w {
        p171w0.d dVar = this.decoder;
        if (dVar == null || this.decoderReinitializationState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            p171w0.g gVar = (p171w0.g) dVar.dequeueInputBuffer();
            this.inputBuffer = gVar;
            if (gVar == null) {
                return false;
            }
        }
        if (this.decoderReinitializationState == 1) {
            this.inputBuffer.setFlags(4);
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            this.decoderReinitializationState = 2;
            return false;
        }
        B0.Z formatHolder = getFormatHolder();
        int source = readSource(formatHolder, this.inputBuffer, 0);
        if (source == -5) {
            d(formatHolder);
            return true;
        }
        if (source != -4) {
            if (source != -3) {
                throw new IllegalStateException();
            }
            if (hasReadStreamToEnd()) {
                this.lastBufferInStreamPresentationTimeUs = this.largestQueuedPresentationTimeUs;
            }
            return false;
        }
        if (this.inputBuffer.isEndOfStream()) {
            this.inputStreamEnded = true;
            this.lastBufferInStreamPresentationTimeUs = this.largestQueuedPresentationTimeUs;
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            return false;
        }
        if (!this.firstStreamSampleRead) {
            this.firstStreamSampleRead = true;
            this.inputBuffer.addFlag(134217728);
        }
        this.largestQueuedPresentationTimeUs = this.inputBuffer.f30906K;
        if (hasReadStreamToEnd() || this.inputBuffer.isLastSample()) {
            this.lastBufferInStreamPresentationTimeUs = this.largestQueuedPresentationTimeUs;
        }
        this.inputBuffer.g();
        p171w0.g gVar2 = this.inputBuffer;
        gVar2.f30902G = this.inputFormat;
        this.decoder.queueInputBuffer(gVar2);
        this.decoderReceivedBuffers = true;
        this.decoderCounters.f966c++;
        this.inputBuffer = null;
        return true;
    }

    public final void c() throws C0072w {
        CryptoConfig cryptoConfigF;
        if (this.decoder != null) {
            return;
        }
        G0.l lVar = this.sourceDrmSession;
        A0.O.M(this.decoderDrmSession, lVar);
        this.decoderDrmSession = lVar;
        if (lVar != null) {
            cryptoConfigF = lVar.f();
            if (cryptoConfigF == null && this.decoderDrmSession.getError() == null) {
                return;
            }
        } else {
            cryptoConfigF = null;
        }
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Trace.beginSection("createAudioDecoder");
            p171w0.d dVarCreateDecoder = createDecoder(this.inputFormat, cryptoConfigF);
            this.decoder = dVarCreateDecoder;
            dVarCreateDecoder.setOutputStartTimeUs(getLastResetPositionUs());
            Trace.endSection();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            C0124n c0124n = this.eventDispatcher;
            String name = this.decoder.getName();
            long j8 = jElapsedRealtime2 - jElapsedRealtime;
            Handler handler = c0124n.f1961a;
            if (handler != null) {
                handler.post(new RunnableC0121k(c0124n, name, jElapsedRealtime2, j8, 0));
            }
            this.decoderCounters.f964a++;
        } catch (OutOfMemoryError e8) {
            throw createRendererException(e8, this.inputFormat, 4001);
        } catch (p171w0.e e9) {
            p117p0.x.d(TAG, "Audio codec error", e9);
            C0124n c0124n2 = this.eventDispatcher;
            Handler handler2 = c0124n2.f1961a;
            if (handler2 != null) {
                handler2.post(new RunnableC0120j(c0124n2, e9, 0));
            }
            throw createRendererException(e9, this.inputFormat, 4001);
        }
    }

    public C0055j canReuseDecoder(String str, C3136t c3136t, C3136t c3136t2) {
        return new C0055j(str, c3136t, c3136t2, 0, 1);
    }

    public abstract p171w0.d createDecoder(C3136t c3136t, CryptoConfig cryptoConfig);

    public final void d(B0.Z z7) throws C0072w {
        C3136t c3136t = z7.f904b;
        c3136t.getClass();
        G0.l lVar = z7.f903a;
        A0.O.M(this.sourceDrmSession, lVar);
        this.sourceDrmSession = lVar;
        C3136t c3136t2 = this.inputFormat;
        this.inputFormat = c3136t;
        this.encoderDelay = c3136t.f27019J;
        this.encoderPadding = c3136t.f27020K;
        p171w0.d dVar = this.decoder;
        int i8 = 2;
        if (dVar == null) {
            c();
            C0124n c0124n = this.eventDispatcher;
            C3136t c3136t3 = this.inputFormat;
            Handler handler = c0124n.f1961a;
            if (handler != null) {
                handler.post(new RunnableC0052h0(c0124n, c3136t3, null, i8));
                return;
            }
            return;
        }
        C0055j c0055j = lVar != this.decoderDrmSession ? new C0055j(dVar.getName(), c3136t2, c3136t, 0, 128) : canReuseDecoder(dVar.getName(), c3136t2, c3136t);
        if (c0055j.f996d == 0) {
            if (this.decoderReceivedBuffers) {
                this.decoderReinitializationState = 1;
            } else {
                e();
                c();
                this.audioTrackNeedsConfigure = true;
            }
        }
        C0124n c0124n2 = this.eventDispatcher;
        C3136t c3136t4 = this.inputFormat;
        Handler handler2 = c0124n2.f1961a;
        if (handler2 != null) {
            handler2.post(new RunnableC0052h0(c0124n2, c3136t4, c0055j, i8));
        }
    }

    public final void e() {
        this.inputBuffer = null;
        this.outputBuffer = null;
        this.decoderReinitializationState = 0;
        this.decoderReceivedBuffers = false;
        this.largestQueuedPresentationTimeUs = -9223372036854775807L;
        this.lastBufferInStreamPresentationTimeUs = -9223372036854775807L;
        p171w0.d dVar = this.decoder;
        if (dVar != null) {
            this.decoderCounters.f965b++;
            dVar.release();
            C0124n c0124n = this.eventDispatcher;
            String name = this.decoder.getName();
            Handler handler = c0124n.f1961a;
            if (handler != null) {
                handler.post(new RunnableC3004t(23, c0124n, name));
            }
            this.decoder = null;
        }
        A0.O.M(this.decoderDrmSession, null);
        this.decoderDrmSession = null;
    }

    public final void f(long j8) {
        this.outputStreamOffsetUs = j8;
        if (j8 != -9223372036854775807L) {
            this.audioSink.getClass();
        }
    }

    public final void g() {
        InterfaceC0131v interfaceC0131v = this.audioSink;
        isEnded();
        long jI = ((S) interfaceC0131v).i();
        if (jI != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                jI = Math.max(this.currentPositionUs, jI);
            }
            this.currentPositionUs = jI;
            this.allowPositionDiscontinuity = false;
        }
    }

    public int[] getChannelMapping(p171w0.d dVar) {
        return null;
    }

    @Override // B0.AbstractC0051h
    public long getDurationToProgressUs(long j8, long j9) {
        boolean z7 = this.nextBufferToWritePresentationTimeUs != -9223372036854775807L;
        if (!this.isStarted) {
            return (z7 || this.outputStreamEnded) ? 1000000L : 10000L;
        }
        long jH = ((S) this.audioSink).h();
        if (!z7 || jH == -9223372036854775807L) {
            return 10000L;
        }
        float fMin = Math.min(jH, this.nextBufferToWritePresentationTimeUs - j8);
        float f8 = getPlaybackParameters() != null ? getPlaybackParameters().f26786a : 1.0f;
        ((p117p0.G) getClock()).getClass();
        return Math.max(10000L, ((long) ((fMin / f8) / 2.0f)) - (p117p0.M.R(SystemClock.elapsedRealtime()) - j9));
    }

    public abstract C3136t getOutputFormat(p171w0.d dVar);

    @Override // B0.InterfaceC0046e0
    public p094m0.S getPlaybackParameters() {
        return ((S) this.audioSink).f1798F;
    }

    @Override // B0.InterfaceC0046e0
    public long getPositionUs() {
        if (getState() == 2) {
            g();
        }
        return this.currentPositionUs;
    }

    public final int getSinkFormatSupport(C3136t c3136t) {
        return ((S) this.audioSink).k(c3136t);
    }

    @Override // B0.AbstractC0051h, B0.y0
    public void handleMessage(int i8, Object obj) {
        if (i8 == 2) {
            InterfaceC0131v interfaceC0131v = this.audioSink;
            float fFloatValue = ((Float) obj).floatValue();
            S s7 = (S) interfaceC0131v;
            if (s7.f1810R != fFloatValue) {
                s7.f1810R = fFloatValue;
                if (s7.q()) {
                    s7.f1858y.setVolume(s7.f1810R);
                    return;
                }
                return;
            }
            return;
        }
        if (i8 == 3) {
            ((S) this.audioSink).z((C3121d) obj);
            return;
        }
        if (i8 == 6) {
            ((S) this.audioSink).C((C3122e) obj);
            return;
        }
        if (i8 == 12) {
            if (Build.VERSION.SDK_INT >= 23) {
                ((S) this.audioSink).F(AbstractC0067q.g(obj));
            }
        } else {
            if (i8 != 9) {
                if (i8 != 10) {
                    return;
                }
                ((S) this.audioSink).A(((Integer) obj).intValue());
                return;
            }
            S s8 = (S) this.audioSink;
            s8.f1799G = ((Boolean) obj).booleanValue();
            K k8 = new K(s8.H() ? p094m0.S.f26785d : s8.f1798F, -9223372036854775807L, -9223372036854775807L);
            if (s8.q()) {
                s8.f1796D = k8;
            } else {
                s8.f1797E = k8;
            }
        }
    }

    @Override // B0.InterfaceC0046e0
    public boolean hasSkippedSilenceSinceLastCall() {
        boolean z7 = this.hasPendingReportedSkippedSilence;
        this.hasPendingReportedSkippedSilence = false;
        return z7;
    }

    @Override // B0.AbstractC0051h
    public boolean isEnded() {
        if (this.outputStreamEnded) {
            S s7 = (S) this.audioSink;
            if (!s7.q() || (s7.f1814V && !s7.o())) {
                return true;
            }
        }
        return false;
    }

    @Override // B0.AbstractC0051h
    public boolean isReady() {
        return ((S) this.audioSink).o() || (this.inputFormat != null && (isSourceReady() || this.outputBuffer != null));
    }

    @Override // B0.AbstractC0051h
    public void onDisabled() {
        this.inputFormat = null;
        this.audioTrackNeedsConfigure = true;
        f(-9223372036854775807L);
        this.hasPendingReportedSkippedSilence = false;
        this.nextBufferToWritePresentationTimeUs = -9223372036854775807L;
        try {
            A0.O.M(this.sourceDrmSession, null);
            this.sourceDrmSession = null;
            e();
            ((S) this.audioSink).y();
        } finally {
            this.eventDispatcher.a(this.decoderCounters);
        }
    }

    @Override // B0.AbstractC0051h
    public void onEnabled(boolean z7, boolean z8) {
        C0053i c0053i = new C0053i();
        this.decoderCounters = c0053i;
        C0124n c0124n = this.eventDispatcher;
        Handler handler = c0124n.f1961a;
        int i8 = 0;
        if (handler != null) {
            handler.post(new RunnableC0119i(c0124n, c0053i, i8));
        }
        if (getConfiguration().f703b) {
            S s7 = (S) this.audioSink;
            H1.i(s7.f1818Z);
            if (!s7.f1828e0) {
                s7.f1828e0 = true;
                s7.g();
            }
        } else {
            S s8 = (S) this.audioSink;
            if (s8.f1828e0) {
                s8.f1828e0 = false;
                s8.g();
            }
        }
        ((S) this.audioSink).f1853t = getPlayerId();
        ((S) this.audioSink).f1835i.f2000I = getClock();
    }

    public void onPositionDiscontinuity() {
        this.allowPositionDiscontinuity = true;
    }

    @Override // B0.AbstractC0051h
    public void onPositionReset(long j8, boolean z7) throws C0072w {
        ((S) this.audioSink).g();
        this.currentPositionUs = j8;
        this.nextBufferToWritePresentationTimeUs = -9223372036854775807L;
        this.hasPendingReportedSkippedSilence = false;
        this.allowPositionDiscontinuity = true;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        if (this.decoder != null) {
            if (this.decoderReinitializationState != 0) {
                e();
                c();
                return;
            }
            this.inputBuffer = null;
            SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = this.outputBuffer;
            if (simpleDecoderOutputBuffer != null) {
                simpleDecoderOutputBuffer.release();
                this.outputBuffer = null;
            }
            p171w0.d dVar = this.decoder;
            dVar.getClass();
            dVar.flush();
            dVar.setOutputStartTimeUs(getLastResetPositionUs());
            this.decoderReceivedBuffers = false;
        }
    }

    @Override // B0.AbstractC0051h
    public void onStarted() {
        ((S) this.audioSink).u();
        this.isStarted = true;
    }

    @Override // B0.AbstractC0051h
    public void onStopped() {
        g();
        ((S) this.audioSink).t();
        this.isStarted = false;
    }

    @Override // B0.AbstractC0051h
    public void onStreamChanged(C3136t[] c3136tArr, long j8, long j9, C0300y c0300y) {
        this.firstStreamSampleRead = false;
        if (this.outputStreamOffsetUs == -9223372036854775807L) {
            f(j9);
            return;
        }
        int i8 = this.pendingOutputStreamOffsetCount;
        if (i8 == this.pendingOutputStreamOffsetsUs.length) {
            p117p0.x.f(TAG, "Too many stream changes, so dropping offset: " + this.pendingOutputStreamOffsetsUs[this.pendingOutputStreamOffsetCount - 1]);
        } else {
            this.pendingOutputStreamOffsetCount = i8 + 1;
        }
        this.pendingOutputStreamOffsetsUs[this.pendingOutputStreamOffsetCount - 1] = j9;
    }

    @Override // B0.AbstractC0051h
    public void render(long j8, long j9) throws C0072w {
        if (this.outputStreamEnded) {
            try {
                ((S) this.audioSink).w();
                this.nextBufferToWritePresentationTimeUs = this.lastBufferInStreamPresentationTimeUs;
                return;
            } catch (C0130u e8) {
                throw createRendererException(e8, e8.f1975I, e8.f1974H, 5002);
            }
        }
        if (this.inputFormat == null) {
            B0.Z formatHolder = getFormatHolder();
            this.flagsOnlyBuffer.clear();
            int source = readSource(formatHolder, this.flagsOnlyBuffer, 2);
            if (source != -5) {
                if (source == -4) {
                    H1.i(this.flagsOnlyBuffer.isEndOfStream());
                    this.inputStreamEnded = true;
                    try {
                        this.outputStreamEnded = true;
                        ((S) this.audioSink).w();
                        this.nextBufferToWritePresentationTimeUs = this.lastBufferInStreamPresentationTimeUs;
                        return;
                    } catch (C0130u e9) {
                        throw createRendererException(e9, null, 5002);
                    }
                }
                return;
            }
            d(formatHolder);
        }
        c();
        if (this.decoder != null) {
            try {
                Trace.beginSection("drainAndFeed");
                while (a()) {
                }
                while (b()) {
                }
                Trace.endSection();
                synchronized (this.decoderCounters) {
                }
            } catch (C0127q e10) {
                throw createRendererException(e10, e10.f1969G, 5001);
            } catch (r e11) {
                throw createRendererException(e11, e11.f1972I, e11.f1971H, 5001);
            } catch (C0130u e12) {
                throw createRendererException(e12, e12.f1975I, e12.f1974H, 5002);
            } catch (p171w0.e e13) {
                p117p0.x.d(TAG, "Audio codec error", e13);
                C0124n c0124n = this.eventDispatcher;
                Handler handler = c0124n.f1961a;
                if (handler != null) {
                    handler.post(new RunnableC0120j(c0124n, e13, 0));
                }
                throw createRendererException(e13, this.inputFormat, 4003);
            }
        }
    }

    @Override // B0.InterfaceC0046e0
    public void setPlaybackParameters(p094m0.S s7) {
        ((S) this.audioSink).E(s7);
    }

    public final boolean sinkSupportsFormat(C3136t c3136t) {
        return ((S) this.audioSink).G(c3136t);
    }

    @Override // B0.D0
    public final int supportsFormat(C3136t c3136t) {
        if (!p094m0.O.k(c3136t.f27041o)) {
            return A0.O.o(0, 0, 0, 0);
        }
        int iSupportsFormatInternal = supportsFormatInternal(c3136t);
        return iSupportsFormatInternal <= 2 ? A0.O.o(iSupportsFormatInternal, 0, 0, 0) : iSupportsFormatInternal | 168;
    }

    public abstract int supportsFormatInternal(C3136t c3136t);

    public B(Handler handler, InterfaceC0125o interfaceC0125o, p102n0.g... gVarArr) {
        I i8 = new I();
        C0114d c0114d = C0114d.f1916c;
        if (c0114d != null) {
            i8.f1755b = c0114d;
            gVarArr.getClass();
            i8.f1756c = new p096m2.u(gVarArr);
            this(handler, interfaceC0125o, i8.a());
            return;
        }
        throw new NullPointerException("Both parameters are null");
    }

    @Override // B0.AbstractC0051h
    public InterfaceC0046e0 getMediaClock() {
        return this;
    }
}
