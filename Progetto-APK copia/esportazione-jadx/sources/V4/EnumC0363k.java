package V4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: renamed from: V4.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC0363k implements InterfaceC2933o1 {
    UNKNOWN_TRIGGER(0),
    APP_LAUNCH(1),
    ON_FOREGROUND(2),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f7142G;

    EnumC0363k(int i8) {
        this.f7142G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f7142G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
