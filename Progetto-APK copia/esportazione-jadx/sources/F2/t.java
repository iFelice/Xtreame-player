package F2;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class t implements p173w2.f {
    @Override // p173w2.f
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // p173w2.f
    public final int b(ByteBuffer byteBuffer, p196z2.h hVar) {
        AtomicReference atomicReference = P2.c.f5884a;
        return d(new P2.a(byteBuffer), hVar);
    }

    @Override // p173w2.f
    public final ImageHeaderParser$ImageType c(InputStream inputStream) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // p173w2.f
    public final int d(InputStream inputStream, p196z2.h hVar) {
        W.g gVar = new W.g(inputStream);
        W.c cVarC = gVar.c("Orientation");
        int iE = 1;
        if (cVarC != null) {
            try {
                iE = cVarC.e(gVar.f7295f);
            } catch (NumberFormatException unused) {
            }
        }
        if (iE == 0) {
            return -1;
        }
        return iE;
    }
}
