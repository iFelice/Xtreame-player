package F2;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class z implements y2.D {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f3183G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f3184H;

    public /* synthetic */ z(Object obj, int i8) {
        this.f3183G = i8;
        this.f3184H = obj;
    }

    @Override // y2.D
    public final void b() {
        switch (this.f3183G) {
            case 2:
                AnimatedImageDrawable animatedImageDrawable = (AnimatedImageDrawable) this.f3184H;
                animatedImageDrawable.stop();
                animatedImageDrawable.clearAnimationCallbacks();
                break;
        }
    }

    @Override // y2.D
    public final int d() {
        int i8 = this.f3183G;
        Object obj = this.f3184H;
        switch (i8) {
            case 0:
                return P2.o.c((Bitmap) obj);
            case 1:
                return ((byte[]) obj).length;
            case 2:
                AnimatedImageDrawable animatedImageDrawable = (AnimatedImageDrawable) obj;
                return P2.o.d(Bitmap.Config.ARGB_8888) * animatedImageDrawable.getIntrinsicHeight() * animatedImageDrawable.getIntrinsicWidth() * 2;
            default:
                return 1;
        }
    }

    @Override // y2.D
    public final Class e() {
        switch (this.f3183G) {
            case 0:
                return Bitmap.class;
            case 1:
                return byte[].class;
            case 2:
                return Drawable.class;
            default:
                return this.f3184H.getClass();
        }
    }

    @Override // y2.D
    public final Object get() {
        int i8 = this.f3183G;
        Object obj = this.f3184H;
        switch (i8) {
            case 0:
                return (Bitmap) obj;
            case 1:
                return (byte[]) obj;
            case 2:
                return (AnimatedImageDrawable) obj;
            default:
                return obj;
        }
    }

    public z(byte[] bArr) {
        this.f3183G = 1;
        p102n0.c.c(bArr, "Argument must not be null");
        this.f3184H = bArr;
    }

    public z(File file) {
        this.f3183G = 3;
        p102n0.c.c(file, "Argument must not be null");
        this.f3184H = file;
    }
}
