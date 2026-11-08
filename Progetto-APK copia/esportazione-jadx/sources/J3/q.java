package J3;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class q extends p {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final byte[] f4164J;

    public q(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f4164J = bArr;
    }

    @Override // J3.p
    public final byte[] v0() {
        return this.f4164J;
    }
}
