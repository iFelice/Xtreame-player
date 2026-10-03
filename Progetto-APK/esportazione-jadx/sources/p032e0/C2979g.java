package p032e0;

import z4.q0;

/* JADX INFO: renamed from: e0.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2979g {
    public static EnumC2981i a(EnumC2982j enumC2982j) {
        q0.h(enumC2982j, "state");
        int iOrdinal = enumC2982j.ordinal();
        if (iOrdinal == 1) {
            return EnumC2981i.ON_CREATE;
        }
        if (iOrdinal == 2) {
            return EnumC2981i.ON_START;
        }
        if (iOrdinal != 3) {
            return null;
        }
        return EnumC2981i.ON_RESUME;
    }
}
