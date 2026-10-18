package com.google.android.gms.internal.measurement;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF6' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.o2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2612o2 {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final EnumC2612o2 f23225H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final EnumC2612o2 f23226I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final EnumC2612o2[] f23227J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final /* synthetic */ EnumC2612o2[] f23228K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f23229G;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC2612o2 EF6;

    static {
        C2 c8 = C2.f22878K;
        EnumC2612o2 enumC2612o2 = new EnumC2612o2("DOUBLE", 0, 0, 1, c8);
        C2 c9 = C2.f22877J;
        EnumC2612o2 enumC2612o3 = new EnumC2612o2("FLOAT", 1, 1, 1, c9);
        C2 c10 = C2.f22876I;
        EnumC2612o2 enumC2612o4 = new EnumC2612o2("INT64", 2, 2, 1, c10);
        EnumC2612o2 enumC2612o5 = new EnumC2612o2("UINT64", 3, 3, 1, c10);
        C2 c11 = C2.f22875H;
        EnumC2612o2 enumC2612o6 = new EnumC2612o2("INT32", 4, 4, 1, c11);
        EnumC2612o2 enumC2612o7 = new EnumC2612o2("FIXED64", 5, 5, 1, c10);
        EnumC2612o2 enumC2612o8 = new EnumC2612o2("FIXED32", 6, 6, 1, c11);
        C2 c12 = C2.f22879L;
        EnumC2612o2 enumC2612o9 = new EnumC2612o2("BOOL", 7, 7, 1, c12);
        C2 c13 = C2.f22880M;
        EnumC2612o2 enumC2612o10 = new EnumC2612o2("STRING", 8, 8, 1, c13);
        C2 c14 = C2.f22883P;
        EnumC2612o2 enumC2612o11 = new EnumC2612o2("MESSAGE", 9, 9, 1, c14);
        C2 c15 = C2.f22881N;
        EnumC2612o2 enumC2612o12 = new EnumC2612o2("BYTES", 10, 10, 1, c15);
        EnumC2612o2 enumC2612o13 = new EnumC2612o2("UINT32", 11, 11, 1, c11);
        C2 c16 = C2.f22882O;
        EnumC2612o2 enumC2612o14 = new EnumC2612o2("ENUM", 12, 12, 1, c16);
        EnumC2612o2 enumC2612o15 = new EnumC2612o2("SFIXED32", 13, 13, 1, c11);
        EnumC2612o2 enumC2612o16 = new EnumC2612o2("SFIXED64", 14, 14, 1, c10);
        EnumC2612o2 enumC2612o17 = new EnumC2612o2("SINT32", 15, 15, 1, c11);
        EnumC2612o2 enumC2612o18 = new EnumC2612o2("SINT64", 16, 16, 1, c10);
        EnumC2612o2 enumC2612o19 = new EnumC2612o2("GROUP", 17, 17, 1, c14);
        EnumC2612o2 enumC2612o20 = new EnumC2612o2("DOUBLE_LIST", 18, 18, 2, c8);
        EnumC2612o2 enumC2612o21 = new EnumC2612o2("FLOAT_LIST", 19, 19, 2, c9);
        EnumC2612o2 enumC2612o22 = new EnumC2612o2("INT64_LIST", 20, 20, 2, c10);
        EnumC2612o2 enumC2612o23 = new EnumC2612o2("UINT64_LIST", 21, 21, 2, c10);
        EnumC2612o2 enumC2612o24 = new EnumC2612o2("INT32_LIST", 22, 22, 2, c11);
        EnumC2612o2 enumC2612o25 = new EnumC2612o2("FIXED64_LIST", 23, 23, 2, c10);
        EnumC2612o2 enumC2612o26 = new EnumC2612o2("FIXED32_LIST", 24, 24, 2, c11);
        EnumC2612o2 enumC2612o27 = new EnumC2612o2("BOOL_LIST", 25, 25, 2, c12);
        EnumC2612o2 enumC2612o28 = new EnumC2612o2("STRING_LIST", 26, 26, 2, c13);
        EnumC2612o2 enumC2612o29 = new EnumC2612o2("MESSAGE_LIST", 27, 27, 2, c14);
        EnumC2612o2 enumC2612o30 = new EnumC2612o2("BYTES_LIST", 28, 28, 2, c15);
        EnumC2612o2 enumC2612o31 = new EnumC2612o2("UINT32_LIST", 29, 29, 2, c11);
        EnumC2612o2 enumC2612o32 = new EnumC2612o2("ENUM_LIST", 30, 30, 2, c16);
        EnumC2612o2 enumC2612o33 = new EnumC2612o2("SFIXED32_LIST", 31, 31, 2, c11);
        EnumC2612o2 enumC2612o34 = new EnumC2612o2("SFIXED64_LIST", 32, 32, 2, c10);
        EnumC2612o2 enumC2612o35 = new EnumC2612o2("SINT32_LIST", 33, 33, 2, c11);
        EnumC2612o2 enumC2612o36 = new EnumC2612o2("SINT64_LIST", 34, 34, 2, c10);
        EnumC2612o2 enumC2612o37 = new EnumC2612o2("DOUBLE_LIST_PACKED", 35, 35, 3, c8);
        f23225H = enumC2612o37;
        EnumC2612o2 enumC2612o38 = new EnumC2612o2("FLOAT_LIST_PACKED", 36, 36, 3, c9);
        EnumC2612o2 enumC2612o39 = new EnumC2612o2("INT64_LIST_PACKED", 37, 37, 3, c10);
        EnumC2612o2 enumC2612o40 = new EnumC2612o2("UINT64_LIST_PACKED", 38, 38, 3, c10);
        EnumC2612o2 enumC2612o41 = new EnumC2612o2("INT32_LIST_PACKED", 39, 39, 3, c11);
        EnumC2612o2 enumC2612o42 = new EnumC2612o2("FIXED64_LIST_PACKED", 40, 40, 3, c10);
        EnumC2612o2 enumC2612o43 = new EnumC2612o2("FIXED32_LIST_PACKED", 41, 41, 3, c11);
        EnumC2612o2 enumC2612o44 = new EnumC2612o2("BOOL_LIST_PACKED", 42, 42, 3, c12);
        EnumC2612o2 enumC2612o45 = new EnumC2612o2("UINT32_LIST_PACKED", 43, 43, 3, c11);
        EnumC2612o2 enumC2612o46 = new EnumC2612o2("ENUM_LIST_PACKED", 44, 44, 3, c16);
        EnumC2612o2 enumC2612o47 = new EnumC2612o2("SFIXED32_LIST_PACKED", 45, 45, 3, c11);
        EnumC2612o2 enumC2612o48 = new EnumC2612o2("SFIXED64_LIST_PACKED", 46, 46, 3, c10);
        EnumC2612o2 enumC2612o49 = new EnumC2612o2("SINT32_LIST_PACKED", 47, 47, 3, c11);
        EnumC2612o2 enumC2612o50 = new EnumC2612o2("SINT64_LIST_PACKED", 48, 48, 3, c10);
        f23226I = enumC2612o50;
        f23228K = new EnumC2612o2[]{enumC2612o2, enumC2612o3, enumC2612o4, enumC2612o5, enumC2612o6, enumC2612o7, enumC2612o8, enumC2612o9, enumC2612o10, enumC2612o11, enumC2612o12, enumC2612o13, enumC2612o14, enumC2612o15, enumC2612o16, enumC2612o17, enumC2612o18, enumC2612o19, enumC2612o20, enumC2612o21, enumC2612o22, enumC2612o23, enumC2612o24, enumC2612o25, enumC2612o26, enumC2612o27, enumC2612o28, enumC2612o29, enumC2612o30, enumC2612o31, enumC2612o32, enumC2612o33, enumC2612o34, enumC2612o35, enumC2612o36, enumC2612o37, enumC2612o38, enumC2612o39, enumC2612o40, enumC2612o41, enumC2612o42, enumC2612o43, enumC2612o44, enumC2612o45, enumC2612o46, enumC2612o47, enumC2612o48, enumC2612o49, enumC2612o50, new EnumC2612o2("GROUP_LIST", 49, 49, 2, c14), new EnumC2612o2("MAP", 50, 50, 4, C2.f22874G)};
        EnumC2612o2[] enumC2612o2ArrValues = values();
        f23227J = new EnumC2612o2[enumC2612o2ArrValues.length];
        for (EnumC2612o2 enumC2612o51 : enumC2612o2ArrValues) {
            f23227J[enumC2612o51.f23229G] = enumC2612o51;
        }
    }

    public EnumC2612o2(String str, int i8, int i9, int i10, C2 c8) {
        super(str, i8);
        this.f23229G = i9;
        int i11 = i10 - 1;
        if (i11 == 1 || i11 == 3) {
            c8.getClass();
        }
        if (i10 == 1) {
            C2 c9 = C2.f22874G;
            c8.ordinal();
        }
    }

    public static EnumC2612o2[] values() {
        return (EnumC2612o2[]) f23228K.clone();
    }

    public final int zza() {
        return this.f23229G;
    }
}
