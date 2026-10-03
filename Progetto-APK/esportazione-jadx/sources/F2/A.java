package F2;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class A implements p173w2.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3110a;

    public /* synthetic */ A(int i8) {
        this.f3110a = i8;
    }

    @Override // p173w2.n
    public final /* bridge */ /* synthetic */ boolean a(Object obj, p173w2.l lVar) {
        switch (this.f3110a) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return true;
    }

    @Override // p173w2.n
    public final y2.D b(Object obj, int i8, int i9, p173w2.l lVar) {
        switch (this.f3110a) {
            case 0:
                return new z((Bitmap) obj, 0);
            case 1:
                Drawable drawable = (Drawable) obj;
                if (drawable != null) {
                    return new G2.d(drawable, 0);
                }
                return null;
            default:
                return new z((File) obj);
        }
    }
}
