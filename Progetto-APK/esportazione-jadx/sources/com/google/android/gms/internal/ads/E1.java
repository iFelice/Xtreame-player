package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class E1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f12924a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f12925b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1183d0 f12926c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f12927d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f12928e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x0051  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public E1(boolean z7, String str, int i8, byte[] bArr, int i9, int i10, byte[] bArr2) {
        byte b8 = 0;
        int i11 = 1;
        p113o3.r.J((i8 == 0) ^ (bArr2 == null));
        this.f12924a = z7;
        this.f12925b = str;
        this.f12927d = i8;
        this.f12928e = bArr2;
        if (str != null) {
            switch (str.hashCode()) {
                case 3046605:
                    if (!str.equals("cbc1")) {
                        b8 = -1;
                    } else {
                        b8 = 2;
                    }
                    break;
                case 3046671:
                    if (!str.equals("cbcs")) {
                        b8 = -1;
                    } else {
                        b8 = 3;
                    }
                    break;
                case 3049879:
                    if (!str.equals("cenc")) {
                        b8 = -1;
                    }
                    break;
                case 3049895:
                    if (!str.equals("cens")) {
                        b8 = -1;
                    } else {
                        b8 = 1;
                    }
                    break;
                default:
                    b8 = -1;
                    break;
            }
            if (b8 != 0 && b8 != 1) {
                if (b8 == 2 || b8 == 3) {
                    i11 = 2;
                } else {
                    Zo.f("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                }
            }
        }
        this.f12926c = new C1183d0(i11, bArr, i9, i10);
    }
}
