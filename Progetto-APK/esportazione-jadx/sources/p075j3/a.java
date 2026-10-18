package p075j3;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f25695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f25696b;

    public a(String str, boolean z7) {
        this.f25695a = str;
        this.f25696b = z7;
    }

    public final String toString() {
        String str = this.f25695a;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
        sb.append("{");
        sb.append(str);
        sb.append("}");
        sb.append(this.f25696b);
        return sb.toString();
    }
}
