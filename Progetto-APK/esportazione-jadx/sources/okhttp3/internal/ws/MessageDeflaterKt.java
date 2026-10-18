package okhttp3.internal.ws;

import F2.G;
import Q6.m;

/* JADX INFO: loaded from: classes2.dex */
public final class MessageDeflaterKt {
    private static final m EMPTY_DEFLATE_BLOCK;
    private static final int LAST_OCTETS_COUNT_TO_REMOVE_AFTER_DEFLATION = 4;

    static {
        m mVar = m.f6065J;
        EMPTY_DEFLATE_BLOCK = G.z("000000ffff");
    }
}
