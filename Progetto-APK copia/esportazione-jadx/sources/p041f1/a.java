package p041f1;

import p000a.r;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;

/* JADX INFO: loaded from: classes.dex */
public final class a implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f25134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25135b;

    public a(int i8, String str) {
        this.f25134a = i8;
        this.f25135b = str;
    }

    @Override // p094m0.M
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override // p094m0.M
    public final /* synthetic */ C3136t getWrappedMetadataFormat() {
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Ait(controlCode=");
        sb.append(this.f25134a);
        sb.append(",url=");
        return r.j(sb, this.f25135b, ")");
    }

    @Override // p094m0.M
    public final /* synthetic */ void populateMediaMetadata(K k8) {
    }
}
