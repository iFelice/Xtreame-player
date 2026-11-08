package p073j1;

import p094m0.C3136t;
import p094m0.K;
import p094m0.M;

/* JADX INFO: loaded from: classes.dex */
public final class d implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f25685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25686b;

    public d(int i8, float f8) {
        this.f25685a = f8;
        this.f25686b = i8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f25685a == dVar.f25685a && this.f25686b == dVar.f25686b;
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
        return ((Float.valueOf(this.f25685a).hashCode() + 527) * 31) + this.f25686b;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.f25685a + ", svcTemporalLayerCount=" + this.f25686b;
    }

    @Override // p094m0.M
    public final /* synthetic */ void populateMediaMetadata(K k8) {
    }
}
