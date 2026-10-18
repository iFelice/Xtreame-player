package F2;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: renamed from: F2.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0192b implements p173w2.o {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final p173w2.k f3127H = p173w2.k.a(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final p173w2.k f3128I = new p173w2.k("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, p173w2.k.f30995e);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p196z2.h f3129G;

    public C0192b(p196z2.h hVar) {
        this.f3129G = hVar;
    }

    @Override // p173w2.c
    public final boolean n(Object obj, File file, p173w2.l lVar) throws Throwable {
        boolean z7;
        Bitmap bitmap = (Bitmap) ((y2.D) obj).get();
        p173w2.k kVar = f3128I;
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) lVar.c(kVar);
        if (compressFormat == null) {
            compressFormat = bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
        }
        bitmap.getWidth();
        bitmap.getHeight();
        int i8 = P2.i.f5894b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int iIntValue = ((Integer) lVar.c(f3127H)).intValue();
        OutputStream cVar = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    p196z2.h hVar = this.f3129G;
                    if (hVar != null) {
                        try {
                            cVar = new com.bumptech.glide.load.data.c(fileOutputStream, hVar);
                        } catch (IOException e8) {
                            e = e8;
                            cVar = fileOutputStream;
                            if (Log.isLoggable("BitmapEncoder", 3)) {
                                Log.d("BitmapEncoder", "Failed to encode Bitmap", e);
                            }
                            if (cVar != null) {
                                try {
                                    cVar.close();
                                } catch (IOException unused) {
                                }
                            }
                            z7 = false;
                        } catch (Throwable th) {
                            th = th;
                            cVar = fileOutputStream;
                            if (cVar != null) {
                                try {
                                    cVar.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        cVar = fileOutputStream;
                    }
                    bitmap.compress(compressFormat, iIntValue, cVar);
                    cVar.close();
                    try {
                        cVar.close();
                    } catch (IOException unused3) {
                    }
                    z7 = true;
                } catch (IOException e9) {
                    e = e9;
                }
                if (Log.isLoggable("BitmapEncoder", 2)) {
                    Log.v("BitmapEncoder", "Compressed with type: " + compressFormat + " of size " + P2.o.c(bitmap) + " in " + P2.i.a(jElapsedRealtimeNanos) + ", options format: " + lVar.c(kVar) + ", hasAlpha: " + bitmap.hasAlpha());
                }
                return z7;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    @Override // p173w2.o
    public final int p(p173w2.l lVar) {
        return 2;
    }
}
