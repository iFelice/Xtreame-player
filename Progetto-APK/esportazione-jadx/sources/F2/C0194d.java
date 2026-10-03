package F2;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* JADX INFO: renamed from: F2.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0194d implements y2.D, y2.A {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f3132G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f3133H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f3134I;

    public C0194d(Bitmap bitmap, p196z2.d dVar) {
        p102n0.c.c(bitmap, "Bitmap must not be null");
        this.f3133H = bitmap;
        p102n0.c.c(dVar, "BitmapPool must not be null");
        this.f3134I = dVar;
    }

    public static C0194d c(Bitmap bitmap, p196z2.d dVar) {
        if (bitmap == null) {
            return null;
        }
        return new C0194d(bitmap, dVar);
    }

    @Override // y2.A
    public final void a() {
        switch (this.f3132G) {
            case 0:
                ((Bitmap) this.f3133H).prepareToDraw();
                break;
            default:
                y2.D d6 = (y2.D) this.f3134I;
                if (d6 instanceof y2.A) {
                    ((y2.A) d6).a();
                }
                break;
        }
    }

    @Override // y2.D
    public final void b() {
        int i8 = this.f3132G;
        Object obj = this.f3134I;
        switch (i8) {
            case 0:
                ((p196z2.d) obj).a((Bitmap) this.f3133H);
                break;
            default:
                ((y2.D) obj).b();
                break;
        }
    }

    @Override // y2.D
    public final int d() {
        switch (this.f3132G) {
            case 0:
                return P2.o.c((Bitmap) this.f3133H);
            default:
                return ((y2.D) this.f3134I).d();
        }
    }

    @Override // y2.D
    public final Class e() {
        switch (this.f3132G) {
            case 0:
                return Bitmap.class;
            default:
                return BitmapDrawable.class;
        }
    }

    @Override // y2.D
    public final Object get() {
        int i8 = this.f3132G;
        Object obj = this.f3133H;
        switch (i8) {
            case 0:
                return (Bitmap) obj;
            default:
                return new BitmapDrawable((Resources) obj, (Bitmap) ((y2.D) this.f3134I).get());
        }
    }

    public C0194d(Resources resources, y2.D d6) {
        p102n0.c.c(resources, "Argument must not be null");
        this.f3133H = resources;
        p102n0.c.c(d6, "Argument must not be null");
        this.f3134I = d6;
    }
}
