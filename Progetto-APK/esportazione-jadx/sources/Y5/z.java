package Y5;

/* JADX INFO: loaded from: classes2.dex */
public enum z {
    OK(0),
    CANCELLED(1),
    UNKNOWN(2),
    INVALID_ARGUMENT(3),
    DEADLINE_EXCEEDED(4),
    NOT_FOUND(5),
    ALREADY_EXISTS(6),
    PERMISSION_DENIED(7),
    RESOURCE_EXHAUSTED(8),
    FAILED_PRECONDITION(9),
    ABORTED(10),
    OUT_OF_RANGE(11),
    UNIMPLEMENTED(12),
    INTERNAL(13),
    UNAVAILABLE(14),
    DATA_LOSS(15),
    UNAUTHENTICATED(16);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f8196G;

    z(int i8) {
        this.f8196G = i8;
        Integer.toString(i8).getBytes(p190y4.g.f31424a);
    }

    public final B a() {
        return (B) B.f8134d.get(this.f8196G);
    }
}
