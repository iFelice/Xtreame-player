package N;

import android.view.DisplayCutout;
import java.util.Objects;

/* JADX INFO: renamed from: N.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0263l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DisplayCutout f4912a;

    public C0263l(DisplayCutout displayCutout) {
        this.f4912a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0263l.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f4912a, ((C0263l) obj).f4912a);
    }

    public final int hashCode() {
        DisplayCutout displayCutout = this.f4912a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f4912a + "}";
    }
}
