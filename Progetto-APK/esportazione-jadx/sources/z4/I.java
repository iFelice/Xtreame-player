package z4;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f31805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f31806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f31807c;

    public I(Object obj, Object obj2, Object obj3) {
        this.f31805a = obj;
        this.f31806b = obj2;
        this.f31807c = obj3;
    }

    public final IllegalArgumentException a() {
        StringBuilder sb = new StringBuilder("Multiple entries with same key: ");
        Object obj = this.f31805a;
        sb.append(obj);
        sb.append("=");
        sb.append(this.f31806b);
        sb.append(" and ");
        sb.append(obj);
        sb.append("=");
        sb.append(this.f31807c);
        return new IllegalArgumentException(sb.toString());
    }
}
