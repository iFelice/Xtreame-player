package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2927n implements InterfaceC2937p1 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24478G;

    public /* synthetic */ C2927n(int i8) {
        this.f24478G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2937p1
    public final InterfaceC2933o1 b(int i8) {
        switch (this.f24478G) {
            case 2:
                return S.b(i8);
            case 3:
                return U.b(i8);
            case 4:
                return Y.b(i8);
            case 5:
                return EnumC2876a0.b(i8);
            case 6:
                return EnumC2900g0.b(i8);
            case 7:
                return EnumC2936p0.b(i8);
            case 8:
                if (i8 == 0) {
                    return S0.CARDINALITY_UNKNOWN;
                }
                if (i8 == 1) {
                    return S0.CARDINALITY_OPTIONAL;
                }
                if (i8 == 2) {
                    return S0.CARDINALITY_REQUIRED;
                }
                if (i8 != 3) {
                    return null;
                }
                return S0.CARDINALITY_REPEATED;
            case 9:
                return T0.b(i8);
            case 10:
                if (i8 != 0) {
                    return null;
                }
                return EnumC2882b2.NULL_VALUE;
            default:
                return EnumC2953t2.b(i8);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2927n(int i8, int i9) {
        this(0);
        this.f24478G = i8;
        int i10 = 1;
        if (i8 != 1) {
        } else {
            this(i10);
        }
    }
}
