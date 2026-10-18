package com.google.android.gms.internal.atv_ads_framework;

import java.io.IOException;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2383e0 implements R2.d, X {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ C2383e0 f22317G = new C2383e0();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C2383e0 f22318H = new C2383e0();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C2383e0 f22319I = new C2383e0();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C2383e0 f22320J = new C2383e0();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final C2383e0 f22321K = new C2383e0();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final C2383e0 f22322L = new C2383e0();

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
                        iA = K0.a(bArr, i10, i8);
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
                        iA = K0.a(bArr, i10, i8);
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

    @Override // R2.d
    public Object apply(Object obj) {
        C2378c c2378c = (C2378c) obj;
        try {
            int iE = c2378c.e();
            byte[] bArr = new byte[iE];
            L l4 = new L(bArr, iE);
            InterfaceC2418w0 interfaceC2418w0A = C2414u0.f22373c.a(C2378c.class);
            M m7 = l4.f22276c;
            if (m7 == null) {
                m7 = new M(l4);
            }
            interfaceC2418w0A.d(c2378c, m7);
            if (iE - l4.f22279f == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e8) {
            throw new RuntimeException(p000a.r.g("Serializing ", c2378c.getClass().getName(), " to a byte array threw an IOException (should never happen)."), e8);
        }
    }
}
