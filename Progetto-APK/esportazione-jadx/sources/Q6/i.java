package Q6;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InputStream;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends InputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6061G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ l f6062H;

    public /* synthetic */ i(l lVar, int i8) {
        this.f6061G = i8;
        this.f6062H = lVar;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        int i8 = this.f6061G;
        l lVar = this.f6062H;
        switch (i8) {
            case 0:
                return (int) Math.min(((j) lVar).f6064H, com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
            default:
                x xVar = (x) lVar;
                if (xVar.f6096I) {
                    throw new IOException("closed");
                }
                return (int) Math.min(xVar.f6095H.f6064H, com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        switch (this.f6061G) {
            case 0:
                break;
            default:
                ((x) this.f6062H).close();
                break;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        int i8 = this.f6061G;
        l lVar = this.f6062H;
        switch (i8) {
            case 0:
                j jVar = (j) lVar;
                if (jVar.f6064H > 0) {
                    return jVar.readByte() & 255;
                }
                return -1;
            default:
                x xVar = (x) lVar;
                if (xVar.f6096I) {
                    throw new IOException("closed");
                }
                j jVar2 = xVar.f6095H;
                if (jVar2.f6064H == 0 && xVar.f6094G.read(jVar2, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
                return jVar2.readByte() & 255;
        }
    }

    public final String toString() {
        int i8 = this.f6061G;
        l lVar = this.f6062H;
        switch (i8) {
            case 0:
                return ((j) lVar) + ".inputStream()";
            default:
                return ((x) lVar) + ".inputStream()";
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i8, int i9) throws IOException {
        int i10 = this.f6061G;
        l lVar = this.f6062H;
        switch (i10) {
            case 0:
                q0.h(bArr, "sink");
                return ((j) lVar).d0(bArr, i8, i9);
            default:
                q0.h(bArr, "data");
                x xVar = (x) lVar;
                if (!xVar.f6096I) {
                    AbstractC0329b.b(bArr.length, i8, i9);
                    j jVar = xVar.f6095H;
                    if (jVar.f6064H == 0 && xVar.f6094G.read(jVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                        return -1;
                    }
                    return jVar.d0(bArr, i8, i9);
                }
                throw new IOException("closed");
        }
    }
}
