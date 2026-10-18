package org.chromium.net;

import O1.J;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends UploadDataProvider {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile FileChannel f28012G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final c f28013H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f28014I = new Object();

    public d(J j8) {
        this.f28013H = j8;
    }

    @Override // org.chromium.net.UploadDataProvider, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        FileChannel fileChannel = this.f28012G;
        if (fileChannel != null) {
            fileChannel.close();
        }
    }

    @Override // org.chromium.net.UploadDataProvider
    public final long getLength() {
        return k().size();
    }

    public final FileChannel k() {
        if (this.f28012G == null) {
            synchronized (this.f28014I) {
                try {
                    if (this.f28012G == null) {
                        this.f28012G = ((J) this.f28013H).a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f28012G;
    }

    @Override // org.chromium.net.UploadDataProvider
    public final void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
        if (!byteBuffer.hasRemaining()) {
            throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
        }
        FileChannel fileChannelK = k();
        int i8 = 0;
        while (i8 == 0) {
            int i9 = fileChannelK.read(byteBuffer);
            if (i9 == -1) {
                break;
            } else {
                i8 += i9;
            }
        }
        uploadDataSink.onReadSucceeded(false);
    }

    @Override // org.chromium.net.UploadDataProvider
    public final void rewind(UploadDataSink uploadDataSink) throws IOException {
        k().position(0L);
        uploadDataSink.onRewindSucceeded();
    }
}
