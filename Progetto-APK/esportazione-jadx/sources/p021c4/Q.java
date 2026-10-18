package p021c4;

/* JADX INFO: loaded from: classes.dex */
public final class Q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f11011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f11012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f11013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ T f11014d;

    public Q(T t7, int i8, boolean z7, boolean z8) {
        this.f11014d = t7;
        this.f11011a = i8;
        this.f11012b = z7;
        this.f11013c = z8;
    }

    public final void a(String str) {
        this.f11014d.y(this.f11011a, this.f11012b, this.f11013c, str, null, null, null);
    }

    public final void b(Object obj, String str) {
        this.f11014d.y(this.f11011a, this.f11012b, this.f11013c, str, obj, null, null);
    }

    public final void c(Object obj, Object obj2, String str) {
        this.f11014d.y(this.f11011a, this.f11012b, this.f11013c, str, obj, obj2, null);
    }

    public final void d(Object obj, Object obj2, Object obj3, String str) {
        this.f11014d.y(this.f11011a, this.f11012b, this.f11013c, str, obj, obj2, obj3);
    }
}
