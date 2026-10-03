package p021c4;

import java.util.HashSet;
import p132r.f;

/* JADX INFO: renamed from: c4.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0572d extends u1 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f11137J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public HashSet f11138K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public f f11139L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Long f11140M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Long f11141N;

    @Override // p021c4.u1
    public final boolean p() {
        return false;
    }

    public final K1 q(Integer num) {
        if (this.f11139L.containsKey(num)) {
            return (K1) this.f11139L.get(num);
        }
        K1 k8 = new K1(this, this.f11137J);
        this.f11139L.put(num, k8);
        return k8;
    }
}
