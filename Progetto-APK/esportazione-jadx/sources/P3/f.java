package P3;

import android.os.StrictMode;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    public static StrictMode.VmPolicy.Builder a(StrictMode.VmPolicy.Builder builder) {
        return builder.permitUnsafeIntentLaunch();
    }
}
