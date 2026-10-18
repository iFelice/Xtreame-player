package com.bumptech.glide.load;

import p173w2.e;

/* JADX INFO: loaded from: classes.dex */
public enum ImageHeaderParser$ImageType {
    GIF(true),
    JPEG(false),
    RAW(false),
    PNG_A(true),
    PNG(false),
    WEBP_A(true),
    WEBP(false),
    ANIMATED_WEBP(true),
    AVIF(true),
    ANIMATED_AVIF(true),
    UNKNOWN(false);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f11564G;

    ImageHeaderParser$ImageType(boolean z7) {
        this.f11564G = z7;
    }

    public boolean hasAlpha() {
        return this.f11564G;
    }

    public boolean isWebp() {
        int i8 = e.f30991a[ordinal()];
        return i8 == 1 || i8 == 2 || i8 == 3;
    }
}
