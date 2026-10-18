package okhttp3.internal.http;

import Q6.l;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class RealResponseBody extends ResponseBody {
    private final long contentLength;
    private final String contentTypeString;
    private final l source;

    public RealResponseBody(String str, long j8, l lVar) {
        q0.h(lVar, "source");
        this.contentTypeString = str;
        this.contentLength = j8;
        this.source = lVar;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        String str = this.contentTypeString;
        if (str != null) {
            return MediaType.Companion.parse(str);
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    public l source() {
        return this.source;
    }
}
