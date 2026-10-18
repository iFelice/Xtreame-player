package okhttp3.internal.http2;

import D6.e;
import Q6.j;
import Q6.k;
import com.google.android.gms.common.api.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import p000a.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Http2Writer implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final j hpackBuffer;
    private final Hpack.Writer hpackWriter;
    private int maxFrameSize;
    private final k sink;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }
    }

    public Http2Writer(k kVar, boolean z7) {
        q0.h(kVar, "sink");
        this.sink = kVar;
        this.client = z7;
        j jVar = new j();
        this.hpackBuffer = jVar;
        this.maxFrameSize = Http2.INITIAL_MAX_FRAME_SIZE;
        this.hpackWriter = new Hpack.Writer(0, false, jVar, 3, null);
    }

    private final void writeContinuationFrames(int i8, long j8) {
        while (j8 > 0) {
            long jMin = Math.min(this.maxFrameSize, j8);
            j8 -= jMin;
            frameHeader(i8, (int) jMin, 9, j8 == 0 ? 4 : 0);
            this.sink.write(this.hpackBuffer, jMin);
        }
    }

    public final synchronized void applyAndAckSettings(Settings settings) {
        try {
            q0.h(settings, "peerSettings");
            if (this.closed) {
                throw new IOException("closed");
            }
            this.maxFrameSize = settings.getMaxFrameSize(this.maxFrameSize);
            if (settings.getHeaderTableSize() != -1) {
                this.hpackWriter.resizeHeaderTable(settings.getHeaderTableSize());
            }
            frameHeader(0, 0, 4, 1);
            this.sink.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.closed = true;
        this.sink.close();
    }

    public final synchronized void connectionPreface() {
        try {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (this.client) {
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Util.format(">> CONNECTION " + Http2.CONNECTION_PREFACE.d(), new Object[0]));
                }
                this.sink.T(Http2.CONNECTION_PREFACE);
                this.sink.flush();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void data(boolean z7, int i8, j jVar, int i9) {
        if (this.closed) {
            throw new IOException("closed");
        }
        dataFrame(i8, z7 ? 1 : 0, jVar, i9);
    }

    public final void dataFrame(int i8, int i9, j jVar, int i10) {
        frameHeader(i8, i10, 0, i9);
        if (i10 > 0) {
            k kVar = this.sink;
            q0.e(jVar);
            kVar.write(jVar, i10);
        }
    }

    public final synchronized void flush() {
        if (this.closed) {
            throw new IOException("closed");
        }
        this.sink.flush();
    }

    public final void frameHeader(int i8, int i9, int i10, int i11) {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Http2.INSTANCE.frameLog(false, i8, i9, i10, i11));
        }
        if (i9 > this.maxFrameSize) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.maxFrameSize + ": " + i9).toString());
        }
        if ((Integer.MIN_VALUE & i8) != 0) {
            throw new IllegalArgumentException(r.f("reserved bit set: ", i8).toString());
        }
        Util.writeMedium(this.sink, i9);
        this.sink.r(i10 & 255);
        this.sink.r(i11 & 255);
        this.sink.n(i8 & d.API_PRIORITY_OTHER);
    }

    public final Hpack.Writer getHpackWriter() {
        return this.hpackWriter;
    }

    public final synchronized void goAway(int i8, ErrorCode errorCode, byte[] bArr) {
        try {
            q0.h(errorCode, "errorCode");
            q0.h(bArr, "debugData");
            if (this.closed) {
                throw new IOException("closed");
            }
            if (errorCode.getHttpCode() == -1) {
                throw new IllegalArgumentException("errorCode.httpCode == -1".toString());
            }
            frameHeader(0, bArr.length + 8, 7, 0);
            this.sink.n(i8);
            this.sink.n(errorCode.getHttpCode());
            if (!(bArr.length == 0)) {
                this.sink.M(bArr);
            }
            this.sink.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void headers(boolean z7, int i8, List<Header> list) {
        q0.h(list, "headerBlock");
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(list);
        long j8 = this.hpackBuffer.f6064H;
        long jMin = Math.min(this.maxFrameSize, j8);
        int i9 = j8 == jMin ? 4 : 0;
        if (z7) {
            i9 |= 1;
        }
        frameHeader(i8, (int) jMin, 1, i9);
        this.sink.write(this.hpackBuffer, jMin);
        if (j8 > jMin) {
            writeContinuationFrames(i8, j8 - jMin);
        }
    }

    public final int maxDataLength() {
        return this.maxFrameSize;
    }

    public final synchronized void ping(boolean z7, int i8, int i9) {
        if (this.closed) {
            throw new IOException("closed");
        }
        frameHeader(0, 8, 6, z7 ? 1 : 0);
        this.sink.n(i8);
        this.sink.n(i9);
        this.sink.flush();
    }

    public final synchronized void pushPromise(int i8, int i9, List<Header> list) {
        q0.h(list, "requestHeaders");
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(list);
        long j8 = this.hpackBuffer.f6064H;
        int iMin = (int) Math.min(((long) this.maxFrameSize) - 4, j8);
        long j9 = iMin;
        frameHeader(i8, iMin + 4, 5, j8 == j9 ? 4 : 0);
        this.sink.n(i9 & d.API_PRIORITY_OTHER);
        this.sink.write(this.hpackBuffer, j9);
        if (j8 > j9) {
            writeContinuationFrames(i8, j8 - j9);
        }
    }

    public final synchronized void rstStream(int i8, ErrorCode errorCode) {
        q0.h(errorCode, "errorCode");
        if (this.closed) {
            throw new IOException("closed");
        }
        if (errorCode.getHttpCode() == -1) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        frameHeader(i8, 4, 3, 0);
        this.sink.n(errorCode.getHttpCode());
        this.sink.flush();
    }

    public final synchronized void settings(Settings settings) {
        int i8;
        try {
            q0.h(settings, "settings");
            if (this.closed) {
                throw new IOException("closed");
            }
            int i9 = 0;
            frameHeader(0, settings.size() * 6, 4, 0);
            while (i9 < 10) {
                if (settings.isSet(i9)) {
                    if (i9 != 4) {
                        i8 = i9 != 7 ? i9 : 4;
                    } else {
                        i8 = 3;
                    }
                    this.sink.j(i8);
                    this.sink.n(settings.get(i9));
                }
                i9++;
            }
            this.sink.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void windowUpdate(int i8, long j8) {
        if (this.closed) {
            throw new IOException("closed");
        }
        if (j8 == 0 || j8 > 2147483647L) {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j8).toString());
        }
        frameHeader(i8, 4, 8, 0);
        this.sink.n((int) j8);
        this.sink.flush();
    }
}
