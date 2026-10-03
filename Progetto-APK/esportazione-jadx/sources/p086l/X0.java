package p086l;

/* JADX INFO: loaded from: classes.dex */
public final class X0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f26201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f26203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f26204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f26205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f26206f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f26207g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f26208h;

    public final void a(int i8, int i9) {
        this.f26203c = i8;
        this.f26204d = i9;
        this.f26208h = true;
        if (this.f26207g) {
            if (i9 != Integer.MIN_VALUE) {
                this.f26201a = i9;
            }
            if (i8 != Integer.MIN_VALUE) {
                this.f26202b = i8;
                return;
            }
            return;
        }
        if (i8 != Integer.MIN_VALUE) {
            this.f26201a = i8;
        }
        if (i9 != Integer.MIN_VALUE) {
            this.f26202b = i9;
        }
    }
}
