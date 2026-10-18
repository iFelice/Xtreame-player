package okhttp3.internal.http2;

import A0.O;
import D6.e;
import F6.a;
import Q6.D;
import Q6.G;
import Q6.j;
import Q6.l;
import Q6.m;
import com.google.android.gms.common.api.d;
import com.google.protobuf.U2;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import p000a.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Http2Reader implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger;
    private final boolean client;
    private final ContinuationSource continuation;
    private final Hpack.Reader hpackReader;
    private final l source;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public final Logger getLogger() {
            return Http2Reader.logger;
        }

        public final int lengthWithoutPadding(int i8, int i9, int i10) throws IOException {
            if ((i9 & 8) != 0) {
                i8--;
            }
            if (i10 <= i8) {
                return i8 - i10;
            }
            throw new IOException(U2.j("PROTOCOL_ERROR padding ", i10, " > remaining length ", i8));
        }
    }

    public static final class ContinuationSource implements D {
        private int flags;
        private int left;
        private int length;
        private int padding;
        private final l source;
        private int streamId;

        public ContinuationSource(l lVar) {
            q0.h(lVar, "source");
            this.source = lVar;
        }

        private final void readContinuationHeader() throws IOException {
            int i8 = this.streamId;
            int medium = Util.readMedium(this.source);
            this.left = medium;
            this.length = medium;
            int iAnd = Util.and(this.source.readByte(), 255);
            this.flags = Util.and(this.source.readByte(), 255);
            Companion companion = Http2Reader.Companion;
            if (companion.getLogger().isLoggable(Level.FINE)) {
                companion.getLogger().fine(Http2.INSTANCE.frameLog(true, this.streamId, this.length, iAnd, this.flags));
            }
            int i9 = this.source.readInt() & d.API_PRIORITY_OTHER;
            this.streamId = i9;
            if (iAnd == 9) {
                if (i9 != i8) {
                    throw new IOException("TYPE_CONTINUATION streamId changed");
                }
            } else {
                throw new IOException(iAnd + " != TYPE_CONTINUATION");
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        public final int getFlags() {
            return this.flags;
        }

        public final int getLeft() {
            return this.left;
        }

        public final int getLength() {
            return this.length;
        }

        public final int getPadding() {
            return this.padding;
        }

        public final int getStreamId() {
            return this.streamId;
        }

        @Override // Q6.D
        public long read(j jVar, long j8) throws IOException {
            q0.h(jVar, "sink");
            while (true) {
                int i8 = this.left;
                if (i8 != 0) {
                    long j9 = this.source.read(jVar, Math.min(j8, i8));
                    if (j9 == -1) {
                        return -1L;
                    }
                    this.left -= (int) j9;
                    return j9;
                }
                this.source.b(this.padding);
                this.padding = 0;
                if ((this.flags & 4) != 0) {
                    return -1L;
                }
                readContinuationHeader();
            }
        }

        public final void setFlags(int i8) {
            this.flags = i8;
        }

        public final void setLeft(int i8) {
            this.left = i8;
        }

        public final void setLength(int i8) {
            this.length = i8;
        }

        public final void setPadding(int i8) {
            this.padding = i8;
        }

        public final void setStreamId(int i8) {
            this.streamId = i8;
        }

        @Override // Q6.D
        public G timeout() {
            return this.source.timeout();
        }
    }

    public interface Handler {
        void ackSettings();

        void alternateService(int i8, String str, m mVar, String str2, int i9, long j8);

        void data(boolean z7, int i8, l lVar, int i9);

        void goAway(int i8, ErrorCode errorCode, m mVar);

        void headers(boolean z7, int i8, int i9, List<Header> list);

        void ping(boolean z7, int i8, int i9);

        void priority(int i8, int i9, int i10, boolean z7);

        void pushPromise(int i8, int i9, List<Header> list);

        void rstStream(int i8, ErrorCode errorCode);

        void settings(boolean z7, Settings settings);

        void windowUpdate(int i8, long j8);
    }

    static {
        Logger logger2 = Logger.getLogger(Http2.class.getName());
        q0.g(logger2, "getLogger(Http2::class.java.name)");
        logger = logger2;
    }

    public Http2Reader(l lVar, boolean z7) {
        q0.h(lVar, "source");
        this.source = lVar;
        this.client = z7;
        ContinuationSource continuationSource = new ContinuationSource(lVar);
        this.continuation = continuationSource;
        this.hpackReader = new Hpack.Reader(continuationSource, 4096, 0, 4, null);
    }

    private final void readData(Handler handler, int i8, int i9, int i10) throws IOException {
        if (i10 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
        }
        boolean z7 = (i9 & 1) != 0;
        if ((i9 & 32) != 0) {
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        int iAnd = (i9 & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        handler.data(z7, i10, this.source, Companion.lengthWithoutPadding(i8, i9, iAnd));
        this.source.b(iAnd);
    }

    private final void readGoAway(Handler handler, int i8, int i9, int i10) throws IOException {
        if (i8 < 8) {
            throw new IOException(r.f("TYPE_GOAWAY length < 8: ", i8));
        }
        if (i10 != 0) {
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        int i11 = this.source.readInt();
        int i12 = this.source.readInt();
        int i13 = i8 - 8;
        ErrorCode errorCodeFromHttp2 = ErrorCode.Companion.fromHttp2(i12);
        if (errorCodeFromHttp2 == null) {
            throw new IOException(r.f("TYPE_GOAWAY unexpected error code: ", i12));
        }
        m mVarD = m.f6065J;
        if (i13 > 0) {
            mVarD = this.source.d(i13);
        }
        handler.goAway(i11, errorCodeFromHttp2, mVarD);
    }

    private final List<Header> readHeaderBlock(int i8, int i9, int i10, int i11) throws IOException {
        this.continuation.setLeft(i8);
        ContinuationSource continuationSource = this.continuation;
        continuationSource.setLength(continuationSource.getLeft());
        this.continuation.setPadding(i9);
        this.continuation.setFlags(i10);
        this.continuation.setStreamId(i11);
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    private final void readHeaders(Handler handler, int i8, int i9, int i10) throws IOException {
        if (i10 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
        }
        boolean z7 = (i9 & 1) != 0;
        int iAnd = (i9 & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        if ((i9 & 32) != 0) {
            readPriority(handler, i10);
            i8 -= 5;
        }
        handler.headers(z7, i10, -1, readHeaderBlock(Companion.lengthWithoutPadding(i8, i9, iAnd), iAnd, i9, i10));
    }

    private final void readPing(Handler handler, int i8, int i9, int i10) throws IOException {
        if (i8 != 8) {
            throw new IOException(r.f("TYPE_PING length != 8: ", i8));
        }
        if (i10 != 0) {
            throw new IOException("TYPE_PING streamId != 0");
        }
        handler.ping((i9 & 1) != 0, this.source.readInt(), this.source.readInt());
    }

    private final void readPriority(Handler handler, int i8, int i9, int i10) throws IOException {
        if (i8 != 5) {
            throw new IOException(O.y("TYPE_PRIORITY length: ", i8, " != 5"));
        }
        if (i10 == 0) {
            throw new IOException("TYPE_PRIORITY streamId == 0");
        }
        readPriority(handler, i10);
    }

    private final void readPushPromise(Handler handler, int i8, int i9, int i10) throws IOException {
        if (i10 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
        }
        int iAnd = (i9 & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        handler.pushPromise(i10, this.source.readInt() & d.API_PRIORITY_OTHER, readHeaderBlock(Companion.lengthWithoutPadding(i8 - 4, i9, iAnd), iAnd, i9, i10));
    }

    private final void readRstStream(Handler handler, int i8, int i9, int i10) throws IOException {
        if (i8 != 4) {
            throw new IOException(O.y("TYPE_RST_STREAM length: ", i8, " != 4"));
        }
        if (i10 == 0) {
            throw new IOException("TYPE_RST_STREAM streamId == 0");
        }
        int i11 = this.source.readInt();
        ErrorCode errorCodeFromHttp2 = ErrorCode.Companion.fromHttp2(i11);
        if (errorCodeFromHttp2 == null) {
            throw new IOException(r.f("TYPE_RST_STREAM unexpected error code: ", i11));
        }
        handler.rstStream(i10, errorCodeFromHttp2);
    }

    private final void readSettings(Handler handler, int i8, int i9, int i10) throws IOException {
        if (i10 != 0) {
            throw new IOException("TYPE_SETTINGS streamId != 0");
        }
        if ((i9 & 1) != 0) {
            if (i8 != 0) {
                throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
            }
            handler.ackSettings();
            return;
        }
        if (i8 % 6 != 0) {
            throw new IOException(r.f("TYPE_SETTINGS length % 6 != 0: ", i8));
        }
        Settings settings = new Settings();
        a aVarP = S3.e.p(S3.e.s(0, i8), 6);
        int i11 = aVarP.f3265G;
        int i12 = aVarP.f3266H;
        int i13 = aVarP.f3267I;
        if ((i13 > 0 && i11 <= i12) || (i13 < 0 && i12 <= i11)) {
            while (true) {
                int iAnd = Util.and(this.source.readShort(), Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                int i14 = this.source.readInt();
                if (iAnd != 2) {
                    if (iAnd == 3) {
                        iAnd = 4;
                    } else if (iAnd != 4) {
                        if (iAnd == 5 && (i14 < 16384 || i14 > 16777215)) {
                            throw new IOException(r.f("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: ", i14));
                        }
                    } else {
                        if (i14 < 0) {
                            throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                        }
                        iAnd = 7;
                    }
                } else if (i14 != 0 && i14 != 1) {
                    throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                }
                settings.set(iAnd, i14);
                if (i11 != i12) {
                    i11 += i13;
                }
            }
        }
        handler.settings(false, settings);
    }

    private final void readWindowUpdate(Handler handler, int i8, int i9, int i10) throws IOException {
        if (i8 != 4) {
            throw new IOException(r.f("TYPE_WINDOW_UPDATE length !=4: ", i8));
        }
        long jAnd = Util.and(this.source.readInt(), 2147483647L);
        if (jAnd == 0) {
            throw new IOException("windowSizeIncrement was 0");
        }
        handler.windowUpdate(i10, jAnd);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    public final boolean nextFrame(boolean z7, Handler handler) throws IOException {
        q0.h(handler, "handler");
        try {
            this.source.U(9L);
            int medium = Util.readMedium(this.source);
            if (medium > 16384) {
                throw new IOException(r.f("FRAME_SIZE_ERROR: ", medium));
            }
            int iAnd = Util.and(this.source.readByte(), 255);
            int iAnd2 = Util.and(this.source.readByte(), 255);
            int i8 = this.source.readInt() & d.API_PRIORITY_OTHER;
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine(Http2.INSTANCE.frameLog(true, i8, medium, iAnd, iAnd2));
            }
            if (z7 && iAnd != 4) {
                throw new IOException("Expected a SETTINGS frame but was " + Http2.INSTANCE.formattedType$okhttp(iAnd));
            }
            switch (iAnd) {
                case 0:
                    readData(handler, medium, iAnd2, i8);
                    return true;
                case 1:
                    readHeaders(handler, medium, iAnd2, i8);
                    return true;
                case 2:
                    readPriority(handler, medium, iAnd2, i8);
                    return true;
                case 3:
                    readRstStream(handler, medium, iAnd2, i8);
                    return true;
                case 4:
                    readSettings(handler, medium, iAnd2, i8);
                    return true;
                case 5:
                    readPushPromise(handler, medium, iAnd2, i8);
                    return true;
                case 6:
                    readPing(handler, medium, iAnd2, i8);
                    return true;
                case 7:
                    readGoAway(handler, medium, iAnd2, i8);
                    return true;
                case 8:
                    readWindowUpdate(handler, medium, iAnd2, i8);
                    return true;
                default:
                    this.source.b(medium);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void readConnectionPreface(Handler handler) throws IOException {
        q0.h(handler, "handler");
        if (this.client) {
            if (!nextFrame(true, handler)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        l lVar = this.source;
        m mVar = Http2.CONNECTION_PREFACE;
        m mVarD = lVar.d(mVar.c());
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Util.format("<< CONNECTION " + mVarD.d(), new Object[0]));
        }
        if (!q0.c(mVar, mVarD)) {
            throw new IOException("Expected a connection header but was ".concat(mVarD.k()));
        }
    }

    private final void readPriority(Handler handler, int i8) {
        int i9 = this.source.readInt();
        handler.priority(i8, i9 & d.API_PRIORITY_OTHER, Util.and(this.source.readByte(), 255) + 1, (Integer.MIN_VALUE & i9) != 0);
    }
}
