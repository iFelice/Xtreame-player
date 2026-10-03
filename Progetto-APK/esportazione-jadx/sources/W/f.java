package W;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class f extends b {
    public f(byte[] bArr) {
        super(bArr);
        this.f7244G.mark(com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
    }

    public final void E(long j8) throws IOException {
        int i8 = this.f7245H;
        if (i8 > j8) {
            this.f7245H = 0;
            this.f7244G.reset();
        } else {
            j8 -= (long) i8;
        }
        k((int) j8);
    }

    public f(InputStream inputStream) {
        super(inputStream);
        if (inputStream.markSupported()) {
            this.f7244G.mark(com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
            return;
        }
        throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
    }
}
