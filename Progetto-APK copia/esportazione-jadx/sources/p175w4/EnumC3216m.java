package p175w4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: renamed from: w4.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC3216m implements InterfaceC2933o1 {
    PATH_TRANSLATION_UNSPECIFIED(0),
    CONSTANT_ADDRESS(1),
    APPEND_PATH_TO_ADDRESS(2),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f31074G;

    EnumC3216m(int i8) {
        this.f31074G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f31074G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
