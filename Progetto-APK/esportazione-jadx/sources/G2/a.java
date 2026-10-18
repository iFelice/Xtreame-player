package G2;

import android.graphics.ImageDecoder;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p173w2.l;
import p173w2.n;
import p196z2.h;
import y2.D;

/* JADX INFO: loaded from: classes.dex */
public final class a implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p096m2.e f3396b;

    public /* synthetic */ a(p096m2.e eVar, int i8) {
        this.f3395a = i8;
        this.f3396b = eVar;
    }

    @Override // p173w2.n
    public final boolean a(Object obj, l lVar) throws IOException {
        int i8 = this.f3395a;
        p096m2.e eVar = this.f3396b;
        switch (i8) {
            case 0:
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeK = Q3.b.k((List) eVar.f27215H, (ByteBuffer) obj);
                if (imageHeaderParser$ImageTypeK != ImageHeaderParser$ImageType.ANIMATED_WEBP) {
                    return Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeK == ImageHeaderParser$ImageType.ANIMATED_AVIF;
                }
                return true;
            default:
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeL = Q3.b.l((h) eVar.f27216I, (InputStream) obj, (List) eVar.f27215H);
                if (imageHeaderParser$ImageTypeL != ImageHeaderParser$ImageType.ANIMATED_WEBP) {
                    return Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeL == ImageHeaderParser$ImageType.ANIMATED_AVIF;
                }
                return true;
        }
    }

    @Override // p173w2.n
    public final D b(Object obj, int i8, int i9, l lVar) {
        int i10 = this.f3395a;
        p096m2.e eVar = this.f3396b;
        switch (i10) {
            case 0:
                ImageDecoder.Source sourceCreateSource = ImageDecoder.createSource((ByteBuffer) obj);
                eVar.getClass();
                return p096m2.e.i(sourceCreateSource, i8, i9, lVar);
            default:
                ImageDecoder.Source sourceCreateSource2 = ImageDecoder.createSource(P2.c.b((InputStream) obj));
                eVar.getClass();
                return p096m2.e.i(sourceCreateSource2, i8, i9, lVar);
        }
    }
}
