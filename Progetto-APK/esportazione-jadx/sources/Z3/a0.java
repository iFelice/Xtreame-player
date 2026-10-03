package Z3;

import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class a0 extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f8287G;

    public a0(int i8, String str) {
        super(str);
        this.f8287G = i8;
    }

    public final K.k a() {
        if (getCause() == null) {
            Log.w("UserMessagingPlatform", super.getMessage());
        } else {
            Log.w("UserMessagingPlatform", super.getMessage(), getCause());
        }
        return new K.k(this.f8287G, super.getMessage(), 16);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return super.getMessage();
    }

    public a0(String str, int i8, IOException iOException) {
        super(str, iOException);
        this.f8287G = i8;
    }
}
