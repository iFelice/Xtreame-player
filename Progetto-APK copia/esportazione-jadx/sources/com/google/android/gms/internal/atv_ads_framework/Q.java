package com.google.android.gms.internal.atv_ads_framework;

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
/* JADX INFO: loaded from: classes.dex */
public final class Q {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final Q f22285H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final Q f22286I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Q[] f22287J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final /* synthetic */ Q[] f22288K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f22289G;

    /* JADX INFO: Fake field, exist only in values array */
    Q EF6;

    static {
        EnumC2375a0 enumC2375a0 = EnumC2375a0.DOUBLE;
        Q q7 = new Q("DOUBLE", 0, 0, 1, enumC2375a0);
        EnumC2375a0 enumC2375a1 = EnumC2375a0.FLOAT;
        Q q8 = new Q("FLOAT", 1, 1, 1, enumC2375a1);
        EnumC2375a0 enumC2375a2 = EnumC2375a0.LONG;
        Q q9 = new Q("INT64", 2, 2, 1, enumC2375a2);
        Q q10 = new Q("UINT64", 3, 3, 1, enumC2375a2);
        EnumC2375a0 enumC2375a3 = EnumC2375a0.INT;
        Q q11 = new Q("INT32", 4, 4, 1, enumC2375a3);
        Q q12 = new Q("FIXED64", 5, 5, 1, enumC2375a2);
        Q q13 = new Q("FIXED32", 6, 6, 1, enumC2375a3);
        EnumC2375a0 enumC2375a4 = EnumC2375a0.BOOLEAN;
        Q q14 = new Q("BOOL", 7, 7, 1, enumC2375a4);
        EnumC2375a0 enumC2375a5 = EnumC2375a0.STRING;
        Q q15 = new Q("STRING", 8, 8, 1, enumC2375a5);
        EnumC2375a0 enumC2375a6 = EnumC2375a0.MESSAGE;
        Q q16 = new Q("MESSAGE", 9, 9, 1, enumC2375a6);
        EnumC2375a0 enumC2375a7 = EnumC2375a0.BYTE_STRING;
        Q q17 = new Q("BYTES", 10, 10, 1, enumC2375a7);
        Q q18 = new Q("UINT32", 11, 11, 1, enumC2375a3);
        EnumC2375a0 enumC2375a8 = EnumC2375a0.ENUM;
        Q q19 = new Q("ENUM", 12, 12, 1, enumC2375a8);
        Q q20 = new Q("SFIXED32", 13, 13, 1, enumC2375a3);
        Q q21 = new Q("SFIXED64", 14, 14, 1, enumC2375a2);
        Q q22 = new Q("SINT32", 15, 15, 1, enumC2375a3);
        Q q23 = new Q("SINT64", 16, 16, 1, enumC2375a2);
        Q q24 = new Q("GROUP", 17, 17, 1, enumC2375a6);
        Q q25 = new Q("DOUBLE_LIST", 18, 18, 2, enumC2375a0);
        Q q26 = new Q("FLOAT_LIST", 19, 19, 2, enumC2375a1);
        Q q27 = new Q("INT64_LIST", 20, 20, 2, enumC2375a2);
        Q q28 = new Q("UINT64_LIST", 21, 21, 2, enumC2375a2);
        Q q29 = new Q("INT32_LIST", 22, 22, 2, enumC2375a3);
        Q q30 = new Q("FIXED64_LIST", 23, 23, 2, enumC2375a2);
        Q q31 = new Q("FIXED32_LIST", 24, 24, 2, enumC2375a3);
        Q q32 = new Q("BOOL_LIST", 25, 25, 2, enumC2375a4);
        Q q33 = new Q("STRING_LIST", 26, 26, 2, enumC2375a5);
        Q q34 = new Q("MESSAGE_LIST", 27, 27, 2, enumC2375a6);
        Q q35 = new Q("BYTES_LIST", 28, 28, 2, enumC2375a7);
        Q q36 = new Q("UINT32_LIST", 29, 29, 2, enumC2375a3);
        Q q37 = new Q("ENUM_LIST", 30, 30, 2, enumC2375a8);
        Q q38 = new Q("SFIXED32_LIST", 31, 31, 2, enumC2375a3);
        Q q39 = new Q("SFIXED64_LIST", 32, 32, 2, enumC2375a2);
        Q q40 = new Q("SINT32_LIST", 33, 33, 2, enumC2375a3);
        Q q41 = new Q("SINT64_LIST", 34, 34, 2, enumC2375a2);
        Q q42 = new Q("DOUBLE_LIST_PACKED", 35, 35, 3, enumC2375a0);
        f22285H = q42;
        Q q43 = new Q("FLOAT_LIST_PACKED", 36, 36, 3, enumC2375a1);
        Q q44 = new Q("INT64_LIST_PACKED", 37, 37, 3, enumC2375a2);
        Q q45 = new Q("UINT64_LIST_PACKED", 38, 38, 3, enumC2375a2);
        Q q46 = new Q("INT32_LIST_PACKED", 39, 39, 3, enumC2375a3);
        Q q47 = new Q("FIXED64_LIST_PACKED", 40, 40, 3, enumC2375a2);
        Q q48 = new Q("FIXED32_LIST_PACKED", 41, 41, 3, enumC2375a3);
        Q q49 = new Q("BOOL_LIST_PACKED", 42, 42, 3, enumC2375a4);
        Q q50 = new Q("UINT32_LIST_PACKED", 43, 43, 3, enumC2375a3);
        Q q51 = new Q("ENUM_LIST_PACKED", 44, 44, 3, enumC2375a8);
        Q q52 = new Q("SFIXED32_LIST_PACKED", 45, 45, 3, enumC2375a3);
        Q q53 = new Q("SFIXED64_LIST_PACKED", 46, 46, 3, enumC2375a2);
        Q q54 = new Q("SINT32_LIST_PACKED", 47, 47, 3, enumC2375a3);
        Q q55 = new Q("SINT64_LIST_PACKED", 48, 48, 3, enumC2375a2);
        f22286I = q55;
        f22288K = new Q[]{q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20, q21, q22, q23, q24, q25, q26, q27, q28, q29, q30, q31, q32, q33, q34, q35, q36, q37, q38, q39, q40, q41, q42, q43, q44, q45, q46, q47, q48, q49, q50, q51, q52, q53, q54, q55, new Q("GROUP_LIST", 49, 49, 2, enumC2375a6), new Q("MAP", 50, 50, 4, EnumC2375a0.VOID)};
        Q[] qArrValues = values();
        f22287J = new Q[qArrValues.length];
        for (Q q56 : qArrValues) {
            f22287J[q56.f22289G] = q56;
        }
    }

    public Q(String str, int i8, int i9, int i10, EnumC2375a0 enumC2375a0) {
        super(str, i8);
        this.f22289G = i9;
        EnumC2375a0 enumC2375a1 = EnumC2375a0.VOID;
        int i11 = i10 - 1;
        if (i11 == 1 || i11 == 3) {
            enumC2375a0.getClass();
        }
        if (i10 == 1) {
            enumC2375a0.ordinal();
        }
    }

    public static Q[] values() {
        return (Q[]) f22288K.clone();
    }

    public final int zza() {
        return this.f22289G;
    }
}
