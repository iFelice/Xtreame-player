package com.google.protobuf;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'I' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public class S2 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final S2 f24302I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final O2 f24303J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final P2 f24304K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Q2 f24305L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final S2 f24306M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ S2[] f24307N;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final T2 f24308G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f24309H;

    /* JADX INFO: Fake field, exist only in values array */
    S2 EF10;

    /* JADX INFO: Fake field, exist only in values array */
    S2 EF11;

    static {
        S2 s7 = new S2("DOUBLE", 0, T2.DOUBLE, 1);
        S2 s8 = new S2("FLOAT", 1, T2.FLOAT, 5);
        T2 t7 = T2.LONG;
        S2 s9 = new S2("INT64", 2, t7, 0);
        f24302I = s9;
        S2 s10 = new S2("UINT64", 3, t7, 0);
        T2 t8 = T2.INT;
        S2 s11 = new S2("INT32", 4, t8, 0);
        S2 s12 = new S2("FIXED64", 5, t7, 1);
        S2 s13 = new S2("FIXED32", 6, t8, 5);
        S2 s14 = new S2("BOOL", 7, T2.BOOLEAN, 0);
        O2 o4 = new O2("STRING", 8, T2.STRING, 2);
        f24303J = o4;
        T2 t9 = T2.MESSAGE;
        P2 p7 = new P2("GROUP", 9, t9, 3);
        f24304K = p7;
        Q2 q7 = new Q2("MESSAGE", 10, t9, 2);
        f24305L = q7;
        R2 r7 = new R2("BYTES", 11, T2.BYTE_STRING, 2);
        S2 s15 = new S2("UINT32", 12, t8, 0);
        S2 s16 = new S2("ENUM", 13, T2.ENUM, 0);
        f24306M = s16;
        f24307N = new S2[]{s7, s8, s9, s10, s11, s12, s13, s14, o4, p7, q7, r7, s15, s16, new S2("SFIXED32", 14, t8, 5), new S2("SFIXED64", 15, t7, 1), new S2("SINT32", 16, t8, 0), new S2("SINT64", 17, t7, 0)};
    }

    public S2(String str, int i8, T2 t7, int i9) {
        super(str, i8);
        this.f24308G = t7;
        this.f24309H = i9;
    }

    public static S2 valueOf(String str) {
        return (S2) java.lang.Enum.valueOf(S2.class, str);
    }

    public static S2[] values() {
        return (S2[]) f24307N.clone();
    }

    public boolean a() {
        return !(this instanceof O2);
    }
}
