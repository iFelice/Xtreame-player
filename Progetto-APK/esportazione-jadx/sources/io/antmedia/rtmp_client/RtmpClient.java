package io.antmedia.rtmp_client;

import p173w2.d;

/* JADX INFO: loaded from: classes2.dex */
public class RtmpClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f25593a;

    static {
        System.loadLibrary("rtmp-jni");
    }

    private native long nativeAlloc();

    private native void nativeClose(long j8);

    private native int nativeOpen(String str, boolean z7, long j8, int i8, int i9);

    private native int nativeRead(byte[] bArr, int i8, int i9, long j8);

    public final void a() {
        nativeClose(this.f25593a);
        this.f25593a = 0L;
    }

    public final void b(String str) throws d {
        long jNativeAlloc = nativeAlloc();
        this.f25593a = jNativeAlloc;
        if (jNativeAlloc == 0) {
            throw new d(-2, 1);
        }
        int iNativeOpen = nativeOpen(str, false, jNativeAlloc, 10000, 10000);
        if (iNativeOpen == 0) {
            return;
        }
        this.f25593a = 0L;
        throw new d(iNativeOpen, 1);
    }

    public final int c(byte[] bArr, int i8, int i9) throws d {
        int iNativeRead = nativeRead(bArr, i8, i9, this.f25593a);
        if (iNativeRead >= 0 || iNativeRead == -1) {
            return iNativeRead;
        }
        throw new d(iNativeRead, 1);
    }
}
