package okhttp3.internal.ws;

import Q6.h;
import Q6.j;
import Q6.k;
import Q6.m;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.Random;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketWriter implements Closeable {
    private final boolean isClient;
    private final h maskCursor;
    private final byte[] maskKey;
    private final j messageBuffer;
    private MessageDeflater messageDeflater;
    private final long minimumDeflateSize;
    private final boolean noContextTakeover;
    private final boolean perMessageDeflate;
    private final Random random;
    private final k sink;
    private final j sinkBuffer;
    private boolean writerClosed;

    public WebSocketWriter(boolean z7, k kVar, Random random, boolean z8, boolean z9, long j8) {
        q0.h(kVar, "sink");
        q0.h(random, "random");
        this.isClient = z7;
        this.sink = kVar;
        this.random = random;
        this.perMessageDeflate = z8;
        this.noContextTakeover = z9;
        this.minimumDeflateSize = j8;
        this.messageBuffer = new j();
        this.sinkBuffer = kVar.a();
        this.maskKey = z7 ? new byte[4] : null;
        this.maskCursor = z7 ? new h() : null;
    }

    private final void writeControlFrame(int i8, m mVar) throws IOException {
        if (this.writerClosed) {
            throw new IOException("closed");
        }
        int iC = mVar.c();
        if (iC > 125) {
            throw new IllegalArgumentException("Payload size must be less than or equal to 125".toString());
        }
        this.sinkBuffer.o0(i8 | 128);
        if (this.isClient) {
            this.sinkBuffer.o0(iC | 128);
            Random random = this.random;
            byte[] bArr = this.maskKey;
            q0.e(bArr);
            random.nextBytes(bArr);
            this.sinkBuffer.n0(this.maskKey);
            if (iC > 0) {
                j jVar = this.sinkBuffer;
                long j8 = jVar.f6064H;
                jVar.m0(mVar);
                j jVar2 = this.sinkBuffer;
                h hVar = this.maskCursor;
                q0.e(hVar);
                jVar2.e0(hVar);
                this.maskCursor.E(j8);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        } else {
            this.sinkBuffer.o0(iC);
            this.sinkBuffer.m0(mVar);
        }
        this.sink.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        MessageDeflater messageDeflater = this.messageDeflater;
        if (messageDeflater != null) {
            messageDeflater.close();
        }
    }

    public final Random getRandom() {
        return this.random;
    }

    public final k getSink() {
        return this.sink;
    }

    public final void writeClose(int i8, m mVar) throws EOFException {
        m mVarD = m.f6065J;
        if (i8 != 0 || mVar != null) {
            if (i8 != 0) {
                WebSocketProtocol.INSTANCE.validateCloseCode(i8);
            }
            j jVar = new j();
            jVar.t0(i8);
            if (mVar != null) {
                jVar.m0(mVar);
            }
            mVarD = jVar.d(jVar.f6064H);
        }
        try {
            writeControlFrame(8, mVarD);
        } finally {
            this.writerClosed = true;
        }
    }

    public final void writeMessageFrame(int i8, m mVar) throws IOException {
        q0.h(mVar, "data");
        if (this.writerClosed) {
            throw new IOException("closed");
        }
        this.messageBuffer.m0(mVar);
        int i9 = i8 | 128;
        if (this.perMessageDeflate && mVar.c() >= this.minimumDeflateSize) {
            MessageDeflater messageDeflater = this.messageDeflater;
            if (messageDeflater == null) {
                messageDeflater = new MessageDeflater(this.noContextTakeover);
                this.messageDeflater = messageDeflater;
            }
            messageDeflater.deflate(this.messageBuffer);
            i9 = i8 | 192;
        }
        long j8 = this.messageBuffer.f6064H;
        this.sinkBuffer.o0(i9);
        int i10 = this.isClient ? 128 : 0;
        if (j8 <= 125) {
            this.sinkBuffer.o0(i10 | ((int) j8));
        } else if (j8 <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            this.sinkBuffer.o0(i10 | WebSocketProtocol.PAYLOAD_SHORT);
            this.sinkBuffer.t0((int) j8);
        } else {
            this.sinkBuffer.o0(i10 | 127);
            this.sinkBuffer.s0(j8);
        }
        if (this.isClient) {
            Random random = this.random;
            byte[] bArr = this.maskKey;
            q0.e(bArr);
            random.nextBytes(bArr);
            this.sinkBuffer.n0(this.maskKey);
            if (j8 > 0) {
                j jVar = this.messageBuffer;
                h hVar = this.maskCursor;
                q0.e(hVar);
                jVar.e0(hVar);
                this.maskCursor.E(0L);
                WebSocketProtocol.INSTANCE.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        }
        this.sinkBuffer.write(this.messageBuffer, j8);
        this.sink.h();
    }

    public final void writePing(m mVar) {
        q0.h(mVar, "payload");
        writeControlFrame(9, mVar);
    }

    public final void writePong(m mVar) throws IOException {
        q0.h(mVar, "payload");
        writeControlFrame(10, mVar);
    }
}
