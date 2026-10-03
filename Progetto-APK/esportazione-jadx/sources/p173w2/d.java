package p173w2;

import java.io.IOException;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class d extends IOException {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(int i8, int i9) {
        this("Http request failed", i8, null);
        if (i9 != 1) {
        } else {
            super(r.f("RTMP error: ", i8));
        }
    }

    public d(String str, int i8, IOException iOException) {
        super(str + ", status code: " + i8, iOException);
    }
}
