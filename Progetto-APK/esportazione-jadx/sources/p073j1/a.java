package p073j1;

import p094m0.C3136t;
import p094m0.K;
import p094m0.M;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f25676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f25677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f25678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f25679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f25680e;

    public a(long j8, long j9, long j10, long j11, long j12) {
        this.f25676a = j8;
        this.f25677b = j9;
        this.f25678c = j10;
        this.f25679d = j11;
        this.f25680e = j12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f25676a == aVar.f25676a && this.f25677b == aVar.f25677b && this.f25678c == aVar.f25678c && this.f25679d == aVar.f25679d && this.f25680e == aVar.f25680e;
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
        return q0.y(this.f25680e) + ((q0.y(this.f25679d) + ((q0.y(this.f25678c) + ((q0.y(this.f25677b) + ((q0.y(this.f25676a) + 527) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f25676a + ", photoSize=" + this.f25677b + ", photoPresentationTimestampUs=" + this.f25678c + ", videoStartPosition=" + this.f25679d + ", videoSize=" + this.f25680e;
    }

    @Override // p094m0.M
    public final /* synthetic */ void populateMediaMetadata(K k8) {
    }
}
