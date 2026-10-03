package okhttp3;

import A0.O;
import D6.e;
import Q6.D;
import Q6.F;
import Q6.G;
import Q6.j;
import Q6.l;
import Q6.m;
import Q6.u;
import Q6.y;
import android.support.v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http1.HeadersReader;
import p113o3.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class MultipartReader implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final u afterBoundaryOptions;
    private final String boundary;
    private boolean closed;
    private final m crlfDashDashBoundary;
    private PartSource currentPart;
    private final m dashDashBoundary;
    private boolean noMoreParts;
    private int partCount;
    private final l source;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public final u getAfterBoundaryOptions() {
            return MultipartReader.afterBoundaryOptions;
        }
    }

    public static final class Part implements Closeable {
        private final l body;
        private final Headers headers;

        public Part(Headers headers, l lVar) {
            q0.h(headers, "headers");
            q0.h(lVar, "body");
            this.headers = headers;
            this.body = lVar;
        }

        public final l body() {
            return this.body;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.body.close();
        }

        public final Headers headers() {
            return this.headers;
        }
    }

    public final class PartSource implements D {
        private final G timeout = new G();

        public PartSource() {
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (q0.c(MultipartReader.this.currentPart, this)) {
                MultipartReader.this.currentPart = null;
            }
        }

        @Override // Q6.D
        public long read(j jVar, long j8) {
            q0.h(jVar, "sink");
            if (j8 < 0) {
                throw new IllegalArgumentException(O.z("byteCount < 0: ", j8).toString());
            }
            if (!q0.c(MultipartReader.this.currentPart, this)) {
                throw new IllegalStateException("closed".toString());
            }
            G gTimeout = MultipartReader.this.source.timeout();
            G g8 = this.timeout;
            MultipartReader multipartReader = MultipartReader.this;
            long jTimeoutNanos = gTimeout.timeoutNanos();
            F f8 = G.Companion;
            long jTimeoutNanos2 = g8.timeoutNanos();
            long jTimeoutNanos3 = gTimeout.timeoutNanos();
            f8.getClass();
            if (jTimeoutNanos2 == 0 || (jTimeoutNanos3 != 0 && jTimeoutNanos2 >= jTimeoutNanos3)) {
                jTimeoutNanos2 = jTimeoutNanos3;
            }
            gTimeout.timeout(jTimeoutNanos2, TimeUnit.NANOSECONDS);
            if (!gTimeout.hasDeadline()) {
                if (g8.hasDeadline()) {
                    gTimeout.deadlineNanoTime(g8.deadlineNanoTime());
                }
                try {
                    long jCurrentPartBytesRemaining = multipartReader.currentPartBytesRemaining(j8);
                    return jCurrentPartBytesRemaining == 0 ? -1L : multipartReader.source.read(jVar, jCurrentPartBytesRemaining);
                } finally {
                    gTimeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                    if (g8.hasDeadline()) {
                        gTimeout.clearDeadline();
                    }
                }
            }
            long jDeadlineNanoTime = gTimeout.deadlineNanoTime();
            if (g8.hasDeadline()) {
                gTimeout.deadlineNanoTime(Math.min(gTimeout.deadlineNanoTime(), g8.deadlineNanoTime()));
            }
            try {
                long jCurrentPartBytesRemaining2 = multipartReader.currentPartBytesRemaining(j8);
                return jCurrentPartBytesRemaining2 == 0 ? -1L : multipartReader.source.read(jVar, jCurrentPartBytesRemaining2);
            } finally {
                gTimeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (g8.hasDeadline()) {
                    gTimeout.deadlineNanoTime(jDeadlineNanoTime);
                }
            }
        }

        @Override // Q6.D
        public G timeout() {
            return this.timeout;
        }
    }

    static {
        m mVar = m.f6065J;
        afterBoundaryOptions = F2.G.H(F2.G.C("\r\n"), F2.G.C("--"), F2.G.C(" "), F2.G.C("\t"));
    }

    public MultipartReader(l lVar, String str) {
        q0.h(lVar, "source");
        q0.h(str, "boundary");
        this.source = lVar;
        this.boundary = str;
        j jVar = new j();
        jVar.w0("--");
        jVar.w0(str);
        this.dashDashBoundary = jVar.d(jVar.f6064H);
        j jVar2 = new j();
        jVar2.w0("\r\n--");
        jVar2.w0(str);
        this.crlfDashDashBoundary = jVar2.d(jVar2.f6064H);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long currentPartBytesRemaining(long j8) {
        long j9;
        long j10;
        this.source.U(this.crlfDashDashBoundary.c());
        j jVarA = this.source.a();
        m mVar = this.crlfDashDashBoundary;
        jVarA.getClass();
        q0.h(mVar, "bytes");
        if (mVar.c() <= 0) {
            throw new IllegalArgumentException("bytes is empty".toString());
        }
        y yVar = jVarA.f6063G;
        if (yVar == null) {
            j10 = -1;
            break;
        }
        long j11 = jVarA.f6064H;
        if (j11 >= 0) {
            long j12 = 0;
            while (true) {
                long j13 = ((long) (yVar.f6099c - yVar.f6098b)) + j12;
                j9 = 0;
                if (j13 > 0) {
                    break;
                }
                yVar = yVar.f6102f;
                q0.e(yVar);
                j12 = j13;
            }
            byte[] bArrE = mVar.e();
            byte b8 = bArrE[0];
            int iC = mVar.c();
            long j14 = (jVarA.f6064H - ((long) iC)) + 1;
            loop4: while (true) {
                if (j12 >= j14) {
                    j10 = -1;
                    break;
                }
                long j15 = j14;
                int iMin = (int) Math.min(yVar.f6099c, (((long) yVar.f6098b) + j14) - j12);
                for (int i8 = (int) ((((long) yVar.f6098b) + j9) - j12); i8 < iMin; i8++) {
                    if (yVar.f6097a[i8] == b8 && R6.a.a(yVar, i8 + 1, bArrE, iC)) {
                        j10 = ((long) (i8 - yVar.f6098b)) + j12;
                        break loop4;
                    }
                }
                j9 = ((long) (yVar.f6099c - yVar.f6098b)) + j12;
                yVar = yVar.f6102f;
                q0.e(yVar);
                j12 = j9;
                j14 = j15;
            }
        } else {
            while (j11 > 0) {
                yVar = yVar.f6103g;
                q0.e(yVar);
                j11 -= (long) (yVar.f6099c - yVar.f6098b);
            }
            byte[] bArrE2 = mVar.e();
            byte b9 = bArrE2[0];
            int iC2 = mVar.c();
            long j16 = (jVarA.f6064H - ((long) iC2)) + 1;
            long j17 = 0;
            loop1: while (true) {
                if (j11 >= j16) {
                    j10 = -1;
                    break;
                }
                long j18 = j16;
                int iMin2 = (int) Math.min(yVar.f6099c, (((long) yVar.f6098b) + j16) - j11);
                for (int i9 = (int) ((((long) yVar.f6098b) + j17) - j11); i9 < iMin2; i9++) {
                    if (yVar.f6097a[i9] == b9 && R6.a.a(yVar, i9 + 1, bArrE2, iC2)) {
                        j10 = ((long) (i9 - yVar.f6098b)) + j11;
                        break loop1;
                    }
                }
                j17 = j11 + ((long) (yVar.f6099c - yVar.f6098b));
                yVar = yVar.f6102f;
                q0.e(yVar);
                j11 = j17;
                j16 = j18;
            }
        }
        return j10 == -1 ? Math.min(j8, (this.source.a().f6064H - ((long) this.crlfDashDashBoundary.c())) + 1) : Math.min(j8, j10);
    }

    public final String boundary() {
        return this.boundary;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.currentPart = null;
        this.source.close();
    }

    public final Part nextPart() throws ProtocolException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.noMoreParts) {
            return null;
        }
        if (this.partCount == 0 && this.source.s(0L, this.dashDashBoundary)) {
            this.source.b(this.dashDashBoundary.c());
        } else {
            while (true) {
                long jCurrentPartBytesRemaining = currentPartBytesRemaining(PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (jCurrentPartBytesRemaining == 0) {
                    break;
                }
                this.source.b(jCurrentPartBytesRemaining);
            }
            this.source.b(this.crlfDashDashBoundary.c());
        }
        boolean z7 = false;
        while (true) {
            int iY = this.source.Y(afterBoundaryOptions);
            if (iY == -1) {
                throw new ProtocolException("unexpected characters after boundary");
            }
            if (iY == 0) {
                this.partCount++;
                Headers headers = new HeadersReader(this.source).readHeaders();
                PartSource partSource = new PartSource();
                this.currentPart = partSource;
                return new Part(headers, r.c(partSource));
            }
            if (iY == 1) {
                if (z7) {
                    throw new ProtocolException("unexpected characters after boundary");
                }
                if (this.partCount == 0) {
                    throw new ProtocolException("expected at least 1 part");
                }
                this.noMoreParts = true;
                return null;
            }
            if (iY == 2 || iY == 3) {
                z7 = true;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MultipartReader(ResponseBody responseBody) throws ProtocolException {
        String strParameter;
        q0.h(responseBody, "response");
        l lVarSource = responseBody.source();
        MediaType mediaTypeContentType = responseBody.contentType();
        if (mediaTypeContentType != null && (strParameter = mediaTypeContentType.parameter("boundary")) != null) {
            this(lVarSource, strParameter);
            return;
        }
        throw new ProtocolException("expected the Content-Type to have a boundary parameter");
    }
}
