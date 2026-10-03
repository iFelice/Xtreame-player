package okhttp3.internal.ws;

import D6.e;
import I6.i;
import I6.k;
import okhttp3.Headers;
import okhttp3.internal.Util;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    public final Integer clientMaxWindowBits;
    public final boolean clientNoContextTakeover;
    public final boolean perMessageDeflate;
    public final Integer serverMaxWindowBits;
    public final boolean serverNoContextTakeover;
    public final boolean unknownValues;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:33:0x00c4 A[PHI: r7 r9
          0x00c4: PHI (r7v6 java.lang.Integer) = (r7v4 java.lang.Integer), (r7v4 java.lang.Integer), (r7v8 java.lang.Integer) binds: [B:52:0x00f6, B:49:0x00ed, B:32:0x00c2] A[DONT_GENERATE, DONT_INLINE]
          0x00c4: PHI (r9v9 java.lang.Integer) = (r9v4 java.lang.Integer), (r9v6 java.lang.Integer), (r9v4 java.lang.Integer) binds: [B:52:0x00f6, B:49:0x00ed, B:32:0x00c2] A[DONT_GENERATE, DONT_INLINE]] */
        public final WebSocketExtensions parse(Headers headers) {
            String strTrimSubstring;
            q0.h(headers, "responseHeaders");
            int size = headers.size();
            boolean z7 = false;
            Integer numB0 = null;
            boolean z8 = false;
            Integer numB1 = null;
            boolean z9 = false;
            boolean z10 = false;
            for (int i8 = 0; i8 < size; i8++) {
                if (k.F0(headers.name(i8), WebSocketExtensions.HEADER_WEB_SOCKET_EXTENSION)) {
                    String strValue = headers.value(i8);
                    int i9 = 0;
                    while (i9 < strValue.length()) {
                        int i10 = i9;
                        int iDelimiterOffset$default = Util.delimiterOffset$default(strValue, ',', i9, 0, 4, (Object) null);
                        char c8 = ';';
                        int iDelimiterOffset = Util.delimiterOffset(strValue, ';', i10, iDelimiterOffset$default);
                        String strTrimSubstring2 = Util.trimSubstring(strValue, i10, iDelimiterOffset);
                        int i11 = iDelimiterOffset + 1;
                        if (k.F0(strTrimSubstring2, "permessage-deflate")) {
                            if (z7) {
                                z10 = true;
                            }
                            while (i11 < iDelimiterOffset$default) {
                                int iDelimiterOffset2 = Util.delimiterOffset(strValue, c8, i11, iDelimiterOffset$default);
                                int iDelimiterOffset3 = Util.delimiterOffset(strValue, '=', i11, iDelimiterOffset2);
                                String strTrimSubstring3 = Util.trimSubstring(strValue, i11, iDelimiterOffset3);
                                if (iDelimiterOffset3 < iDelimiterOffset2) {
                                    strTrimSubstring = Util.trimSubstring(strValue, iDelimiterOffset3 + 1, iDelimiterOffset2);
                                    q0.h(strTrimSubstring, "<this>");
                                    if (strTrimSubstring.length() >= "\"".length() + "\"".length() && k.V0(strTrimSubstring, "\"") && k.E0(strTrimSubstring, "\"")) {
                                        strTrimSubstring = strTrimSubstring.substring("\"".length(), strTrimSubstring.length() - "\"".length());
                                        q0.g(strTrimSubstring, "substring(...)");
                                    }
                                } else {
                                    strTrimSubstring = null;
                                }
                                i11 = iDelimiterOffset2 + 1;
                                if (k.F0(strTrimSubstring3, "client_max_window_bits")) {
                                    if (numB0 != null) {
                                        z10 = true;
                                    }
                                    numB0 = strTrimSubstring != null ? i.B0(strTrimSubstring) : null;
                                    if (numB0 == null) {
                                        z10 = true;
                                    }
                                } else if (k.F0(strTrimSubstring3, "client_no_context_takeover")) {
                                    if (z8) {
                                        z10 = true;
                                    }
                                    if (strTrimSubstring != null) {
                                        z10 = true;
                                    }
                                    z8 = true;
                                } else if (k.F0(strTrimSubstring3, "server_max_window_bits")) {
                                    if (numB1 != null) {
                                        z10 = true;
                                    }
                                    numB1 = strTrimSubstring != null ? i.B0(strTrimSubstring) : null;
                                    if (numB1 == null) {
                                        z10 = true;
                                    }
                                } else if (k.F0(strTrimSubstring3, "server_no_context_takeover")) {
                                    if (z9) {
                                        z10 = true;
                                    }
                                    if (strTrimSubstring != null) {
                                        z10 = true;
                                    }
                                    z9 = true;
                                } else {
                                    z10 = true;
                                }
                                c8 = ';';
                            }
                            i9 = i11;
                            z7 = true;
                        } else {
                            i9 = i11;
                            z10 = true;
                        }
                    }
                }
            }
            return new WebSocketExtensions(z7, numB0, z8, numB1, z9, z10);
        }
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public static /* synthetic */ WebSocketExtensions copy$default(WebSocketExtensions webSocketExtensions, boolean z7, Integer num, boolean z8, Integer num2, boolean z9, boolean z10, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            z7 = webSocketExtensions.perMessageDeflate;
        }
        if ((i8 & 2) != 0) {
            num = webSocketExtensions.clientMaxWindowBits;
        }
        Integer num3 = num;
        if ((i8 & 4) != 0) {
            z8 = webSocketExtensions.clientNoContextTakeover;
        }
        boolean z11 = z8;
        if ((i8 & 8) != 0) {
            num2 = webSocketExtensions.serverMaxWindowBits;
        }
        Integer num4 = num2;
        if ((i8 & 16) != 0) {
            z9 = webSocketExtensions.serverNoContextTakeover;
        }
        boolean z12 = z9;
        if ((i8 & 32) != 0) {
            z10 = webSocketExtensions.unknownValues;
        }
        return webSocketExtensions.copy(z7, num3, z11, num4, z12, z10);
    }

    public final boolean component1() {
        return this.perMessageDeflate;
    }

    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    public final WebSocketExtensions copy(boolean z7, Integer num, boolean z8, Integer num2, boolean z9, boolean z10) {
        return new WebSocketExtensions(z7, num, z8, num2, z9, z10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && q0.c(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && q0.c(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v11, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public int hashCode() {
        boolean z7 = this.perMessageDeflate;
        ?? r7 = z7;
        if (z7) {
            r7 = 1;
        }
        int i8 = r7 * 31;
        Integer num = this.clientMaxWindowBits;
        int iHashCode = (i8 + (num == null ? 0 : num.hashCode())) * 31;
        boolean z8 = this.clientNoContextTakeover;
        ?? r8 = z8;
        if (z8) {
            r8 = 1;
        }
        int i9 = (iHashCode + r8) * 31;
        Integer num2 = this.serverMaxWindowBits;
        int iHashCode2 = (i9 + (num2 != null ? num2.hashCode() : 0)) * 31;
        boolean z9 = this.serverNoContextTakeover;
        ?? r9 = z9;
        if (z9) {
            r9 = 1;
        }
        int i10 = (iHashCode2 + r9) * 31;
        boolean z10 = this.unknownValues;
        return i10 + (z10 ? 1 : z10);
    }

    public final boolean noContextTakeover(boolean z7) {
        return z7 ? this.clientNoContextTakeover : this.serverNoContextTakeover;
    }

    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ')';
    }

    public /* synthetic */ WebSocketExtensions(boolean z7, Integer num, boolean z8, Integer num2, boolean z9, boolean z10, int i8, e eVar) {
        this((i8 & 1) != 0 ? false : z7, (i8 & 2) != 0 ? null : num, (i8 & 4) != 0 ? false : z8, (i8 & 8) == 0 ? num2 : null, (i8 & 16) != 0 ? false : z9, (i8 & 32) != 0 ? false : z10);
    }

    public WebSocketExtensions(boolean z7, Integer num, boolean z8, Integer num2, boolean z9, boolean z10) {
        this.perMessageDeflate = z7;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z8;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z9;
        this.unknownValues = z10;
    }
}
