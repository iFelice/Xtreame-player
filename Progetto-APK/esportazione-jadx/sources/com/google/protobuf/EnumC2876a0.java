package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2876a0 implements InterfaceC2933o1 {
    JS_NORMAL(0),
    JS_STRING(1),
    JS_NUMBER(2);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f24408G;

    EnumC2876a0(int i8) {
        this.f24408G = i8;
    }

    public static EnumC2876a0 b(int i8) {
        if (i8 == 0) {
            return JS_NORMAL;
        }
        if (i8 == 1) {
            return JS_STRING;
        }
        if (i8 != 2) {
            return null;
        }
        return JS_NUMBER;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        return this.f24408G;
    }
}
