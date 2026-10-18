package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2439e0 implements InterfaceC2505v, InterfaceC2469l2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2439e0 f22729a = new C2439e0();

    /* JADX WARN: Code duplicated, block: B:50:0x0077 A[ORIG_RETURN, RETURN] */
    public static boolean a(byte[] bArr, int i8) {
        int i9 = 0;
        while (i9 < i8 && bArr[i9] >= 0) {
            i9++;
        }
        if (i9 < i8) {
            while (i9 < i8) {
                int i10 = i9 + 1;
                int iA = bArr[i9];
                if (iA >= 0) {
                    i9 = i10;
                } else if (iA < -32) {
                    if (i10 >= i8) {
                        if (iA == 0) {
                            break;
                        }
                        return false;
                    }
                    if (iA < -62) {
                        return false;
                    }
                    i9 += 2;
                    if (bArr[i10] > -65) {
                        return false;
                    }
                } else if (iA < -16) {
                    if (i10 >= i8 - 1) {
                        iA = Y2.a(bArr, i10, i8);
                        if (iA == 0) {
                            break;
                        }
                        return false;
                    }
                    int i11 = i9 + 2;
                    byte b8 = bArr[i10];
                    if (b8 > -65) {
                        return false;
                    }
                    if (iA == -32 && b8 < -96) {
                        return false;
                    }
                    if (iA == -19 && b8 >= -96) {
                        return false;
                    }
                    i9 += 3;
                    if (bArr[i11] > -65) {
                        return false;
                    }
                } else {
                    if (i10 >= i8 - 2) {
                        iA = Y2.a(bArr, i10, i8);
                        if (iA == 0) {
                            break;
                        }
                        return false;
                    }
                    int i12 = i9 + 2;
                    byte b9 = bArr[i10];
                    if (b9 > -65) {
                        return false;
                    }
                    if ((((b9 + 112) + (iA << 28)) >> 30) != 0) {
                        return false;
                    }
                    int i13 = i9 + 3;
                    if (bArr[i12] > -65) {
                        return false;
                    }
                    i9 += 4;
                    if (bArr[i13] > -65) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2505v
    public void zza() {
    }
}
