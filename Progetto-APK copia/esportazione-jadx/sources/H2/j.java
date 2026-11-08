package H2;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.internal.http2.Http2;
import p173w2.l;
import p173w2.n;
import y2.D;

/* JADX INFO: loaded from: classes.dex */
public final class j implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f3674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n f3675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p196z2.h f3676c;

    public j(List list, a aVar, p196z2.h hVar) {
        this.f3674a = list;
        this.f3675b = aVar;
        this.f3676c = hVar;
    }

    @Override // p173w2.n
    public final boolean a(Object obj, l lVar) {
        InputStream inputStream = (InputStream) obj;
        if (!((Boolean) lVar.c(i.f3673b)).booleanValue()) {
            if (Q3.b.l(this.f3676c, inputStream, this.f3674a) == ImageHeaderParser$ImageType.GIF) {
                return true;
            }
        }
        return false;
    }

    @Override // p173w2.n
    public final D b(Object obj, int i8, int i9, l lVar) {
        byte[] byteArray;
        InputStream inputStream = (InputStream) obj;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Http2.INITIAL_MAX_FRAME_SIZE);
        try {
            byte[] bArr = new byte[Http2.INITIAL_MAX_FRAME_SIZE];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
            byteArrayOutputStream.flush();
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException e8) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e8);
            }
            byteArray = null;
        }
        if (byteArray == null) {
            return null;
        }
        return this.f3675b.b(ByteBuffer.wrap(byteArray), i8, i9, lVar);
    }
}
