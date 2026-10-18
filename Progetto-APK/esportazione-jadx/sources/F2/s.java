package F2;

import android.graphics.drawable.Drawable;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class s implements p173w2.p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p173w2.p f3164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3165c;

    public s(p173w2.p pVar, boolean z7) {
        this.f3164b = pVar;
        this.f3165c = z7;
    }

    @Override // p173w2.p
    public final y2.D a(com.bumptech.glide.f fVar, y2.D d6, int i8, int i9) {
        p196z2.d dVar = com.bumptech.glide.b.a(fVar).f11497G;
        Drawable drawable = (Drawable) d6.get();
        C0194d c0194dA = r.a(dVar, drawable, i8, i9);
        if (c0194dA != null) {
            y2.D dA = this.f3164b.a(fVar, c0194dA, i8, i9);
            if (!dA.equals(c0194dA)) {
                return new C0194d(fVar.getResources(), dA);
            }
            dA.b();
            return d6;
        }
        if (!this.f3165c) {
            return d6;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        this.f3164b.b(messageDigest);
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        if (obj instanceof s) {
            return this.f3164b.equals(((s) obj).f3164b);
        }
        return false;
    }

    @Override // p173w2.i
    public final int hashCode() {
        return this.f3164b.hashCode();
    }
}
