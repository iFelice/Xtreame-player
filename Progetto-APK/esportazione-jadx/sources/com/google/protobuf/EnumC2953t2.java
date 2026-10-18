package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.t2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2953t2 implements InterfaceC2933o1 {
    SYNTAX_PROTO2(0),
    SYNTAX_PROTO3(1),
    SYNTAX_EDITIONS(2),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f24507G;

    EnumC2953t2(int i8) {
        this.f24507G = i8;
    }

    public static EnumC2953t2 b(int i8) {
        if (i8 == 0) {
            return SYNTAX_PROTO2;
        }
        if (i8 == 1) {
            return SYNTAX_PROTO3;
        }
        if (i8 != 2) {
            return null;
        }
        return SYNTAX_EDITIONS;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f24507G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
