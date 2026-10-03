package F2;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: renamed from: F2.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0193c implements p173w2.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p196z2.d f3131b;

    public C0193c() {
        this.f3130a = 0;
        this.f3131b = new U4.b();
    }

    @Override // p173w2.n
    public final /* bridge */ /* synthetic */ boolean a(Object obj, p173w2.l lVar) {
        switch (this.f3130a) {
            case 0:
                E2.a.w(obj);
                break;
            default:
                break;
        }
        return true;
    }

    @Override // p173w2.n
    public final y2.D b(Object obj, int i8, int i9, p173w2.l lVar) {
        switch (this.f3130a) {
            case 0:
                return c(E2.a.g(obj), i8, i9, lVar);
            default:
                return C0194d.c(((p159u2.e) ((p159u2.a) obj)).b(), this.f3131b);
        }
    }

    public final C0194d c(ImageDecoder.Source source, int i8, int i9, p173w2.l lVar) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new E2.c(i8, i9, lVar));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + bitmapDecodeBitmap.getWidth() + "x" + bitmapDecodeBitmap.getHeight() + "] for [" + i8 + "x" + i9 + "]");
        }
        return new C0194d(bitmapDecodeBitmap, this.f3131b);
    }

    public C0193c(p196z2.d dVar) {
        this.f3130a = 1;
        this.f3131b = dVar;
    }
}
