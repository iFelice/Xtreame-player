package p125q0;

import p094m0.C3136t;
import p094m0.K;
import p094m0.M;

/* JADX INFO: loaded from: classes.dex */
public final class b implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f29442a;

    public b(int i8) {
        this.f29442a = i8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && this.f29442a == ((b) obj).f29442a;
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
        return this.f29442a;
    }

    public final String toString() {
        return "Mp4AlternateGroup: " + this.f29442a;
    }

    @Override // p094m0.M
    public final /* synthetic */ void populateMediaMetadata(K k8) {
    }
}
