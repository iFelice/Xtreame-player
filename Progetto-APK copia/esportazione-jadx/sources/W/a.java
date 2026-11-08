package W;

import android.media.MediaDataSource;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class a extends MediaDataSource {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public long f7242G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ f f7243H;

    public a(f fVar) {
        this.f7243H = fVar;
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return -1L;
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j8, byte[] bArr, int i8, int i9) {
        if (i9 == 0) {
            return 0;
        }
        if (j8 < 0) {
            return -1;
        }
        try {
            long j9 = this.f7242G;
            if (j9 != j8) {
                if (j9 >= 0 && j8 >= j9 + ((long) this.f7243H.f7244G.available())) {
                    return -1;
                }
                this.f7243H.E(j8);
                this.f7242G = j8;
            }
            if (i9 > this.f7243H.f7244G.available()) {
                i9 = this.f7243H.f7244G.available();
            }
            int i10 = this.f7243H.read(bArr, i8, i9);
            if (i10 >= 0) {
                this.f7242G += (long) i10;
                return i10;
            }
        } catch (IOException unused) {
        }
        this.f7242G = -1L;
        return -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
