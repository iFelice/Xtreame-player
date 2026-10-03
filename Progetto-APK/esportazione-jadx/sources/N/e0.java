package N;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class e0 extends c0 {
    public e0(i0 i0Var, WindowInsets windowInsets) {
        super(i0Var, windowInsets);
    }

    @Override // N.h0
    public i0 a() {
        return i0.h(this.f4884c.consumeDisplayCutout(), null);
    }

    @Override // N.h0
    public C0263l e() {
        DisplayCutout displayCutout = this.f4884c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new C0263l(displayCutout);
    }

    @Override // N.b0, N.h0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        return Objects.equals(this.f4884c, e0Var.f4884c) && Objects.equals(this.f4886e, e0Var.f4886e);
    }

    @Override // N.h0
    public int hashCode() {
        return this.f4884c.hashCode();
    }
}
