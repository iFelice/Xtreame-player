package p193z;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f31567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f31568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f31569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f31570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f31571e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31572f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f31573g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String[] f31574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f31575i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f31576j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean[] f31577k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f31578l;

    public final void a(int i8, float f8) {
        int i9 = this.f31572f;
        int[] iArr = this.f31570d;
        if (i9 >= iArr.length) {
            this.f31570d = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f31571e;
            this.f31571e = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f31570d;
        int i10 = this.f31572f;
        iArr2[i10] = i8;
        float[] fArr2 = this.f31571e;
        this.f31572f = i10 + 1;
        fArr2[i10] = f8;
    }

    public final void b(int i8, int i9) {
        int i10 = this.f31569c;
        int[] iArr = this.f31567a;
        if (i10 >= iArr.length) {
            this.f31567a = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.f31568b;
            this.f31568b = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f31567a;
        int i11 = this.f31569c;
        iArr3[i11] = i8;
        int[] iArr4 = this.f31568b;
        this.f31569c = i11 + 1;
        iArr4[i11] = i9;
    }

    public final void c(int i8, String str) {
        int i9 = this.f31575i;
        int[] iArr = this.f31573g;
        if (i9 >= iArr.length) {
            this.f31573g = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f31574h;
            this.f31574h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.f31573g;
        int i10 = this.f31575i;
        iArr2[i10] = i8;
        String[] strArr2 = this.f31574h;
        this.f31575i = i10 + 1;
        strArr2[i10] = str;
    }

    public final void d(int i8, boolean z7) {
        int i9 = this.f31578l;
        int[] iArr = this.f31576j;
        if (i9 >= iArr.length) {
            this.f31576j = Arrays.copyOf(iArr, iArr.length * 2);
            boolean[] zArr = this.f31577k;
            this.f31577k = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] iArr2 = this.f31576j;
        int i10 = this.f31578l;
        iArr2[i10] = i8;
        boolean[] zArr2 = this.f31577k;
        this.f31578l = i10 + 1;
        zArr2[i10] = z7;
    }
}
