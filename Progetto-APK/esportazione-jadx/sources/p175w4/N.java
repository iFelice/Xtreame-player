package p175w4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: loaded from: classes.dex */
public enum N implements InterfaceC2933o1 {
    LAUNCH_STAGE_UNSPECIFIED(0),
    EARLY_ACCESS(1),
    ALPHA(2),
    BETA(3),
    GA(4),
    DEPRECATED(5),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f31035G;

    N(int i8) {
        this.f31035G = i8;
    }

    public static N b(int i8) {
        if (i8 == 0) {
            return LAUNCH_STAGE_UNSPECIFIED;
        }
        if (i8 == 1) {
            return EARLY_ACCESS;
        }
        if (i8 == 2) {
            return ALPHA;
        }
        if (i8 == 3) {
            return BETA;
        }
        if (i8 == 4) {
            return GA;
        }
        if (i8 != 5) {
            return null;
        }
        return DEPRECATED;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f31035G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
