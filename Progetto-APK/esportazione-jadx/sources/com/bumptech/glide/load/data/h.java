package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class h implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11575a;

    @Override // com.bumptech.glide.load.data.f
    public final Class a() {
        switch (this.f11575a) {
            case 0:
                throw new UnsupportedOperationException("Not implemented");
            case 1:
                return ParcelFileDescriptor.class;
            default:
                return ByteBuffer.class;
        }
    }

    @Override // com.bumptech.glide.load.data.f
    public final g b(Object obj) {
        switch (this.f11575a) {
            case 0:
                return new n(obj);
            case 1:
                return new n((ParcelFileDescriptor) obj);
            default:
                return new p173w2.h((ByteBuffer) obj, 0);
        }
    }
}
