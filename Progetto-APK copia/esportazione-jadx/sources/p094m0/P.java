package p094m0;

import java.io.IOException;
import okhttp3.HttpUrl;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public class P extends IOException {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f26781G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f26782H;

    public P(String str, Exception exc, boolean z7, int i8) {
        super(str, exc);
        this.f26781G = z7;
        this.f26782H = i8;
    }

    public static P a(String str, RuntimeException runtimeException) {
        return new P(str, runtimeException, true, 1);
    }

    public static P b(String str, Exception exc) {
        return new P(str, exc, true, 4);
    }

    public static P c(String str) {
        return new P(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String message = super.getMessage();
        StringBuilder sb = new StringBuilder();
        sb.append(message != null ? message.concat(" ") : HttpUrl.FRAGMENT_ENCODE_SET);
        sb.append("{contentIsMalformed=");
        sb.append(this.f26781G);
        sb.append(", dataType=");
        return r.h(sb, this.f26782H, "}");
    }
}
