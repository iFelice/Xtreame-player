package L5;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v1 L5.b, still in use, count: 1, list:
  (r1v1 L5.b) from 0x002f: FILLED_NEW_ARRAY (r1v1 L5.b), (r0v0 L5.b), (r5v1 L5.b), (r4v1 L5.b) A[WRAPPED] (LINE:48) elemType: L5.b
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public final class b {
    L(1),
    /* JADX INFO: Fake field, exist only in values array */
    M(0),
    /* JADX INFO: Fake field, exist only in values array */
    Q(3),
    /* JADX INFO: Fake field, exist only in values array */
    H(2);


    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final b[] f4705I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f4707G;

    static {
        b bVar = L;
        f4705I = new b[]{bVar, bVar, bVar, bVar};
    }

    public b(int i8) {
        super(str, i);
        this.f4707G = i8;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f4706J.clone();
    }
}
