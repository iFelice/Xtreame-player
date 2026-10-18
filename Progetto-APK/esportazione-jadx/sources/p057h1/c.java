package p057h1;

import java.util.Arrays;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;

/* JADX INFO: loaded from: classes.dex */
public final class c implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f25392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25394c;

    public c(byte[] bArr, String str, String str2) {
        this.f25392a = bArr;
        this.f25393b = str;
        this.f25394c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f25392a, ((c) obj).f25392a);
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
        return Arrays.hashCode(this.f25392a);
    }

    @Override // p094m0.M
    public final void populateMediaMetadata(K k8) {
        String str = this.f25393b;
        if (str != null) {
            k8.f26716a = str;
        }
    }

    public final String toString() {
        return "ICY: title=\"" + this.f25393b + "\", url=\"" + this.f25394c + "\", rawMetadata.length=\"" + this.f25392a.length + "\"";
    }
}
