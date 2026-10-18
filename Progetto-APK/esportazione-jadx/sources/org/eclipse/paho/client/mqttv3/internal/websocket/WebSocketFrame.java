package org.eclipse.paho.client.mqttv3.internal.websocket;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes2.dex */
public class WebSocketFrame {
    public static final int frameLengthOverhead = 6;
    private boolean closeFlag;
    private boolean fin;
    private byte opcode;
    private byte[] payload;

    public WebSocketFrame(byte b8, boolean z7, byte[] bArr) {
        this.closeFlag = false;
        this.opcode = b8;
        this.fin = z7;
        if (bArr != null) {
            this.payload = (byte[]) bArr.clone();
        }
    }

    public static void appendFinAndOpCode(ByteBuffer byteBuffer, byte b8, boolean z7) {
        byteBuffer.put((byte) ((b8 & 15) | (z7 ? (byte) 128 : (byte) 0)));
    }

    private static void appendLength(ByteBuffer byteBuffer, int i8, boolean z7) {
        if (i8 < 0) {
            throw new IllegalArgumentException("Length cannot be negative");
        }
        int i9 = z7 ? -128 : 0;
        if (i8 <= 65535) {
            if (i8 < 126) {
                byteBuffer.put((byte) (i8 | i9));
                return;
            }
            byteBuffer.put((byte) (i9 | WebSocketProtocol.PAYLOAD_SHORT));
            byteBuffer.put((byte) (i8 >> 8));
            byteBuffer.put((byte) (i8 & 255));
            return;
        }
        byteBuffer.put((byte) (i9 | 127));
        byteBuffer.put((byte) 0);
        byteBuffer.put((byte) 0);
        byteBuffer.put((byte) 0);
        byteBuffer.put((byte) 0);
        byteBuffer.put((byte) ((i8 >> 24) & 255));
        byteBuffer.put((byte) ((i8 >> 16) & 255));
        byteBuffer.put((byte) ((i8 >> 8) & 255));
        byteBuffer.put((byte) (i8 & 255));
    }

    public static void appendLengthAndMask(ByteBuffer byteBuffer, int i8, byte[] bArr) {
        if (bArr == null) {
            appendLength(byteBuffer, i8, false);
        } else {
            appendLength(byteBuffer, i8, true);
            byteBuffer.put(bArr);
        }
    }

    public static byte[] generateMaskingKey() {
        SecureRandom secureRandom = new SecureRandom();
        return new byte[]{(byte) secureRandom.nextInt(255), (byte) secureRandom.nextInt(255), (byte) secureRandom.nextInt(255), (byte) secureRandom.nextInt(255)};
    }

    private void setFinAndOpCode(byte b8) {
        this.fin = (b8 & 128) != 0;
        this.opcode = (byte) (b8 & 15);
    }

    public byte[] encodeFrame() {
        byte[] bArr = this.payload;
        int length = bArr.length;
        int i8 = length + 6;
        if (bArr.length > 65535) {
            i8 = length + 14;
        } else if (bArr.length >= 126) {
            i8 = length + 8;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i8);
        appendFinAndOpCode(byteBufferAllocate, this.opcode, this.fin);
        byte[] bArrGenerateMaskingKey = generateMaskingKey();
        appendLengthAndMask(byteBufferAllocate, this.payload.length, bArrGenerateMaskingKey);
        int i9 = 0;
        while (true) {
            byte[] bArr2 = this.payload;
            if (i9 >= bArr2.length) {
                byteBufferAllocate.flip();
                return byteBufferAllocate.array();
            }
            byte b8 = (byte) (bArr2[i9] ^ bArrGenerateMaskingKey[i9 % 4]);
            bArr2[i9] = b8;
            byteBufferAllocate.put(b8);
            i9++;
        }
    }

    public byte getOpcode() {
        return this.opcode;
    }

    public byte[] getPayload() {
        return this.payload;
    }

    public boolean isCloseFlag() {
        return this.closeFlag;
    }

    public boolean isFin() {
        return this.fin;
    }

    public WebSocketFrame(byte[] bArr) {
        byte[] bArr2;
        int i8 = 0;
        this.closeFlag = false;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        setFinAndOpCode(byteBufferWrap.get());
        byte b8 = byteBufferWrap.get();
        boolean z7 = (b8 & 128) != 0;
        int i9 = (byte) (b8 & 127);
        int i10 = i9 == 127 ? 8 : i9 == 126 ? 2 : 0;
        while (true) {
            i10--;
            if (i10 <= 0) {
                break;
            } else {
                i9 |= (byteBufferWrap.get() & 255) << (i10 * 8);
            }
        }
        if (z7) {
            bArr2 = new byte[4];
            byteBufferWrap.get(bArr2, 0, 4);
        } else {
            bArr2 = null;
        }
        byte[] bArr3 = new byte[i9];
        this.payload = bArr3;
        byteBufferWrap.get(bArr3, 0, i9);
        if (!z7) {
            return;
        }
        while (true) {
            byte[] bArr4 = this.payload;
            if (i8 >= bArr4.length) {
                return;
            }
            bArr4[i8] = (byte) (bArr4[i8] ^ bArr2[i8 % 4]);
            i8++;
        }
    }

    public WebSocketFrame(InputStream inputStream) throws IOException {
        byte[] bArr;
        int i8 = 0;
        this.closeFlag = false;
        setFinAndOpCode((byte) inputStream.read());
        byte b8 = this.opcode;
        int i9 = 8;
        if (b8 != 2) {
            if (b8 == 8) {
                this.closeFlag = true;
                return;
            } else {
                throw new IOException("Invalid Frame: Opcode: " + ((int) this.opcode));
            }
        }
        byte b9 = (byte) inputStream.read();
        boolean z7 = (b9 & 128) != 0;
        int i10 = (byte) (b9 & 127);
        if (i10 != 127) {
            i9 = i10 == 126 ? 2 : 0;
        }
        i10 = i9 > 0 ? 0 : i10;
        while (true) {
            i9--;
            if (i9 < 0) {
                break;
            } else {
                i10 |= (((byte) inputStream.read()) & 255) << (i9 * 8);
            }
        }
        if (z7) {
            bArr = new byte[4];
            inputStream.read(bArr, 0, 4);
        } else {
            bArr = null;
        }
        byte[] bArr2 = bArr;
        this.payload = new byte[i10];
        int i11 = i10;
        int i12 = 0;
        while (i12 != i10) {
            int i13 = inputStream.read(this.payload, i12, i11);
            i12 += i13;
            i11 -= i13;
        }
        if (!z7) {
            return;
        }
        while (true) {
            byte[] bArr3 = this.payload;
            if (i8 >= bArr3.length) {
                return;
            }
            bArr3[i8] = (byte) (bArr3[i8] ^ bArr2[i8 % 4]);
            i8++;
        }
    }
}
