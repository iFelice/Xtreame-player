package p111o1;

import W0.K;
import com.google.android.gms.internal.measurement.H1;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f27810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final K f27812c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f27813d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f27814e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:14:0x0029  */
    public q(boolean z7, String str, int i8, byte[] bArr, int i9, int i10, byte[] bArr2) {
        byte b8 = 0;
        int i11 = 1;
        H1.d((i8 == 0) ^ (bArr2 == null));
        this.f27810a = z7;
        this.f27811b = str;
        this.f27813d = i8;
        this.f27814e = bArr2;
        if (str != null) {
            switch (str.hashCode()) {
                case 3046605:
                    if (!str.equals("cbc1")) {
                        b8 = -1;
                    }
                    break;
                case 3046671:
                    if (!str.equals("cbcs")) {
                        b8 = -1;
                    } else {
                        b8 = 1;
                    }
                    break;
                case 3049879:
                    if (!str.equals("cenc")) {
                        b8 = -1;
                    } else {
                        b8 = 2;
                    }
                    break;
                case 3049895:
                    if (!str.equals("cens")) {
                        b8 = -1;
                    } else {
                        b8 = 3;
                    }
                    break;
                default:
                    b8 = -1;
                    break;
            }
            switch (b8) {
                case 0:
                case 1:
                    i11 = 2;
                    break;
                case 2:
                case 3:
                    break;
                default:
                    x.f("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                    break;
            }
        }
        this.f27812c = new K(i11, bArr, i9, i10);
    }
}
