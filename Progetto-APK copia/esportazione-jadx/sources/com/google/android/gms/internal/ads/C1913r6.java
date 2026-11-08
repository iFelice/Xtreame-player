package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import java.io.PushbackInputStream;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.r6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1913r6 extends PushbackInputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C1965s6 f20677G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1913r6(C1965s6 c1965s6, ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream) {
        super(autoCloseInputStream, 1);
        this.f20677G = c1965s6;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        C2222x3.d(this.f20677G.f20868c);
        super.close();
    }
}
