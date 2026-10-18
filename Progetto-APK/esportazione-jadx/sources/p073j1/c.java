package p073j1;

import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.List;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;

/* JADX INFO: loaded from: classes.dex */
public final class c implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f25684a;

    public c(ArrayList arrayList) {
        this.f25684a = arrayList;
        boolean z7 = false;
        if (!arrayList.isEmpty()) {
            long j8 = ((b) arrayList.get(0)).f25682b;
            for (int i8 = 1; i8 < arrayList.size(); i8++) {
                if (((b) arrayList.get(i8)).f25681a < j8) {
                    z7 = true;
                    break;
                }
                j8 = ((b) arrayList.get(i8)).f25682b;
            }
        }
        H1.d(!z7);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return this.f25684a.equals(((c) obj).f25684a);
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
        return this.f25684a.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=" + this.f25684a;
    }

    @Override // p094m0.M
    public final /* synthetic */ void populateMediaMetadata(K k8) {
    }
}
