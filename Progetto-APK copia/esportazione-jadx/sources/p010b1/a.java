package p010b1;

import W0.AbstractC0378k;

/* JADX INFO: loaded from: classes.dex */
public final class a extends AbstractC0378k {
    public static int h(int i8, byte[] bArr) {
        return (bArr[i8 + 3] & 255) | ((bArr[i8] & 255) << 24) | ((bArr[i8 + 1] & 255) << 16) | ((bArr[i8 + 2] & 255) << 8);
    }

    public static /* bridge */ /* synthetic */ int i(int i8, byte[] bArr) {
        return (bArr[i8 + 3] & 255) | ((bArr[i8] & 255) << 24) | ((bArr[i8 + 1] & 255) << 16) | ((bArr[i8 + 2] & 255) << 8);
    }
}
