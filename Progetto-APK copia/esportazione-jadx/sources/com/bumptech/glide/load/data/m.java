package com.bumptech.glide.load.data;

import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class m implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p196z2.h f11588a;

    public m(p196z2.h hVar) {
        this.f11588a = hVar;
    }

    @Override // com.bumptech.glide.load.data.f
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.f
    public final g b(Object obj) {
        return new n((InputStream) obj, this.f11588a);
    }
}
