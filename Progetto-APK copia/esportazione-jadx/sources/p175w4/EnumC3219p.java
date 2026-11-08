package p175w4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: renamed from: w4.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC3219p implements InterfaceC2933o1 {
    CHANGE_TYPE_UNSPECIFIED(0),
    ADDED(1),
    REMOVED(2),
    MODIFIED(3),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f31081G;

    EnumC3219p(int i8) {
        this.f31081G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f31081G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
