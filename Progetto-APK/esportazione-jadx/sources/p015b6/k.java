package p015b6;

/* JADX INFO: loaded from: classes2.dex */
public enum k {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f9929G;

    k(String str) {
        this.f9929G = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f9929G;
    }
}
