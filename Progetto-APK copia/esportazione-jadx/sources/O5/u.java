package O5;

import A0.O;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final P2.b f5640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5642c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Rect f5643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5644e;

    public u(byte[] bArr, int i8, int i9, int i10, int i11) {
        this.f5640a = new P2.b(i8, bArr, i9, 4);
        this.f5642c = i11;
        this.f5641b = i10;
        if (i8 * i9 <= bArr.length) {
            return;
        }
        StringBuilder sbD = O.D("Image data does not match the resolution. ", i8, "x", i9, " > ");
        sbD.append(bArr.length);
        throw new IllegalArgumentException(sbD.toString());
    }
}
