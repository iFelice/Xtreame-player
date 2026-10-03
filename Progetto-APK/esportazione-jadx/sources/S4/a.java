package S4;

/* JADX INFO: loaded from: classes.dex */
public final class a implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f6435b;

    public a(int i8, d dVar) {
        this.f6434a = i8;
        this.f6435b = dVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return e.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f6434a == ((a) eVar).f6434a && this.f6435b.equals(((a) eVar).f6435b);
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (14552422 ^ this.f6434a) + (this.f6435b.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f6434a + "intEncoding=" + this.f6435b + ')';
    }
}
