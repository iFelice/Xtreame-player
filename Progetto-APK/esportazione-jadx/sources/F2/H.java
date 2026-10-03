package F2;

import A0.O;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class H implements p173w2.n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p173w2.k f3117d = new p173w2.k("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new C(0));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final p173w2.k f3118e = new p173w2.k("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new C(1));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final G f3119f = new G(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final List f3120g = Collections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final F f3121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p196z2.d f3122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final G f3123c;

    public H(p196z2.d dVar, F f8) {
        G g8 = f3119f;
        this.f3122b = dVar;
        this.f3121a = f8;
        this.f3123c = g8;
    }

    @Override // p173w2.n
    public final boolean a(Object obj, p173w2.l lVar) {
        return true;
    }

    @Override // p173w2.n
    public final y2.D b(Object obj, int i8, int i9, p173w2.l lVar) throws IOException {
        long jLongValue = ((Long) lVar.c(f3117d)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            throw new IllegalArgumentException(O.z("Requested frame must be non-negative, or DEFAULT_FRAME, given: ", jLongValue));
        }
        Integer num = (Integer) lVar.c(f3118e);
        if (num == null) {
            num = 2;
        }
        n nVar = (n) lVar.c(n.f3149f);
        if (nVar == null) {
            nVar = n.f3148e;
        }
        n nVar2 = nVar;
        this.f3123c.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            this.f3121a.s(mediaMetadataRetriever, obj);
            return C0194d.c(c(obj, mediaMetadataRetriever, jLongValue, num.intValue(), i8, i9, nVar2), this.f3122b);
        } finally {
            if (Build.VERSION.SDK_INT >= 29) {
                mediaMetadataRetriever.release();
            } else {
                mediaMetadataRetriever.release();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00df  */
    /* JADX WARN: Code duplicated, block: B:66:0x010e  */
    /* JADX WARN: Code duplicated, block: B:68:0x0114 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:72:0x012e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:73:0x0130 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:79:0x0148  */
    /* JADX WARN: Code duplicated, block: B:85:0x0190 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:86:0x0191  */
    /* JADX WARN: Code duplicated, block: B:9:0x0026  */
    public final Bitmap c(Object obj, MediaMetadataRetriever mediaMetadataRetriever, long j8, int i8, int i9, int i10, n nVar) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        MediaExtractor mediaExtractor;
        String str = Build.DEVICE;
        Bitmap bitmapCreateBitmap = null;
        if (str != null && str.matches(".+_cheets|cheets_.+")) {
            try {
                if ("video/webm".equals(mediaMetadataRetriever.extractMetadata(12))) {
                    mediaExtractor = new MediaExtractor();
                    try {
                        this.f3121a.e(mediaExtractor, obj);
                        int trackCount = mediaExtractor.getTrackCount();
                        for (int i16 = 0; i16 < trackCount; i16++) {
                            if ("video/x-vnd.on2.vp8".equals(mediaExtractor.getTrackFormat(i16).getString("mime"))) {
                                mediaExtractor.release();
                                throw new IllegalStateException("Cannot decode VP8 video on CrOS.");
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            if (Log.isLoggable("VideoDecoder", 3)) {
                                Log.d("VideoDecoder", "Exception trying to extract track info for a webm video on CrOS.", th);
                            }
                            if (mediaExtractor != null) {
                            }
                            if (Build.VERSION.SDK_INT >= 27) {
                                try {
                                    i13 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
                                    i14 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
                                    i15 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
                                    if (i15 != 90) {
                                        i14 = i13;
                                        i13 = i14;
                                    } else {
                                        i14 = i13;
                                        i13 = i14;
                                    }
                                    float fB = nVar.b(i13, i14, i9, i10);
                                    bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j8, i8, Math.round(i13 * fB), Math.round(fB * i14));
                                } catch (Throwable th2) {
                                    if (Log.isLoggable("VideoDecoder", 3)) {
                                        Log.d("VideoDecoder", "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame", th2);
                                    }
                                }
                            }
                            if (bitmapCreateBitmap == null) {
                                bitmapCreateBitmap = mediaMetadataRetriever.getFrameAtTime(j8, i8);
                            }
                            if (Build.MODEL.startsWith("Pixel")) {
                                i11 = Build.VERSION.SDK_INT;
                                if (i11 >= 30) {
                                    try {
                                        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(36);
                                        String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(35);
                                        i12 = Integer.parseInt(strExtractMetadata);
                                        int i17 = Integer.parseInt(strExtractMetadata2);
                                        if (i12 != 7) {
                                            if (Log.isLoggable("VideoDecoder", 3)) {
                                                Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                            }
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix, true);
                                        } else {
                                            if (Log.isLoggable("VideoDecoder", 3)) {
                                                Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                            }
                                            Matrix matrix2 = new Matrix();
                                            matrix2.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix2, true);
                                        }
                                    } catch (NumberFormatException unused) {
                                        if (Log.isLoggable("VideoDecoder", 3)) {
                                            Log.d("VideoDecoder", "Exception trying to extract HDR transfer function or rotation");
                                        }
                                    }
                                }
                            } else {
                                i11 = Build.VERSION.SDK_INT;
                                if (i11 >= 30) {
                                    String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(36);
                                    String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(35);
                                    i12 = Integer.parseInt(strExtractMetadata3);
                                    int i18 = Integer.parseInt(strExtractMetadata4);
                                    if (i12 != 7) {
                                        if (Log.isLoggable("VideoDecoder", 3)) {
                                            Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                        }
                                        Matrix matrix3 = new Matrix();
                                        matrix3.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                        bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix3, true);
                                    } else {
                                        if (Log.isLoggable("VideoDecoder", 3)) {
                                            Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                        }
                                        Matrix matrix4 = new Matrix();
                                        matrix4.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                        bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix4, true);
                                    }
                                }
                            }
                            if (bitmapCreateBitmap != null) {
                                return bitmapCreateBitmap;
                            }
                            throw new Y.r();
                        } catch (Throwable th3) {
                            if (mediaExtractor != null) {
                                mediaExtractor.release();
                            }
                            throw th3;
                        }
                    }
                    mediaExtractor.release();
                }
            } catch (Throwable th4) {
                th = th4;
                mediaExtractor = null;
            }
        }
        if (Build.VERSION.SDK_INT >= 27 && i9 != Integer.MIN_VALUE && i10 != Integer.MIN_VALUE && nVar != n.f3147d) {
            i13 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            i14 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            i15 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (i15 != 90 || i15 == 270) {
                i14 = i13;
                i13 = i14;
            }
            float fB2 = nVar.b(i13, i14, i9, i10);
            bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j8, i8, Math.round(i13 * fB2), Math.round(fB2 * i14));
        }
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = mediaMetadataRetriever.getFrameAtTime(j8, i8);
        }
        if (Build.MODEL.startsWith("Pixel") || Build.VERSION.SDK_INT != 33) {
            i11 = Build.VERSION.SDK_INT;
            if (i11 >= 30 && i11 < 33) {
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(36);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(35);
                i12 = Integer.parseInt(strExtractMetadata5);
                int i19 = Integer.parseInt(strExtractMetadata6);
                if ((i12 != 7 || i12 == 6) && i19 == 6 && Math.abs(Integer.parseInt(mediaMetadataRetriever.extractMetadata(24))) == 180) {
                    if (Log.isLoggable("VideoDecoder", 3)) {
                        Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                    }
                    Matrix matrix5 = new Matrix();
                    matrix5.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                    bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix5, true);
                }
            }
        } else {
            Iterator it = f3120g.iterator();
            do {
                if (it.hasNext()) {
                }
            } while (!Build.ID.startsWith((String) it.next()));
            String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(36);
            String strExtractMetadata8 = mediaMetadataRetriever.extractMetadata(35);
            i12 = Integer.parseInt(strExtractMetadata7);
            int i110 = Integer.parseInt(strExtractMetadata8);
            if (i12 != 7) {
                if (Log.isLoggable("VideoDecoder", 3)) {
                    Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                }
                Matrix matrix6 = new Matrix();
                matrix6.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix6, true);
            } else {
                if (Log.isLoggable("VideoDecoder", 3)) {
                    Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                }
                Matrix matrix7 = new Matrix();
                matrix7.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix7, true);
            }
        }
        if (bitmapCreateBitmap != null) {
            return bitmapCreateBitmap;
        }
        throw new Y.r();
    }
}
