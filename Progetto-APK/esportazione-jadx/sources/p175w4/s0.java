package p175w4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: loaded from: classes.dex */
public enum s0 implements InterfaceC2933o1 {
    HISTORY_UNSPECIFIED(0),
    ORIGINALLY_SINGLE_PATTERN(1),
    FUTURE_MULTI_PATTERN(2),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f31088G;

    s0(int i8) {
        this.f31088G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f31088G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
