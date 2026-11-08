package com.google.android.gms.internal.ads;

import java.io.IOException;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class IO extends IOException {
    public IO(Throwable th) {
        super(p000a.r.g("Unexpected ", th.getClass().getSimpleName(), th.getMessage() != null ? ": ".concat(String.valueOf(th.getMessage())) : HttpUrl.FRAGMENT_ENCODE_SET), th);
    }
}
