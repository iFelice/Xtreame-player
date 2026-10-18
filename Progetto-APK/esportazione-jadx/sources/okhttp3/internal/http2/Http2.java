package okhttp3.internal.http2;

import F2.G;
import I6.k;
import Q6.m;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import p000a.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Http2 {
    private static final String[] BINARY;
    public static final m CONNECTION_PREFACE;
    private static final String[] FLAGS;
    public static final int FLAG_ACK = 1;
    public static final int FLAG_COMPRESSED = 32;
    public static final int FLAG_END_HEADERS = 4;
    public static final int FLAG_END_PUSH_PROMISE = 4;
    public static final int FLAG_END_STREAM = 1;
    public static final int FLAG_NONE = 0;
    public static final int FLAG_PADDED = 8;
    public static final int FLAG_PRIORITY = 32;
    private static final String[] FRAME_NAMES;
    public static final int INITIAL_MAX_FRAME_SIZE = 16384;
    public static final Http2 INSTANCE = new Http2();
    public static final int TYPE_CONTINUATION = 9;
    public static final int TYPE_DATA = 0;
    public static final int TYPE_GOAWAY = 7;
    public static final int TYPE_HEADERS = 1;
    public static final int TYPE_PING = 6;
    public static final int TYPE_PRIORITY = 2;
    public static final int TYPE_PUSH_PROMISE = 5;
    public static final int TYPE_RST_STREAM = 3;
    public static final int TYPE_SETTINGS = 4;
    public static final int TYPE_WINDOW_UPDATE = 8;

    static {
        m mVar = m.f6065J;
        CONNECTION_PREFACE = G.C("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
        FRAME_NAMES = new String[]{"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
        FLAGS = new String[64];
        String[] strArr = new String[256];
        for (int i8 = 0; i8 < 256; i8++) {
            String binaryString = Integer.toBinaryString(i8);
            q0.g(binaryString, "toBinaryString(it)");
            strArr[i8] = k.Q0(Util.format("%8s", binaryString), ' ', '0');
        }
        BINARY = strArr;
        String[] strArr2 = FLAGS;
        strArr2[0] = HttpUrl.FRAGMENT_ENCODE_SET;
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i9 = iArr[0];
        strArr2[i9 | 8] = r.j(new StringBuilder(), strArr2[i9], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i10 = 0; i10 < 3; i10++) {
            int i11 = iArr2[i10];
            int i12 = iArr[0];
            String[] strArr3 = FLAGS;
            int i13 = i12 | i11;
            strArr3[i13] = strArr3[i12] + '|' + strArr3[i11];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i12]);
            sb.append('|');
            strArr3[i13 | 8] = r.j(sb, strArr3[i11], "|PADDED");
        }
        int length = FLAGS.length;
        for (int i14 = 0; i14 < length; i14++) {
            String[] strArr4 = FLAGS;
            if (strArr4[i14] == null) {
                strArr4[i14] = BINARY[i14];
            }
        }
    }

    private Http2() {
    }

    public final String formatFlags(int i8, int i9) {
        String str;
        if (i9 == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (i8 != 2 && i8 != 3) {
            if (i8 == 4 || i8 == 6) {
                return i9 == 1 ? "ACK" : BINARY[i9];
            }
            if (i8 != 7 && i8 != 8) {
                String[] strArr = FLAGS;
                if (i9 < strArr.length) {
                    str = strArr[i9];
                    q0.e(str);
                } else {
                    str = BINARY[i9];
                }
                if (i8 != 5 || (i9 & 4) == 0) {
                    return (i8 != 0 || (i9 & 32) == 0) ? str : k.R0(str, "PRIORITY", "COMPRESSED");
                }
                return k.R0(str, "HEADERS", "PUSH_PROMISE");
            }
        }
        return BINARY[i9];
    }

    public final String formattedType$okhttp(int i8) {
        String[] strArr = FRAME_NAMES;
        return i8 < strArr.length ? strArr[i8] : Util.format("0x%02x", Integer.valueOf(i8));
    }

    public final String frameLog(boolean z7, int i8, int i9, int i10, int i11) {
        return Util.format("%s 0x%08x %5d %-13s %s", z7 ? "<<" : ">>", Integer.valueOf(i8), Integer.valueOf(i9), formattedType$okhttp(i10), formatFlags(i10, i11));
    }
}
