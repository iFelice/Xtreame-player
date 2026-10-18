package F2;

import android.graphics.Bitmap;

/* JADX INFO: renamed from: F2.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0195e implements p173w2.p {
    @Override // p173w2.p
    public final y2.D a(com.bumptech.glide.f fVar, y2.D d6, int i8, int i9) {
        if (!P2.o.j(i8, i9)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i8 + " or height: " + i9 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        p196z2.d dVar = com.bumptech.glide.b.a(fVar).f11497G;
        Bitmap bitmap = (Bitmap) d6.get();
        if (i8 == Integer.MIN_VALUE) {
            i8 = bitmap.getWidth();
        }
        if (i9 == Integer.MIN_VALUE) {
            i9 = bitmap.getHeight();
        }
        Bitmap bitmapC = c(dVar, bitmap, i8, i9);
        return bitmap.equals(bitmapC) ? d6 : C0194d.c(bitmapC, dVar);
    }

    public abstract Bitmap c(p196z2.d dVar, Bitmap bitmap, int i8, int i9);
}
