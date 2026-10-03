package okhttp3;

import Q6.m;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Credentials {
    public static final Credentials INSTANCE = new Credentials();

    private Credentials() {
    }

    public static final String basic(String str, String str2) {
        q0.h(str, "username");
        q0.h(str2, "password");
        return basic$default(str, str2, null, 4, null);
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset charset, int i8, Object obj) {
        if ((i8 & 4) != 0) {
            charset = StandardCharsets.ISO_8859_1;
            q0.g(charset, "ISO_8859_1");
        }
        return basic(str, str2, charset);
    }

    public static final String basic(String str, String str2, Charset charset) {
        q0.h(str, "username");
        q0.h(str2, "password");
        q0.h(charset, "charset");
        String str3 = str + ':' + str2;
        m mVar = m.f6065J;
        q0.h(str3, "<this>");
        byte[] bytes = str3.getBytes(charset);
        q0.g(bytes, "this as java.lang.String).getBytes(charset)");
        return p148t.a.c("Basic ", new m(bytes).a());
    }
}
