package F2;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.util.Log;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class i extends AbstractC0195e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f3140b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(p173w2.i.f30994a);

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(f3140b);
    }

    @Override // F2.AbstractC0195e
    public final Bitmap c(p196z2.d dVar, Bitmap bitmap, int i8, int i9) {
        Paint paint = y.f3181a;
        if (bitmap.getWidth() > i8 || bitmap.getHeight() > i9) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            return y.b(dVar, bitmap, i8, i9);
        }
        if (!Log.isLoggable("TransformationUtils", 2)) {
            return bitmap;
        }
        Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
        return bitmap;
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        return obj instanceof i;
    }

    @Override // p173w2.i
    public final int hashCode() {
        return -670243078;
    }
}
