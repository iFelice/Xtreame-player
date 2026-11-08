package okhttp3.internal.ws;

import Q6.h;
import Q6.j;
import Q6.l;
import Q6.m;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Settings;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketReader implements Closeable {
    private boolean closed;
    private final j controlFrameBuffer;
    private final FrameCallback frameCallback;
    private long frameLength;
    private final boolean isClient;
    private boolean isControlFrame;
    private boolean isFinalFrame;
    private final h maskCursor;
    private final byte[] maskKey;
    private final j messageFrameBuffer;
    private MessageInflater messageInflater;
    private final boolean noContextTakeover;
    private int opcode;
    private final boolean perMessageDeflate;
    private boolean readingCompressedMessage;
    private final l source;

    public interface FrameCallback {
        void onReadClose(int i8, String str);

        void onReadMessage(m mVar);

        void onReadMessage(String str);

        void onReadPing(m mVar);

        void onReadPong(m mVar);
    }

    public WebSocketReader(boolean z7, l lVar, FrameCallback frameCallback, boolean z8, boolean z9) {
        q0.h(lVar, "source");
        q0.h(frameCallback, "frameCallback");
        this.isClient = z7;
        this.source = lVar;
        this.frameCallback = frameCallback;
        this.perMessageDeflate = z8;
        this.noContextTakeover = z9;
        this.controlFrameBuffer = new j();
        this.messageFrameBuffer = new j();
        this.maskKey = z7 ? null : new byte[4];
        this.maskCursor = z7 ? null : new h();
    }

    private final void readControlFrame() throws ProtocolException, EOFException {
        short s7;
        String strH0;
        long j8 = this.frameLength;
        if (j8 > 0) {
            this.source.i(this.controlFrameBuffer, j8);
            if (!this.isClient) {
                j jVar = this.controlFrameBuffer;
                h hVar = this.maskCursor;
                q0.e(hVar);
                jVar.e0(hVar);
                this.maskCursor.E(0L);
                WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                h hVar2 = this.maskCursor;
                byte[] bArr = this.maskKey;
                q0.e(bArr);
                webSocketProtocol.toggleMask(hVar2, bArr);
                this.maskCursor.close();
            }
        }
        switch (this.opcode) {
            case 8:
                j jVar2 = this.controlFrameBuffer;
                long j9 = jVar2.f6064H;
                if (j9 == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (j9 != 0) {
                    s7 = jVar2.readShort();
                    strH0 = this.controlFrameBuffer.h0();
                    String strCloseCodeExceptionMessage = WebSocketProtocol.INSTANCE.closeCodeExceptionMessage(s7);
                    if (strCloseCodeExceptionMessage != null) {
                        throw new ProtocolException(strCloseCodeExceptionMessage);
                    }
                } else {
                    s7 = 1005;
                    strH0 = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                this.frameCallback.onReadClose(s7, strH0);
                this.closed = true;
                return;
            case 9:
                FrameCallback frameCallback = this.frameCallback;
                j jVar3 = this.controlFrameBuffer;
                frameCallback.onReadPing(jVar3.d(jVar3.f6064H));
                return;
            case 10:
                FrameCallback frameCallback2 = this.frameCallback;
                j jVar4 = this.controlFrameBuffer;
                frameCallback2.onReadPong(jVar4.d(jVar4.f6064H));
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Util.toHexString(this.opcode));
        }
    }

    private final void readHeader() throws IOException {
        boolean z7;
        if (this.closed) {
            throw new IOException("closed");
        }
        long jTimeoutNanos = this.source.timeout().timeoutNanos();
        this.source.timeout().clearTimeout();
        try {
            int iAnd = Util.and(this.source.readByte(), 255);
            this.source.timeout().timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            int i8 = iAnd & 15;
            this.opcode = i8;
            boolean z8 = (iAnd & 128) != 0;
            this.isFinalFrame = z8;
            boolean z9 = (iAnd & 8) != 0;
            this.isControlFrame = z9;
            if (z9 && !z8) {
                throw new ProtocolException("Control frames must be final.");
            }
            boolean z10 = (iAnd & 64) != 0;
            if (i8 == 1 || i8 == 2) {
                if (!z10) {
                    z7 = false;
                } else {
                    if (!this.perMessageDeflate) {
                        throw new ProtocolException("Unexpected rsv1 flag");
                    }
                    z7 = true;
                }
                this.readingCompressedMessage = z7;
            } else if (z10) {
                throw new ProtocolException("Unexpected rsv1 flag");
            }
            if ((iAnd & 32) != 0) {
                throw new ProtocolException("Unexpected rsv2 flag");
            }
            if ((iAnd & 16) != 0) {
                throw new ProtocolException("Unexpected rsv3 flag");
            }
            int iAnd2 = Util.and(this.source.readByte(), 255);
            boolean z11 = (iAnd2 & 128) != 0;
            if (z11 == this.isClient) {
                throw new ProtocolException(this.isClient ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
            }
            long j8 = iAnd2 & 127;
            this.frameLength = j8;
            if (j8 == 126) {
                this.frameLength = Util.and(this.source.readShort(), Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            } else if (j8 == 127) {
                long j9 = this.source.readLong();
                this.frameLength = j9;
                if (j9 < 0) {
                    throw new ProtocolException("Frame length 0x" + Util.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            if (this.isControlFrame && this.frameLength > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            }
            if (z11) {
                l lVar = this.source;
                byte[] bArr = this.maskKey;
                q0.e(bArr);
                lVar.readFully(bArr);
            }
        } catch (Throwable th) {
            this.source.timeout().timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            throw th;
        }
    }

    private final void readMessage() throws IOException {
        while (!this.closed) {
            long j8 = this.frameLength;
            if (j8 > 0) {
                this.source.i(this.messageFrameBuffer, j8);
                if (!this.isClient) {
                    j jVar = this.messageFrameBuffer;
                    h hVar = this.maskCursor;
                    q0.e(hVar);
                    jVar.e0(hVar);
                    this.maskCursor.E(this.messageFrameBuffer.f6064H - this.frameLength);
                    WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                    h hVar2 = this.maskCursor;
                    byte[] bArr = this.maskKey;
                    q0.e(bArr);
                    webSocketProtocol.toggleMask(hVar2, bArr);
                    this.maskCursor.close();
                }
            }
            if (this.isFinalFrame) {
                return;
            }
            readUntilNonControlFrame();
            if (this.opcode != 0) {
                throw new ProtocolException("Expected continuation opcode. Got: " + Util.toHexString(this.opcode));
            }
        }
        throw new IOException("closed");
    }

    private final void readMessageFrame() throws IOException {
        int i8 = this.opcode;
        if (i8 != 1 && i8 != 2) {
            throw new ProtocolException("Unknown opcode: " + Util.toHexString(i8));
        }
        readMessage();
        if (this.readingCompressedMessage) {
            MessageInflater messageInflater = this.messageInflater;
            if (messageInflater == null) {
                messageInflater = new MessageInflater(this.noContextTakeover);
                this.messageInflater = messageInflater;
            }
            messageInflater.inflate(this.messageFrameBuffer);
        }
        if (i8 == 1) {
            this.frameCallback.onReadMessage(this.messageFrameBuffer.h0());
            return;
        }
        FrameCallback frameCallback = this.frameCallback;
        j jVar = this.messageFrameBuffer;
        frameCallback.onReadMessage(jVar.d(jVar.f6064H));
    }

    private final void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (!this.isControlFrame) {
                return;
            } else {
                readControlFrame();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        MessageInflater messageInflater = this.messageInflater;
        if (messageInflater != null) {
            messageInflater.close();
        }
    }

    public final l getSource() {
        return this.source;
    }

    public final void processNextFrame() {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }
}
