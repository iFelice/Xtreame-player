package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.g0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2900g0 implements InterfaceC2933o1 {
    SPEED(1),
    CODE_SIZE(2),
    LITE_RUNTIME(3);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f24434G;

    EnumC2900g0(int i8) {
        this.f24434G = i8;
    }

    public static EnumC2900g0 b(int i8) {
        if (i8 == 1) {
            return SPEED;
        }
        if (i8 == 2) {
            return CODE_SIZE;
        }
        if (i8 != 3) {
            return null;
        }
        return LITE_RUNTIME;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        return this.f24434G;
    }
}
