package F2;

import android.graphics.Bitmap;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class u extends AbstractC0195e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f3166b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(p173w2.i.f30994a);

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(f3166b);
    }

    @Override // F2.AbstractC0195e
    public final Bitmap c(p196z2.d dVar, Bitmap bitmap, int i8, int i9) {
        return y.b(dVar, bitmap, i8, i9);
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        return obj instanceof u;
    }

    @Override // p173w2.i
    public final int hashCode() {
        return 1572326941;
    }
}
