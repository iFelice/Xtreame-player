package com.bumptech.glide.load.data;

import F2.w;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class n implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11589a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f11590b;

    public n(InputStream inputStream, p196z2.h hVar) {
        w wVar = new w(inputStream, hVar);
        this.f11590b = wVar;
        wVar.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.g
    public final Object a() {
        int i8 = this.f11589a;
        Object obj = this.f11590b;
        switch (i8) {
            case 0:
                return b();
            case 1:
                return obj;
            default:
                w wVar = (w) obj;
                wVar.reset();
                return wVar;
        }
    }

    public final ParcelFileDescriptor b() {
        return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f11590b).rewind();
    }

    @Override // com.bumptech.glide.load.data.g
    public final void c() {
        switch (this.f11589a) {
            case 0:
            case 1:
                break;
            default:
                ((w) this.f11590b).E();
                break;
        }
    }

    public n(ParcelFileDescriptor parcelFileDescriptor) {
        this.f11590b = new ParcelFileDescriptorRewinder$InternalRewinder(parcelFileDescriptor);
    }

    public n(Object obj) {
        this.f11590b = obj;
    }
}
