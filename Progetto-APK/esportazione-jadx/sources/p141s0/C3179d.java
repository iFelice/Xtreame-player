package p141s0;

import android.net.http.UploadDataProvider;
import android.net.http.UploadDataSink;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: s0.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3179d extends UploadDataProvider {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final byte[] f29934G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f29935H;

    public C3179d(byte[] bArr) {
        this.f29934G = bArr;
    }

    @Override // android.net.http.UploadDataProvider
    public final long getLength() {
        return this.f29934G.length;
    }

    @Override // android.net.http.UploadDataProvider
    public final void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
        int iMin = Math.min(byteBuffer.remaining(), this.f29934G.length - this.f29935H);
        byteBuffer.put(this.f29934G, this.f29935H, iMin);
        this.f29935H += iMin;
        uploadDataSink.onReadSucceeded(false);
    }

    @Override // android.net.http.UploadDataProvider
    public final void rewind(UploadDataSink uploadDataSink) {
        this.f29935H = 0;
        uploadDataSink.onRewindSucceeded();
    }
}
