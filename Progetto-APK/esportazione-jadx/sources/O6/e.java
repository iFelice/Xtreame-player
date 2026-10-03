package O6;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends h {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final e f5673J = new e(k.f5681c, k.f5682d, k.f5683e, k.f5679a);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // J6.AbstractC0214m
    public final String toString() {
        return "Dispatchers.Default";
    }
}
