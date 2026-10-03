package V4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: loaded from: classes.dex */
public enum O implements InterfaceC2933o1 {
    UNSPECIFIED_RENDER_ERROR(0),
    IMAGE_FETCH_ERROR(1),
    IMAGE_DISPLAY_ERROR(2),
    IMAGE_UNSUPPORTED_FORMAT(3);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f7130G;

    O(int i8) {
        this.f7130G = i8;
    }

    public static O b(int i8) {
        if (i8 == 0) {
            return UNSPECIFIED_RENDER_ERROR;
        }
        if (i8 == 1) {
            return IMAGE_FETCH_ERROR;
        }
        if (i8 == 2) {
            return IMAGE_DISPLAY_ERROR;
        }
        if (i8 != 3) {
            return null;
        }
        return IMAGE_UNSUPPORTED_FORMAT;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        return this.f7130G;
    }
}
