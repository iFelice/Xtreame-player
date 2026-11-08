package okhttp3.internal.ws;

import A0.O;
import F2.G;
import Q6.h;
import Q6.j;
import Q6.m;
import p000a.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketProtocol {
    public static final String ACCEPT_MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    public static final int B0_FLAG_FIN = 128;
    public static final int B0_FLAG_RSV1 = 64;
    public static final int B0_FLAG_RSV2 = 32;
    public static final int B0_FLAG_RSV3 = 16;
    public static final int B0_MASK_OPCODE = 15;
    public static final int B1_FLAG_MASK = 128;
    public static final int B1_MASK_LENGTH = 127;
    public static final int CLOSE_CLIENT_GOING_AWAY = 1001;
    public static final long CLOSE_MESSAGE_MAX = 123;
    public static final int CLOSE_NO_STATUS_CODE = 1005;
    public static final WebSocketProtocol INSTANCE = new WebSocketProtocol();
    public static final int OPCODE_BINARY = 2;
    public static final int OPCODE_CONTINUATION = 0;
    public static final int OPCODE_CONTROL_CLOSE = 8;
    public static final int OPCODE_CONTROL_PING = 9;
    public static final int OPCODE_CONTROL_PONG = 10;
    public static final int OPCODE_FLAG_CONTROL = 8;
    public static final int OPCODE_TEXT = 1;
    public static final long PAYLOAD_BYTE_MAX = 125;
    public static final int PAYLOAD_LONG = 127;
    public static final int PAYLOAD_SHORT = 126;
    public static final long PAYLOAD_SHORT_MAX = 65535;

    private WebSocketProtocol() {
    }

    public final String acceptHeader(String str) {
        q0.h(str, "key");
        m mVar = m.f6065J;
        return G.C(str.concat(ACCEPT_MAGIC)).b("SHA-1").a();
    }

    public final String closeCodeExceptionMessage(int i8) {
        if (i8 < 1000 || i8 >= 5000) {
            return r.f("Code must be in range [1000,5000): ", i8);
        }
        if ((1004 > i8 || i8 >= 1007) && (1015 > i8 || i8 >= 3000)) {
            return null;
        }
        return O.y("Code ", i8, " is reserved and may not be used.");
    }

    public final void toggleMask(h hVar, byte[] bArr) {
        long j8;
        q0.h(hVar, "cursor");
        q0.h(bArr, "key");
        int length = bArr.length;
        int i8 = 0;
        do {
            byte[] bArr2 = hVar.f6058K;
            int i9 = hVar.f6059L;
            int i10 = hVar.f6060M;
            if (bArr2 != null) {
                while (i9 < i10) {
                    int i11 = i8 % length;
                    bArr2[i9] = (byte) (bArr2[i9] ^ bArr[i11]);
                    i9++;
                    i8 = i11 + 1;
                }
            }
            long j9 = hVar.f6057J;
            j jVar = hVar.f6054G;
            q0.e(jVar);
            if (j9 == jVar.f6064H) {
                throw new IllegalStateException("no more bytes".toString());
            }
            j8 = hVar.f6057J;
        } while (hVar.E(j8 == -1 ? 0L : j8 + ((long) (hVar.f6060M - hVar.f6059L))) != -1);
    }

    public final void validateCloseCode(int i8) {
        String strCloseCodeExceptionMessage = closeCodeExceptionMessage(i8);
        if (strCloseCodeExceptionMessage == null) {
            return;
        }
        q0.e(strCloseCodeExceptionMessage);
        throw new IllegalArgumentException(strCloseCodeExceptionMessage.toString());
    }
}
