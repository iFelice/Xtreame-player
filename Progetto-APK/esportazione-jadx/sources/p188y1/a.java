package p188y1;

import android.graphics.Rect;
import java.util.Arrays;
import p117p0.D;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f31230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f31231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f31232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31234f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Rect f31235g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f31229a = new int[4];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f31236h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f31237i = -1;

    public static int a(int[] iArr, int i8) {
        return (i8 < 0 || i8 >= iArr.length) ? iArr[0] : iArr[i8];
    }

    public static int c(int i8, int i9) {
        return (i8 & 16777215) | ((i9 * 17) << 24);
    }

    public final void b(D d6, boolean z7, Rect rect, int[] iArr) {
        int i8;
        int i9;
        int iWidth = rect.width();
        int iHeight = rect.height();
        int i10 = !z7 ? 1 : 0;
        int i11 = i10 * iWidth;
        while (true) {
            int i12 = 0;
            do {
                int i13 = 0;
                int i14 = 1;
                while (true) {
                    if (i13 >= i14 || i14 > 64) {
                        i8 = i13 & 3;
                        if (i13 >= 4) {
                            i9 = i13 >> 2;
                            break;
                        } else {
                            i9 = iWidth;
                            break;
                        }
                    }
                    if (d6.b() < 4) {
                        i9 = 0;
                        i8 = -1;
                        break;
                    } else {
                        i13 = (i13 << 4) | d6.i(4);
                        i14 <<= 2;
                    }
                }
                int iMin = Math.min(i9, iWidth - i12);
                if (iMin > 0) {
                    int i15 = i11 + iMin;
                    Arrays.fill(iArr, i11, i15, this.f31229a[i8]);
                    i12 += iMin;
                    i11 = i15;
                }
            } while (i12 < iWidth);
            i10 += 2;
            if (i10 >= iHeight) {
                return;
            }
            i11 = i10 * iWidth;
            d6.c();
        }
    }
}
