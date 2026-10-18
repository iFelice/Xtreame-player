package p125q0;

import p094m0.C3136t;
import p094m0.K;
import p094m0.M;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class g implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f29451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f29452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f29453c;

    public g(long j8, long j9, long j10) {
        this.f29451a = j8;
        this.f29452b = j9;
        this.f29453c = j10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f29451a == gVar.f29451a && this.f29452b == gVar.f29452b && this.f29453c == gVar.f29453c;
    }

    @Override // p094m0.M
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override // p094m0.M
    public final /* synthetic */ C3136t getWrappedMetadataFormat() {
        return null;
    }

    public final int hashCode() {
        return q0.y(this.f29453c) + ((q0.y(this.f29452b) + ((q0.y(this.f29451a) + 527) * 31)) * 31);
    }

    public final String toString() {
        return "Mp4Timestamp: creation time=" + this.f29451a + ", modification time=" + this.f29452b + ", timescale=" + this.f29453c;
    }

    @Override // p094m0.M
    public final /* synthetic */ void populateMediaMetadata(K k8) {
    }
}
