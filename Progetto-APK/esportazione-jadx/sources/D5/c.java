package D5;

import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f2409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o[] f2410c;

    public c(int i8, int i9, int i10, int i11, int[] iArr) {
        this.f2408a = i8;
        this.f2409b = iArr;
        float f8 = i11;
        this.f2410c = new o[]{new o(i9, f8), new o(i10, f8)};
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && this.f2408a == ((c) obj).f2408a;
    }

    public final int hashCode() {
        return this.f2408a;
    }
}
