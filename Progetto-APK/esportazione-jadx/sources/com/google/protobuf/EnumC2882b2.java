package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.b2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2882b2 implements InterfaceC2933o1 {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f24417G;

    EnumC2882b2(int i8) {
        this.f24417G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f24417G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
