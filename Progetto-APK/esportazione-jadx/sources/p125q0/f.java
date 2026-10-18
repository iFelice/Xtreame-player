package p125q0;

import com.google.android.gms.internal.measurement.H1;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;

/* JADX INFO: loaded from: classes.dex */
public final class f implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f29449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f29450b;

    public f(float f8, float f9) {
        H1.c("Invalid latitude or longitude", f8 >= -90.0f && f8 <= 90.0f && f9 >= -180.0f && f9 <= 180.0f);
        this.f29449a = f8;
        this.f29450b = f9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return this.f29449a == fVar.f29449a && this.f29450b == fVar.f29450b;
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
        return Float.valueOf(this.f29450b).hashCode() + ((Float.valueOf(this.f29449a).hashCode() + 527) * 31);
    }

    public final String toString() {
        return "xyz: latitude=" + this.f29449a + ", longitude=" + this.f29450b;
    }

    @Override // p094m0.M
    public final /* synthetic */ void populateMediaMetadata(K k8) {
    }
}
