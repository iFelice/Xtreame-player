package p012b3;

import org.videolan.libvlc.media.MediaPlayer;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9833f = new a(10485760, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, 10000, 604800000, 81920);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f9834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f9837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f9838e;

    public a(long j8, int i8, int i9, long j9, int i10) {
        this.f9834a = j8;
        this.f9835b = i8;
        this.f9836c = i9;
        this.f9837d = j9;
        this.f9838e = i10;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f9834a == aVar.f9834a && this.f9835b == aVar.f9835b && this.f9836c == aVar.f9836c && this.f9837d == aVar.f9837d && this.f9838e == aVar.f9838e;
    }

    public final int hashCode() {
        long j8 = this.f9834a;
        int i8 = (((((((int) (j8 ^ (j8 >>> 32))) ^ 1000003) * 1000003) ^ this.f9835b) * 1000003) ^ this.f9836c) * 1000003;
        long j9 = this.f9837d;
        return this.f9838e ^ ((i8 ^ ((int) ((j9 >>> 32) ^ j9))) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb.append(this.f9834a);
        sb.append(", loadBatchSize=");
        sb.append(this.f9835b);
        sb.append(", criticalSectionEnterTimeoutMs=");
        sb.append(this.f9836c);
        sb.append(", eventCleanUpAge=");
        sb.append(this.f9837d);
        sb.append(", maxBlobByteSizePerRow=");
        return r.h(sb, this.f9838e, "}");
    }
}
