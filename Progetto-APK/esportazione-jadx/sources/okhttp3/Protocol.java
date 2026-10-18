package okhttp3;

import D6.e;
import java.io.IOException;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public enum Protocol {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");

    public static final Companion Companion = new Companion(null);
    private final String protocol;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public final Protocol get(String str) throws IOException {
            q0.h(str, "protocol");
            Protocol protocol = Protocol.HTTP_1_0;
            if (!q0.c(str, protocol.protocol)) {
                protocol = Protocol.HTTP_1_1;
                if (!q0.c(str, protocol.protocol)) {
                    protocol = Protocol.H2_PRIOR_KNOWLEDGE;
                    if (!q0.c(str, protocol.protocol)) {
                        protocol = Protocol.HTTP_2;
                        if (!q0.c(str, protocol.protocol)) {
                            protocol = Protocol.SPDY_3;
                            if (!q0.c(str, protocol.protocol)) {
                                protocol = Protocol.QUIC;
                                if (!q0.c(str, protocol.protocol)) {
                                    throw new IOException("Unexpected protocol: ".concat(str));
                                }
                            }
                        }
                    }
                }
            }
            return protocol;
        }
    }

    Protocol(String str) {
        this.protocol = str;
    }

    public static final Protocol get(String str) {
        return Companion.get(str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocol;
    }
}
