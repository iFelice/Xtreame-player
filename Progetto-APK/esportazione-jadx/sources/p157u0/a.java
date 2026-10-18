package p157u0;

import java.nio.ByteBuffer;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

/* JADX INFO: loaded from: classes.dex */
public final class a extends UploadDataProvider {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final byte[] f30374G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f30375H;

    public a(byte[] bArr) {
        this.f30374G = bArr;
    }

    @Override // org.chromium.net.UploadDataProvider
    public final long getLength() {
        return this.f30374G.length;
    }

    @Override // org.chromium.net.UploadDataProvider
    public final void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = this.f30374G;
        int iMin = Math.min(iRemaining, bArr.length - this.f30375H);
        byteBuffer.put(bArr, this.f30375H, iMin);
        this.f30375H += iMin;
        uploadDataSink.onReadSucceeded(false);
    }

    @Override // org.chromium.net.UploadDataProvider
    public final void rewind(UploadDataSink uploadDataSink) {
        this.f30375H = 0;
        uploadDataSink.onRewindSucceeded();
    }
}
