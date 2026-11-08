package com.google.android.gms.internal.pal;

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
public final class A {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final A f23419H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final A f23420I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final A[] f23421J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final /* synthetic */ A[] f23422K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f23423G;

    /* JADX INFO: Fake field, exist only in values array */
    A EF6;

    static {
        M m7 = M.DOUBLE;
        A a8 = new A("DOUBLE", 0, 0, 1, m7);
        M m8 = M.FLOAT;
        A a9 = new A("FLOAT", 1, 1, 1, m8);
        M m9 = M.LONG;
        A a10 = new A("INT64", 2, 2, 1, m9);
        A a11 = new A("UINT64", 3, 3, 1, m9);
        M m10 = M.INT;
        A a12 = new A("INT32", 4, 4, 1, m10);
        A a13 = new A("FIXED64", 5, 5, 1, m9);
        A a14 = new A("FIXED32", 6, 6, 1, m10);
        M m11 = M.BOOLEAN;
        A a15 = new A("BOOL", 7, 7, 1, m11);
        M m12 = M.STRING;
        A a16 = new A("STRING", 8, 8, 1, m12);
        M m13 = M.MESSAGE;
        A a17 = new A("MESSAGE", 9, 9, 1, m13);
        M m14 = M.BYTE_STRING;
        A a18 = new A("BYTES", 10, 10, 1, m14);
        A a19 = new A("UINT32", 11, 11, 1, m10);
        M m15 = M.ENUM;
        A a20 = new A("ENUM", 12, 12, 1, m15);
        A a21 = new A("SFIXED32", 13, 13, 1, m10);
        A a22 = new A("SFIXED64", 14, 14, 1, m9);
        A a23 = new A("SINT32", 15, 15, 1, m10);
        A a24 = new A("SINT64", 16, 16, 1, m9);
        A a25 = new A("GROUP", 17, 17, 1, m13);
        A a26 = new A("DOUBLE_LIST", 18, 18, 2, m7);
        A a27 = new A("FLOAT_LIST", 19, 19, 2, m8);
        A a28 = new A("INT64_LIST", 20, 20, 2, m9);
        A a29 = new A("UINT64_LIST", 21, 21, 2, m9);
        A a30 = new A("INT32_LIST", 22, 22, 2, m10);
        A a31 = new A("FIXED64_LIST", 23, 23, 2, m9);
        A a32 = new A("FIXED32_LIST", 24, 24, 2, m10);
        A a33 = new A("BOOL_LIST", 25, 25, 2, m11);
        A a34 = new A("STRING_LIST", 26, 26, 2, m12);
        A a35 = new A("MESSAGE_LIST", 27, 27, 2, m13);
        A a36 = new A("BYTES_LIST", 28, 28, 2, m14);
        A a37 = new A("UINT32_LIST", 29, 29, 2, m10);
        A a38 = new A("ENUM_LIST", 30, 30, 2, m15);
        A a39 = new A("SFIXED32_LIST", 31, 31, 2, m10);
        A a40 = new A("SFIXED64_LIST", 32, 32, 2, m9);
        A a41 = new A("SINT32_LIST", 33, 33, 2, m10);
        A a42 = new A("SINT64_LIST", 34, 34, 2, m9);
        A a43 = new A("DOUBLE_LIST_PACKED", 35, 35, 3, m7);
        f23419H = a43;
        A a44 = new A("FLOAT_LIST_PACKED", 36, 36, 3, m8);
        A a45 = new A("INT64_LIST_PACKED", 37, 37, 3, m9);
        A a46 = new A("UINT64_LIST_PACKED", 38, 38, 3, m9);
        A a47 = new A("INT32_LIST_PACKED", 39, 39, 3, m10);
        A a48 = new A("FIXED64_LIST_PACKED", 40, 40, 3, m9);
        A a49 = new A("FIXED32_LIST_PACKED", 41, 41, 3, m10);
        A a50 = new A("BOOL_LIST_PACKED", 42, 42, 3, m11);
        A a51 = new A("UINT32_LIST_PACKED", 43, 43, 3, m10);
        A a52 = new A("ENUM_LIST_PACKED", 44, 44, 3, m15);
        A a53 = new A("SFIXED32_LIST_PACKED", 45, 45, 3, m10);
        A a54 = new A("SFIXED64_LIST_PACKED", 46, 46, 3, m9);
        A a55 = new A("SINT32_LIST_PACKED", 47, 47, 3, m10);
        A a56 = new A("SINT64_LIST_PACKED", 48, 48, 3, m9);
        f23420I = a56;
        f23422K = new A[]{a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, new A("GROUP_LIST", 49, 49, 2, m13), new A("MAP", 50, 50, 4, M.VOID)};
        A[] aArrValues = values();
        f23421J = new A[aArrValues.length];
        for (A a57 : aArrValues) {
            f23421J[a57.f23423G] = a57;
        }
    }

    public A(String str, int i8, int i9, int i10, M m7) {
        super(str, i8);
        this.f23423G = i9;
        M m8 = M.VOID;
        int i11 = i10 - 1;
        if (i11 == 1 || i11 == 3) {
            m7.getClass();
        }
        if (i10 == 1) {
            m7.ordinal();
        }
    }

    public static A[] values() {
        return (A[]) f23422K.clone();
    }

    public final int zza() {
        return this.f23423G;
    }
}
