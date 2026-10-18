package V4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: loaded from: classes.dex */
public enum x implements InterfaceC2933o1 {
    POLICY_UNSPECIFIED(0),
    DISCARD_OLDEST(1),
    IGNORE_NEWEST(2),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f7165G;

    x(int i8) {
        this.f7165G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f7165G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
