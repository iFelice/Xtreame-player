package Z5;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF0' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: renamed from: Z5.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC0465w {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final EnumC0465w f8466I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final EnumC0465w[] f8467J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final /* synthetic */ EnumC0465w[] f8468K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f8469G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Y5.B f8470H;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0465w EF0;

    static {
        Y5.B b8 = Y5.B.f8141k;
        EnumC0465w enumC0465w = new EnumC0465w("NO_ERROR", 0, 0, b8);
        Y5.B b9 = Y5.B.f8140j;
        EnumC0465w enumC0465w2 = new EnumC0465w("PROTOCOL_ERROR", 1, 1, b9);
        EnumC0465w enumC0465w3 = new EnumC0465w("INTERNAL_ERROR", 2, 2, b9);
        f8466I = enumC0465w3;
        f8468K = new EnumC0465w[]{enumC0465w, enumC0465w2, enumC0465w3, new EnumC0465w("FLOW_CONTROL_ERROR", 3, 3, b9), new EnumC0465w("SETTINGS_TIMEOUT", 4, 4, b9), new EnumC0465w("STREAM_CLOSED", 5, 5, b9), new EnumC0465w("FRAME_SIZE_ERROR", 6, 6, b9), new EnumC0465w("REFUSED_STREAM", 7, 7, b8), new EnumC0465w("CANCEL", 8, 8, Y5.B.f8136f), new EnumC0465w("COMPRESSION_ERROR", 9, 9, b9), new EnumC0465w("CONNECT_ERROR", 10, 10, b9), new EnumC0465w("ENHANCE_YOUR_CALM", 11, 11, Y5.B.f8139i.f("Bandwidth exhausted")), new EnumC0465w("INADEQUATE_SECURITY", 12, 12, Y5.B.f8138h.f("Permission denied as protocol is not secure enough to call")), new EnumC0465w("HTTP_1_1_REQUIRED", 13, 13, Y5.B.f8137g)};
        EnumC0465w[] enumC0465wArrValues = values();
        EnumC0465w[] enumC0465wArr = new EnumC0465w[enumC0465wArrValues[enumC0465wArrValues.length - 1].f8469G + 1];
        for (EnumC0465w enumC0465w4 : enumC0465wArrValues) {
            enumC0465wArr[enumC0465w4.f8469G] = enumC0465w4;
        }
        f8467J = enumC0465wArr;
    }

    public EnumC0465w(String str, int i8, int i9, Y5.B b8) {
        super(str, i8);
        this.f8469G = i9;
        String str2 = "HTTP/2 error code: " + name();
        this.f8470H = b8.f(b8.f8143b != null ? p000a.r.j(p000a.r.l(str2, " ("), b8.f8143b, ")") : str2);
    }

    public static EnumC0465w valueOf(String str) {
        return (EnumC0465w) Enum.valueOf(EnumC0465w.class, str);
    }

    public static EnumC0465w[] values() {
        return (EnumC0465w[]) f8468K.clone();
    }
}
