package androidx.graphics.path;

import android.graphics.Path;
import dalvik.annotation.optimization.FastNative;

/* JADX INFO: loaded from: classes.dex */
public final class PathIteratorPreApi34Impl {
    static {
        System.loadLibrary("androidx.graphics.path");
    }

    private final native long createInternalPathIterator(Path path, int i8, float f8);

    private final native void destroyInternalPathIterator(long j8);

    @FastNative
    private final native boolean internalPathIteratorHasNext(long j8);

    @FastNative
    private final native int internalPathIteratorNext(long j8, float[] fArr, int i8);

    @FastNative
    private final native int internalPathIteratorPeek(long j8);

    @FastNative
    private final native int internalPathIteratorRawSize(long j8);

    @FastNative
    private final native int internalPathIteratorSize(long j8);

    public final void finalize() {
        destroyInternalPathIterator(0L);
    }
}
