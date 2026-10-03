package androidx.media3.decoder.mpegh;

import p094m0.J;
import p117p0.r;

/* JADX INFO: loaded from: classes.dex */
public final class MpeghLibrary {
    private static final r LOADER;

    static {
        J.a("media3.decoder.mpegh");
        LOADER = new r("mpeghJNI") { // from class: androidx.media3.decoder.mpegh.MpeghLibrary.1
            @Override // p117p0.r
            public void loadLibrary(String str) {
                System.loadLibrary(str);
            }
        };
    }

    private MpeghLibrary() {
    }

    public static boolean isAvailable() {
        return LOADER.isAvailable();
    }

    public static void setLibraries(String... strArr) {
        LOADER.setLibraries(strArr);
    }
}
