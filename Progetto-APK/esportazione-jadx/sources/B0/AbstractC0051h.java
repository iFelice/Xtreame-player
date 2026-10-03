package B0;

import O0.C0300y;
import com.google.android.gms.internal.measurement.H1;
import java.util.Objects;
import p094m0.C3135s;
import p094m0.C3136t;
import p117p0.InterfaceC3168f;

/* JADX INFO: renamed from: B0.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0051h implements D0, y0 {
    private InterfaceC3168f clock;
    private E0 configuration;
    private int index;
    private long lastResetPositionUs;
    private C0300y mediaPeriodId;
    private C0.I playerId;
    private C0 rendererCapabilitiesListener;
    private int state;
    private O0.U stream;
    private C3136t[] streamFormats;
    private boolean streamIsFinal;
    private long streamOffsetUs;
    private boolean throwRendererExceptionIsExecuting;
    private final int trackType;
    private final Object lock = new Object();
    private final Z formatHolder = new Z();
    private long readingPositionUs = Long.MIN_VALUE;
    private p094m0.f0 timeline = p094m0.f0.f26851a;

    public AbstractC0051h(int i8) {
        this.trackType = i8;
    }

    @Override // B0.D0
    public final void clearListener() {
        synchronized (this.lock) {
            this.rendererCapabilitiesListener = null;
        }
    }

    public final C0072w createRendererException(Throwable th, C3136t c3136t, int i8) {
        return createRendererException(th, c3136t, false, i8);
    }

    public final void disable() {
        H1.i(this.state == 1);
        Z z7 = this.formatHolder;
        z7.f903a = null;
        z7.f904b = null;
        this.state = 0;
        this.stream = null;
        this.streamFormats = null;
        this.streamIsFinal = false;
        onDisabled();
        this.mediaPeriodId = null;
    }

    public final void enable(E0 e8, C3136t[] c3136tArr, O0.U u7, long j8, boolean z7, boolean z8, long j9, long j10, C0300y c0300y) {
        H1.i(this.state == 0);
        this.configuration = e8;
        this.mediaPeriodId = c0300y;
        this.state = 1;
        onEnabled(z7, z8);
        replaceStream(c3136tArr, u7, j9, j10, c0300y);
        this.streamIsFinal = false;
        this.lastResetPositionUs = j9;
        this.readingPositionUs = j9;
        onPositionReset(j9, z7);
    }

    public final InterfaceC3168f getClock() {
        InterfaceC3168f interfaceC3168f = this.clock;
        interfaceC3168f.getClass();
        return interfaceC3168f;
    }

    public final E0 getConfiguration() {
        E0 e8 = this.configuration;
        e8.getClass();
        return e8;
    }

    public long getDurationToProgressUs(long j8, long j9) {
        return (getState() == 1 && (isReady() || isEnded())) ? 1000000L : 10000L;
    }

    public final Z getFormatHolder() {
        Z z7 = this.formatHolder;
        z7.f903a = null;
        z7.f904b = null;
        return z7;
    }

    public final int getIndex() {
        return this.index;
    }

    public final long getLastResetPositionUs() {
        return this.lastResetPositionUs;
    }

    public InterfaceC0046e0 getMediaClock() {
        return null;
    }

    public final C0300y getMediaPeriodId() {
        return this.mediaPeriodId;
    }

    @Override // B0.D0
    public abstract String getName();

    public final C0.I getPlayerId() {
        C0.I i8 = this.playerId;
        i8.getClass();
        return i8;
    }

    public final long getReadingPositionUs() {
        return this.readingPositionUs;
    }

    public final int getState() {
        return this.state;
    }

    public final O0.U getStream() {
        return this.stream;
    }

    public final C3136t[] getStreamFormats() {
        C3136t[] c3136tArr = this.streamFormats;
        c3136tArr.getClass();
        return c3136tArr;
    }

    public final long getStreamOffsetUs() {
        return this.streamOffsetUs;
    }

    public final p094m0.f0 getTimeline() {
        return this.timeline;
    }

    @Override // B0.D0
    public final int getTrackType() {
        return this.trackType;
    }

    public final boolean hasReadStreamToEnd() {
        return this.readingPositionUs == Long.MIN_VALUE;
    }

    public final void init(int i8, C0.I i9, InterfaceC3168f interfaceC3168f) {
        this.index = i8;
        this.playerId = i9;
        this.clock = interfaceC3168f;
        onInit();
    }

    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    public abstract boolean isEnded();

    public abstract boolean isReady();

    public final boolean isSourceReady() {
        if (hasReadStreamToEnd()) {
            return this.streamIsFinal;
        }
        O0.U u7 = this.stream;
        u7.getClass();
        return u7.f();
    }

    public final void maybeThrowStreamError() {
        O0.U u7 = this.stream;
        u7.getClass();
        u7.b();
    }

    public abstract void onDisabled();

    public abstract void onPositionReset(long j8, boolean z7);

    public final void onRendererCapabilitiesChanged() {
        C0 c8;
        synchronized (this.lock) {
            c8 = this.rendererCapabilitiesListener;
        }
        if (c8 != null) {
            ((R0.q) c8).k();
        }
    }

    public final int readSource(Z z7, p171w0.g gVar, int i8) {
        O0.U u7 = this.stream;
        u7.getClass();
        int iR = u7.r(z7, gVar, i8);
        if (iR == -4) {
            if (gVar.isEndOfStream()) {
                this.readingPositionUs = Long.MIN_VALUE;
                return this.streamIsFinal ? -4 : -3;
            }
            long j8 = gVar.f30906K + this.streamOffsetUs;
            gVar.f30906K = j8;
            this.readingPositionUs = Math.max(this.readingPositionUs, j8);
        } else if (iR == -5) {
            C3136t c3136t = z7.f904b;
            c3136t.getClass();
            long j9 = c3136t.f27046t;
            if (j9 != Long.MAX_VALUE) {
                C3135s c3135sA = c3136t.a();
                c3135sA.f27001s = j9 + this.streamOffsetUs;
                z7.f904b = c3135sA.a();
            }
        }
        return iR;
    }

    public final void release() {
        H1.i(this.state == 0);
        onRelease();
    }

    public abstract void render(long j8, long j9);

    public final void replaceStream(C3136t[] c3136tArr, O0.U u7, long j8, long j9, C0300y c0300y) {
        H1.i(!this.streamIsFinal);
        this.stream = u7;
        this.mediaPeriodId = c0300y;
        if (this.readingPositionUs == Long.MIN_VALUE) {
            this.readingPositionUs = j8;
        }
        this.streamFormats = c3136tArr;
        this.streamOffsetUs = j9;
        onStreamChanged(c3136tArr, j8, j9, c0300y);
    }

    public final void reset() {
        H1.i(this.state == 0);
        Z z7 = this.formatHolder;
        z7.f903a = null;
        z7.f904b = null;
        onReset();
    }

    public final void resetPosition(long j8) {
        this.streamIsFinal = false;
        this.lastResetPositionUs = j8;
        this.readingPositionUs = j8;
        onPositionReset(j8, false);
    }

    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // B0.D0
    public final void setListener(C0 c8) {
        synchronized (this.lock) {
            this.rendererCapabilitiesListener = c8;
        }
    }

    public final void setTimeline(p094m0.f0 f0Var) {
        if (Objects.equals(this.timeline, f0Var)) {
            return;
        }
        this.timeline = f0Var;
        onTimelineChanged(f0Var);
    }

    public int skipSource(long j8) {
        O0.U u7 = this.stream;
        u7.getClass();
        return u7.j(j8 - this.streamOffsetUs);
    }

    public final void start() {
        H1.i(this.state == 1);
        this.state = 2;
        onStarted();
    }

    public final void stop() {
        H1.i(this.state == 2);
        this.state = 1;
        onStopped();
    }

    @Override // B0.D0
    public int supportsMixedMimeTypeAdaptation() {
        return 0;
    }

    public final C0072w createRendererException(Throwable th, C3136t c3136t, boolean z7, int i8) {
        int iSupportsFormat;
        if (c3136t == null || this.throwRendererExceptionIsExecuting) {
            iSupportsFormat = 4;
        } else {
            this.throwRendererExceptionIsExecuting = true;
            try {
                iSupportsFormat = supportsFormat(c3136t) & 7;
                this.throwRendererExceptionIsExecuting = false;
            } catch (C0072w unused) {
                this.throwRendererExceptionIsExecuting = false;
                iSupportsFormat = 4;
            } catch (Throwable th2) {
                this.throwRendererExceptionIsExecuting = false;
                throw th2;
            }
        }
        return new C0072w(1, th, i8, getName(), getIndex(), c3136t, c3136t == null ? 4 : iSupportsFormat, this.mediaPeriodId, z7);
    }

    public void enableMayRenderStartOfStream() {
    }

    public final D0 getCapabilities() {
        return this;
    }

    public void onInit() {
    }

    public void onRelease() {
    }

    public void onReset() {
    }

    public void onStarted() {
    }

    public void onStopped() {
    }

    public void onTimelineChanged(p094m0.f0 f0Var) {
    }

    @Override // B0.y0
    public void handleMessage(int i8, Object obj) {
    }

    public void onEnabled(boolean z7, boolean z8) {
    }

    public void setPlaybackSpeed(float f8, float f9) {
    }

    public void onStreamChanged(C3136t[] c3136tArr, long j8, long j9, C0300y c0300y) {
    }
}
