package P0;

import O0.T;
import W0.L;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class c implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f5702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final T[] f5703b;

    public c(int[] iArr, T[] tArr) {
        this.f5702a = iArr;
        this.f5703b = tArr;
    }

    public final L a(int i8) {
        int i9 = 0;
        while (true) {
            int[] iArr = this.f5702a;
            if (i9 >= iArr.length) {
                x.c("BaseMediaChunkOutput", "Unmatched track of type: " + i8);
                return new W0.q();
            }
            if (i8 == iArr[i9]) {
                return this.f5703b[i9];
            }
            i9++;
        }
    }
}
