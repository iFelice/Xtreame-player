package R0;

import p094m0.g0;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g0 f6241a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f6242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6243c;

    public r(g0 g0Var, int[] iArr) {
        if (iArr.length == 0) {
            p117p0.x.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
        }
        this.f6241a = g0Var;
        this.f6242b = iArr;
        this.f6243c = 0;
    }
}
