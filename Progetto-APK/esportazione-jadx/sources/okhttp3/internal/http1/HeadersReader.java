package okhttp3.internal.http1;

import D6.e;
import Q6.l;
import android.support.v4.media.session.PlaybackStateCompat;
import okhttp3.Headers;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class HeadersReader {
    public static final Companion Companion = new Companion(null);
    private static final int HEADER_LIMIT = 262144;
    private long headerLimit;
    private final l source;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }
    }

    public HeadersReader(l lVar) {
        q0.h(lVar, "source");
        this.source = lVar;
        this.headerLimit = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
    }

    public final l getSource() {
        return this.source;
    }

    public final Headers readHeaders() {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String line = readLine();
            if (line.length() == 0) {
                return builder.build();
            }
            builder.addLenient$okhttp(line);
        }
    }

    public final String readLine() {
        String strV = this.source.v(this.headerLimit);
        this.headerLimit -= (long) strV.length();
        return strV;
    }
}
