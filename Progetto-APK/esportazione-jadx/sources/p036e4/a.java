package p036e4;

import com.google.android.gms.common.api.c;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f24864b = new a();

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        ((a) obj).getClass();
        return U4.a.c(null, null) && U4.a.c(null, null) && U4.a.c(null, null) && U4.a.c(null, null) && U4.a.c(null, null);
    }

    public final int hashCode() {
        Boolean bool = Boolean.FALSE;
        return Arrays.hashCode(new Object[]{bool, bool, null, bool, bool, null, null, null, null});
    }
}
