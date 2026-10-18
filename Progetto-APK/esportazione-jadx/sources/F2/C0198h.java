package F2;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.security.MessageDigest;

/* JADX INFO: renamed from: F2.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0198h extends AbstractC0195e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f3139b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(p173w2.i.f30994a);

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(f3139b);
    }

    @Override // F2.AbstractC0195e
    public final Bitmap c(p196z2.d dVar, Bitmap bitmap, int i8, int i9) {
        float width;
        float height;
        Paint paint = y.f3181a;
        if (bitmap.getWidth() == i8 && bitmap.getHeight() == i9) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width2 = 0.0f;
        if (bitmap.getWidth() * i9 > bitmap.getHeight() * i8) {
            width = i9 / bitmap.getHeight();
            width2 = (i8 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i8 / bitmap.getWidth();
            height = (i9 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (width2 + 0.5f), (int) (height + 0.5f));
        Bitmap bitmapC = dVar.c(i8, i9, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        bitmapC.setHasAlpha(bitmap.hasAlpha());
        y.a(bitmap, bitmapC, matrix);
        return bitmapC;
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        return obj instanceof C0198h;
    }

    @Override // p173w2.i
    public final int hashCode() {
        return -599754482;
    }
}
