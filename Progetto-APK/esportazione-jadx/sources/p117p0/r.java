package p117p0;

import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class r {
    private static final String TAG = "LibraryLoader";
    private boolean isAvailable;
    private boolean loadAttempted;
    private String[] nativeLibraries;

    public r(String... strArr) {
        this.nativeLibraries = strArr;
    }

    public synchronized boolean isAvailable() {
        if (this.loadAttempted) {
            return this.isAvailable;
        }
        this.loadAttempted = true;
        try {
            for (String str : this.nativeLibraries) {
                loadLibrary(str);
            }
            this.isAvailable = true;
        } catch (UnsatisfiedLinkError unused) {
            x.f(TAG, "Failed to load " + Arrays.toString(this.nativeLibraries));
        }
        return this.isAvailable;
    }

    public abstract void loadLibrary(String str);

    public synchronized void setLibraries(String... strArr) {
        H1.h("Cannot set libraries after loading", !this.loadAttempted);
        this.nativeLibraries = strArr;
    }
}
