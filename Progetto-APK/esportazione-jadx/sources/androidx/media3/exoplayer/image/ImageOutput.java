package androidx.media3.exoplayer.image;

import J0.d;
import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public interface ImageOutput {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f9471a = new d();

    void a();

    void onImageAvailable(long j8, Bitmap bitmap);
}
