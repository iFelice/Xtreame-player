package F3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes.dex */
public final class i implements a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f3218G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ l f3219H;

    public /* synthetic */ i(l lVar, int i8) {
        this.f3218G = i8;
        this.f3219H = lVar;
    }

    @Override // F3.a
    public final void a(Bitmap bitmap) {
        int i8 = this.f3218G;
        l lVar = this.f3219H;
        switch (i8) {
            case 0:
                H3.b bVar = l.f3223v;
                Bitmap bitmap2 = null;
                if (bitmap != null) {
                    int width = bitmap.getWidth();
                    float f8 = width;
                    int height = bitmap.getHeight();
                    int i9 = (int) (((9.0f * f8) / 16.0f) + 0.5f);
                    float f9 = (i9 - height) / 2.0f;
                    RectF rectF = new RectF(0.0f, f9, f8, height + f9);
                    Bitmap.Config config = bitmap.getConfig();
                    if (config == null) {
                        config = Bitmap.Config.ARGB_8888;
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, i9, config);
                    new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
                    bitmap2 = bitmapCreateBitmap;
                }
                lVar.e(bitmap2, 0);
                break;
            default:
                lVar.e(bitmap, 3);
                break;
        }
    }
}
