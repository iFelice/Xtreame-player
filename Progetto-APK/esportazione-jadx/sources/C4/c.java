package C4;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f1633a;

    static {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i8 = 0; i8 < 10; i8++) {
            bArr[i8 + 48] = (byte) i8;
        }
        for (int i9 = 0; i9 < 26; i9++) {
            byte b8 = (byte) (i9 + 10);
            bArr[i9 + 65] = b8;
            bArr[i9 + 97] = b8;
        }
        f1633a = bArr;
    }
}
