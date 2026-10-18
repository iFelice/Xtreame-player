package F2;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class E extends MediaDataSource {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ ByteBuffer f3113G;

    public E(ByteBuffer byteBuffer) {
        this.f3113G = byteBuffer;
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.f3113G.limit();
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j8, byte[] bArr, int i8, int i9) {
        if (j8 >= this.f3113G.limit()) {
            return -1;
        }
        this.f3113G.position((int) j8);
        int iMin = Math.min(i9, this.f3113G.remaining());
        this.f3113G.get(bArr, i8, iMin);
        return iMin;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
